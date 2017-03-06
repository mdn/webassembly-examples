var importObject = {
  imports: {
    imported_func: function(arg) {
      console.log(arg);
    }
  }
};

onmessage = function(e) {
  console.log('module received from main thread');
  var mod = e.data;
  
  var instance = new WebAssembly.Instance(mod, importObject);
  instance.exports.exported_func();

  var exports = WebAssembly.Module.exports(mod);
  console.log(exports[0]);
};
