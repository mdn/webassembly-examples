# WebAssembly JavaScript builtins examples

WebAssembly JavaScript builtins examples.

## Testing/modifying the JavaScript builtins examples

The `wat2wasm` tool does not support the [JS builtins](https://github.com/WebAssembly/js-string-builtins/blob/main/proposals/js-string-builtins/Overview.md) examples. To compile `.wat` files that make use of JavaScript builtins, you need to use the `wasm-as` tool, which is part of the [Binaryen library](https://github.com/WebAssembly/binaryen). You'll need to run `wasm-as` with reference types and GC enabled for these examples to compile successfully:

```sh
wasm-as --enable-reference-types -–enable-gc module.wat -o module.wasm
```

Or you can use the `-all` flag in place of `--enable-reference-types -–enable-gc`:

```sh
wasm-as -all module.wat -o module.wasm
```
