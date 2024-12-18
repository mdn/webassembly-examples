const compileOptions = {
  builtins: ["js-string"],     // Enable JavaScript string builtins
  importedStringConstants: "#" // Enable imported global string constants
}

fetch("log-concat.wasm")
  .then(response => response.arrayBuffer())
  .then(bytes => WebAssembly.validate(bytes, compileOptions))
  .then(result => console.log(`wasm module valid: ${result}`));
