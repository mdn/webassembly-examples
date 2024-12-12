const importObject = { // Regular import
    m: {
        log: console.log
    }
};

const compileOptions = {
    builtins: ["js-string"],      // Opt-in to get magic imported functions
    importedStringConstants: "#"  // Opt-in to get magic imported globals
}

WebAssembly.compileStreaming(fetch("log-concat.wasm"), compileOptions)
    .then(module => WebAssembly.instantiate(module, importObject))
    .then(instance => instance.exports.main());


