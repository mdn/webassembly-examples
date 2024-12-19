const importObject = { // Regular import
  m: {
    log: console.log,
  }
};

const compileOptions = {
  builtins: ["js-string"],     // Enable JavaScript string builtins
  importedStringConstants: "string_constants", // Enable imported global string constants
}

fetch("log-concat.wasm")
  .then((response) => response.arrayBuffer())
  .then((bytes) => WebAssembly.instantiate(bytes, importObject, compileOptions))
  .then((result) => result.instance.exports.main());
