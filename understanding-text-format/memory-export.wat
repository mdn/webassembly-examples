(module
  (memory $exported_memory 10 100)
  ;; multibyte integers are written in big-endian format
  (data 0
    (i32.const 0)
    "\00\00\00\00"
    "\01\00\00\00"
    "\02\00\00\00"
    "\03\00\00\00"
    "\04\00\00\00"
    "\05\00\00\00"
    "\06\00\00\00"
    "\07\00\00\00"
    "\08\00\00\00"
    "\09\00\00\00"
  )
  (export "memory" (memory $exported_memory))
)
