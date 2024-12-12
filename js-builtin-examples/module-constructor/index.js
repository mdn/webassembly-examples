const importObject = { // Regular import
    m: {
        log: console.log
    }
};

const compileOptions = {
    builtins: ["js-string"],      // Opt-in to get magic imported functions
    importedStringConstants: "#"  // Opt-in to get magic imported globals
}

fetch("log-concat.wasm")
    .then(response => response.arrayBuffer())
    .then(bytes => {
        const module = new WebAssembly.Module(bytes, compileOptions);
        WebAssembly.instantiate(module, importObject)
            .then(instance => instance.exports.main());
    })
