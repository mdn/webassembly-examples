const compileOptions = {
    builtins: ["js-string"],      // Opt-in to get magic imported functions
    importedStringConstants: "#"  // Opt-in to get magic imported globals
}

fetch("log-concat.wasm")
    .then(response => response.arrayBuffer())
    .then(bytes => WebAssembly.validate(bytes, compileOptions))
    .then(result => console.log(`wasm module valid: ${result}`));


