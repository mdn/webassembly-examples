const importObject = {
  imports: {
    imported_func: arg => {
      console.log(arg);
    }
  }
};

self.onmessage = function(event) {
  console.log("module received from main thread");
  const module = event.data;

  WebAssembly.instantiate(module, importObject)
  .then(instance => {
    instance.exports.exported_func();
  });

  const exports = WebAssembly.Module.exports(module);
  console.log(exports[0]);
};
