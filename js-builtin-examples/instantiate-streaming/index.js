const importObject = { // Regular import
  m: {
    log: console.log,
  }
};

const compileOptions = {
  builtins: ["js-string"],     // Enable JavaScript string builtins
  importedStringConstants: "string_constants", // Enable imported global string constants
}

WebAssembly.instantiateStreaming(fetch("log-concat.wasm"), importObject, compileOptions)
  .then((result) => result.instance.exports.main());
