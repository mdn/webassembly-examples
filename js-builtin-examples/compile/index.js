const importObject = { // Regular import
  m: {
    log: console.log
  }
};

const compileOptions = {
  builtins: ["js-string"],     // Enable JavaScript string builtins
  importedStringConstants: "#" // Enable imported global string constants
}

fetch("log-concat.wasm")
  .then(response => response.arrayBuffer())
  .then(bytes => WebAssembly.compile(bytes, compileOptions))
  .then(module => WebAssembly.instantiate(module, importObject))
  .then(instance => instance.exports.main());
