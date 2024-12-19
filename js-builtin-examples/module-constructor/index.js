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
  .then((bytes) => {
    const module = new WebAssembly.Module(bytes, compileOptions);
    WebAssembly.instantiate(module, importObject)
      .then((instance) => instance.exports.main());
  })
