// 1. +++ fetchAndInstantiate() +++ //

// This library function fetches the wasm module at 'url', instantiates it with
// the given 'importObject', and returns the instantiated object instance

function fetchAndInstantiate(url, importObject) {
  return fetch(url).then(response =>
    response.arrayBuffer()
  ).then(bytes =>
    WebAssembly.instantiate(bytes, importObject)
  ).then(results =>
    results.instance
  );
}

// 2. +++ instantiateCachedURL() +++ //

// This library function fetches the wasm Module at 'url', instantiates it with
// the given 'importObject', and returns a Promise resolving to the finished
// wasm Instance. Additionally, the function attempts to cache the compiled wasm
// Module in IndexedDB using 'url' as the key. Thus, the caller must ensure that
// 'url' uniquely identifies the Module.

function instantiateCachedURL(url, importObject) {
  const dbName = 'wasm-modules';
  const storeName = 'wasm-modules';

  // This helper function Promise-ifies the operation of opening an IndexedDB
  // database.
  function openDatabase() {
    return new Promise((resolve, reject) => {
      var request = indexedDB.open(dbName, 1);
      request.onerror = reject.bind(null, 'error opening database');
      request.onupgradeneeded = () => { request.result.createObjectStore(storeName) };
      request.onsuccess = () => { resolve(request.result) };
    });
  }

  // This helper function Promise-ifies the operation of looking up 'url' in the
  // given IDBDatabase.
  function lookupInDatabase(db) {
    return new Promise((resolve, reject) => {
      var store = db.transaction([storeName]).objectStore(storeName);
      var request = store.get(url);
      request.onerror = reject.bind(null, `error getting wasm module ${url}`);
      request.onsuccess = event => {
        if (request.result)
          resolve(request.result);
        else
          reject(`${url} was not found in object store`);
      }
    });
  }

  // This helper function fires off an async operation to store the given wasm
  // Module in the given IDBDatabase.
  function storeInDatabase(db, module) {
    var store = db.transaction([storeName], 'readwrite').objectStore(storeName);
    var request = store.put(module, url);
    request.onerror = err => { console.log(`Failed to store in wasm database: ${err}`) };
  }

  // This helper function fetches 'url', compiles it into a Module,
  // instantiates the Module with the given import object.
  function fetchAndInstantiate() {
    return fetch(url).then(response =>
      response.arrayBuffer()
    ).then(buffer =>
      WebAssembly.instantiate(buffer, importObject)
    )
  }

  // With all the Promise helper functions defined, we can now express the core
  // logic of an IndexedDB cache lookup. We start by trying to open a database.
  return openDatabase().then(db => {
    // Now see if we already have a compiled Module with key 'url' in 'db':
    return lookupInDatabase(db).then(module => {
      // We do! Instantiate it with the given import object.
      console.log(`Found ${url} in wasm database`);
      return WebAssembly.instantiate(module, importObject);
    }, errMsg => {
      // Nope! Compile from scratch and then store the compiled Module in 'db'
      // with key 'url' for next time.
      console.log(errMsg);
      return fetchAndInstantiate().then(results => {
        storeInDatabase(db, results.module);
        return results.instance;
      });
    })
  },
  err => {
    // If opening the database failed (due to permissions or quota), fall back
    // to simply fetching and compiling the module and don't try to store the
    // results.
    console.log(`Unable to open wasm database: ${err}`);
    return fetchAndInstantiate().then(results =>
      results.instance
    );
  });
}
