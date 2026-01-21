
# Understanding the WebAssembly text format (WAT)

This folder contains small WebAssembly text-format (.wat) examples used in the MDN WebAssembly documentation to demonstrate basic concepts such as functions, tables, memory, imports/exports and sharing memory between modules.

Each example includes:
- the `.wat` source (human readable WebAssembly text format),
- a pre-built `.wasm` binary (for convenience), and
- an `.html` file that demonstrates running the module in a browser when available.

Contents
- [Quick start](#quick-start)
- [Rebuilding .wat → .wasm](#rebuilding-wat---wasm)
- [Serving the examples locally](#serving-the-examples-locally)
- [Examples (overview)](#examples-overview)
  - `add` — simple exported function
  - `call` — function calls another exported function
  - `empty` — minimal empty module
  - `logger`, `logger2` — host logging / imports
  - `memory-export` — exporting memory to JavaScript
  - `multi-memory` — using multiple memories (requires WABT flags)
  - `shared-address-space` — two modules sharing the same memory
  - `wasm-table` — tables and indirect calls
- [Browser & tool notes](#browser--tool-notes)

Quick start
1. Clone or download the repository.
2. Serve the folder with a local static server (browsers restrict module/wasm fetches from file:// — see below).
3. Open the appropriate `.html` file in your browser, e.g. `add.html` or `logger.html`.

Rebuilding .wat → .wasm
Most examples include both `.wat` and `.wasm`. If you edit a `.wat` file you must rebuild the `.wasm` binary. The examples use WABT tools. Example commands:

- Basic conversion:
```sh
wat2wasm add.wat -o add.wasm
```

- Examples using optional features (for example `multi-memory`) may require flags. For multi-memory:
```sh
wat2wasm --enable-multi-memory multi-memory.wat -o multi-memory.wasm
```

If you use other toolchains (e.g. `wasm-as` from binaryen or custom assemblers) consult that tool's documentation and the MDN pages linked below.

Serving the examples locally
A simple way to serve files locally:
```sh
# Python 3
python3 -m http.server 8000
# then open http://localhost:8000/understanding-text-format/add.html
```

Alternatively, use any local static server (http-server, live-server, etc.).

Examples overview

- add
  - Purpose: Very small example that exports a function to add two integers.
  - Files:
    - [add.wat](https://github.com/mdn/webassembly-examples/blob/c5aac06f5107dfad49cdf1d4340c8d51389bdd77/understanding-text-format/add.wat)
    - [add.wasm](https://github.com/mdn/webassembly-examples/blob/c5aac06f5107dfad49cdf1d4340c8d51389bdd77/understanding-text-format/add.wasm)
    - [add.html](https://github.com/mdn/webassembly-examples/blob/c5aac06f5107dfad49cdf1d4340c8d51389bdd77/understanding-text-format/add.html)
  - Run: open `add.html` via a local server; it demonstrates instantiating the module and calling the exported function from JS.

- call
  - Purpose: Demonstrates one exported function calling another function (call structure).
  - Files:
    - [call.wat](https://github.com/mdn/webassembly-examples/blob/c5aac06f5107dfad49cdf1d4340c8d51389bdd77/understanding-text-format/call.wat)
    - [call.wasm](https://github.com/mdn/webassembly-examples/blob/c5aac06f5107dfad49cdf1d4340c8d51389bdd77/understanding-text-format/call.wasm)
    - [call.html](https://github.com/mdn/webassembly-examples/blob/c5aac06f5107dfad49cdf1d4340c8d51389bdd77/understanding-text-format/call.html)
  - Run: open `call.html`.

- empty
  - Purpose: Minimal WebAssembly module (useful as a starting point).
  - Files:
    - [empty.wat](https://github.com/mdn/webassembly-examples/blob/c5aac06f5107dfad49cdf1d4340c8d51389bdd77/understanding-text-format/empty.wat)
    - [empty.wasm](https://github.com/mdn/webassembly-examples/blob/c5aac06f5107dfad49cdf1d4340c8d51389bdd77/understanding-text-format/empty.wasm)
  - Run: no HTML for this example; you can instantiate it in JS or use tooling to inspect it.

- logger & logger2
  - Purpose: Show how WebAssembly modules can call out to host functions (e.g. logging), and how to pass values between JS and Wasm.
  - Files:
    - [logger.wat](https://github.com/mdn/webassembly-examples/blob/c5aac06f5107dfad49cdf1d4340c8d51389bdd77/understanding-text-format/logger.wat)
    - [logger.wasm](https://github.com/mdn/webassembly-examples/blob/c5aac06f5107dfad49cdf1d4340c8d51389bdd77/understanding-text-format/logger.wasm)
    - [logger.html](https://github.com/mdn/webassembly-examples/blob/c5aac06f5107dfad49cdf1d4340c8d51389bdd77/understanding-text-format/logger.html)
    - [logger2.wat](https://github.com/mdn/webassembly-examples/blob/c5aac06f5107dfad49cdf1d4340c8d51389bdd77/understanding-text-format/logger2.wat)
    - [logger2.wasm](https://github.com/mdn/webassembly-examples/blob/c5aac06f5107dfad49cdf1d4340c8d51389bdd77/understanding-text-format/logger2.wasm)
    - [logger2.html](https://github.com/mdn/webassembly-examples/blob/c5aac06f5107dfad49cdf1d4340c8d51389bdd77/understanding-text-format/logger2.html)
  - Run: open `logger.html` or `logger2.html` to see the host logging in action.

- memory-export
  - Purpose: Demonstrates exporting a WebAssembly memory object and accessing it from JavaScript (reading/writing memory).
  - Files:
    - [memory-export.wat](https://github.com/mdn/webassembly-examples/blob/c5aac06f5107dfad49cdf1d4340c8d51389bdd77/understanding-text-format/memory-export.wat)
    - [memory-export.wasm](https://github.com/mdn/webassembly-examples/blob/c5aac06f5107dfad49cdf1d4340c8d51389bdd77/understanding-text-format/memory-export.wasm)
    - [memory-export.html](https://github.com/mdn/webassembly-examples/blob/c5aac06f5107dfad49cdf1d4340c8d51389bdd77/understanding-text-format/memory-export.html)
  - Run: open `memory-export.html` and inspect the console logs and memory buffer interactions.

- multi-memory
  - Purpose: Example using more than one memory (advanced / proposal-based feature).
  - Files:
    - [multi-memory.wat](https://github.com/mdn/webassembly-examples/blob/c5aac06f5107dfad49cdf1d4340c8d51389bdd77/understanding-text-format/multi-memory.wat)
    - [multi-memory.wasm](https://github.com/mdn/webassembly-examples/blob/c5aac06f5107dfad49cdf1d4340c8d51389bdd77/understanding-text-format/multi-memory.wasm)
    - [multi-memory.html](https://github.com/mdn/webassembly-examples/blob/c5aac06f5107dfad49cdf1d4340c8d51389bdd77/understanding-text-format/multi-memory.html)
  - Build note: multi-memory is behind feature flags in many toolchains; with WABT:
    ```sh
    wat2wasm --enable-multi-memory multi-memory.wat -o multi-memory.wasm
    ```
  - Run: open `multi-memory.html`. See MDN docs for current browser/tool support.

- shared-address-space
  - Purpose: Demonstrates two modules sharing the same linear memory (useful to show how multiple modules can access and mutate common memory).
  - Files:
    - [shared-address-space.html](https://github.com/mdn/webassembly-examples/blob/c5aac06f5107dfad49cdf1d4340c8d51389bdd77/understanding-text-format/shared-address-space.html)
    - [shared0.wat](https://github.com/mdn/webassembly-examples/blob/c5aac06f5107dfad49cdf1d4340c8d51389bdd77/understanding-text-format/shared0.wat)
    - [shared0.wasm](https://github.com/mdn/webassembly-examples/blob/c5aac06f5107dfad49cdf1d4340c8d51389bdd77/understanding-text-format/shared0.wasm)
    - [shared1.wat](https://github.com/mdn/webassembly-examples/blob/c5aac06f5107dfad49cdf1d4340c8d51389bdd77/understanding-text-format/shared1.wat)
    - [shared1.wasm](https://github.com/mdn/webassembly-examples/blob/c5aac06f5107dfad49cdf1d4340c8d51389bdd77/understanding-text-format/shared1.wasm)
  - Run: open `shared-address-space.html`. The HTML shows how one module's writes are visible to another module that shares the same memory object.

- wasm-table
  - Purpose: Shows usage of tables (function references / indirect calls).
  - Files:
    - [wasm-table.wat](https://github.com/mdn/webassembly-examples/blob/c5aac06f5107dfad49cdf1d4340c8d51389bdd77/understanding-text-format/wasm-table.wat)
    - [wasm-table.wasm](https://github.com/mdn/webassembly-examples/blob/c5aac06f5107dfad49cdf1d4340c8d51389bdd77/understanding-text-format/wasm-table.wasm)
    - [wasm-table.html](https://github.com/mdn/webassembly-examples/blob/c5aac06f5107dfad49cdf1d4340c8d51389bdd77/understanding-text-format/wasm-table.html)
  - Run: open `wasm-table.html` and inspect how the table is created and used from JS/Wasm.

Browser & tool notes
- Many of these examples work in modern browsers that support WebAssembly. Some examples illustrate proposal features or advanced behavior — check the file header comments and the WABT supported proposals if you need to rebuild.
- Tools:
  - WABT (wat2wasm) — used for assembling `.wat` to `.wasm`.
  - Binaryen (wasm-as) or other toolchains can also be used depending on feature requirements.
- When testing locally, always use a local HTTP server (browsers prevent many fetches from file://).

Further reading
- MDN WebAssembly docs: https://developer.mozilla.org/en-US/docs/WebAssembly
- WABT repository & supported proposals: https://github.com/WebAssembly/wabt

If you want me to add more detail to any specific example (for example, a short code walkthrough for `memory-export` showing the exact memory offsets used, or a screenshot of console output), tell me which example and I’ll expand that section or create a PR with the README added to the repository.
# webassembly-examples

Code examples that accompany the MDN WebAssembly documentation — see https://developer.mozilla.org/en-US/docs/WebAssembly.

## Testing/modifying the examples

The examples can be tested locally by running a [local server](https://developer.mozilla.org/en-US/docs/Learn/Common_questions/Tools_and_setup/set_up_a_local_testing_server#using_python) to serve your directory of choice.

If you modify any `.wat` files for testing you will need to generate a corresponding `.wasm` file, replacing the existing version in the folder.
For most examples, this can be done using the `wat2wasm` tool, which is part of the [WABT: The WebAssembly Binary Toolkit](https://github.com/WebAssembly/wabt/) (for setup/usage see [Converting the text .wat into a binary .wasm file](https://developer.mozilla.org/en-US/docs/WebAssembly/Text_format_to_Wasm#converting_the_text_.wat_into_a_binary_.wasm_file) on MDN and the readme in the WABT GitHub repo.

Note that some examples use features that are still considered optional.
These are listed in the [supported proposals](https://github.com/WebAssembly/wabt/#supported-proposals) section on the WABT README.md, along with the flags used to invoke them.
For example, to build WASM for the [multi-memory](https://github.com/mdn/webassembly-examples/blob/main/understanding-text-format/multi-memory.wat) example you will need to specify the `--enable-multi-memory` flag as shown:

```sh
wat2wasm --enable-multi-memory multi-memory.wat
```
