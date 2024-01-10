# Rust to WebAssembly in web and Node.js

This directory contains examples of compiling Rust code to WebAssembly and using it on the web and in a Node.js application.
The accompanying documentation can be found in the [Compiling from Rust to WebAssembly](https://developer.mozilla.org/en-US/docs/WebAssembly/Rust_to_Wasm) article on MDN.

## Running the examples

This document assumes you are following the instructions in the MDN article which covers prerequisites and how to install the tools you need to build the example.

If you already have Rust, `wasm-pack` and Node.js installed and you would like to skip the setup steps, the following two sections have instructions on how to run examples that have already been compiled, focusing only on the differences between the two.

### Running a compiled example on the web

To run the example in your browser, you can open the `index.html` file:

```bash
# Target the web
wasm-pack build --target web
# Serve the page
python3 -m http.server
# or http-server via npm
# http-server ./
```

You should see an alert box that says "Hello, WebAssembly!".

### Building and running an npm package

To run the Node.js example, you will need to build the package targeting [Bundlers](https://rustwasm.github.io/docs/wasm-bindgen/reference/deployment.html#bundlers), install the Node.js dev dependencies and then serve the project:

```bash
# Target Bundlers (webpack in our case)
wasm-pack build --target bundler
cd site
# install the dev dependencies and run the server:
npm i && npm run serve
```

You should see an alert box that says "Hello, WebAssembly with npm!".
