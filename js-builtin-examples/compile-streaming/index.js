const importObject = { // Regular import
  m: {
    log: console.log
  }
};

const compileOptions = {
  builtins: ["js-string"],     // Enable JavaScript string builtins
  importedStringConstants: "#" // Enable imported global string constants
}

WebAssembly.compileStreaming(fetch("log-concat.wasm"), compileOptions)
  .then(module => WebAssembly.instantiate(module, importObject))
  .then(instance => instance.exports.main());
