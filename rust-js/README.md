# Rust to WebAssembly in web and Node.js

This directory contains examples of compiling Rust code to WebAssembly and using it on the web and in a Node.js application.
The accompanying documentation can be found in the [Compiling from Rust to WebAssembly](https://developer.mozilla.org/en-US/docs/WebAssembly/Rust_to_Wasm) article on MDN.

## Running the examples

This document assumes you're following the instructions in the above linked MDN article, which covers the prerequisites and the installation of the tools required to build the example.

If you've already installed Rust, `wasm-pack`, and Node.js and wish to skip the setup steps, the next two sections provide instructions on how to run pre-compiled examples on the web and via Node.js, focusing on the differences between the two approaches.

### Running a compiled example on the web

To run the example in your browser, you can open the `index.html` file:

```bash
# Target the web
wasm-pack build --target web
# Serve the page
python3 -m http.server
# or if http-server is installed via npm
http-server ./
```

You should see an alert box that says "Hello, WebAssembly!".

### Building and running an npm package

To run the Node.js example, you will need to build the package targeting [Bundlers](https://rustwasm.github.io/docs/wasm-bindgen/reference/deployment.html#bundlers), install the Node.js dev dependencies, and then serve the project:

```bash
# Target bundlers (webpack in our case)
wasm-pack build --target bundler
cd site
# Install the dev dependencies and run the server
npm i && npm run serve
```

You should see an alert box that says "Hello, WebAssembly with npm!".
