const importObject = { // Regular import
    m: {
        log: console.log
    }
};

const compileOptions = {
    builtins: ["js-string"],      // Opt-in to get magic imported functions
    importedStringConstants: "#"  // Opt-in to get magic imported globals
}

WebAssembly.instantiateStreaming(fetch("log-concat.wasm"), importObject, compileOptions)
    .then(result => result.instance.exports.main());


