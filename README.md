# webassembly-examples

Code examples that accompany the MDN WebAssembly documentation — see https://developer.mozilla.org/en-US/docs/WebAssembly.

## Testing/modifying the examples

The examples can be tested locally by running a [local server](https://developer.mozilla.org/en-US/docs/Learn/Common_questions/Tools_and_setup/set_up_a_local_testing_server#using_python) to serve your directory of choice.

If you modify any `.wat` files for testing you will need to generate a corresponding `.wasm` file, replacing the existing version in the folder.
For most of the examples, this can be done using the `wat2wasm` tool, which is part of the [WABT: The WebAssembly Binary Toolkit](https://github.com/WebAssembly/wabt/) (for setup/usage see [Converting the text .wat into a binary .wasm file](https://developer.mozilla.org/en-US/docs/WebAssembly/Text_format_to_Wasm#converting_the_text_.wat_into_a_binary_.wasm_file) on MDN and the readme in the WABT GitHub repo.

Note that some examples use features that are still considered optional.
These are listed in the [supported proposals](https://github.com/WebAssembly/wabt/#supported-proposals) section on the WABT README.md, along with the flags used to invoke them.
For example, to build WASM for the [multi-memory](https://github.com/mdn/webassembly-examples/blob/main/understanding-text-format/multi-memory.wat) example you will need to specify the `--enable-multi-memory` flag as shown:

```sh
wat2wasm --enable-multi-memory multi-memory.wat
```

## Modifying the JS builtin examples

The `wat2wasm` tool does not support the [JS builtin](https://github.com/WebAssembly/js-string-builtins/blob/main/proposals/js-string-builtins/Overview.md) examples. To compile `.wat` files that make use of JS builtins, you need to use the `wasm-as` tool, which is part of the [Binaryen library](https://github.com/WebAssembly/binaryen). You'll need to run `wasm-as` with reference types and GC enabled for these examples to compile successfully:

```sh
wasm-as --enable-reference-types -–enable-gc module.wat -o module.wasm
```

Or you can use the `-all` flag in place of `--enable-reference-types -–enable-gc`:

```sh
wasm-as -all module.wat -o module.wasm
```
