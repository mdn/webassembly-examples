(module
  (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
  (type $FUNCSIG$ii (func (param i32) (result i32)))
  (type $FUNCSIG$vi (func (param i32)))
  (type $FUNCSIG$i (func (result i32)))
  (type $FUNCSIG$v (func))
  (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
  (type $FUNCSIG$vii (func (param i32 i32)))
  (import "env" "DYNAMICTOP_PTR" (global $DYNAMICTOP_PTR$asm2wasm$import i32))
  (import "env" "STACKTOP" (global $STACKTOP$asm2wasm$import i32))
  (import "env" "STACK_MAX" (global $STACK_MAX$asm2wasm$import i32))
  (import "env" "abort" (func $abort (param i32)))
  (import "env" "enlargeMemory" (func $enlargeMemory (result i32)))
  (import "env" "getTotalMemory" (func $getTotalMemory (result i32)))
  (import "env" "abortOnCannotGrowMemory" (func $abortOnCannotGrowMemory (result i32)))
  (import "env" "_pthread_cleanup_pop" (func $_pthread_cleanup_pop (param i32)))
  (import "env" "___lock" (func $___lock (param i32)))
  (import "env" "_abort" (func $_abort))
  (import "env" "___setErrNo" (func $___setErrNo (param i32)))
  (import "env" "___syscall6" (func $___syscall6 (param i32 i32) (result i32)))
  (import "env" "___syscall140" (func $___syscall140 (param i32 i32) (result i32)))
  (import "env" "_pthread_cleanup_push" (func $_pthread_cleanup_push (param i32 i32)))
  (import "env" "_emscripten_memcpy_big" (func $_emscripten_memcpy_big (param i32 i32 i32) (result i32)))
  (import "env" "___syscall54" (func $___syscall54 (param i32 i32) (result i32)))
  (import "env" "___unlock" (func $___unlock (param i32)))
  (import "env" "___syscall146" (func $___syscall146 (param i32 i32) (result i32)))
  (import "env" "memory" (memory $0 256 256))
  (import "env" "table" (table 8 8 anyfunc))
  (import "env" "memoryBase" (global $memoryBase i32))
  (import "env" "tableBase" (global $tableBase i32))
  (global $DYNAMICTOP_PTR (mut i32) (get_global $DYNAMICTOP_PTR$asm2wasm$import))
  (global $STACKTOP (mut i32) (get_global $STACKTOP$asm2wasm$import))
  (global $STACK_MAX (mut i32) (get_global $STACK_MAX$asm2wasm$import))
  (global $__THREW__ (mut i32) (i32.const 0))
  (global $threwValue (mut i32) (i32.const 0))
  (global $tempRet0 (mut i32) (i32.const 0))
  (elem (get_global $tableBase) $b0 $___stdio_close $b1 $___stdout_write $___stdio_seek $___stdio_write $b2 $_cleanup_387)
  (data (i32.const 1024) "\05")
  (data (i32.const 1036) "\01")
  (data (i32.const 1060) "\01\00\00\00\02\00\00\00\9c\9a\11\00\00\04")
  (data (i32.const 1084) "\01")
  (data (i32.const 1099) "\n\ff\ff\ff\ff")
  (data (i32.const 1137) "\04")
  (export "_malloc" (func $_malloc))
  (export "_fflush" (func $_fflush))
  (export "_pthread_self" (func $_pthread_self))
  (export "_memset" (func $_memset))
  (export "_change" (func $_change))
  (export "_memcpy" (func $_memcpy))
  (export "_sbrk" (func $_sbrk))
  (export "_free" (func $_free))
  (export "___errno_location" (func $___errno_location))
  (export "runPostSets" (func $runPostSets))
  (export "stackAlloc" (func $stackAlloc))
  (export "stackSave" (func $stackSave))
  (export "stackRestore" (func $stackRestore))
  (export "establishStackSpace" (func $establishStackSpace))
  (export "setThrew" (func $setThrew))
  (export "setTempRet0" (func $setTempRet0))
  (export "getTempRet0" (func $getTempRet0))
  (export "dynCall_ii" (func $dynCall_ii))
  (export "dynCall_iiii" (func $dynCall_iiii))
  (export "dynCall_vi" (func $dynCall_vi))
  (func $stackAlloc (param $0 i32) (result i32)
    (local $1 i32)
    (set_local $1
      (get_global $STACKTOP)
    )
    (set_global $STACKTOP
      (i32.add
        (get_global $STACKTOP)
        (get_local $0)
      )
    )
    (set_global $STACKTOP
      (i32.and
        (i32.add
          (get_global $STACKTOP)
          (i32.const 15)
        )
        (i32.const -16)
      )
    )
    (get_local $1)
  )
  (func $stackSave (result i32)
    (get_global $STACKTOP)
  )
  (func $stackRestore (param $0 i32)
    (set_global $STACKTOP
      (get_local $0)
    )
  )
  (func $establishStackSpace (param $0 i32) (param $1 i32)
    (set_global $STACKTOP
      (get_local $0)
    )
    (set_global $STACK_MAX
      (get_local $1)
    )
  )
  (func $setThrew (param $0 i32) (param $1 i32)
    (if
      (i32.eqz
        (get_global $__THREW__)
      )
      (block
        (set_global $__THREW__
          (get_local $0)
        )
        (set_global $threwValue
          (get_local $1)
        )
      )
    )
  )
  (func $setTempRet0 (param $0 i32)
    (set_global $tempRet0
      (get_local $0)
    )
  )
  (func $getTempRet0 (result i32)
    (get_global $tempRet0)
  )
  (func $_sobel (param $0 i32) (param $1 i32) (param $2 i32)
    (local $3 i32)
    (local $4 i32)
    (local $5 i32)
    (local $6 i32)
    (local $7 i32)
    (local $8 i32)
    (local $9 i32)
    (local $10 i32)
    (local $11 i32)
    (local $12 i32)
    (local $13 i32)
    (local $14 i32)
    (local $15 i32)
    (local $16 i32)
    (local $17 i32)
    (local $18 i32)
    (local $19 i32)
    (local $20 i32)
    (local $21 i32)
    (local $22 i32)
    (local $23 i32)
    (local $24 i32)
    (local $25 i32)
    (local $26 i32)
    (local $27 i32)
    (local $28 i32)
    (local $29 i32)
    (local $30 i32)
    (local $31 i32)
    (if
      (i32.eqz
        (tee_local $6
          (i32.gt_s
            (get_local $2)
            (i32.const 0)
          )
        )
      )
      (return)
    )
    (if
      (i32.gt_s
        (get_local $1)
        (i32.const 0)
      )
      (block
        (set_local $4
          (i32.const 0)
        )
        (loop $while-in
          (set_local $10
            (i32.mul
              (get_local $4)
              (i32.const 600)
            )
          )
          (set_local $5
            (i32.const 0)
          )
          (loop $while-in1
            (set_local $3
              (i32.add
                (get_local $0)
                (tee_local $9
                  (i32.shl
                    (tee_local $7
                      (i32.add
                        (get_local $5)
                        (get_local $10)
                      )
                    )
                    (i32.const 2)
                  )
                )
              )
            )
            (i32.store
              (i32.add
                (i32.shl
                  (get_local $7)
                  (i32.const 2)
                )
                (i32.const 1140)
              )
              (tee_local $12
                (i32.add
                  (i32.add
                    (i32.shr_u
                      (i32.load8_u
                        (tee_local $7
                          (i32.add
                            (get_local $0)
                            (i32.or
                              (get_local $9)
                              (i32.const 1)
                            )
                          )
                        )
                      )
                      (i32.const 1)
                    )
                    (i32.shr_u
                      (i32.load8_u
                        (get_local $3)
                      )
                      (i32.const 2)
                    )
                  )
                  (i32.shr_u
                    (i32.load8_u
                      (tee_local $11
                        (i32.add
                          (get_local $0)
                          (i32.or
                            (get_local $9)
                            (i32.const 2)
                          )
                        )
                      )
                    )
                    (i32.const 3)
                  )
                )
              )
            )
            (i32.store8
              (get_local $3)
              (tee_local $3
                (i32.and
                  (get_local $12)
                  (i32.const 255)
                )
              )
            )
            (i32.store8
              (get_local $7)
              (get_local $3)
            )
            (i32.store8
              (get_local $11)
              (get_local $3)
            )
            (i32.store8
              (i32.add
                (get_local $0)
                (i32.or
                  (get_local $9)
                  (i32.const 3)
                )
              )
              (i32.const -1)
            )
            (br_if $while-in1
              (i32.ne
                (tee_local $5
                  (i32.add
                    (get_local $5)
                    (i32.const 1)
                  )
                )
                (get_local $1)
              )
            )
          )
          (br_if $while-in
            (i32.ne
              (tee_local $4
                (i32.add
                  (get_local $4)
                  (i32.const 1)
                )
              )
              (get_local $2)
            )
          )
        )
        (if
          (i32.eqz
            (get_local $6)
          )
          (return)
        )
      )
    )
    (set_local $20
      (i32.gt_s
        (get_local $1)
        (i32.const 0)
      )
    )
    (set_local $21
      (i32.add
        (get_local $1)
        (i32.const -1)
      )
    )
    (set_local $22
      (i32.add
        (get_local $2)
        (i32.const -1)
      )
    )
    (set_local $5
      (i32.const 0)
    )
    (loop $while-in3
      (if
        (get_local $20)
        (block
          (set_local $12
            (i32.mul
              (get_local $5)
              (i32.const 600)
            )
          )
          (set_local $23
            (i32.gt_s
              (get_local $5)
              (i32.const 0)
            )
          )
          (set_local $24
            (i32.lt_s
              (get_local $5)
              (get_local $22)
            )
          )
          (set_local $14
            (i32.gt_s
              (get_local $5)
              (i32.const 478)
            )
          )
          (set_local $10
            (i32.mul
              (tee_local $9
                (i32.add
                  (get_local $5)
                  (i32.const 1)
                )
              )
              (i32.const 600)
            )
          )
          (set_local $15
            (i32.gt_s
              (tee_local $11
                (i32.add
                  (get_local $5)
                  (i32.const -1)
                )
              )
              (i32.const 479)
            )
          )
          (set_local $7
            (i32.mul
              (get_local $11)
              (i32.const 600)
            )
          )
          (set_local $19
            (i32.gt_s
              (get_local $5)
              (i32.const 479)
            )
          )
          (set_local $4
            (i32.const 0)
          )
          (loop $while-in5
            (set_local $6
              (if i32
                (i32.lt_s
                  (get_local $4)
                  (i32.const 1)
                )
                (block i32
                  (set_local $3
                    (i32.const 0)
                  )
                  (i32.const 0)
                )
                (if i32
                  (i32.and
                    (get_local $24)
                    (i32.and
                      (get_local $23)
                      (i32.lt_s
                        (get_local $4)
                        (get_local $21)
                      )
                    )
                  )
                  (block i32
                    (set_local $8
                      (i32.gt_s
                        (tee_local $3
                          (i32.add
                            (get_local $4)
                            (i32.const -1)
                          )
                        )
                        (i32.const 599)
                      )
                    )
                    (set_local $25
                      (if i32
                        (tee_local $16
                          (i32.or
                            (i32.lt_s
                              (i32.or
                                (get_local $3)
                                (get_local $11)
                              )
                              (i32.const 0)
                            )
                            (i32.or
                              (get_local $15)
                              (get_local $8)
                            )
                          )
                        )
                        (i32.const 0)
                        (i32.load
                          (i32.add
                            (i32.shl
                              (i32.add
                                (get_local $3)
                                (get_local $7)
                              )
                              (i32.const 2)
                            )
                            (i32.const 1140)
                          )
                        )
                      )
                    )
                    (set_local $26
                      (if i32
                        (tee_local $17
                          (i32.or
                            (i32.lt_s
                              (i32.or
                                (tee_local $6
                                  (i32.add
                                    (get_local $4)
                                    (i32.const 1)
                                  )
                                )
                                (get_local $11)
                              )
                              (i32.const 0)
                            )
                            (i32.or
                              (get_local $15)
                              (tee_local $13
                                (i32.gt_s
                                  (get_local $4)
                                  (i32.const 598)
                                )
                              )
                            )
                          )
                        )
                        (i32.const 0)
                        (i32.load
                          (i32.add
                            (i32.shl
                              (i32.add
                                (get_local $6)
                                (get_local $7)
                              )
                              (i32.const 2)
                            )
                            (i32.const 1140)
                          )
                        )
                      )
                    )
                    (set_local $27
                      (if i32
                        (i32.or
                          (i32.lt_s
                            (i32.or
                              (get_local $3)
                              (get_local $5)
                            )
                            (i32.const 0)
                          )
                          (i32.or
                            (get_local $19)
                            (get_local $8)
                          )
                        )
                        (i32.const 0)
                        (i32.load
                          (i32.add
                            (i32.shl
                              (i32.add
                                (get_local $3)
                                (get_local $12)
                              )
                              (i32.const 2)
                            )
                            (i32.const 1140)
                          )
                        )
                      )
                    )
                    (set_local $28
                      (if i32
                        (i32.or
                          (i32.lt_s
                            (i32.or
                              (get_local $6)
                              (get_local $5)
                            )
                            (i32.const 0)
                          )
                          (i32.or
                            (get_local $19)
                            (get_local $13)
                          )
                        )
                        (i32.const 0)
                        (i32.load
                          (i32.add
                            (i32.shl
                              (i32.add
                                (get_local $6)
                                (get_local $12)
                              )
                              (i32.const 2)
                            )
                            (i32.const 1140)
                          )
                        )
                      )
                    )
                    (set_local $8
                      (if i32
                        (tee_local $18
                          (i32.or
                            (i32.lt_s
                              (i32.or
                                (get_local $3)
                                (get_local $9)
                              )
                              (i32.const 0)
                            )
                            (i32.or
                              (get_local $14)
                              (get_local $8)
                            )
                          )
                        )
                        (i32.const 0)
                        (i32.load
                          (i32.add
                            (i32.shl
                              (i32.add
                                (get_local $3)
                                (get_local $10)
                              )
                              (i32.const 2)
                            )
                            (i32.const 1140)
                          )
                        )
                      )
                    )
                    (set_local $13
                      (if i32
                        (tee_local $29
                          (i32.or
                            (i32.lt_s
                              (i32.or
                                (get_local $6)
                                (get_local $9)
                              )
                              (i32.const 0)
                            )
                            (i32.or
                              (get_local $14)
                              (get_local $13)
                            )
                          )
                        )
                        (i32.const 0)
                        (i32.load
                          (i32.add
                            (i32.shl
                              (i32.add
                                (get_local $6)
                                (get_local $10)
                              )
                              (i32.const 2)
                            )
                            (i32.const 1140)
                          )
                        )
                      )
                    )
                    (set_local $16
                      (if i32
                        (get_local $16)
                        (i32.const 0)
                        (i32.load
                          (i32.add
                            (i32.shl
                              (i32.add
                                (get_local $3)
                                (get_local $7)
                              )
                              (i32.const 2)
                            )
                            (i32.const 1140)
                          )
                        )
                      )
                    )
                    (set_local $31
                      (if i32
                        (i32.or
                          (i32.lt_s
                            (i32.or
                              (get_local $4)
                              (get_local $11)
                            )
                            (i32.const 0)
                          )
                          (i32.or
                            (get_local $15)
                            (tee_local $30
                              (i32.gt_s
                                (get_local $4)
                                (i32.const 599)
                              )
                            )
                          )
                        )
                        (i32.const 0)
                        (i32.load
                          (i32.add
                            (i32.shl
                              (i32.add
                                (get_local $4)
                                (get_local $7)
                              )
                              (i32.const 2)
                            )
                            (i32.const 1140)
                          )
                        )
                      )
                    )
                    (set_local $17
                      (if i32
                        (get_local $17)
                        (i32.const 0)
                        (i32.load
                          (i32.add
                            (i32.shl
                              (i32.add
                                (get_local $6)
                                (get_local $7)
                              )
                              (i32.const 2)
                            )
                            (i32.const 1140)
                          )
                        )
                      )
                    )
                    (set_local $3
                      (if i32
                        (get_local $18)
                        (i32.const 0)
                        (i32.load
                          (i32.add
                            (i32.shl
                              (i32.add
                                (get_local $3)
                                (get_local $10)
                              )
                              (i32.const 2)
                            )
                            (i32.const 1140)
                          )
                        )
                      )
                    )
                    (set_local $18
                      (if i32
                        (i32.or
                          (i32.lt_s
                            (i32.or
                              (get_local $4)
                              (get_local $9)
                            )
                            (i32.const 0)
                          )
                          (i32.or
                            (get_local $14)
                            (get_local $30)
                          )
                        )
                        (i32.const 0)
                        (i32.load
                          (i32.add
                            (i32.shl
                              (i32.add
                                (get_local $4)
                                (get_local $10)
                              )
                              (i32.const 2)
                            )
                            (i32.const 1140)
                          )
                        )
                      )
                    )
                    (set_local $3
                      (i32.add
                        (i32.add
                          (i32.sub
                            (get_local $3)
                            (i32.add
                              (get_local $17)
                              (get_local $16)
                            )
                          )
                          (tee_local $6
                            (if i32
                              (get_local $29)
                              (i32.const 0)
                              (i32.load
                                (i32.add
                                  (i32.shl
                                    (i32.add
                                      (get_local $6)
                                      (get_local $10)
                                    )
                                    (i32.const 2)
                                  )
                                  (i32.const 1140)
                                )
                              )
                            )
                          )
                        )
                        (i32.shl
                          (i32.sub
                            (get_local $18)
                            (get_local $31)
                          )
                          (i32.const 1)
                        )
                      )
                    )
                    (i32.add
                      (i32.sub
                        (i32.add
                          (i32.sub
                            (i32.sub
                              (get_local $26)
                              (get_local $25)
                            )
                            (i32.shl
                              (get_local $27)
                              (i32.const 1)
                            )
                          )
                          (i32.shl
                            (get_local $28)
                            (i32.const 1)
                          )
                        )
                        (get_local $8)
                      )
                      (get_local $13)
                    )
                  )
                  (block i32
                    (set_local $3
                      (i32.const 0)
                    )
                    (i32.const 0)
                  )
                )
              )
            )
            (i32.store8
              (i32.add
                (get_local $0)
                (tee_local $8
                  (i32.shl
                    (i32.add
                      (get_local $4)
                      (get_local $12)
                    )
                    (i32.const 2)
                  )
                )
              )
              (tee_local $3
                (i32.and
                  (i32.sub
                    (i32.const 255)
                    (if i32
                      (i32.gt_s
                        (tee_local $3
                          (i32.trunc_s/f64
                            (f64.sqrt
                              (f64.convert_s/i32
                                (i32.add
                                  (i32.mul
                                    (get_local $3)
                                    (get_local $3)
                                  )
                                  (i32.mul
                                    (get_local $6)
                                    (get_local $6)
                                  )
                                )
                              )
                            )
                          )
                        )
                        (i32.const 255)
                      )
                      (i32.const 255)
                      (get_local $3)
                    )
                  )
                  (i32.const 255)
                )
              )
            )
            (i32.store8
              (i32.add
                (get_local $0)
                (i32.or
                  (get_local $8)
                  (i32.const 1)
                )
              )
              (get_local $3)
            )
            (i32.store8
              (i32.add
                (get_local $0)
                (i32.or
                  (get_local $8)
                  (i32.const 2)
                )
              )
              (get_local $3)
            )
            (i32.store8
              (i32.add
                (get_local $0)
                (i32.or
                  (get_local $8)
                  (i32.const 3)
                )
              )
              (i32.const -1)
            )
            (br_if $while-in5
              (i32.ne
                (tee_local $4
                  (i32.add
                    (get_local $4)
                    (i32.const 1)
                  )
                )
                (get_local $1)
              )
            )
            (set_local $4
              (get_local $9)
            )
          )
        )
        (set_local $4
          (i32.add
            (get_local $5)
            (i32.const 1)
          )
        )
      )
      (if
        (i32.ne
          (get_local $4)
          (get_local $2)
        )
        (block
          (set_local $5
            (get_local $4)
          )
          (br $while-in3)
        )
      )
    )
  )
  (func $_change (param $0 i32) (param $1 i32) (param $2 i32)
    (call $_sobel
      (get_local $0)
      (get_local $1)
      (get_local $2)
    )
  )
  (func $___stdio_close (param $0 i32) (result i32)
    (local $1 i32)
    (local $2 i32)
    (set_local $1
      (get_global $STACKTOP)
    )
    (set_global $STACKTOP
      (i32.add
        (get_global $STACKTOP)
        (i32.const 16)
      )
    )
    (i32.store
      (tee_local $2
        (get_local $1)
      )
      (i32.load offset=60
        (get_local $0)
      )
    )
    (set_local $0
      (call $___syscall_ret
        (call $___syscall6
          (i32.const 6)
          (get_local $2)
        )
      )
    )
    (set_global $STACKTOP
      (get_local $1)
    )
    (get_local $0)
  )
  (func $___stdio_write (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
    (local $3 i32)
    (local $4 i32)
    (local $5 i32)
    (local $6 i32)
    (local $7 i32)
    (local $8 i32)
    (local $9 i32)
    (local $10 i32)
    (local $11 i32)
    (local $12 i32)
    (local $13 i32)
    (local $14 i32)
    (local $15 i32)
    (set_local $7
      (get_global $STACKTOP)
    )
    (set_global $STACKTOP
      (i32.add
        (get_global $STACKTOP)
        (i32.const 48)
      )
    )
    (set_local $8
      (i32.add
        (get_local $7)
        (i32.const 16)
      )
    )
    (set_local $9
      (get_local $7)
    )
    (i32.store
      (tee_local $3
        (i32.add
          (get_local $7)
          (i32.const 32)
        )
      )
      (tee_local $4
        (i32.load
          (tee_local $6
            (i32.add
              (get_local $0)
              (i32.const 28)
            )
          )
        )
      )
    )
    (i32.store offset=4
      (get_local $3)
      (tee_local $4
        (i32.sub
          (i32.load
            (tee_local $11
              (i32.add
                (get_local $0)
                (i32.const 20)
              )
            )
          )
          (get_local $4)
        )
      )
    )
    (i32.store offset=8
      (get_local $3)
      (get_local $1)
    )
    (i32.store offset=12
      (get_local $3)
      (get_local $2)
    )
    (set_local $14
      (i32.add
        (get_local $0)
        (i32.const 60)
      )
    )
    (set_local $15
      (i32.add
        (get_local $0)
        (i32.const 44)
      )
    )
    (set_local $5
      (i32.const 2)
    )
    (set_local $12
      (i32.add
        (get_local $4)
        (get_local $2)
      )
    )
    (set_local $1
      (get_local $3)
    )
    (block $__rjto$1
      (block $__rjti$1
        (block $__rjti$0
          (loop $while-in
            (if
              (i32.load
                (i32.const 1153140)
              )
              (block
                (call $_pthread_cleanup_push
                  (i32.const 1)
                  (get_local $0)
                )
                (i32.store
                  (get_local $9)
                  (i32.load
                    (get_local $14)
                  )
                )
                (i32.store offset=4
                  (get_local $9)
                  (get_local $1)
                )
                (i32.store offset=8
                  (get_local $9)
                  (get_local $5)
                )
                (set_local $4
                  (call $___syscall_ret
                    (call $___syscall146
                      (i32.const 146)
                      (get_local $9)
                    )
                  )
                )
                (call $_pthread_cleanup_pop
                  (i32.const 0)
                )
              )
              (block
                (i32.store
                  (get_local $8)
                  (i32.load
                    (get_local $14)
                  )
                )
                (i32.store offset=4
                  (get_local $8)
                  (get_local $1)
                )
                (i32.store offset=8
                  (get_local $8)
                  (get_local $5)
                )
                (set_local $4
                  (call $___syscall_ret
                    (call $___syscall146
                      (i32.const 146)
                      (get_local $8)
                    )
                  )
                )
              )
            )
            (br_if $__rjti$0
              (i32.eq
                (get_local $12)
                (get_local $4)
              )
            )
            (br_if $__rjti$1
              (i32.lt_s
                (get_local $4)
                (i32.const 0)
              )
            )
            (set_local $1
              (if i32
                (i32.gt_u
                  (get_local $4)
                  (tee_local $13
                    (i32.load offset=4
                      (get_local $1)
                    )
                  )
                )
                (block i32
                  (i32.store
                    (get_local $6)
                    (tee_local $3
                      (i32.load
                        (get_local $15)
                      )
                    )
                  )
                  (i32.store
                    (get_local $11)
                    (get_local $3)
                  )
                  (set_local $10
                    (i32.sub
                      (get_local $4)
                      (get_local $13)
                    )
                  )
                  (set_local $5
                    (i32.add
                      (get_local $5)
                      (i32.const -1)
                    )
                  )
                  (set_local $3
                    (i32.add
                      (get_local $1)
                      (i32.const 8)
                    )
                  )
                  (i32.load offset=12
                    (get_local $1)
                  )
                )
                (if i32
                  (i32.eq
                    (get_local $5)
                    (i32.const 2)
                  )
                  (block i32
                    (i32.store
                      (get_local $6)
                      (i32.add
                        (i32.load
                          (get_local $6)
                        )
                        (get_local $4)
                      )
                    )
                    (set_local $10
                      (get_local $4)
                    )
                    (set_local $5
                      (i32.const 2)
                    )
                    (set_local $3
                      (get_local $1)
                    )
                    (get_local $13)
                  )
                  (block i32
                    (set_local $10
                      (get_local $4)
                    )
                    (set_local $3
                      (get_local $1)
                    )
                    (get_local $13)
                  )
                )
              )
            )
            (i32.store
              (get_local $3)
              (i32.add
                (i32.load
                  (get_local $3)
                )
                (get_local $10)
              )
            )
            (i32.store offset=4
              (get_local $3)
              (i32.sub
                (get_local $1)
                (get_local $10)
              )
            )
            (set_local $12
              (i32.sub
                (get_local $12)
                (get_local $4)
              )
            )
            (set_local $1
              (get_local $3)
            )
            (br $while-in)
          )
        )
        (i32.store offset=16
          (get_local $0)
          (i32.add
            (tee_local $1
              (i32.load
                (get_local $15)
              )
            )
            (i32.load offset=48
              (get_local $0)
            )
          )
        )
        (i32.store
          (get_local $6)
          (tee_local $0
            (get_local $1)
          )
        )
        (i32.store
          (get_local $11)
          (get_local $0)
        )
        (br $__rjto$1)
      )
      (i32.store offset=16
        (get_local $0)
        (i32.const 0)
      )
      (i32.store
        (get_local $6)
        (i32.const 0)
      )
      (i32.store
        (get_local $11)
        (i32.const 0)
      )
      (i32.store
        (get_local $0)
        (i32.or
          (i32.load
            (get_local $0)
          )
          (i32.const 32)
        )
      )
      (set_local $2
        (if i32
          (i32.eq
            (get_local $5)
            (i32.const 2)
          )
          (i32.const 0)
          (i32.sub
            (get_local $2)
            (i32.load offset=4
              (get_local $1)
            )
          )
        )
      )
    )
    (set_global $STACKTOP
      (get_local $7)
    )
    (get_local $2)
  )
  (func $___stdio_seek (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
    (local $3 i32)
    (local $4 i32)
    (set_local $4
      (get_global $STACKTOP)
    )
    (set_global $STACKTOP
      (i32.add
        (get_global $STACKTOP)
        (i32.const 32)
      )
    )
    (i32.store
      (tee_local $3
        (get_local $4)
      )
      (i32.load offset=60
        (get_local $0)
      )
    )
    (i32.store offset=4
      (get_local $3)
      (i32.const 0)
    )
    (i32.store offset=8
      (get_local $3)
      (get_local $1)
    )
    (i32.store offset=12
      (get_local $3)
      (tee_local $0
        (i32.add
          (get_local $4)
          (i32.const 20)
        )
      )
    )
    (i32.store offset=16
      (get_local $3)
      (get_local $2)
    )
    (set_local $0
      (if i32
        (i32.lt_s
          (call $___syscall_ret
            (call $___syscall140
              (i32.const 140)
              (get_local $3)
            )
          )
          (i32.const 0)
        )
        (block i32
          (i32.store
            (get_local $0)
            (i32.const -1)
          )
          (i32.const -1)
        )
        (i32.load
          (get_local $0)
        )
      )
    )
    (set_global $STACKTOP
      (get_local $4)
    )
    (get_local $0)
  )
  (func $___syscall_ret (param $0 i32) (result i32)
    (if i32
      (i32.gt_u
        (get_local $0)
        (i32.const -4096)
      )
      (block i32
        (i32.store
          (call $___errno_location)
          (i32.sub
            (i32.const 0)
            (get_local $0)
          )
        )
        (i32.const -1)
      )
      (get_local $0)
    )
  )
  (func $___errno_location (result i32)
    (if i32
      (i32.load
        (i32.const 1153140)
      )
      (i32.load offset=64
        (call $_pthread_self)
      )
      (i32.const 1153184)
    )
  )
  (func $_cleanup_387 (param $0 i32)
    (if
      (i32.eqz
        (i32.load offset=68
          (get_local $0)
        )
      )
      (call $___unlockfile
        (get_local $0)
      )
    )
  )
  (func $___unlockfile (param $0 i32)
    (nop)
  )
  (func $___stdout_write (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
    (local $3 i32)
    (local $4 i32)
    (local $5 i32)
    (set_local $4
      (get_global $STACKTOP)
    )
    (set_global $STACKTOP
      (i32.add
        (get_global $STACKTOP)
        (i32.const 80)
      )
    )
    (set_local $3
      (get_local $4)
    )
    (set_local $5
      (i32.add
        (get_local $4)
        (i32.const 12)
      )
    )
    (i32.store offset=36
      (get_local $0)
      (i32.const 3)
    )
    (if
      (i32.eqz
        (i32.and
          (i32.load
            (get_local $0)
          )
          (i32.const 64)
        )
      )
      (block
        (i32.store
          (get_local $3)
          (i32.load offset=60
            (get_local $0)
          )
        )
        (i32.store offset=4
          (get_local $3)
          (i32.const 21505)
        )
        (i32.store offset=8
          (get_local $3)
          (get_local $5)
        )
        (if
          (call $___syscall54
            (i32.const 54)
            (get_local $3)
          )
          (i32.store8 offset=75
            (get_local $0)
            (i32.const -1)
          )
        )
      )
    )
    (set_local $0
      (call $___stdio_write
        (get_local $0)
        (get_local $1)
        (get_local $2)
      )
    )
    (set_global $STACKTOP
      (get_local $4)
    )
    (get_local $0)
  )
  (func $___lockfile (param $0 i32) (result i32)
    (i32.const 0)
  )
  (func $_fflush (param $0 i32) (result i32)
    (local $1 i32)
    (local $2 i32)
    (block $do-once
      (if
        (get_local $0)
        (block
          (if
            (i32.le_s
              (i32.load offset=76
                (get_local $0)
              )
              (i32.const -1)
            )
            (block
              (set_local $0
                (call $___fflush_unlocked
                  (get_local $0)
                )
              )
              (br $do-once)
            )
          )
          (set_local $2
            (i32.eqz
              (call $___lockfile
                (get_local $0)
              )
            )
          )
          (set_local $1
            (call $___fflush_unlocked
              (get_local $0)
            )
          )
          (set_local $0
            (if i32
              (get_local $2)
              (get_local $1)
              (block i32
                (call $___unlockfile
                  (get_local $0)
                )
                (get_local $1)
              )
            )
          )
        )
        (block
          (set_local $0
            (if i32
              (i32.load
                (i32.const 1136)
              )
              (call $_fflush
                (i32.load
                  (i32.const 1136)
                )
              )
              (i32.const 0)
            )
          )
          (call $___lock
            (i32.const 1153168)
          )
          (if
            (tee_local $1
              (i32.load
                (i32.const 1153164)
              )
            )
            (loop $while-in
              (set_local $2
                (if i32
                  (i32.gt_s
                    (i32.load offset=76
                      (get_local $1)
                    )
                    (i32.const -1)
                  )
                  (call $___lockfile
                    (get_local $1)
                  )
                  (i32.const 0)
                )
              )
              (if
                (i32.gt_u
                  (i32.load offset=20
                    (get_local $1)
                  )
                  (i32.load offset=28
                    (get_local $1)
                  )
                )
                (set_local $0
                  (i32.or
                    (call $___fflush_unlocked
                      (get_local $1)
                    )
                    (get_local $0)
                  )
                )
              )
              (if
                (get_local $2)
                (call $___unlockfile
                  (get_local $1)
                )
              )
              (br_if $while-in
                (tee_local $1
                  (i32.load offset=56
                    (get_local $1)
                  )
                )
              )
            )
          )
          (call $___unlock
            (i32.const 1153168)
          )
        )
      )
    )
    (get_local $0)
  )
  (func $___fflush_unlocked (param $0 i32) (result i32)
    (local $1 i32)
    (local $2 i32)
    (local $3 i32)
    (local $4 i32)
    (local $5 i32)
    (local $6 i32)
    (tee_local $0
      (block $__rjto$0 i32
        (block $__rjti$0
          (br_if $__rjti$0
            (i32.le_u
              (i32.load
                (tee_local $1
                  (i32.add
                    (get_local $0)
                    (i32.const 20)
                  )
                )
              )
              (i32.load
                (tee_local $2
                  (i32.add
                    (get_local $0)
                    (i32.const 28)
                  )
                )
              )
            )
          )
          (drop
            (call_indirect $FUNCSIG$iiii
              (get_local $0)
              (i32.const 0)
              (i32.const 0)
              (i32.add
                (i32.and
                  (i32.load offset=36
                    (get_local $0)
                  )
                  (i32.const 3)
                )
                (i32.const 2)
              )
            )
          )
          (br_if $__rjti$0
            (i32.load
              (get_local $1)
            )
          )
          (br $__rjto$0
            (i32.const -1)
          )
        )
        (if
          (i32.lt_u
            (tee_local $4
              (i32.load
                (tee_local $3
                  (i32.add
                    (get_local $0)
                    (i32.const 4)
                  )
                )
              )
            )
            (tee_local $6
              (i32.load
                (tee_local $5
                  (i32.add
                    (get_local $0)
                    (i32.const 8)
                  )
                )
              )
            )
          )
          (drop
            (call_indirect $FUNCSIG$iiii
              (get_local $0)
              (i32.sub
                (get_local $4)
                (get_local $6)
              )
              (i32.const 1)
              (i32.add
                (i32.and
                  (i32.load offset=40
                    (get_local $0)
                  )
                  (i32.const 3)
                )
                (i32.const 2)
              )
            )
          )
        )
        (i32.store offset=16
          (get_local $0)
          (i32.const 0)
        )
        (i32.store
          (get_local $2)
          (i32.const 0)
        )
        (i32.store
          (get_local $1)
          (i32.const 0)
        )
        (i32.store
          (get_local $5)
          (i32.const 0)
        )
        (i32.store
          (get_local $3)
          (i32.const 0)
        )
        (i32.const 0)
      )
    )
  )
  (func $_malloc (param $0 i32) (result i32)
    (local $1 i32)
    (local $2 i32)
    (local $3 i32)
    (local $4 i32)
    (local $5 i32)
    (local $6 i32)
    (local $7 i32)
    (local $8 i32)
    (local $9 i32)
    (local $10 i32)
    (local $11 i32)
    (local $12 i32)
    (local $13 i32)
    (local $14 i32)
    (local $15 i32)
    (local $16 i32)
    (local $17 i32)
    (local $18 i32)
    (local $19 i32)
    (local $20 i32)
    (set_local $13
      (get_global $STACKTOP)
    )
    (set_global $STACKTOP
      (i32.add
        (get_global $STACKTOP)
        (i32.const 16)
      )
    )
    (set_local $15
      (get_local $13)
    )
    (block $do-once
      (if
        (i32.lt_u
          (get_local $0)
          (i32.const 245)
        )
        (block
          (set_local $2
            (i32.and
              (i32.add
                (get_local $0)
                (i32.const 11)
              )
              (i32.const -8)
            )
          )
          (if
            (i32.and
              (tee_local $1
                (i32.shr_u
                  (tee_local $7
                    (i32.load
                      (i32.const 1153188)
                    )
                  )
                  (tee_local $0
                    (i32.shr_u
                      (if i32
                        (i32.lt_u
                          (get_local $0)
                          (i32.const 11)
                        )
                        (tee_local $2
                          (i32.const 16)
                        )
                        (get_local $2)
                      )
                      (i32.const 3)
                    )
                  )
                )
              )
              (i32.const 3)
            )
            (block
              (set_local $0
                (i32.load
                  (tee_local $6
                    (i32.add
                      (tee_local $1
                        (i32.load
                          (tee_local $5
                            (i32.add
                              (tee_local $3
                                (i32.add
                                  (i32.shl
                                    (i32.shl
                                      (tee_local $2
                                        (i32.add
                                          (i32.xor
                                            (i32.and
                                              (get_local $1)
                                              (i32.const 1)
                                            )
                                            (i32.const 1)
                                          )
                                          (get_local $0)
                                        )
                                      )
                                      (i32.const 1)
                                    )
                                    (i32.const 2)
                                  )
                                  (i32.const 1153228)
                                )
                              )
                              (i32.const 8)
                            )
                          )
                        )
                      )
                      (i32.const 8)
                    )
                  )
                )
              )
              (if
                (i32.eq
                  (get_local $3)
                  (get_local $0)
                )
                (i32.store
                  (i32.const 1153188)
                  (i32.and
                    (get_local $7)
                    (i32.xor
                      (i32.shl
                        (i32.const 1)
                        (get_local $2)
                      )
                      (i32.const -1)
                    )
                  )
                )
                (block
                  (if
                    (i32.lt_u
                      (get_local $0)
                      (i32.load
                        (i32.const 1153204)
                      )
                    )
                    (call $_abort)
                  )
                  (if
                    (i32.eq
                      (i32.load
                        (tee_local $4
                          (i32.add
                            (get_local $0)
                            (i32.const 12)
                          )
                        )
                      )
                      (get_local $1)
                    )
                    (block
                      (i32.store
                        (get_local $4)
                        (get_local $3)
                      )
                      (i32.store
                        (get_local $5)
                        (get_local $0)
                      )
                    )
                    (call $_abort)
                  )
                )
              )
              (i32.store offset=4
                (get_local $1)
                (i32.or
                  (tee_local $0
                    (i32.shl
                      (get_local $2)
                      (i32.const 3)
                    )
                  )
                  (i32.const 3)
                )
              )
              (i32.store
                (tee_local $0
                  (i32.add
                    (i32.add
                      (get_local $1)
                      (get_local $0)
                    )
                    (i32.const 4)
                  )
                )
                (i32.or
                  (i32.load
                    (get_local $0)
                  )
                  (i32.const 1)
                )
              )
              (set_global $STACKTOP
                (get_local $13)
              )
              (return
                (get_local $6)
              )
            )
          )
          (if
            (i32.gt_u
              (get_local $2)
              (tee_local $16
                (i32.load
                  (i32.const 1153196)
                )
              )
            )
            (block
              (if
                (get_local $1)
                (block
                  (set_local $0
                    (i32.and
                      (i32.shr_u
                        (tee_local $1
                          (i32.add
                            (i32.and
                              (tee_local $0
                                (i32.and
                                  (i32.shl
                                    (get_local $1)
                                    (get_local $0)
                                  )
                                  (i32.or
                                    (tee_local $0
                                      (i32.shl
                                        (i32.const 2)
                                        (get_local $0)
                                      )
                                    )
                                    (i32.sub
                                      (i32.const 0)
                                      (get_local $0)
                                    )
                                  )
                                )
                              )
                              (i32.sub
                                (i32.const 0)
                                (get_local $0)
                              )
                            )
                            (i32.const -1)
                          )
                        )
                        (i32.const 12)
                      )
                      (i32.const 16)
                    )
                  )
                  (set_local $0
                    (i32.load
                      (tee_local $10
                        (i32.add
                          (tee_local $1
                            (i32.load
                              (tee_local $8
                                (i32.add
                                  (tee_local $4
                                    (i32.add
                                      (i32.shl
                                        (i32.shl
                                          (tee_local $5
                                            (i32.add
                                              (i32.or
                                                (i32.or
                                                  (i32.or
                                                    (i32.or
                                                      (tee_local $5
                                                        (i32.and
                                                          (i32.shr_u
                                                            (tee_local $1
                                                              (i32.shr_u
                                                                (get_local $1)
                                                                (get_local $0)
                                                              )
                                                            )
                                                            (i32.const 5)
                                                          )
                                                          (i32.const 8)
                                                        )
                                                      )
                                                      (get_local $0)
                                                    )
                                                    (tee_local $1
                                                      (i32.and
                                                        (i32.shr_u
                                                          (tee_local $0
                                                            (i32.shr_u
                                                              (get_local $1)
                                                              (get_local $5)
                                                            )
                                                          )
                                                          (i32.const 2)
                                                        )
                                                        (i32.const 4)
                                                      )
                                                    )
                                                  )
                                                  (tee_local $1
                                                    (i32.and
                                                      (i32.shr_u
                                                        (tee_local $0
                                                          (i32.shr_u
                                                            (get_local $0)
                                                            (get_local $1)
                                                          )
                                                        )
                                                        (i32.const 1)
                                                      )
                                                      (i32.const 2)
                                                    )
                                                  )
                                                )
                                                (tee_local $1
                                                  (i32.and
                                                    (i32.shr_u
                                                      (tee_local $0
                                                        (i32.shr_u
                                                          (get_local $0)
                                                          (get_local $1)
                                                        )
                                                      )
                                                      (i32.const 1)
                                                    )
                                                    (i32.const 1)
                                                  )
                                                )
                                              )
                                              (i32.shr_u
                                                (get_local $0)
                                                (get_local $1)
                                              )
                                            )
                                          )
                                          (i32.const 1)
                                        )
                                        (i32.const 2)
                                      )
                                      (i32.const 1153228)
                                    )
                                  )
                                  (i32.const 8)
                                )
                              )
                            )
                          )
                          (i32.const 8)
                        )
                      )
                    )
                  )
                  (if
                    (i32.eq
                      (get_local $4)
                      (get_local $0)
                    )
                    (i32.store
                      (i32.const 1153188)
                      (tee_local $3
                        (i32.and
                          (get_local $7)
                          (i32.xor
                            (i32.shl
                              (i32.const 1)
                              (get_local $5)
                            )
                            (i32.const -1)
                          )
                        )
                      )
                    )
                    (block
                      (if
                        (i32.lt_u
                          (get_local $0)
                          (i32.load
                            (i32.const 1153204)
                          )
                        )
                        (call $_abort)
                      )
                      (if
                        (i32.eq
                          (i32.load
                            (tee_local $12
                              (i32.add
                                (get_local $0)
                                (i32.const 12)
                              )
                            )
                          )
                          (get_local $1)
                        )
                        (block
                          (i32.store
                            (get_local $12)
                            (get_local $4)
                          )
                          (i32.store
                            (get_local $8)
                            (get_local $0)
                          )
                          (set_local $3
                            (get_local $7)
                          )
                        )
                        (call $_abort)
                      )
                    )
                  )
                  (i32.store offset=4
                    (get_local $1)
                    (i32.or
                      (get_local $2)
                      (i32.const 3)
                    )
                  )
                  (i32.store offset=4
                    (tee_local $8
                      (i32.add
                        (get_local $1)
                        (get_local $2)
                      )
                    )
                    (i32.or
                      (tee_local $4
                        (i32.sub
                          (i32.shl
                            (get_local $5)
                            (i32.const 3)
                          )
                          (get_local $2)
                        )
                      )
                      (i32.const 1)
                    )
                  )
                  (i32.store
                    (i32.add
                      (get_local $8)
                      (get_local $4)
                    )
                    (get_local $4)
                  )
                  (if
                    (get_local $16)
                    (block
                      (set_local $5
                        (i32.load
                          (i32.const 1153208)
                        )
                      )
                      (set_local $0
                        (i32.add
                          (i32.shl
                            (i32.shl
                              (tee_local $1
                                (i32.shr_u
                                  (get_local $16)
                                  (i32.const 3)
                                )
                              )
                              (i32.const 1)
                            )
                            (i32.const 2)
                          )
                          (i32.const 1153228)
                        )
                      )
                      (if
                        (i32.and
                          (get_local $3)
                          (tee_local $1
                            (i32.shl
                              (i32.const 1)
                              (get_local $1)
                            )
                          )
                        )
                        (if
                          (i32.lt_u
                            (tee_local $2
                              (i32.load
                                (tee_local $1
                                  (i32.add
                                    (get_local $0)
                                    (i32.const 8)
                                  )
                                )
                              )
                            )
                            (i32.load
                              (i32.const 1153204)
                            )
                          )
                          (call $_abort)
                          (block
                            (set_local $6
                              (get_local $2)
                            )
                            (set_local $11
                              (get_local $1)
                            )
                          )
                        )
                        (block
                          (i32.store
                            (i32.const 1153188)
                            (i32.or
                              (get_local $3)
                              (get_local $1)
                            )
                          )
                          (set_local $6
                            (get_local $0)
                          )
                          (set_local $11
                            (i32.add
                              (get_local $0)
                              (i32.const 8)
                            )
                          )
                        )
                      )
                      (i32.store
                        (get_local $11)
                        (get_local $5)
                      )
                      (i32.store offset=12
                        (get_local $6)
                        (get_local $5)
                      )
                      (i32.store offset=8
                        (get_local $5)
                        (get_local $6)
                      )
                      (i32.store offset=12
                        (get_local $5)
                        (get_local $0)
                      )
                    )
                  )
                  (i32.store
                    (i32.const 1153196)
                    (get_local $4)
                  )
                  (i32.store
                    (i32.const 1153208)
                    (get_local $8)
                  )
                  (set_global $STACKTOP
                    (get_local $13)
                  )
                  (return
                    (get_local $10)
                  )
                )
              )
              (if
                (tee_local $11
                  (i32.load
                    (i32.const 1153192)
                  )
                )
                (block
                  (set_local $0
                    (i32.and
                      (i32.shr_u
                        (tee_local $1
                          (i32.add
                            (i32.and
                              (get_local $11)
                              (i32.sub
                                (i32.const 0)
                                (get_local $11)
                              )
                            )
                            (i32.const -1)
                          )
                        )
                        (i32.const 12)
                      )
                      (i32.const 16)
                    )
                  )
                  (set_local $8
                    (tee_local $0
                      (i32.load
                        (i32.add
                          (i32.shl
                            (i32.add
                              (i32.or
                                (i32.or
                                  (i32.or
                                    (i32.or
                                      (tee_local $3
                                        (i32.and
                                          (i32.shr_u
                                            (tee_local $1
                                              (i32.shr_u
                                                (get_local $1)
                                                (get_local $0)
                                              )
                                            )
                                            (i32.const 5)
                                          )
                                          (i32.const 8)
                                        )
                                      )
                                      (get_local $0)
                                    )
                                    (tee_local $1
                                      (i32.and
                                        (i32.shr_u
                                          (tee_local $0
                                            (i32.shr_u
                                              (get_local $1)
                                              (get_local $3)
                                            )
                                          )
                                          (i32.const 2)
                                        )
                                        (i32.const 4)
                                      )
                                    )
                                  )
                                  (tee_local $1
                                    (i32.and
                                      (i32.shr_u
                                        (tee_local $0
                                          (i32.shr_u
                                            (get_local $0)
                                            (get_local $1)
                                          )
                                        )
                                        (i32.const 1)
                                      )
                                      (i32.const 2)
                                    )
                                  )
                                )
                                (tee_local $1
                                  (i32.and
                                    (i32.shr_u
                                      (tee_local $0
                                        (i32.shr_u
                                          (get_local $0)
                                          (get_local $1)
                                        )
                                      )
                                      (i32.const 1)
                                    )
                                    (i32.const 1)
                                  )
                                )
                              )
                              (i32.shr_u
                                (get_local $0)
                                (get_local $1)
                              )
                            )
                            (i32.const 2)
                          )
                          (i32.const 1153492)
                        )
                      )
                    )
                  )
                  (set_local $3
                    (get_local $0)
                  )
                  (set_local $6
                    (i32.sub
                      (i32.and
                        (i32.load offset=4
                          (get_local $0)
                        )
                        (i32.const -8)
                      )
                      (get_local $2)
                    )
                  )
                  (loop $while-in
                    (block $while-out
                      (if
                        (i32.eqz
                          (tee_local $0
                            (i32.load offset=16
                              (get_local $8)
                            )
                          )
                        )
                        (br_if $while-out
                          (i32.eqz
                            (tee_local $0
                              (i32.load offset=20
                                (get_local $8)
                              )
                            )
                          )
                        )
                      )
                      (if
                        (i32.eqz
                          (tee_local $10
                            (i32.lt_u
                              (tee_local $1
                                (i32.sub
                                  (i32.and
                                    (i32.load offset=4
                                      (get_local $0)
                                    )
                                    (i32.const -8)
                                  )
                                  (get_local $2)
                                )
                              )
                              (get_local $6)
                            )
                          )
                        )
                        (set_local $1
                          (get_local $6)
                        )
                      )
                      (set_local $8
                        (get_local $0)
                      )
                      (if
                        (get_local $10)
                        (set_local $3
                          (get_local $0)
                        )
                      )
                      (set_local $6
                        (get_local $1)
                      )
                      (br $while-in)
                    )
                  )
                  (if
                    (i32.lt_u
                      (get_local $3)
                      (tee_local $15
                        (i32.load
                          (i32.const 1153204)
                        )
                      )
                    )
                    (call $_abort)
                  )
                  (if
                    (i32.ge_u
                      (get_local $3)
                      (tee_local $9
                        (i32.add
                          (get_local $3)
                          (get_local $2)
                        )
                      )
                    )
                    (call $_abort)
                  )
                  (set_local $12
                    (i32.load offset=24
                      (get_local $3)
                    )
                  )
                  (block $do-once4
                    (if
                      (i32.eq
                        (tee_local $0
                          (i32.load offset=12
                            (get_local $3)
                          )
                        )
                        (get_local $3)
                      )
                      (block
                        (if
                          (i32.eqz
                            (tee_local $0
                              (i32.load
                                (tee_local $1
                                  (i32.add
                                    (get_local $3)
                                    (i32.const 20)
                                  )
                                )
                              )
                            )
                          )
                          (if
                            (i32.eqz
                              (tee_local $0
                                (i32.load
                                  (tee_local $1
                                    (i32.add
                                      (get_local $3)
                                      (i32.const 16)
                                    )
                                  )
                                )
                              )
                            )
                            (block
                              (set_local $5
                                (i32.const 0)
                              )
                              (br $do-once4)
                            )
                          )
                        )
                        (loop $while-in7
                          (if
                            (tee_local $10
                              (i32.load
                                (tee_local $8
                                  (i32.add
                                    (get_local $0)
                                    (i32.const 20)
                                  )
                                )
                              )
                            )
                            (block
                              (set_local $0
                                (get_local $10)
                              )
                              (set_local $1
                                (get_local $8)
                              )
                              (br $while-in7)
                            )
                          )
                          (if
                            (tee_local $10
                              (i32.load
                                (tee_local $8
                                  (i32.add
                                    (get_local $0)
                                    (i32.const 16)
                                  )
                                )
                              )
                            )
                            (block
                              (set_local $0
                                (get_local $10)
                              )
                              (set_local $1
                                (get_local $8)
                              )
                              (br $while-in7)
                            )
                          )
                        )
                        (if
                          (i32.lt_u
                            (get_local $1)
                            (get_local $15)
                          )
                          (call $_abort)
                          (block
                            (i32.store
                              (get_local $1)
                              (i32.const 0)
                            )
                            (set_local $5
                              (get_local $0)
                            )
                          )
                        )
                      )
                      (block
                        (if
                          (i32.lt_u
                            (tee_local $1
                              (i32.load offset=8
                                (get_local $3)
                              )
                            )
                            (get_local $15)
                          )
                          (call $_abort)
                        )
                        (if
                          (i32.ne
                            (i32.load
                              (tee_local $8
                                (i32.add
                                  (get_local $1)
                                  (i32.const 12)
                                )
                              )
                            )
                            (get_local $3)
                          )
                          (call $_abort)
                        )
                        (if
                          (i32.eq
                            (i32.load
                              (tee_local $10
                                (i32.add
                                  (get_local $0)
                                  (i32.const 8)
                                )
                              )
                            )
                            (get_local $3)
                          )
                          (block
                            (i32.store
                              (get_local $8)
                              (get_local $0)
                            )
                            (i32.store
                              (get_local $10)
                              (get_local $1)
                            )
                            (set_local $5
                              (get_local $0)
                            )
                          )
                          (call $_abort)
                        )
                      )
                    )
                  )
                  (block $do-once8
                    (if
                      (get_local $12)
                      (block
                        (if
                          (i32.eq
                            (get_local $3)
                            (i32.load
                              (tee_local $1
                                (i32.add
                                  (i32.shl
                                    (tee_local $0
                                      (i32.load offset=28
                                        (get_local $3)
                                      )
                                    )
                                    (i32.const 2)
                                  )
                                  (i32.const 1153492)
                                )
                              )
                            )
                          )
                          (block
                            (i32.store
                              (get_local $1)
                              (get_local $5)
                            )
                            (if
                              (i32.eqz
                                (get_local $5)
                              )
                              (block
                                (i32.store
                                  (i32.const 1153192)
                                  (i32.and
                                    (get_local $11)
                                    (i32.xor
                                      (i32.shl
                                        (i32.const 1)
                                        (get_local $0)
                                      )
                                      (i32.const -1)
                                    )
                                  )
                                )
                                (br $do-once8)
                              )
                            )
                          )
                          (block
                            (if
                              (i32.lt_u
                                (get_local $12)
                                (i32.load
                                  (i32.const 1153204)
                                )
                              )
                              (call $_abort)
                            )
                            (if
                              (i32.eq
                                (i32.load
                                  (tee_local $0
                                    (i32.add
                                      (get_local $12)
                                      (i32.const 16)
                                    )
                                  )
                                )
                                (get_local $3)
                              )
                              (i32.store
                                (get_local $0)
                                (get_local $5)
                              )
                              (i32.store offset=20
                                (get_local $12)
                                (get_local $5)
                              )
                            )
                            (br_if $do-once8
                              (i32.eqz
                                (get_local $5)
                              )
                            )
                          )
                        )
                        (if
                          (i32.lt_u
                            (get_local $5)
                            (tee_local $1
                              (i32.load
                                (i32.const 1153204)
                              )
                            )
                          )
                          (call $_abort)
                        )
                        (i32.store offset=24
                          (get_local $5)
                          (get_local $12)
                        )
                        (if
                          (tee_local $0
                            (i32.load offset=16
                              (get_local $3)
                            )
                          )
                          (if
                            (i32.lt_u
                              (get_local $0)
                              (get_local $1)
                            )
                            (call $_abort)
                            (block
                              (i32.store offset=16
                                (get_local $5)
                                (get_local $0)
                              )
                              (i32.store offset=24
                                (get_local $0)
                                (get_local $5)
                              )
                            )
                          )
                        )
                        (if
                          (tee_local $0
                            (i32.load offset=20
                              (get_local $3)
                            )
                          )
                          (if
                            (i32.lt_u
                              (get_local $0)
                              (i32.load
                                (i32.const 1153204)
                              )
                            )
                            (call $_abort)
                            (block
                              (i32.store offset=20
                                (get_local $5)
                                (get_local $0)
                              )
                              (i32.store offset=24
                                (get_local $0)
                                (get_local $5)
                              )
                            )
                          )
                        )
                      )
                    )
                  )
                  (if
                    (i32.lt_u
                      (get_local $6)
                      (i32.const 16)
                    )
                    (block
                      (i32.store offset=4
                        (get_local $3)
                        (i32.or
                          (tee_local $0
                            (i32.add
                              (get_local $6)
                              (get_local $2)
                            )
                          )
                          (i32.const 3)
                        )
                      )
                      (i32.store
                        (tee_local $0
                          (i32.add
                            (i32.add
                              (get_local $3)
                              (get_local $0)
                            )
                            (i32.const 4)
                          )
                        )
                        (i32.or
                          (i32.load
                            (get_local $0)
                          )
                          (i32.const 1)
                        )
                      )
                    )
                    (block
                      (i32.store offset=4
                        (get_local $3)
                        (i32.or
                          (get_local $2)
                          (i32.const 3)
                        )
                      )
                      (i32.store offset=4
                        (get_local $9)
                        (i32.or
                          (get_local $6)
                          (i32.const 1)
                        )
                      )
                      (i32.store
                        (i32.add
                          (get_local $9)
                          (get_local $6)
                        )
                        (get_local $6)
                      )
                      (if
                        (get_local $16)
                        (block
                          (set_local $5
                            (i32.load
                              (i32.const 1153208)
                            )
                          )
                          (set_local $0
                            (i32.add
                              (i32.shl
                                (i32.shl
                                  (tee_local $1
                                    (i32.shr_u
                                      (get_local $16)
                                      (i32.const 3)
                                    )
                                  )
                                  (i32.const 1)
                                )
                                (i32.const 2)
                              )
                              (i32.const 1153228)
                            )
                          )
                          (if
                            (i32.and
                              (get_local $7)
                              (tee_local $1
                                (i32.shl
                                  (i32.const 1)
                                  (get_local $1)
                                )
                              )
                            )
                            (if
                              (i32.lt_u
                                (tee_local $2
                                  (i32.load
                                    (tee_local $1
                                      (i32.add
                                        (get_local $0)
                                        (i32.const 8)
                                      )
                                    )
                                  )
                                )
                                (i32.load
                                  (i32.const 1153204)
                                )
                              )
                              (call $_abort)
                              (block
                                (set_local $4
                                  (get_local $2)
                                )
                                (set_local $14
                                  (get_local $1)
                                )
                              )
                            )
                            (block
                              (i32.store
                                (i32.const 1153188)
                                (i32.or
                                  (get_local $7)
                                  (get_local $1)
                                )
                              )
                              (set_local $4
                                (get_local $0)
                              )
                              (set_local $14
                                (i32.add
                                  (get_local $0)
                                  (i32.const 8)
                                )
                              )
                            )
                          )
                          (i32.store
                            (get_local $14)
                            (get_local $5)
                          )
                          (i32.store offset=12
                            (get_local $4)
                            (get_local $5)
                          )
                          (i32.store offset=8
                            (get_local $5)
                            (get_local $4)
                          )
                          (i32.store offset=12
                            (get_local $5)
                            (get_local $0)
                          )
                        )
                      )
                      (i32.store
                        (i32.const 1153196)
                        (get_local $6)
                      )
                      (i32.store
                        (i32.const 1153208)
                        (get_local $9)
                      )
                    )
                  )
                  (set_global $STACKTOP
                    (get_local $13)
                  )
                  (return
                    (i32.add
                      (get_local $3)
                      (i32.const 8)
                    )
                  )
                )
                (set_local $0
                  (get_local $2)
                )
              )
            )
            (set_local $0
              (get_local $2)
            )
          )
        )
        (if
          (i32.gt_u
            (get_local $0)
            (i32.const -65)
          )
          (set_local $0
            (i32.const -1)
          )
          (block
            (set_local $5
              (i32.and
                (tee_local $0
                  (i32.add
                    (get_local $0)
                    (i32.const 11)
                  )
                )
                (i32.const -8)
              )
            )
            (if
              (tee_local $6
                (i32.load
                  (i32.const 1153192)
                )
              )
              (block
                (set_local $17
                  (if i32
                    (tee_local $0
                      (i32.shr_u
                        (get_local $0)
                        (i32.const 8)
                      )
                    )
                    (if i32
                      (i32.gt_u
                        (get_local $5)
                        (i32.const 16777215)
                      )
                      (i32.const 31)
                      (i32.or
                        (i32.and
                          (i32.shr_u
                            (get_local $5)
                            (i32.add
                              (tee_local $0
                                (i32.add
                                  (i32.sub
                                    (i32.const 14)
                                    (i32.or
                                      (i32.or
                                        (tee_local $3
                                          (i32.and
                                            (i32.shr_u
                                              (i32.add
                                                (tee_local $2
                                                  (i32.shl
                                                    (get_local $0)
                                                    (tee_local $0
                                                      (i32.and
                                                        (i32.shr_u
                                                          (i32.add
                                                            (get_local $0)
                                                            (i32.const 1048320)
                                                          )
                                                          (i32.const 16)
                                                        )
                                                        (i32.const 8)
                                                      )
                                                    )
                                                  )
                                                )
                                                (i32.const 520192)
                                              )
                                              (i32.const 16)
                                            )
                                            (i32.const 4)
                                          )
                                        )
                                        (get_local $0)
                                      )
                                      (tee_local $2
                                        (i32.and
                                          (i32.shr_u
                                            (i32.add
                                              (tee_local $0
                                                (i32.shl
                                                  (get_local $2)
                                                  (get_local $3)
                                                )
                                              )
                                              (i32.const 245760)
                                            )
                                            (i32.const 16)
                                          )
                                          (i32.const 2)
                                        )
                                      )
                                    )
                                  )
                                  (i32.shr_u
                                    (i32.shl
                                      (get_local $0)
                                      (get_local $2)
                                    )
                                    (i32.const 15)
                                  )
                                )
                              )
                              (i32.const 7)
                            )
                          )
                          (i32.const 1)
                        )
                        (i32.shl
                          (get_local $0)
                          (i32.const 1)
                        )
                      )
                    )
                    (i32.const 0)
                  )
                )
                (set_local $3
                  (i32.sub
                    (i32.const 0)
                    (get_local $5)
                  )
                )
                (block $__rjto$3
                  (block $__rjti$3
                    (block $__rjti$2
                      (if
                        (tee_local $0
                          (i32.load
                            (i32.add
                              (i32.shl
                                (get_local $17)
                                (i32.const 2)
                              )
                              (i32.const 1153492)
                            )
                          )
                        )
                        (block
                          (set_local $4
                            (i32.sub
                              (i32.const 25)
                              (i32.shr_u
                                (get_local $17)
                                (i32.const 1)
                              )
                            )
                          )
                          (set_local $2
                            (i32.const 0)
                          )
                          (set_local $11
                            (i32.shl
                              (get_local $5)
                              (if i32
                                (i32.eq
                                  (get_local $17)
                                  (i32.const 31)
                                )
                                (i32.const 0)
                                (get_local $4)
                              )
                            )
                          )
                          (set_local $4
                            (i32.const 0)
                          )
                          (loop $while-in14
                            (if
                              (i32.lt_u
                                (tee_local $14
                                  (i32.sub
                                    (i32.and
                                      (i32.load offset=4
                                        (get_local $0)
                                      )
                                      (i32.const -8)
                                    )
                                    (get_local $5)
                                  )
                                )
                                (get_local $3)
                              )
                              (if
                                (get_local $14)
                                (block
                                  (set_local $2
                                    (get_local $0)
                                  )
                                  (set_local $3
                                    (get_local $14)
                                  )
                                )
                                (block
                                  (set_local $2
                                    (get_local $0)
                                  )
                                  (set_local $3
                                    (i32.const 0)
                                  )
                                  (br $__rjti$3)
                                )
                              )
                            )
                            (if
                              (i32.eqz
                                (i32.or
                                  (i32.eqz
                                    (tee_local $14
                                      (i32.load offset=20
                                        (get_local $0)
                                      )
                                    )
                                  )
                                  (i32.eq
                                    (get_local $14)
                                    (tee_local $0
                                      (i32.load
                                        (i32.add
                                          (i32.add
                                            (get_local $0)
                                            (i32.const 16)
                                          )
                                          (i32.shl
                                            (i32.shr_u
                                              (get_local $11)
                                              (i32.const 31)
                                            )
                                            (i32.const 2)
                                          )
                                        )
                                      )
                                    )
                                  )
                                )
                              )
                              (set_local $4
                                (get_local $14)
                              )
                            )
                            (set_local $11
                              (i32.shl
                                (get_local $11)
                                (i32.xor
                                  (i32.and
                                    (tee_local $14
                                      (i32.eqz
                                        (get_local $0)
                                      )
                                    )
                                    (i32.const 1)
                                  )
                                  (i32.const 1)
                                )
                              )
                            )
                            (br_if $while-in14
                              (i32.eqz
                                (get_local $14)
                              )
                            )
                            (br $__rjti$2)
                          )
                        )
                        (block
                          (set_local $4
                            (i32.const 0)
                          )
                          (set_local $2
                            (i32.const 0)
                          )
                        )
                      )
                    )
                    (br_if $__rjti$3
                      (tee_local $0
                        (if i32
                          (i32.and
                            (i32.eqz
                              (get_local $4)
                            )
                            (i32.eqz
                              (get_local $2)
                            )
                          )
                          (block i32
                            (if
                              (i32.eqz
                                (tee_local $0
                                  (i32.and
                                    (get_local $6)
                                    (i32.or
                                      (tee_local $0
                                        (i32.shl
                                          (i32.const 2)
                                          (get_local $17)
                                        )
                                      )
                                      (i32.sub
                                        (i32.const 0)
                                        (get_local $0)
                                      )
                                    )
                                  )
                                )
                              )
                              (block
                                (set_local $0
                                  (get_local $5)
                                )
                                (br $do-once)
                              )
                            )
                            (set_local $0
                              (i32.and
                                (i32.shr_u
                                  (tee_local $4
                                    (i32.add
                                      (i32.and
                                        (get_local $0)
                                        (i32.sub
                                          (i32.const 0)
                                          (get_local $0)
                                        )
                                      )
                                      (i32.const -1)
                                    )
                                  )
                                  (i32.const 12)
                                )
                                (i32.const 16)
                              )
                            )
                            (i32.load
                              (i32.add
                                (i32.shl
                                  (i32.add
                                    (i32.or
                                      (i32.or
                                        (i32.or
                                          (i32.or
                                            (tee_local $11
                                              (i32.and
                                                (i32.shr_u
                                                  (tee_local $4
                                                    (i32.shr_u
                                                      (get_local $4)
                                                      (get_local $0)
                                                    )
                                                  )
                                                  (i32.const 5)
                                                )
                                                (i32.const 8)
                                              )
                                            )
                                            (get_local $0)
                                          )
                                          (tee_local $4
                                            (i32.and
                                              (i32.shr_u
                                                (tee_local $0
                                                  (i32.shr_u
                                                    (get_local $4)
                                                    (get_local $11)
                                                  )
                                                )
                                                (i32.const 2)
                                              )
                                              (i32.const 4)
                                            )
                                          )
                                        )
                                        (tee_local $4
                                          (i32.and
                                            (i32.shr_u
                                              (tee_local $0
                                                (i32.shr_u
                                                  (get_local $0)
                                                  (get_local $4)
                                                )
                                              )
                                              (i32.const 1)
                                            )
                                            (i32.const 2)
                                          )
                                        )
                                      )
                                      (tee_local $4
                                        (i32.and
                                          (i32.shr_u
                                            (tee_local $0
                                              (i32.shr_u
                                                (get_local $0)
                                                (get_local $4)
                                              )
                                            )
                                            (i32.const 1)
                                          )
                                          (i32.const 1)
                                        )
                                      )
                                    )
                                    (i32.shr_u
                                      (get_local $0)
                                      (get_local $4)
                                    )
                                  )
                                  (i32.const 2)
                                )
                                (i32.const 1153492)
                              )
                            )
                          )
                          (get_local $4)
                        )
                      )
                    )
                    (set_local $4
                      (get_local $2)
                    )
                    (br $__rjto$3)
                  )
                  (loop $while-in16
                    (if
                      (tee_local $11
                        (i32.lt_u
                          (tee_local $4
                            (i32.sub
                              (i32.and
                                (i32.load offset=4
                                  (get_local $0)
                                )
                                (i32.const -8)
                              )
                              (get_local $5)
                            )
                          )
                          (get_local $3)
                        )
                      )
                      (set_local $3
                        (get_local $4)
                      )
                    )
                    (if
                      (get_local $11)
                      (set_local $2
                        (get_local $0)
                      )
                    )
                    (if
                      (tee_local $4
                        (i32.load offset=16
                          (get_local $0)
                        )
                      )
                      (block
                        (set_local $0
                          (get_local $4)
                        )
                        (br $while-in16)
                      )
                    )
                    (br_if $while-in16
                      (tee_local $0
                        (i32.load offset=20
                          (get_local $0)
                        )
                      )
                    )
                    (set_local $4
                      (get_local $2)
                    )
                  )
                )
                (if
                  (get_local $4)
                  (if
                    (i32.lt_u
                      (get_local $3)
                      (i32.sub
                        (i32.load
                          (i32.const 1153196)
                        )
                        (get_local $5)
                      )
                    )
                    (block
                      (if
                        (i32.lt_u
                          (get_local $4)
                          (tee_local $15
                            (i32.load
                              (i32.const 1153204)
                            )
                          )
                        )
                        (call $_abort)
                      )
                      (if
                        (i32.ge_u
                          (get_local $4)
                          (tee_local $9
                            (i32.add
                              (get_local $4)
                              (get_local $5)
                            )
                          )
                        )
                        (call $_abort)
                      )
                      (set_local $11
                        (i32.load offset=24
                          (get_local $4)
                        )
                      )
                      (block $do-once17
                        (if
                          (i32.eq
                            (tee_local $0
                              (i32.load offset=12
                                (get_local $4)
                              )
                            )
                            (get_local $4)
                          )
                          (block
                            (if
                              (i32.eqz
                                (tee_local $0
                                  (i32.load
                                    (tee_local $2
                                      (i32.add
                                        (get_local $4)
                                        (i32.const 20)
                                      )
                                    )
                                  )
                                )
                              )
                              (if
                                (i32.eqz
                                  (tee_local $0
                                    (i32.load
                                      (tee_local $2
                                        (i32.add
                                          (get_local $4)
                                          (i32.const 16)
                                        )
                                      )
                                    )
                                  )
                                )
                                (block
                                  (set_local $8
                                    (i32.const 0)
                                  )
                                  (br $do-once17)
                                )
                              )
                            )
                            (loop $while-in20
                              (if
                                (tee_local $12
                                  (i32.load
                                    (tee_local $10
                                      (i32.add
                                        (get_local $0)
                                        (i32.const 20)
                                      )
                                    )
                                  )
                                )
                                (block
                                  (set_local $0
                                    (get_local $12)
                                  )
                                  (set_local $2
                                    (get_local $10)
                                  )
                                  (br $while-in20)
                                )
                              )
                              (if
                                (tee_local $12
                                  (i32.load
                                    (tee_local $10
                                      (i32.add
                                        (get_local $0)
                                        (i32.const 16)
                                      )
                                    )
                                  )
                                )
                                (block
                                  (set_local $0
                                    (get_local $12)
                                  )
                                  (set_local $2
                                    (get_local $10)
                                  )
                                  (br $while-in20)
                                )
                              )
                            )
                            (if
                              (i32.lt_u
                                (get_local $2)
                                (get_local $15)
                              )
                              (call $_abort)
                              (block
                                (i32.store
                                  (get_local $2)
                                  (i32.const 0)
                                )
                                (set_local $8
                                  (get_local $0)
                                )
                              )
                            )
                          )
                          (block
                            (if
                              (i32.lt_u
                                (tee_local $2
                                  (i32.load offset=8
                                    (get_local $4)
                                  )
                                )
                                (get_local $15)
                              )
                              (call $_abort)
                            )
                            (if
                              (i32.ne
                                (i32.load
                                  (tee_local $10
                                    (i32.add
                                      (get_local $2)
                                      (i32.const 12)
                                    )
                                  )
                                )
                                (get_local $4)
                              )
                              (call $_abort)
                            )
                            (if
                              (i32.eq
                                (i32.load
                                  (tee_local $12
                                    (i32.add
                                      (get_local $0)
                                      (i32.const 8)
                                    )
                                  )
                                )
                                (get_local $4)
                              )
                              (block
                                (i32.store
                                  (get_local $10)
                                  (get_local $0)
                                )
                                (i32.store
                                  (get_local $12)
                                  (get_local $2)
                                )
                                (set_local $8
                                  (get_local $0)
                                )
                              )
                              (call $_abort)
                            )
                          )
                        )
                      )
                      (block $do-once21
                        (if
                          (get_local $11)
                          (block
                            (if
                              (i32.eq
                                (get_local $4)
                                (i32.load
                                  (tee_local $2
                                    (i32.add
                                      (i32.shl
                                        (tee_local $0
                                          (i32.load offset=28
                                            (get_local $4)
                                          )
                                        )
                                        (i32.const 2)
                                      )
                                      (i32.const 1153492)
                                    )
                                  )
                                )
                              )
                              (block
                                (i32.store
                                  (get_local $2)
                                  (get_local $8)
                                )
                                (if
                                  (i32.eqz
                                    (get_local $8)
                                  )
                                  (block
                                    (i32.store
                                      (i32.const 1153192)
                                      (tee_local $1
                                        (i32.and
                                          (get_local $6)
                                          (i32.xor
                                            (i32.shl
                                              (i32.const 1)
                                              (get_local $0)
                                            )
                                            (i32.const -1)
                                          )
                                        )
                                      )
                                    )
                                    (br $do-once21)
                                  )
                                )
                              )
                              (block
                                (if
                                  (i32.lt_u
                                    (get_local $11)
                                    (i32.load
                                      (i32.const 1153204)
                                    )
                                  )
                                  (call $_abort)
                                )
                                (if
                                  (i32.eq
                                    (i32.load
                                      (tee_local $0
                                        (i32.add
                                          (get_local $11)
                                          (i32.const 16)
                                        )
                                      )
                                    )
                                    (get_local $4)
                                  )
                                  (i32.store
                                    (get_local $0)
                                    (get_local $8)
                                  )
                                  (i32.store offset=20
                                    (get_local $11)
                                    (get_local $8)
                                  )
                                )
                                (if
                                  (i32.eqz
                                    (get_local $8)
                                  )
                                  (block
                                    (set_local $1
                                      (get_local $6)
                                    )
                                    (br $do-once21)
                                  )
                                )
                              )
                            )
                            (if
                              (i32.lt_u
                                (get_local $8)
                                (tee_local $2
                                  (i32.load
                                    (i32.const 1153204)
                                  )
                                )
                              )
                              (call $_abort)
                            )
                            (i32.store offset=24
                              (get_local $8)
                              (get_local $11)
                            )
                            (if
                              (tee_local $0
                                (i32.load offset=16
                                  (get_local $4)
                                )
                              )
                              (if
                                (i32.lt_u
                                  (get_local $0)
                                  (get_local $2)
                                )
                                (call $_abort)
                                (block
                                  (i32.store offset=16
                                    (get_local $8)
                                    (get_local $0)
                                  )
                                  (i32.store offset=24
                                    (get_local $0)
                                    (get_local $8)
                                  )
                                )
                              )
                            )
                            (if
                              (tee_local $0
                                (i32.load offset=20
                                  (get_local $4)
                                )
                              )
                              (if
                                (i32.lt_u
                                  (get_local $0)
                                  (i32.load
                                    (i32.const 1153204)
                                  )
                                )
                                (call $_abort)
                                (block
                                  (i32.store offset=20
                                    (get_local $8)
                                    (get_local $0)
                                  )
                                  (i32.store offset=24
                                    (get_local $0)
                                    (get_local $8)
                                  )
                                  (set_local $1
                                    (get_local $6)
                                  )
                                )
                              )
                              (set_local $1
                                (get_local $6)
                              )
                            )
                          )
                          (set_local $1
                            (get_local $6)
                          )
                        )
                      )
                      (block $do-once25
                        (if
                          (i32.lt_u
                            (get_local $3)
                            (i32.const 16)
                          )
                          (block
                            (i32.store offset=4
                              (get_local $4)
                              (i32.or
                                (tee_local $0
                                  (i32.add
                                    (get_local $3)
                                    (get_local $5)
                                  )
                                )
                                (i32.const 3)
                              )
                            )
                            (i32.store
                              (tee_local $0
                                (i32.add
                                  (i32.add
                                    (get_local $4)
                                    (get_local $0)
                                  )
                                  (i32.const 4)
                                )
                              )
                              (i32.or
                                (i32.load
                                  (get_local $0)
                                )
                                (i32.const 1)
                              )
                            )
                          )
                          (block
                            (i32.store offset=4
                              (get_local $4)
                              (i32.or
                                (get_local $5)
                                (i32.const 3)
                              )
                            )
                            (i32.store offset=4
                              (get_local $9)
                              (i32.or
                                (get_local $3)
                                (i32.const 1)
                              )
                            )
                            (i32.store
                              (i32.add
                                (get_local $9)
                                (get_local $3)
                              )
                              (get_local $3)
                            )
                            (set_local $2
                              (i32.shr_u
                                (get_local $3)
                                (i32.const 3)
                              )
                            )
                            (if
                              (i32.lt_u
                                (get_local $3)
                                (i32.const 256)
                              )
                              (block
                                (set_local $0
                                  (i32.add
                                    (i32.shl
                                      (i32.shl
                                        (get_local $2)
                                        (i32.const 1)
                                      )
                                      (i32.const 2)
                                    )
                                    (i32.const 1153228)
                                  )
                                )
                                (if
                                  (i32.and
                                    (tee_local $1
                                      (i32.load
                                        (i32.const 1153188)
                                      )
                                    )
                                    (tee_local $2
                                      (i32.shl
                                        (i32.const 1)
                                        (get_local $2)
                                      )
                                    )
                                  )
                                  (if
                                    (i32.lt_u
                                      (tee_local $2
                                        (i32.load
                                          (tee_local $1
                                            (i32.add
                                              (get_local $0)
                                              (i32.const 8)
                                            )
                                          )
                                        )
                                      )
                                      (i32.load
                                        (i32.const 1153204)
                                      )
                                    )
                                    (call $_abort)
                                    (block
                                      (set_local $7
                                        (get_local $2)
                                      )
                                      (set_local $16
                                        (get_local $1)
                                      )
                                    )
                                  )
                                  (block
                                    (i32.store
                                      (i32.const 1153188)
                                      (i32.or
                                        (get_local $1)
                                        (get_local $2)
                                      )
                                    )
                                    (set_local $7
                                      (get_local $0)
                                    )
                                    (set_local $16
                                      (i32.add
                                        (get_local $0)
                                        (i32.const 8)
                                      )
                                    )
                                  )
                                )
                                (i32.store
                                  (get_local $16)
                                  (get_local $9)
                                )
                                (i32.store offset=12
                                  (get_local $7)
                                  (get_local $9)
                                )
                                (i32.store offset=8
                                  (get_local $9)
                                  (get_local $7)
                                )
                                (i32.store offset=12
                                  (get_local $9)
                                  (get_local $0)
                                )
                                (br $do-once25)
                              )
                            )
                            (set_local $0
                              (i32.add
                                (i32.shl
                                  (tee_local $2
                                    (if i32
                                      (tee_local $0
                                        (i32.shr_u
                                          (get_local $3)
                                          (i32.const 8)
                                        )
                                      )
                                      (if i32
                                        (i32.gt_u
                                          (get_local $3)
                                          (i32.const 16777215)
                                        )
                                        (i32.const 31)
                                        (i32.or
                                          (i32.and
                                            (i32.shr_u
                                              (get_local $3)
                                              (i32.add
                                                (tee_local $0
                                                  (i32.add
                                                    (i32.sub
                                                      (i32.const 14)
                                                      (i32.or
                                                        (i32.or
                                                          (tee_local $5
                                                            (i32.and
                                                              (i32.shr_u
                                                                (i32.add
                                                                  (tee_local $2
                                                                    (i32.shl
                                                                      (get_local $0)
                                                                      (tee_local $0
                                                                        (i32.and
                                                                          (i32.shr_u
                                                                            (i32.add
                                                                              (get_local $0)
                                                                              (i32.const 1048320)
                                                                            )
                                                                            (i32.const 16)
                                                                          )
                                                                          (i32.const 8)
                                                                        )
                                                                      )
                                                                    )
                                                                  )
                                                                  (i32.const 520192)
                                                                )
                                                                (i32.const 16)
                                                              )
                                                              (i32.const 4)
                                                            )
                                                          )
                                                          (get_local $0)
                                                        )
                                                        (tee_local $2
                                                          (i32.and
                                                            (i32.shr_u
                                                              (i32.add
                                                                (tee_local $0
                                                                  (i32.shl
                                                                    (get_local $2)
                                                                    (get_local $5)
                                                                  )
                                                                )
                                                                (i32.const 245760)
                                                              )
                                                              (i32.const 16)
                                                            )
                                                            (i32.const 2)
                                                          )
                                                        )
                                                      )
                                                    )
                                                    (i32.shr_u
                                                      (i32.shl
                                                        (get_local $0)
                                                        (get_local $2)
                                                      )
                                                      (i32.const 15)
                                                    )
                                                  )
                                                )
                                                (i32.const 7)
                                              )
                                            )
                                            (i32.const 1)
                                          )
                                          (i32.shl
                                            (get_local $0)
                                            (i32.const 1)
                                          )
                                        )
                                      )
                                      (i32.const 0)
                                    )
                                  )
                                  (i32.const 2)
                                )
                                (i32.const 1153492)
                              )
                            )
                            (i32.store offset=28
                              (get_local $9)
                              (get_local $2)
                            )
                            (i32.store offset=4
                              (tee_local $5
                                (i32.add
                                  (get_local $9)
                                  (i32.const 16)
                                )
                              )
                              (i32.const 0)
                            )
                            (i32.store
                              (get_local $5)
                              (i32.const 0)
                            )
                            (if
                              (i32.eqz
                                (i32.and
                                  (get_local $1)
                                  (tee_local $5
                                    (i32.shl
                                      (i32.const 1)
                                      (get_local $2)
                                    )
                                  )
                                )
                              )
                              (block
                                (i32.store
                                  (i32.const 1153192)
                                  (i32.or
                                    (get_local $1)
                                    (get_local $5)
                                  )
                                )
                                (i32.store
                                  (get_local $0)
                                  (get_local $9)
                                )
                                (i32.store offset=24
                                  (get_local $9)
                                  (get_local $0)
                                )
                                (i32.store offset=12
                                  (get_local $9)
                                  (get_local $9)
                                )
                                (i32.store offset=8
                                  (get_local $9)
                                  (get_local $9)
                                )
                                (br $do-once25)
                              )
                            )
                            (set_local $0
                              (i32.load
                                (get_local $0)
                              )
                            )
                            (set_local $1
                              (i32.sub
                                (i32.const 25)
                                (i32.shr_u
                                  (get_local $2)
                                  (i32.const 1)
                                )
                              )
                            )
                            (set_local $1
                              (i32.shl
                                (get_local $3)
                                (if i32
                                  (i32.eq
                                    (get_local $2)
                                    (i32.const 31)
                                  )
                                  (i32.const 0)
                                  (get_local $1)
                                )
                              )
                            )
                            (block $__rjto$1
                              (block $__rjti$1
                                (block $__rjti$0
                                  (loop $while-in28
                                    (br_if $__rjti$1
                                      (i32.eq
                                        (i32.and
                                          (i32.load offset=4
                                            (get_local $0)
                                          )
                                          (i32.const -8)
                                        )
                                        (get_local $3)
                                      )
                                    )
                                    (set_local $2
                                      (i32.shl
                                        (get_local $1)
                                        (i32.const 1)
                                      )
                                    )
                                    (br_if $__rjti$0
                                      (i32.eqz
                                        (tee_local $5
                                          (i32.load
                                            (tee_local $1
                                              (i32.add
                                                (i32.add
                                                  (get_local $0)
                                                  (i32.const 16)
                                                )
                                                (i32.shl
                                                  (i32.shr_u
                                                    (get_local $1)
                                                    (i32.const 31)
                                                  )
                                                  (i32.const 2)
                                                )
                                              )
                                            )
                                          )
                                        )
                                      )
                                    )
                                    (set_local $1
                                      (get_local $2)
                                    )
                                    (set_local $0
                                      (get_local $5)
                                    )
                                    (br $while-in28)
                                  )
                                )
                                (if
                                  (i32.lt_u
                                    (get_local $1)
                                    (i32.load
                                      (i32.const 1153204)
                                    )
                                  )
                                  (call $_abort)
                                  (block
                                    (i32.store
                                      (get_local $1)
                                      (get_local $9)
                                    )
                                    (i32.store offset=24
                                      (get_local $9)
                                      (get_local $0)
                                    )
                                    (i32.store offset=12
                                      (get_local $9)
                                      (get_local $9)
                                    )
                                    (i32.store offset=8
                                      (get_local $9)
                                      (get_local $9)
                                    )
                                    (br $do-once25)
                                  )
                                )
                                (br $__rjto$1)
                              )
                              (if
                                (i32.and
                                  (i32.ge_u
                                    (tee_local $1
                                      (i32.load
                                        (tee_local $2
                                          (i32.add
                                            (get_local $0)
                                            (i32.const 8)
                                          )
                                        )
                                      )
                                    )
                                    (tee_local $3
                                      (i32.load
                                        (i32.const 1153204)
                                      )
                                    )
                                  )
                                  (i32.ge_u
                                    (get_local $0)
                                    (get_local $3)
                                  )
                                )
                                (block
                                  (i32.store offset=12
                                    (get_local $1)
                                    (get_local $9)
                                  )
                                  (i32.store
                                    (get_local $2)
                                    (get_local $9)
                                  )
                                  (i32.store offset=8
                                    (get_local $9)
                                    (get_local $1)
                                  )
                                  (i32.store offset=12
                                    (get_local $9)
                                    (get_local $0)
                                  )
                                  (i32.store offset=24
                                    (get_local $9)
                                    (i32.const 0)
                                  )
                                )
                                (call $_abort)
                              )
                            )
                          )
                        )
                      )
                      (set_global $STACKTOP
                        (get_local $13)
                      )
                      (return
                        (i32.add
                          (get_local $4)
                          (i32.const 8)
                        )
                      )
                    )
                    (set_local $0
                      (get_local $5)
                    )
                  )
                  (set_local $0
                    (get_local $5)
                  )
                )
              )
              (set_local $0
                (get_local $5)
              )
            )
          )
        )
      )
    )
    (if
      (i32.ge_u
        (tee_local $3
          (i32.load
            (i32.const 1153196)
          )
        )
        (get_local $0)
      )
      (block
        (set_local $1
          (i32.load
            (i32.const 1153208)
          )
        )
        (if
          (i32.gt_u
            (tee_local $2
              (i32.sub
                (get_local $3)
                (get_local $0)
              )
            )
            (i32.const 15)
          )
          (block
            (i32.store
              (i32.const 1153208)
              (tee_local $3
                (i32.add
                  (get_local $1)
                  (get_local $0)
                )
              )
            )
            (i32.store
              (i32.const 1153196)
              (get_local $2)
            )
            (i32.store offset=4
              (get_local $3)
              (i32.or
                (get_local $2)
                (i32.const 1)
              )
            )
            (i32.store
              (i32.add
                (get_local $3)
                (get_local $2)
              )
              (get_local $2)
            )
            (i32.store offset=4
              (get_local $1)
              (i32.or
                (get_local $0)
                (i32.const 3)
              )
            )
          )
          (block
            (i32.store
              (i32.const 1153196)
              (i32.const 0)
            )
            (i32.store
              (i32.const 1153208)
              (i32.const 0)
            )
            (i32.store offset=4
              (get_local $1)
              (i32.or
                (get_local $3)
                (i32.const 3)
              )
            )
            (i32.store
              (tee_local $0
                (i32.add
                  (i32.add
                    (get_local $1)
                    (get_local $3)
                  )
                  (i32.const 4)
                )
              )
              (i32.or
                (i32.load
                  (get_local $0)
                )
                (i32.const 1)
              )
            )
          )
        )
        (set_global $STACKTOP
          (get_local $13)
        )
        (return
          (i32.add
            (get_local $1)
            (i32.const 8)
          )
        )
      )
    )
    (if
      (i32.gt_u
        (tee_local $3
          (i32.load
            (i32.const 1153200)
          )
        )
        (get_local $0)
      )
      (block
        (i32.store
          (i32.const 1153200)
          (tee_local $2
            (i32.sub
              (get_local $3)
              (get_local $0)
            )
          )
        )
        (i32.store
          (i32.const 1153212)
          (tee_local $3
            (i32.add
              (tee_local $1
                (i32.load
                  (i32.const 1153212)
                )
              )
              (get_local $0)
            )
          )
        )
        (i32.store offset=4
          (get_local $3)
          (i32.or
            (get_local $2)
            (i32.const 1)
          )
        )
        (i32.store offset=4
          (get_local $1)
          (i32.or
            (get_local $0)
            (i32.const 3)
          )
        )
        (set_global $STACKTOP
          (get_local $13)
        )
        (return
          (i32.add
            (get_local $1)
            (i32.const 8)
          )
        )
      )
    )
    (if
      (i32.le_u
        (tee_local $5
          (i32.and
            (tee_local $4
              (i32.add
                (tee_local $1
                  (if i32
                    (i32.load
                      (i32.const 1153660)
                    )
                    (i32.load
                      (i32.const 1153668)
                    )
                    (block i32
                      (i32.store
                        (i32.const 1153668)
                        (i32.const 4096)
                      )
                      (i32.store
                        (i32.const 1153664)
                        (i32.const 4096)
                      )
                      (i32.store
                        (i32.const 1153672)
                        (i32.const -1)
                      )
                      (i32.store
                        (i32.const 1153676)
                        (i32.const -1)
                      )
                      (i32.store
                        (i32.const 1153680)
                        (i32.const 0)
                      )
                      (i32.store
                        (i32.const 1153632)
                        (i32.const 0)
                      )
                      (i32.store
                        (get_local $15)
                        (tee_local $1
                          (i32.xor
                            (i32.and
                              (get_local $15)
                              (i32.const -16)
                            )
                            (i32.const 1431655768)
                          )
                        )
                      )
                      (i32.store
                        (i32.const 1153660)
                        (get_local $1)
                      )
                      (i32.const 4096)
                    )
                  )
                )
                (tee_local $6
                  (i32.add
                    (get_local $0)
                    (i32.const 47)
                  )
                )
              )
            )
            (tee_local $8
              (i32.sub
                (i32.const 0)
                (get_local $1)
              )
            )
          )
        )
        (get_local $0)
      )
      (block
        (set_global $STACKTOP
          (get_local $13)
        )
        (return
          (i32.const 0)
        )
      )
    )
    (if
      (tee_local $1
        (i32.load
          (i32.const 1153628)
        )
      )
      (if
        (i32.or
          (i32.le_u
            (tee_local $7
              (i32.add
                (tee_local $2
                  (i32.load
                    (i32.const 1153620)
                  )
                )
                (get_local $5)
              )
            )
            (get_local $2)
          )
          (i32.gt_u
            (get_local $7)
            (get_local $1)
          )
        )
        (block
          (set_global $STACKTOP
            (get_local $13)
          )
          (return
            (i32.const 0)
          )
        )
      )
    )
    (set_local $7
      (i32.add
        (get_local $0)
        (i32.const 48)
      )
    )
    (block $__rjto$13
      (block $__rjti$13
        (if
          (i32.eqz
            (i32.and
              (i32.load
                (i32.const 1153632)
              )
              (i32.const 4)
            )
          )
          (block
            (block $label$break$L274
              (block $__rjti$5
                (block $__rjti$4
                  (br_if $__rjti$4
                    (i32.eqz
                      (tee_local $1
                        (i32.load
                          (i32.const 1153212)
                        )
                      )
                    )
                  )
                  (set_local $2
                    (i32.const 1153636)
                  )
                  (loop $while-in32
                    (block $while-out31
                      (if
                        (i32.le_u
                          (tee_local $11
                            (i32.load
                              (get_local $2)
                            )
                          )
                          (get_local $1)
                        )
                        (br_if $while-out31
                          (i32.gt_u
                            (i32.add
                              (get_local $11)
                              (i32.load
                                (tee_local $11
                                  (i32.add
                                    (get_local $2)
                                    (i32.const 4)
                                  )
                                )
                              )
                            )
                            (get_local $1)
                          )
                        )
                      )
                      (br_if $while-in32
                        (tee_local $2
                          (i32.load offset=8
                            (get_local $2)
                          )
                        )
                      )
                      (br $__rjti$4)
                    )
                  )
                  (if
                    (i32.lt_u
                      (tee_local $1
                        (i32.and
                          (i32.sub
                            (get_local $4)
                            (get_local $3)
                          )
                          (get_local $8)
                        )
                      )
                      (i32.const 2147483647)
                    )
                    (if
                      (i32.eq
                        (tee_local $3
                          (call $_sbrk
                            (get_local $1)
                          )
                        )
                        (i32.add
                          (i32.load
                            (get_local $2)
                          )
                          (i32.load
                            (get_local $11)
                          )
                        )
                      )
                      (if
                        (i32.ne
                          (get_local $3)
                          (i32.const -1)
                        )
                        (block
                          (set_local $2
                            (get_local $1)
                          )
                          (set_local $1
                            (get_local $3)
                          )
                          (br $__rjti$13)
                        )
                      )
                      (br $__rjti$5)
                    )
                  )
                  (br $label$break$L274)
                )
                (if
                  (i32.ne
                    (tee_local $3
                      (call $_sbrk
                        (i32.const 0)
                      )
                    )
                    (i32.const -1)
                  )
                  (block
                    (set_local $2
                      (i32.sub
                        (i32.and
                          (i32.add
                            (tee_local $4
                              (i32.add
                                (tee_local $2
                                  (i32.load
                                    (i32.const 1153664)
                                  )
                                )
                                (i32.const -1)
                              )
                            )
                            (tee_local $1
                              (get_local $3)
                            )
                          )
                          (i32.sub
                            (i32.const 0)
                            (get_local $2)
                          )
                        )
                        (get_local $1)
                      )
                    )
                    (set_local $2
                      (i32.add
                        (tee_local $1
                          (i32.add
                            (if i32
                              (i32.and
                                (get_local $4)
                                (get_local $1)
                              )
                              (get_local $2)
                              (i32.const 0)
                            )
                            (get_local $5)
                          )
                        )
                        (tee_local $4
                          (i32.load
                            (i32.const 1153620)
                          )
                        )
                      )
                    )
                    (if
                      (i32.and
                        (i32.gt_u
                          (get_local $1)
                          (get_local $0)
                        )
                        (i32.lt_u
                          (get_local $1)
                          (i32.const 2147483647)
                        )
                      )
                      (block
                        (if
                          (tee_local $8
                            (i32.load
                              (i32.const 1153628)
                            )
                          )
                          (br_if $label$break$L274
                            (i32.or
                              (i32.le_u
                                (get_local $2)
                                (get_local $4)
                              )
                              (i32.gt_u
                                (get_local $2)
                                (get_local $8)
                              )
                            )
                          )
                        )
                        (if
                          (i32.eq
                            (tee_local $2
                              (call $_sbrk
                                (get_local $1)
                              )
                            )
                            (get_local $3)
                          )
                          (block
                            (set_local $2
                              (get_local $1)
                            )
                            (set_local $1
                              (get_local $3)
                            )
                            (br $__rjti$13)
                          )
                          (block
                            (set_local $3
                              (get_local $2)
                            )
                            (br $__rjti$5)
                          )
                        )
                      )
                    )
                  )
                )
                (br $label$break$L274)
              )
              (set_local $4
                (i32.sub
                  (i32.const 0)
                  (get_local $1)
                )
              )
              (if
                (i32.and
                  (i32.gt_u
                    (get_local $7)
                    (get_local $1)
                  )
                  (i32.and
                    (i32.lt_u
                      (get_local $1)
                      (i32.const 2147483647)
                    )
                    (i32.ne
                      (get_local $3)
                      (i32.const -1)
                    )
                  )
                )
                (if
                  (i32.lt_u
                    (tee_local $2
                      (i32.and
                        (i32.add
                          (i32.sub
                            (get_local $6)
                            (get_local $1)
                          )
                          (tee_local $2
                            (i32.load
                              (i32.const 1153668)
                            )
                          )
                        )
                        (i32.sub
                          (i32.const 0)
                          (get_local $2)
                        )
                      )
                    )
                    (i32.const 2147483647)
                  )
                  (if
                    (i32.eq
                      (call $_sbrk
                        (get_local $2)
                      )
                      (i32.const -1)
                    )
                    (block
                      (drop
                        (call $_sbrk
                          (get_local $4)
                        )
                      )
                      (br $label$break$L274)
                    )
                    (set_local $1
                      (i32.add
                        (get_local $2)
                        (get_local $1)
                      )
                    )
                  )
                )
              )
              (if
                (i32.ne
                  (get_local $3)
                  (i32.const -1)
                )
                (block
                  (set_local $2
                    (get_local $1)
                  )
                  (set_local $1
                    (get_local $3)
                  )
                  (br $__rjti$13)
                )
              )
            )
            (i32.store
              (i32.const 1153632)
              (i32.or
                (i32.load
                  (i32.const 1153632)
                )
                (i32.const 4)
              )
            )
          )
        )
        (if
          (i32.lt_u
            (get_local $5)
            (i32.const 2147483647)
          )
          (if
            (i32.and
              (i32.lt_u
                (tee_local $1
                  (call $_sbrk
                    (get_local $5)
                  )
                )
                (tee_local $2
                  (call $_sbrk
                    (i32.const 0)
                  )
                )
              )
              (i32.and
                (i32.ne
                  (get_local $1)
                  (i32.const -1)
                )
                (i32.ne
                  (get_local $2)
                  (i32.const -1)
                )
              )
            )
            (br_if $__rjti$13
              (i32.gt_u
                (tee_local $2
                  (i32.sub
                    (get_local $2)
                    (get_local $1)
                  )
                )
                (i32.add
                  (get_local $0)
                  (i32.const 40)
                )
              )
            )
          )
        )
        (br $__rjto$13)
      )
      (i32.store
        (i32.const 1153620)
        (tee_local $3
          (i32.add
            (i32.load
              (i32.const 1153620)
            )
            (get_local $2)
          )
        )
      )
      (if
        (i32.gt_u
          (get_local $3)
          (i32.load
            (i32.const 1153624)
          )
        )
        (i32.store
          (i32.const 1153624)
          (get_local $3)
        )
      )
      (block $do-once38
        (if
          (tee_local $6
            (i32.load
              (i32.const 1153212)
            )
          )
          (block
            (set_local $3
              (i32.const 1153636)
            )
            (block $__rjto$10
              (block $__rjti$10
                (loop $while-in43
                  (br_if $__rjti$10
                    (i32.eq
                      (get_local $1)
                      (i32.add
                        (tee_local $5
                          (i32.load
                            (get_local $3)
                          )
                        )
                        (tee_local $8
                          (i32.load
                            (tee_local $4
                              (i32.add
                                (get_local $3)
                                (i32.const 4)
                              )
                            )
                          )
                        )
                      )
                    )
                  )
                  (br_if $while-in43
                    (tee_local $3
                      (i32.load offset=8
                        (get_local $3)
                      )
                    )
                  )
                )
                (br $__rjto$10)
              )
              (if
                (i32.eqz
                  (i32.and
                    (i32.load offset=12
                      (get_local $3)
                    )
                    (i32.const 8)
                  )
                )
                (if
                  (i32.and
                    (i32.lt_u
                      (get_local $6)
                      (get_local $1)
                    )
                    (i32.ge_u
                      (get_local $6)
                      (get_local $5)
                    )
                  )
                  (block
                    (i32.store
                      (get_local $4)
                      (i32.add
                        (get_local $8)
                        (get_local $2)
                      )
                    )
                    (set_local $5
                      (i32.load
                        (i32.const 1153200)
                      )
                    )
                    (set_local $1
                      (i32.and
                        (i32.sub
                          (i32.const 0)
                          (tee_local $3
                            (i32.add
                              (get_local $6)
                              (i32.const 8)
                            )
                          )
                        )
                        (i32.const 7)
                      )
                    )
                    (i32.store
                      (i32.const 1153212)
                      (tee_local $3
                        (i32.add
                          (get_local $6)
                          (if i32
                            (i32.and
                              (get_local $3)
                              (i32.const 7)
                            )
                            (get_local $1)
                            (tee_local $1
                              (i32.const 0)
                            )
                          )
                        )
                      )
                    )
                    (i32.store
                      (i32.const 1153200)
                      (tee_local $1
                        (i32.add
                          (i32.sub
                            (get_local $2)
                            (get_local $1)
                          )
                          (get_local $5)
                        )
                      )
                    )
                    (i32.store offset=4
                      (get_local $3)
                      (i32.or
                        (get_local $1)
                        (i32.const 1)
                      )
                    )
                    (i32.store offset=4
                      (i32.add
                        (get_local $3)
                        (get_local $1)
                      )
                      (i32.const 40)
                    )
                    (i32.store
                      (i32.const 1153216)
                      (i32.load
                        (i32.const 1153676)
                      )
                    )
                    (br $do-once38)
                  )
                )
              )
            )
            (if
              (i32.lt_u
                (get_local $1)
                (tee_local $3
                  (i32.load
                    (i32.const 1153204)
                  )
                )
              )
              (block
                (i32.store
                  (i32.const 1153204)
                  (get_local $1)
                )
                (set_local $3
                  (get_local $1)
                )
              )
            )
            (set_local $4
              (i32.add
                (get_local $1)
                (get_local $2)
              )
            )
            (set_local $5
              (i32.const 1153636)
            )
            (block $__rjto$11
              (block $__rjti$11
                (loop $while-in45
                  (br_if $__rjti$11
                    (i32.eq
                      (i32.load
                        (get_local $5)
                      )
                      (get_local $4)
                    )
                  )
                  (br_if $while-in45
                    (tee_local $5
                      (i32.load offset=8
                        (get_local $5)
                      )
                    )
                  )
                  (set_local $3
                    (i32.const 1153636)
                  )
                )
                (br $__rjto$11)
              )
              (if
                (i32.and
                  (i32.load offset=12
                    (get_local $5)
                  )
                  (i32.const 8)
                )
                (set_local $3
                  (i32.const 1153636)
                )
                (block
                  (i32.store
                    (get_local $5)
                    (get_local $1)
                  )
                  (i32.store
                    (tee_local $5
                      (i32.add
                        (get_local $5)
                        (i32.const 4)
                      )
                    )
                    (i32.add
                      (i32.load
                        (get_local $5)
                      )
                      (get_local $2)
                    )
                  )
                  (set_local $5
                    (i32.and
                      (i32.sub
                        (i32.const 0)
                        (tee_local $2
                          (i32.add
                            (get_local $1)
                            (i32.const 8)
                          )
                        )
                      )
                      (i32.const 7)
                    )
                  )
                  (set_local $11
                    (i32.and
                      (i32.sub
                        (i32.const 0)
                        (tee_local $8
                          (i32.add
                            (get_local $4)
                            (i32.const 8)
                          )
                        )
                      )
                      (i32.const 7)
                    )
                  )
                  (set_local $7
                    (i32.add
                      (tee_local $9
                        (i32.add
                          (get_local $1)
                          (if i32
                            (i32.and
                              (get_local $2)
                              (i32.const 7)
                            )
                            (get_local $5)
                            (i32.const 0)
                          )
                        )
                      )
                      (get_local $0)
                    )
                  )
                  (set_local $8
                    (i32.sub
                      (i32.sub
                        (tee_local $4
                          (i32.add
                            (get_local $4)
                            (if i32
                              (i32.and
                                (get_local $8)
                                (i32.const 7)
                              )
                              (get_local $11)
                              (i32.const 0)
                            )
                          )
                        )
                        (get_local $9)
                      )
                      (get_local $0)
                    )
                  )
                  (i32.store offset=4
                    (get_local $9)
                    (i32.or
                      (get_local $0)
                      (i32.const 3)
                    )
                  )
                  (block $do-once46
                    (if
                      (i32.eq
                        (get_local $4)
                        (get_local $6)
                      )
                      (block
                        (i32.store
                          (i32.const 1153200)
                          (tee_local $0
                            (i32.add
                              (i32.load
                                (i32.const 1153200)
                              )
                              (get_local $8)
                            )
                          )
                        )
                        (i32.store
                          (i32.const 1153212)
                          (get_local $7)
                        )
                        (i32.store offset=4
                          (get_local $7)
                          (i32.or
                            (get_local $0)
                            (i32.const 1)
                          )
                        )
                      )
                      (block
                        (if
                          (i32.eq
                            (get_local $4)
                            (i32.load
                              (i32.const 1153208)
                            )
                          )
                          (block
                            (i32.store
                              (i32.const 1153196)
                              (tee_local $0
                                (i32.add
                                  (i32.load
                                    (i32.const 1153196)
                                  )
                                  (get_local $8)
                                )
                              )
                            )
                            (i32.store
                              (i32.const 1153208)
                              (get_local $7)
                            )
                            (i32.store offset=4
                              (get_local $7)
                              (i32.or
                                (get_local $0)
                                (i32.const 1)
                              )
                            )
                            (i32.store
                              (i32.add
                                (get_local $7)
                                (get_local $0)
                              )
                              (get_local $0)
                            )
                            (br $do-once46)
                          )
                        )
                        (set_local $5
                          (if i32
                            (i32.eq
                              (i32.and
                                (tee_local $0
                                  (i32.load offset=4
                                    (get_local $4)
                                  )
                                )
                                (i32.const 3)
                              )
                              (i32.const 1)
                            )
                            (block i32
                              (set_local $11
                                (i32.and
                                  (get_local $0)
                                  (i32.const -8)
                                )
                              )
                              (set_local $5
                                (i32.shr_u
                                  (get_local $0)
                                  (i32.const 3)
                                )
                              )
                              (block $label$break$L326
                                (if
                                  (i32.lt_u
                                    (get_local $0)
                                    (i32.const 256)
                                  )
                                  (block
                                    (set_local $1
                                      (i32.load offset=12
                                        (get_local $4)
                                      )
                                    )
                                    (block $do-once49
                                      (if
                                        (i32.ne
                                          (tee_local $2
                                            (i32.load offset=8
                                              (get_local $4)
                                            )
                                          )
                                          (tee_local $0
                                            (i32.add
                                              (i32.shl
                                                (i32.shl
                                                  (get_local $5)
                                                  (i32.const 1)
                                                )
                                                (i32.const 2)
                                              )
                                              (i32.const 1153228)
                                            )
                                          )
                                        )
                                        (block
                                          (if
                                            (i32.lt_u
                                              (get_local $2)
                                              (get_local $3)
                                            )
                                            (call $_abort)
                                          )
                                          (br_if $do-once49
                                            (i32.eq
                                              (i32.load offset=12
                                                (get_local $2)
                                              )
                                              (get_local $4)
                                            )
                                          )
                                          (call $_abort)
                                        )
                                      )
                                    )
                                    (if
                                      (i32.eq
                                        (get_local $1)
                                        (get_local $2)
                                      )
                                      (block
                                        (i32.store
                                          (i32.const 1153188)
                                          (i32.and
                                            (i32.load
                                              (i32.const 1153188)
                                            )
                                            (i32.xor
                                              (i32.shl
                                                (i32.const 1)
                                                (get_local $5)
                                              )
                                              (i32.const -1)
                                            )
                                          )
                                        )
                                        (br $label$break$L326)
                                      )
                                    )
                                    (block $do-once51
                                      (if
                                        (i32.eq
                                          (get_local $1)
                                          (get_local $0)
                                        )
                                        (set_local $18
                                          (i32.add
                                            (get_local $1)
                                            (i32.const 8)
                                          )
                                        )
                                        (block
                                          (if
                                            (i32.lt_u
                                              (get_local $1)
                                              (get_local $3)
                                            )
                                            (call $_abort)
                                          )
                                          (if
                                            (i32.eq
                                              (i32.load
                                                (tee_local $0
                                                  (i32.add
                                                    (get_local $1)
                                                    (i32.const 8)
                                                  )
                                                )
                                              )
                                              (get_local $4)
                                            )
                                            (block
                                              (set_local $18
                                                (get_local $0)
                                              )
                                              (br $do-once51)
                                            )
                                          )
                                          (call $_abort)
                                        )
                                      )
                                    )
                                    (i32.store offset=12
                                      (get_local $2)
                                      (get_local $1)
                                    )
                                    (i32.store
                                      (get_local $18)
                                      (get_local $2)
                                    )
                                  )
                                  (block
                                    (set_local $6
                                      (i32.load offset=24
                                        (get_local $4)
                                      )
                                    )
                                    (block $do-once53
                                      (if
                                        (i32.eq
                                          (tee_local $0
                                            (i32.load offset=12
                                              (get_local $4)
                                            )
                                          )
                                          (get_local $4)
                                        )
                                        (block
                                          (if
                                            (tee_local $0
                                              (i32.load
                                                (tee_local $2
                                                  (i32.add
                                                    (tee_local $1
                                                      (i32.add
                                                        (get_local $4)
                                                        (i32.const 16)
                                                      )
                                                    )
                                                    (i32.const 4)
                                                  )
                                                )
                                              )
                                            )
                                            (set_local $1
                                              (get_local $2)
                                            )
                                            (if
                                              (i32.eqz
                                                (tee_local $0
                                                  (i32.load
                                                    (get_local $1)
                                                  )
                                                )
                                              )
                                              (block
                                                (set_local $10
                                                  (i32.const 0)
                                                )
                                                (br $do-once53)
                                              )
                                            )
                                          )
                                          (loop $while-in56
                                            (if
                                              (tee_local $5
                                                (i32.load
                                                  (tee_local $2
                                                    (i32.add
                                                      (get_local $0)
                                                      (i32.const 20)
                                                    )
                                                  )
                                                )
                                              )
                                              (block
                                                (set_local $0
                                                  (get_local $5)
                                                )
                                                (set_local $1
                                                  (get_local $2)
                                                )
                                                (br $while-in56)
                                              )
                                            )
                                            (if
                                              (tee_local $5
                                                (i32.load
                                                  (tee_local $2
                                                    (i32.add
                                                      (get_local $0)
                                                      (i32.const 16)
                                                    )
                                                  )
                                                )
                                              )
                                              (block
                                                (set_local $0
                                                  (get_local $5)
                                                )
                                                (set_local $1
                                                  (get_local $2)
                                                )
                                                (br $while-in56)
                                              )
                                            )
                                          )
                                          (if
                                            (i32.lt_u
                                              (get_local $1)
                                              (get_local $3)
                                            )
                                            (call $_abort)
                                            (block
                                              (i32.store
                                                (get_local $1)
                                                (i32.const 0)
                                              )
                                              (set_local $10
                                                (get_local $0)
                                              )
                                            )
                                          )
                                        )
                                        (block
                                          (if
                                            (i32.lt_u
                                              (tee_local $1
                                                (i32.load offset=8
                                                  (get_local $4)
                                                )
                                              )
                                              (get_local $3)
                                            )
                                            (call $_abort)
                                          )
                                          (if
                                            (i32.ne
                                              (i32.load
                                                (tee_local $2
                                                  (i32.add
                                                    (get_local $1)
                                                    (i32.const 12)
                                                  )
                                                )
                                              )
                                              (get_local $4)
                                            )
                                            (call $_abort)
                                          )
                                          (if
                                            (i32.eq
                                              (i32.load
                                                (tee_local $3
                                                  (i32.add
                                                    (get_local $0)
                                                    (i32.const 8)
                                                  )
                                                )
                                              )
                                              (get_local $4)
                                            )
                                            (block
                                              (i32.store
                                                (get_local $2)
                                                (get_local $0)
                                              )
                                              (i32.store
                                                (get_local $3)
                                                (get_local $1)
                                              )
                                              (set_local $10
                                                (get_local $0)
                                              )
                                            )
                                            (call $_abort)
                                          )
                                        )
                                      )
                                    )
                                    (br_if $label$break$L326
                                      (i32.eqz
                                        (get_local $6)
                                      )
                                    )
                                    (block $do-once57
                                      (if
                                        (i32.eq
                                          (get_local $4)
                                          (i32.load
                                            (tee_local $1
                                              (i32.add
                                                (i32.shl
                                                  (tee_local $0
                                                    (i32.load offset=28
                                                      (get_local $4)
                                                    )
                                                  )
                                                  (i32.const 2)
                                                )
                                                (i32.const 1153492)
                                              )
                                            )
                                          )
                                        )
                                        (block
                                          (i32.store
                                            (get_local $1)
                                            (get_local $10)
                                          )
                                          (br_if $do-once57
                                            (get_local $10)
                                          )
                                          (i32.store
                                            (i32.const 1153192)
                                            (i32.and
                                              (i32.load
                                                (i32.const 1153192)
                                              )
                                              (i32.xor
                                                (i32.shl
                                                  (i32.const 1)
                                                  (get_local $0)
                                                )
                                                (i32.const -1)
                                              )
                                            )
                                          )
                                          (br $label$break$L326)
                                        )
                                        (block
                                          (if
                                            (i32.lt_u
                                              (get_local $6)
                                              (i32.load
                                                (i32.const 1153204)
                                              )
                                            )
                                            (call $_abort)
                                          )
                                          (if
                                            (i32.eq
                                              (i32.load
                                                (tee_local $0
                                                  (i32.add
                                                    (get_local $6)
                                                    (i32.const 16)
                                                  )
                                                )
                                              )
                                              (get_local $4)
                                            )
                                            (i32.store
                                              (get_local $0)
                                              (get_local $10)
                                            )
                                            (i32.store offset=20
                                              (get_local $6)
                                              (get_local $10)
                                            )
                                          )
                                          (br_if $label$break$L326
                                            (i32.eqz
                                              (get_local $10)
                                            )
                                          )
                                        )
                                      )
                                    )
                                    (if
                                      (i32.lt_u
                                        (get_local $10)
                                        (tee_local $1
                                          (i32.load
                                            (i32.const 1153204)
                                          )
                                        )
                                      )
                                      (call $_abort)
                                    )
                                    (i32.store offset=24
                                      (get_local $10)
                                      (get_local $6)
                                    )
                                    (if
                                      (tee_local $0
                                        (i32.load
                                          (tee_local $2
                                            (i32.add
                                              (get_local $4)
                                              (i32.const 16)
                                            )
                                          )
                                        )
                                      )
                                      (if
                                        (i32.lt_u
                                          (get_local $0)
                                          (get_local $1)
                                        )
                                        (call $_abort)
                                        (block
                                          (i32.store offset=16
                                            (get_local $10)
                                            (get_local $0)
                                          )
                                          (i32.store offset=24
                                            (get_local $0)
                                            (get_local $10)
                                          )
                                        )
                                      )
                                    )
                                    (br_if $label$break$L326
                                      (i32.eqz
                                        (tee_local $0
                                          (i32.load offset=4
                                            (get_local $2)
                                          )
                                        )
                                      )
                                    )
                                    (if
                                      (i32.lt_u
                                        (get_local $0)
                                        (i32.load
                                          (i32.const 1153204)
                                        )
                                      )
                                      (call $_abort)
                                      (block
                                        (i32.store offset=20
                                          (get_local $10)
                                          (get_local $0)
                                        )
                                        (i32.store offset=24
                                          (get_local $0)
                                          (get_local $10)
                                        )
                                      )
                                    )
                                  )
                                )
                              )
                              (set_local $4
                                (i32.add
                                  (get_local $4)
                                  (get_local $11)
                                )
                              )
                              (i32.add
                                (get_local $11)
                                (get_local $8)
                              )
                            )
                            (get_local $8)
                          )
                        )
                        (i32.store
                          (tee_local $0
                            (i32.add
                              (get_local $4)
                              (i32.const 4)
                            )
                          )
                          (i32.and
                            (i32.load
                              (get_local $0)
                            )
                            (i32.const -2)
                          )
                        )
                        (i32.store offset=4
                          (get_local $7)
                          (i32.or
                            (get_local $5)
                            (i32.const 1)
                          )
                        )
                        (i32.store
                          (i32.add
                            (get_local $7)
                            (get_local $5)
                          )
                          (get_local $5)
                        )
                        (set_local $1
                          (i32.shr_u
                            (get_local $5)
                            (i32.const 3)
                          )
                        )
                        (if
                          (i32.lt_u
                            (get_local $5)
                            (i32.const 256)
                          )
                          (block
                            (set_local $0
                              (i32.add
                                (i32.shl
                                  (i32.shl
                                    (get_local $1)
                                    (i32.const 1)
                                  )
                                  (i32.const 2)
                                )
                                (i32.const 1153228)
                              )
                            )
                            (block $do-once61
                              (if
                                (i32.and
                                  (tee_local $2
                                    (i32.load
                                      (i32.const 1153188)
                                    )
                                  )
                                  (tee_local $1
                                    (i32.shl
                                      (i32.const 1)
                                      (get_local $1)
                                    )
                                  )
                                )
                                (block
                                  (if
                                    (i32.ge_u
                                      (tee_local $2
                                        (i32.load
                                          (tee_local $1
                                            (i32.add
                                              (get_local $0)
                                              (i32.const 8)
                                            )
                                          )
                                        )
                                      )
                                      (i32.load
                                        (i32.const 1153204)
                                      )
                                    )
                                    (block
                                      (set_local $12
                                        (get_local $2)
                                      )
                                      (set_local $19
                                        (get_local $1)
                                      )
                                      (br $do-once61)
                                    )
                                  )
                                  (call $_abort)
                                )
                                (block
                                  (i32.store
                                    (i32.const 1153188)
                                    (i32.or
                                      (get_local $2)
                                      (get_local $1)
                                    )
                                  )
                                  (set_local $12
                                    (get_local $0)
                                  )
                                  (set_local $19
                                    (i32.add
                                      (get_local $0)
                                      (i32.const 8)
                                    )
                                  )
                                )
                              )
                            )
                            (i32.store
                              (get_local $19)
                              (get_local $7)
                            )
                            (i32.store offset=12
                              (get_local $12)
                              (get_local $7)
                            )
                            (i32.store offset=8
                              (get_local $7)
                              (get_local $12)
                            )
                            (i32.store offset=12
                              (get_local $7)
                              (get_local $0)
                            )
                            (br $do-once46)
                          )
                        )
                        (set_local $0
                          (i32.add
                            (i32.shl
                              (tee_local $1
                                (block $do-once63 i32
                                  (if i32
                                    (tee_local $0
                                      (i32.shr_u
                                        (get_local $5)
                                        (i32.const 8)
                                      )
                                    )
                                    (block i32
                                      (drop
                                        (br_if $do-once63
                                          (i32.const 31)
                                          (i32.gt_u
                                            (get_local $5)
                                            (i32.const 16777215)
                                          )
                                        )
                                      )
                                      (i32.or
                                        (i32.and
                                          (i32.shr_u
                                            (get_local $5)
                                            (i32.add
                                              (tee_local $0
                                                (i32.add
                                                  (i32.sub
                                                    (i32.const 14)
                                                    (i32.or
                                                      (i32.or
                                                        (tee_local $2
                                                          (i32.and
                                                            (i32.shr_u
                                                              (i32.add
                                                                (tee_local $1
                                                                  (i32.shl
                                                                    (get_local $0)
                                                                    (tee_local $0
                                                                      (i32.and
                                                                        (i32.shr_u
                                                                          (i32.add
                                                                            (get_local $0)
                                                                            (i32.const 1048320)
                                                                          )
                                                                          (i32.const 16)
                                                                        )
                                                                        (i32.const 8)
                                                                      )
                                                                    )
                                                                  )
                                                                )
                                                                (i32.const 520192)
                                                              )
                                                              (i32.const 16)
                                                            )
                                                            (i32.const 4)
                                                          )
                                                        )
                                                        (get_local $0)
                                                      )
                                                      (tee_local $1
                                                        (i32.and
                                                          (i32.shr_u
                                                            (i32.add
                                                              (tee_local $0
                                                                (i32.shl
                                                                  (get_local $1)
                                                                  (get_local $2)
                                                                )
                                                              )
                                                              (i32.const 245760)
                                                            )
                                                            (i32.const 16)
                                                          )
                                                          (i32.const 2)
                                                        )
                                                      )
                                                    )
                                                  )
                                                  (i32.shr_u
                                                    (i32.shl
                                                      (get_local $0)
                                                      (get_local $1)
                                                    )
                                                    (i32.const 15)
                                                  )
                                                )
                                              )
                                              (i32.const 7)
                                            )
                                          )
                                          (i32.const 1)
                                        )
                                        (i32.shl
                                          (get_local $0)
                                          (i32.const 1)
                                        )
                                      )
                                    )
                                    (i32.const 0)
                                  )
                                )
                              )
                              (i32.const 2)
                            )
                            (i32.const 1153492)
                          )
                        )
                        (i32.store offset=28
                          (get_local $7)
                          (get_local $1)
                        )
                        (i32.store offset=4
                          (tee_local $2
                            (i32.add
                              (get_local $7)
                              (i32.const 16)
                            )
                          )
                          (i32.const 0)
                        )
                        (i32.store
                          (get_local $2)
                          (i32.const 0)
                        )
                        (if
                          (i32.eqz
                            (i32.and
                              (tee_local $2
                                (i32.load
                                  (i32.const 1153192)
                                )
                              )
                              (tee_local $3
                                (i32.shl
                                  (i32.const 1)
                                  (get_local $1)
                                )
                              )
                            )
                          )
                          (block
                            (i32.store
                              (i32.const 1153192)
                              (i32.or
                                (get_local $2)
                                (get_local $3)
                              )
                            )
                            (i32.store
                              (get_local $0)
                              (get_local $7)
                            )
                            (i32.store offset=24
                              (get_local $7)
                              (get_local $0)
                            )
                            (i32.store offset=12
                              (get_local $7)
                              (get_local $7)
                            )
                            (i32.store offset=8
                              (get_local $7)
                              (get_local $7)
                            )
                            (br $do-once46)
                          )
                        )
                        (set_local $0
                          (i32.load
                            (get_local $0)
                          )
                        )
                        (set_local $2
                          (i32.sub
                            (i32.const 25)
                            (i32.shr_u
                              (get_local $1)
                              (i32.const 1)
                            )
                          )
                        )
                        (set_local $1
                          (i32.shl
                            (get_local $5)
                            (if i32
                              (i32.eq
                                (get_local $1)
                                (i32.const 31)
                              )
                              (i32.const 0)
                              (get_local $2)
                            )
                          )
                        )
                        (block $__rjto$7
                          (block $__rjti$7
                            (block $__rjti$6
                              (loop $while-in66
                                (br_if $__rjti$7
                                  (i32.eq
                                    (i32.and
                                      (i32.load offset=4
                                        (get_local $0)
                                      )
                                      (i32.const -8)
                                    )
                                    (get_local $5)
                                  )
                                )
                                (set_local $2
                                  (i32.shl
                                    (get_local $1)
                                    (i32.const 1)
                                  )
                                )
                                (br_if $__rjti$6
                                  (i32.eqz
                                    (tee_local $3
                                      (i32.load
                                        (tee_local $1
                                          (i32.add
                                            (i32.add
                                              (get_local $0)
                                              (i32.const 16)
                                            )
                                            (i32.shl
                                              (i32.shr_u
                                                (get_local $1)
                                                (i32.const 31)
                                              )
                                              (i32.const 2)
                                            )
                                          )
                                        )
                                      )
                                    )
                                  )
                                )
                                (set_local $1
                                  (get_local $2)
                                )
                                (set_local $0
                                  (get_local $3)
                                )
                                (br $while-in66)
                              )
                            )
                            (if
                              (i32.lt_u
                                (get_local $1)
                                (i32.load
                                  (i32.const 1153204)
                                )
                              )
                              (call $_abort)
                              (block
                                (i32.store
                                  (get_local $1)
                                  (get_local $7)
                                )
                                (i32.store offset=24
                                  (get_local $7)
                                  (get_local $0)
                                )
                                (i32.store offset=12
                                  (get_local $7)
                                  (get_local $7)
                                )
                                (i32.store offset=8
                                  (get_local $7)
                                  (get_local $7)
                                )
                                (br $do-once46)
                              )
                            )
                            (br $__rjto$7)
                          )
                          (if
                            (i32.and
                              (i32.ge_u
                                (tee_local $1
                                  (i32.load
                                    (tee_local $2
                                      (i32.add
                                        (get_local $0)
                                        (i32.const 8)
                                      )
                                    )
                                  )
                                )
                                (tee_local $3
                                  (i32.load
                                    (i32.const 1153204)
                                  )
                                )
                              )
                              (i32.ge_u
                                (get_local $0)
                                (get_local $3)
                              )
                            )
                            (block
                              (i32.store offset=12
                                (get_local $1)
                                (get_local $7)
                              )
                              (i32.store
                                (get_local $2)
                                (get_local $7)
                              )
                              (i32.store offset=8
                                (get_local $7)
                                (get_local $1)
                              )
                              (i32.store offset=12
                                (get_local $7)
                                (get_local $0)
                              )
                              (i32.store offset=24
                                (get_local $7)
                                (i32.const 0)
                              )
                            )
                            (call $_abort)
                          )
                        )
                      )
                    )
                  )
                  (set_global $STACKTOP
                    (get_local $13)
                  )
                  (return
                    (i32.add
                      (get_local $9)
                      (i32.const 8)
                    )
                  )
                )
              )
            )
            (loop $while-in68
              (block $while-out67
                (if
                  (i32.le_u
                    (tee_local $5
                      (i32.load
                        (get_local $3)
                      )
                    )
                    (get_local $6)
                  )
                  (br_if $while-out67
                    (i32.gt_u
                      (tee_local $10
                        (i32.add
                          (get_local $5)
                          (i32.load offset=4
                            (get_local $3)
                          )
                        )
                      )
                      (get_local $6)
                    )
                  )
                )
                (set_local $3
                  (i32.load offset=8
                    (get_local $3)
                  )
                )
                (br $while-in68)
              )
            )
            (set_local $4
              (i32.and
                (i32.sub
                  (i32.const 0)
                  (tee_local $5
                    (i32.add
                      (tee_local $3
                        (i32.add
                          (get_local $10)
                          (i32.const -47)
                        )
                      )
                      (i32.const 8)
                    )
                  )
                )
                (i32.const 7)
              )
            )
            (set_local $8
              (i32.add
                (if i32
                  (i32.lt_u
                    (tee_local $3
                      (i32.add
                        (get_local $3)
                        (if i32
                          (i32.and
                            (get_local $5)
                            (i32.const 7)
                          )
                          (get_local $4)
                          (i32.const 0)
                        )
                      )
                    )
                    (tee_local $12
                      (i32.add
                        (get_local $6)
                        (i32.const 16)
                      )
                    )
                  )
                  (tee_local $3
                    (get_local $6)
                  )
                  (get_local $3)
                )
                (i32.const 8)
              )
            )
            (set_local $5
              (i32.add
                (get_local $3)
                (i32.const 24)
              )
            )
            (set_local $11
              (i32.add
                (get_local $2)
                (i32.const -40)
              )
            )
            (set_local $4
              (i32.and
                (i32.sub
                  (i32.const 0)
                  (tee_local $7
                    (i32.add
                      (get_local $1)
                      (i32.const 8)
                    )
                  )
                )
                (i32.const 7)
              )
            )
            (i32.store
              (i32.const 1153212)
              (tee_local $7
                (i32.add
                  (get_local $1)
                  (if i32
                    (i32.and
                      (get_local $7)
                      (i32.const 7)
                    )
                    (get_local $4)
                    (tee_local $4
                      (i32.const 0)
                    )
                  )
                )
              )
            )
            (i32.store
              (i32.const 1153200)
              (tee_local $4
                (i32.sub
                  (get_local $11)
                  (get_local $4)
                )
              )
            )
            (i32.store offset=4
              (get_local $7)
              (i32.or
                (get_local $4)
                (i32.const 1)
              )
            )
            (i32.store offset=4
              (i32.add
                (get_local $7)
                (get_local $4)
              )
              (i32.const 40)
            )
            (i32.store
              (i32.const 1153216)
              (i32.load
                (i32.const 1153676)
              )
            )
            (i32.store
              (tee_local $4
                (i32.add
                  (get_local $3)
                  (i32.const 4)
                )
              )
              (i32.const 27)
            )
            (i64.store align=4
              (get_local $8)
              (i64.load align=4
                (i32.const 1153636)
              )
            )
            (i64.store offset=8 align=4
              (get_local $8)
              (i64.load align=4
                (i32.const 1153644)
              )
            )
            (i32.store
              (i32.const 1153636)
              (get_local $1)
            )
            (i32.store
              (i32.const 1153640)
              (get_local $2)
            )
            (i32.store
              (i32.const 1153648)
              (i32.const 0)
            )
            (i32.store
              (i32.const 1153644)
              (get_local $8)
            )
            (set_local $1
              (get_local $5)
            )
            (loop $while-in70
              (i32.store
                (tee_local $1
                  (i32.add
                    (get_local $1)
                    (i32.const 4)
                  )
                )
                (i32.const 7)
              )
              (br_if $while-in70
                (i32.lt_u
                  (i32.add
                    (get_local $1)
                    (i32.const 4)
                  )
                  (get_local $10)
                )
              )
            )
            (if
              (i32.ne
                (get_local $3)
                (get_local $6)
              )
              (block
                (i32.store
                  (get_local $4)
                  (i32.and
                    (i32.load
                      (get_local $4)
                    )
                    (i32.const -2)
                  )
                )
                (i32.store offset=4
                  (get_local $6)
                  (i32.or
                    (tee_local $4
                      (i32.sub
                        (get_local $3)
                        (get_local $6)
                      )
                    )
                    (i32.const 1)
                  )
                )
                (i32.store
                  (get_local $3)
                  (get_local $4)
                )
                (set_local $2
                  (i32.shr_u
                    (get_local $4)
                    (i32.const 3)
                  )
                )
                (if
                  (i32.lt_u
                    (get_local $4)
                    (i32.const 256)
                  )
                  (block
                    (set_local $1
                      (i32.add
                        (i32.shl
                          (i32.shl
                            (get_local $2)
                            (i32.const 1)
                          )
                          (i32.const 2)
                        )
                        (i32.const 1153228)
                      )
                    )
                    (if
                      (i32.and
                        (tee_local $3
                          (i32.load
                            (i32.const 1153188)
                          )
                        )
                        (tee_local $2
                          (i32.shl
                            (i32.const 1)
                            (get_local $2)
                          )
                        )
                      )
                      (if
                        (i32.lt_u
                          (tee_local $3
                            (i32.load
                              (tee_local $2
                                (i32.add
                                  (get_local $1)
                                  (i32.const 8)
                                )
                              )
                            )
                          )
                          (i32.load
                            (i32.const 1153204)
                          )
                        )
                        (call $_abort)
                        (block
                          (set_local $9
                            (get_local $3)
                          )
                          (set_local $20
                            (get_local $2)
                          )
                        )
                      )
                      (block
                        (i32.store
                          (i32.const 1153188)
                          (i32.or
                            (get_local $3)
                            (get_local $2)
                          )
                        )
                        (set_local $9
                          (get_local $1)
                        )
                        (set_local $20
                          (i32.add
                            (get_local $1)
                            (i32.const 8)
                          )
                        )
                      )
                    )
                    (i32.store
                      (get_local $20)
                      (get_local $6)
                    )
                    (i32.store offset=12
                      (get_local $9)
                      (get_local $6)
                    )
                    (i32.store offset=8
                      (get_local $6)
                      (get_local $9)
                    )
                    (i32.store offset=12
                      (get_local $6)
                      (get_local $1)
                    )
                    (br $do-once38)
                  )
                )
                (set_local $1
                  (i32.add
                    (i32.shl
                      (tee_local $2
                        (if i32
                          (tee_local $1
                            (i32.shr_u
                              (get_local $4)
                              (i32.const 8)
                            )
                          )
                          (if i32
                            (i32.gt_u
                              (get_local $4)
                              (i32.const 16777215)
                            )
                            (i32.const 31)
                            (i32.or
                              (i32.and
                                (i32.shr_u
                                  (get_local $4)
                                  (i32.add
                                    (tee_local $1
                                      (i32.add
                                        (i32.sub
                                          (i32.const 14)
                                          (i32.or
                                            (i32.or
                                              (tee_local $3
                                                (i32.and
                                                  (i32.shr_u
                                                    (i32.add
                                                      (tee_local $2
                                                        (i32.shl
                                                          (get_local $1)
                                                          (tee_local $1
                                                            (i32.and
                                                              (i32.shr_u
                                                                (i32.add
                                                                  (get_local $1)
                                                                  (i32.const 1048320)
                                                                )
                                                                (i32.const 16)
                                                              )
                                                              (i32.const 8)
                                                            )
                                                          )
                                                        )
                                                      )
                                                      (i32.const 520192)
                                                    )
                                                    (i32.const 16)
                                                  )
                                                  (i32.const 4)
                                                )
                                              )
                                              (get_local $1)
                                            )
                                            (tee_local $2
                                              (i32.and
                                                (i32.shr_u
                                                  (i32.add
                                                    (tee_local $1
                                                      (i32.shl
                                                        (get_local $2)
                                                        (get_local $3)
                                                      )
                                                    )
                                                    (i32.const 245760)
                                                  )
                                                  (i32.const 16)
                                                )
                                                (i32.const 2)
                                              )
                                            )
                                          )
                                        )
                                        (i32.shr_u
                                          (i32.shl
                                            (get_local $1)
                                            (get_local $2)
                                          )
                                          (i32.const 15)
                                        )
                                      )
                                    )
                                    (i32.const 7)
                                  )
                                )
                                (i32.const 1)
                              )
                              (i32.shl
                                (get_local $1)
                                (i32.const 1)
                              )
                            )
                          )
                          (i32.const 0)
                        )
                      )
                      (i32.const 2)
                    )
                    (i32.const 1153492)
                  )
                )
                (i32.store offset=28
                  (get_local $6)
                  (get_local $2)
                )
                (i32.store offset=20
                  (get_local $6)
                  (i32.const 0)
                )
                (i32.store
                  (get_local $12)
                  (i32.const 0)
                )
                (if
                  (i32.eqz
                    (i32.and
                      (tee_local $3
                        (i32.load
                          (i32.const 1153192)
                        )
                      )
                      (tee_local $5
                        (i32.shl
                          (i32.const 1)
                          (get_local $2)
                        )
                      )
                    )
                  )
                  (block
                    (i32.store
                      (i32.const 1153192)
                      (i32.or
                        (get_local $3)
                        (get_local $5)
                      )
                    )
                    (i32.store
                      (get_local $1)
                      (get_local $6)
                    )
                    (i32.store offset=24
                      (get_local $6)
                      (get_local $1)
                    )
                    (i32.store offset=12
                      (get_local $6)
                      (get_local $6)
                    )
                    (i32.store offset=8
                      (get_local $6)
                      (get_local $6)
                    )
                    (br $do-once38)
                  )
                )
                (set_local $1
                  (i32.load
                    (get_local $1)
                  )
                )
                (set_local $3
                  (i32.sub
                    (i32.const 25)
                    (i32.shr_u
                      (get_local $2)
                      (i32.const 1)
                    )
                  )
                )
                (set_local $2
                  (i32.shl
                    (get_local $4)
                    (if i32
                      (i32.eq
                        (get_local $2)
                        (i32.const 31)
                      )
                      (i32.const 0)
                      (get_local $3)
                    )
                  )
                )
                (block $__rjto$9
                  (block $__rjti$9
                    (block $__rjti$8
                      (loop $while-in72
                        (br_if $__rjti$9
                          (i32.eq
                            (i32.and
                              (i32.load offset=4
                                (get_local $1)
                              )
                              (i32.const -8)
                            )
                            (get_local $4)
                          )
                        )
                        (set_local $3
                          (i32.shl
                            (get_local $2)
                            (i32.const 1)
                          )
                        )
                        (br_if $__rjti$8
                          (i32.eqz
                            (tee_local $5
                              (i32.load
                                (tee_local $2
                                  (i32.add
                                    (i32.add
                                      (get_local $1)
                                      (i32.const 16)
                                    )
                                    (i32.shl
                                      (i32.shr_u
                                        (get_local $2)
                                        (i32.const 31)
                                      )
                                      (i32.const 2)
                                    )
                                  )
                                )
                              )
                            )
                          )
                        )
                        (set_local $2
                          (get_local $3)
                        )
                        (set_local $1
                          (get_local $5)
                        )
                        (br $while-in72)
                      )
                    )
                    (if
                      (i32.lt_u
                        (get_local $2)
                        (i32.load
                          (i32.const 1153204)
                        )
                      )
                      (call $_abort)
                      (block
                        (i32.store
                          (get_local $2)
                          (get_local $6)
                        )
                        (i32.store offset=24
                          (get_local $6)
                          (get_local $1)
                        )
                        (i32.store offset=12
                          (get_local $6)
                          (get_local $6)
                        )
                        (i32.store offset=8
                          (get_local $6)
                          (get_local $6)
                        )
                        (br $do-once38)
                      )
                    )
                    (br $__rjto$9)
                  )
                  (if
                    (i32.and
                      (i32.ge_u
                        (tee_local $2
                          (i32.load
                            (tee_local $3
                              (i32.add
                                (get_local $1)
                                (i32.const 8)
                              )
                            )
                          )
                        )
                        (tee_local $5
                          (i32.load
                            (i32.const 1153204)
                          )
                        )
                      )
                      (i32.ge_u
                        (get_local $1)
                        (get_local $5)
                      )
                    )
                    (block
                      (i32.store offset=12
                        (get_local $2)
                        (get_local $6)
                      )
                      (i32.store
                        (get_local $3)
                        (get_local $6)
                      )
                      (i32.store offset=8
                        (get_local $6)
                        (get_local $2)
                      )
                      (i32.store offset=12
                        (get_local $6)
                        (get_local $1)
                      )
                      (i32.store offset=24
                        (get_local $6)
                        (i32.const 0)
                      )
                    )
                    (call $_abort)
                  )
                )
              )
            )
          )
          (block
            (if
              (i32.or
                (i32.eqz
                  (tee_local $3
                    (i32.load
                      (i32.const 1153204)
                    )
                  )
                )
                (i32.lt_u
                  (get_local $1)
                  (get_local $3)
                )
              )
              (i32.store
                (i32.const 1153204)
                (get_local $1)
              )
            )
            (i32.store
              (i32.const 1153636)
              (get_local $1)
            )
            (i32.store
              (i32.const 1153640)
              (get_local $2)
            )
            (i32.store
              (i32.const 1153648)
              (i32.const 0)
            )
            (i32.store
              (i32.const 1153224)
              (i32.load
                (i32.const 1153660)
              )
            )
            (i32.store
              (i32.const 1153220)
              (i32.const -1)
            )
            (set_local $3
              (i32.const 0)
            )
            (loop $while-in41
              (i32.store offset=12
                (tee_local $5
                  (i32.add
                    (i32.shl
                      (i32.shl
                        (get_local $3)
                        (i32.const 1)
                      )
                      (i32.const 2)
                    )
                    (i32.const 1153228)
                  )
                )
                (get_local $5)
              )
              (i32.store offset=8
                (get_local $5)
                (get_local $5)
              )
              (br_if $while-in41
                (i32.ne
                  (tee_local $3
                    (i32.add
                      (get_local $3)
                      (i32.const 1)
                    )
                  )
                  (i32.const 32)
                )
              )
            )
            (set_local $3
              (i32.add
                (get_local $2)
                (i32.const -40)
              )
            )
            (set_local $2
              (i32.and
                (i32.sub
                  (i32.const 0)
                  (tee_local $5
                    (i32.add
                      (get_local $1)
                      (i32.const 8)
                    )
                  )
                )
                (i32.const 7)
              )
            )
            (i32.store
              (i32.const 1153212)
              (tee_local $1
                (i32.add
                  (get_local $1)
                  (if i32
                    (i32.and
                      (get_local $5)
                      (i32.const 7)
                    )
                    (get_local $2)
                    (tee_local $2
                      (i32.const 0)
                    )
                  )
                )
              )
            )
            (i32.store
              (i32.const 1153200)
              (tee_local $2
                (i32.sub
                  (get_local $3)
                  (get_local $2)
                )
              )
            )
            (i32.store offset=4
              (get_local $1)
              (i32.or
                (get_local $2)
                (i32.const 1)
              )
            )
            (i32.store offset=4
              (i32.add
                (get_local $1)
                (get_local $2)
              )
              (i32.const 40)
            )
            (i32.store
              (i32.const 1153216)
              (i32.load
                (i32.const 1153676)
              )
            )
          )
        )
      )
      (if
        (i32.gt_u
          (tee_local $1
            (i32.load
              (i32.const 1153200)
            )
          )
          (get_local $0)
        )
        (block
          (i32.store
            (i32.const 1153200)
            (tee_local $2
              (i32.sub
                (get_local $1)
                (get_local $0)
              )
            )
          )
          (i32.store
            (i32.const 1153212)
            (tee_local $3
              (i32.add
                (tee_local $1
                  (i32.load
                    (i32.const 1153212)
                  )
                )
                (get_local $0)
              )
            )
          )
          (i32.store offset=4
            (get_local $3)
            (i32.or
              (get_local $2)
              (i32.const 1)
            )
          )
          (i32.store offset=4
            (get_local $1)
            (i32.or
              (get_local $0)
              (i32.const 3)
            )
          )
          (set_global $STACKTOP
            (get_local $13)
          )
          (return
            (i32.add
              (get_local $1)
              (i32.const 8)
            )
          )
        )
      )
    )
    (i32.store
      (call $___errno_location)
      (i32.const 12)
    )
    (set_global $STACKTOP
      (get_local $13)
    )
    (i32.const 0)
  )
  (func $_free (param $0 i32)
    (local $1 i32)
    (local $2 i32)
    (local $3 i32)
    (local $4 i32)
    (local $5 i32)
    (local $6 i32)
    (local $7 i32)
    (local $8 i32)
    (local $9 i32)
    (local $10 i32)
    (local $11 i32)
    (local $12 i32)
    (local $13 i32)
    (local $14 i32)
    (local $15 i32)
    (if
      (i32.eqz
        (get_local $0)
      )
      (return)
    )
    (if
      (i32.lt_u
        (tee_local $1
          (i32.add
            (get_local $0)
            (i32.const -8)
          )
        )
        (tee_local $11
          (i32.load
            (i32.const 1153204)
          )
        )
      )
      (call $_abort)
    )
    (if
      (i32.eq
        (tee_local $8
          (i32.and
            (tee_local $0
              (i32.load
                (i32.add
                  (get_local $0)
                  (i32.const -4)
                )
              )
            )
            (i32.const 3)
          )
        )
        (i32.const 1)
      )
      (call $_abort)
    )
    (set_local $6
      (i32.add
        (get_local $1)
        (tee_local $4
          (i32.and
            (get_local $0)
            (i32.const -8)
          )
        )
      )
    )
    (block $do-once
      (if
        (i32.and
          (get_local $0)
          (i32.const 1)
        )
        (block
          (set_local $3
            (get_local $1)
          )
          (set_local $2
            (get_local $4)
          )
        )
        (block
          (if
            (i32.eqz
              (get_local $8)
            )
            (return)
          )
          (if
            (i32.lt_u
              (tee_local $0
                (i32.add
                  (get_local $1)
                  (i32.sub
                    (i32.const 0)
                    (tee_local $8
                      (i32.load
                        (get_local $1)
                      )
                    )
                  )
                )
              )
              (get_local $11)
            )
            (call $_abort)
          )
          (set_local $1
            (i32.add
              (get_local $8)
              (get_local $4)
            )
          )
          (if
            (i32.eq
              (get_local $0)
              (i32.load
                (i32.const 1153208)
              )
            )
            (block
              (if
                (i32.ne
                  (i32.and
                    (tee_local $3
                      (i32.load
                        (tee_local $2
                          (i32.add
                            (get_local $6)
                            (i32.const 4)
                          )
                        )
                      )
                    )
                    (i32.const 3)
                  )
                  (i32.const 3)
                )
                (block
                  (set_local $3
                    (get_local $0)
                  )
                  (set_local $2
                    (get_local $1)
                  )
                  (br $do-once)
                )
              )
              (i32.store
                (i32.const 1153196)
                (get_local $1)
              )
              (i32.store
                (get_local $2)
                (i32.and
                  (get_local $3)
                  (i32.const -2)
                )
              )
              (i32.store offset=4
                (get_local $0)
                (i32.or
                  (get_local $1)
                  (i32.const 1)
                )
              )
              (i32.store
                (i32.add
                  (get_local $0)
                  (get_local $1)
                )
                (get_local $1)
              )
              (return)
            )
          )
          (set_local $10
            (i32.shr_u
              (get_local $8)
              (i32.const 3)
            )
          )
          (if
            (i32.lt_u
              (get_local $8)
              (i32.const 256)
            )
            (block
              (set_local $3
                (i32.load offset=12
                  (get_local $0)
                )
              )
              (if
                (i32.ne
                  (tee_local $4
                    (i32.load offset=8
                      (get_local $0)
                    )
                  )
                  (tee_local $2
                    (i32.add
                      (i32.shl
                        (i32.shl
                          (get_local $10)
                          (i32.const 1)
                        )
                        (i32.const 2)
                      )
                      (i32.const 1153228)
                    )
                  )
                )
                (block
                  (if
                    (i32.lt_u
                      (get_local $4)
                      (get_local $11)
                    )
                    (call $_abort)
                  )
                  (if
                    (i32.ne
                      (i32.load offset=12
                        (get_local $4)
                      )
                      (get_local $0)
                    )
                    (call $_abort)
                  )
                )
              )
              (if
                (i32.eq
                  (get_local $3)
                  (get_local $4)
                )
                (block
                  (i32.store
                    (i32.const 1153188)
                    (i32.and
                      (i32.load
                        (i32.const 1153188)
                      )
                      (i32.xor
                        (i32.shl
                          (i32.const 1)
                          (get_local $10)
                        )
                        (i32.const -1)
                      )
                    )
                  )
                  (set_local $3
                    (get_local $0)
                  )
                  (set_local $2
                    (get_local $1)
                  )
                  (br $do-once)
                )
              )
              (if
                (i32.eq
                  (get_local $3)
                  (get_local $2)
                )
                (set_local $5
                  (i32.add
                    (get_local $3)
                    (i32.const 8)
                  )
                )
                (block
                  (if
                    (i32.lt_u
                      (get_local $3)
                      (get_local $11)
                    )
                    (call $_abort)
                  )
                  (if
                    (i32.eq
                      (i32.load
                        (tee_local $2
                          (i32.add
                            (get_local $3)
                            (i32.const 8)
                          )
                        )
                      )
                      (get_local $0)
                    )
                    (set_local $5
                      (get_local $2)
                    )
                    (call $_abort)
                  )
                )
              )
              (i32.store offset=12
                (get_local $4)
                (get_local $3)
              )
              (i32.store
                (get_local $5)
                (get_local $4)
              )
              (set_local $3
                (get_local $0)
              )
              (set_local $2
                (get_local $1)
              )
              (br $do-once)
            )
          )
          (set_local $12
            (i32.load offset=24
              (get_local $0)
            )
          )
          (block $do-once0
            (if
              (i32.eq
                (tee_local $4
                  (i32.load offset=12
                    (get_local $0)
                  )
                )
                (get_local $0)
              )
              (block
                (if
                  (tee_local $4
                    (i32.load
                      (tee_local $8
                        (i32.add
                          (tee_local $5
                            (i32.add
                              (get_local $0)
                              (i32.const 16)
                            )
                          )
                          (i32.const 4)
                        )
                      )
                    )
                  )
                  (set_local $5
                    (get_local $8)
                  )
                  (if
                    (i32.eqz
                      (tee_local $4
                        (i32.load
                          (get_local $5)
                        )
                      )
                    )
                    (block
                      (set_local $7
                        (i32.const 0)
                      )
                      (br $do-once0)
                    )
                  )
                )
                (loop $while-in
                  (if
                    (tee_local $10
                      (i32.load
                        (tee_local $8
                          (i32.add
                            (get_local $4)
                            (i32.const 20)
                          )
                        )
                      )
                    )
                    (block
                      (set_local $4
                        (get_local $10)
                      )
                      (set_local $5
                        (get_local $8)
                      )
                      (br $while-in)
                    )
                  )
                  (if
                    (tee_local $10
                      (i32.load
                        (tee_local $8
                          (i32.add
                            (get_local $4)
                            (i32.const 16)
                          )
                        )
                      )
                    )
                    (block
                      (set_local $4
                        (get_local $10)
                      )
                      (set_local $5
                        (get_local $8)
                      )
                      (br $while-in)
                    )
                  )
                )
                (if
                  (i32.lt_u
                    (get_local $5)
                    (get_local $11)
                  )
                  (call $_abort)
                  (block
                    (i32.store
                      (get_local $5)
                      (i32.const 0)
                    )
                    (set_local $7
                      (get_local $4)
                    )
                  )
                )
              )
              (block
                (if
                  (i32.lt_u
                    (tee_local $5
                      (i32.load offset=8
                        (get_local $0)
                      )
                    )
                    (get_local $11)
                  )
                  (call $_abort)
                )
                (if
                  (i32.ne
                    (i32.load
                      (tee_local $8
                        (i32.add
                          (get_local $5)
                          (i32.const 12)
                        )
                      )
                    )
                    (get_local $0)
                  )
                  (call $_abort)
                )
                (if
                  (i32.eq
                    (i32.load
                      (tee_local $10
                        (i32.add
                          (get_local $4)
                          (i32.const 8)
                        )
                      )
                    )
                    (get_local $0)
                  )
                  (block
                    (i32.store
                      (get_local $8)
                      (get_local $4)
                    )
                    (i32.store
                      (get_local $10)
                      (get_local $5)
                    )
                    (set_local $7
                      (get_local $4)
                    )
                  )
                  (call $_abort)
                )
              )
            )
          )
          (if
            (get_local $12)
            (block
              (if
                (i32.eq
                  (get_local $0)
                  (i32.load
                    (tee_local $5
                      (i32.add
                        (i32.shl
                          (tee_local $4
                            (i32.load offset=28
                              (get_local $0)
                            )
                          )
                          (i32.const 2)
                        )
                        (i32.const 1153492)
                      )
                    )
                  )
                )
                (block
                  (i32.store
                    (get_local $5)
                    (get_local $7)
                  )
                  (if
                    (i32.eqz
                      (get_local $7)
                    )
                    (block
                      (i32.store
                        (i32.const 1153192)
                        (i32.and
                          (i32.load
                            (i32.const 1153192)
                          )
                          (i32.xor
                            (i32.shl
                              (i32.const 1)
                              (get_local $4)
                            )
                            (i32.const -1)
                          )
                        )
                      )
                      (set_local $3
                        (get_local $0)
                      )
                      (set_local $2
                        (get_local $1)
                      )
                      (br $do-once)
                    )
                  )
                )
                (block
                  (if
                    (i32.lt_u
                      (get_local $12)
                      (i32.load
                        (i32.const 1153204)
                      )
                    )
                    (call $_abort)
                  )
                  (if
                    (i32.eq
                      (i32.load
                        (tee_local $4
                          (i32.add
                            (get_local $12)
                            (i32.const 16)
                          )
                        )
                      )
                      (get_local $0)
                    )
                    (i32.store
                      (get_local $4)
                      (get_local $7)
                    )
                    (i32.store offset=20
                      (get_local $12)
                      (get_local $7)
                    )
                  )
                  (if
                    (i32.eqz
                      (get_local $7)
                    )
                    (block
                      (set_local $3
                        (get_local $0)
                      )
                      (set_local $2
                        (get_local $1)
                      )
                      (br $do-once)
                    )
                  )
                )
              )
              (if
                (i32.lt_u
                  (get_local $7)
                  (tee_local $5
                    (i32.load
                      (i32.const 1153204)
                    )
                  )
                )
                (call $_abort)
              )
              (i32.store offset=24
                (get_local $7)
                (get_local $12)
              )
              (if
                (tee_local $4
                  (i32.load
                    (tee_local $8
                      (i32.add
                        (get_local $0)
                        (i32.const 16)
                      )
                    )
                  )
                )
                (if
                  (i32.lt_u
                    (get_local $4)
                    (get_local $5)
                  )
                  (call $_abort)
                  (block
                    (i32.store offset=16
                      (get_local $7)
                      (get_local $4)
                    )
                    (i32.store offset=24
                      (get_local $4)
                      (get_local $7)
                    )
                  )
                )
              )
              (if
                (tee_local $4
                  (i32.load offset=4
                    (get_local $8)
                  )
                )
                (if
                  (i32.lt_u
                    (get_local $4)
                    (i32.load
                      (i32.const 1153204)
                    )
                  )
                  (call $_abort)
                  (block
                    (i32.store offset=20
                      (get_local $7)
                      (get_local $4)
                    )
                    (i32.store offset=24
                      (get_local $4)
                      (get_local $7)
                    )
                    (set_local $3
                      (get_local $0)
                    )
                    (set_local $2
                      (get_local $1)
                    )
                  )
                )
                (block
                  (set_local $3
                    (get_local $0)
                  )
                  (set_local $2
                    (get_local $1)
                  )
                )
              )
            )
            (block
              (set_local $3
                (get_local $0)
              )
              (set_local $2
                (get_local $1)
              )
            )
          )
        )
      )
    )
    (if
      (i32.ge_u
        (get_local $3)
        (get_local $6)
      )
      (call $_abort)
    )
    (if
      (i32.eqz
        (i32.and
          (tee_local $0
            (i32.load
              (tee_local $1
                (i32.add
                  (get_local $6)
                  (i32.const 4)
                )
              )
            )
          )
          (i32.const 1)
        )
      )
      (call $_abort)
    )
    (if
      (i32.and
        (get_local $0)
        (i32.const 2)
      )
      (block
        (i32.store
          (get_local $1)
          (i32.and
            (get_local $0)
            (i32.const -2)
          )
        )
        (i32.store offset=4
          (get_local $3)
          (i32.or
            (get_local $2)
            (i32.const 1)
          )
        )
        (i32.store
          (i32.add
            (get_local $3)
            (get_local $2)
          )
          (get_local $2)
        )
      )
      (block
        (if
          (i32.eq
            (get_local $6)
            (i32.load
              (i32.const 1153212)
            )
          )
          (block
            (i32.store
              (i32.const 1153200)
              (tee_local $0
                (i32.add
                  (i32.load
                    (i32.const 1153200)
                  )
                  (get_local $2)
                )
              )
            )
            (i32.store
              (i32.const 1153212)
              (get_local $3)
            )
            (i32.store offset=4
              (get_local $3)
              (i32.or
                (get_local $0)
                (i32.const 1)
              )
            )
            (if
              (i32.ne
                (get_local $3)
                (i32.load
                  (i32.const 1153208)
                )
              )
              (return)
            )
            (i32.store
              (i32.const 1153208)
              (i32.const 0)
            )
            (i32.store
              (i32.const 1153196)
              (i32.const 0)
            )
            (return)
          )
        )
        (if
          (i32.eq
            (get_local $6)
            (i32.load
              (i32.const 1153208)
            )
          )
          (block
            (i32.store
              (i32.const 1153196)
              (tee_local $0
                (i32.add
                  (i32.load
                    (i32.const 1153196)
                  )
                  (get_local $2)
                )
              )
            )
            (i32.store
              (i32.const 1153208)
              (get_local $3)
            )
            (i32.store offset=4
              (get_local $3)
              (i32.or
                (get_local $0)
                (i32.const 1)
              )
            )
            (i32.store
              (i32.add
                (get_local $3)
                (get_local $0)
              )
              (get_local $0)
            )
            (return)
          )
        )
        (set_local $5
          (i32.add
            (i32.and
              (get_local $0)
              (i32.const -8)
            )
            (get_local $2)
          )
        )
        (set_local $4
          (i32.shr_u
            (get_local $0)
            (i32.const 3)
          )
        )
        (block $do-once4
          (if
            (i32.lt_u
              (get_local $0)
              (i32.const 256)
            )
            (block
              (set_local $2
                (i32.load offset=12
                  (get_local $6)
                )
              )
              (if
                (i32.ne
                  (tee_local $1
                    (i32.load offset=8
                      (get_local $6)
                    )
                  )
                  (tee_local $0
                    (i32.add
                      (i32.shl
                        (i32.shl
                          (get_local $4)
                          (i32.const 1)
                        )
                        (i32.const 2)
                      )
                      (i32.const 1153228)
                    )
                  )
                )
                (block
                  (if
                    (i32.lt_u
                      (get_local $1)
                      (i32.load
                        (i32.const 1153204)
                      )
                    )
                    (call $_abort)
                  )
                  (if
                    (i32.ne
                      (i32.load offset=12
                        (get_local $1)
                      )
                      (get_local $6)
                    )
                    (call $_abort)
                  )
                )
              )
              (if
                (i32.eq
                  (get_local $2)
                  (get_local $1)
                )
                (block
                  (i32.store
                    (i32.const 1153188)
                    (i32.and
                      (i32.load
                        (i32.const 1153188)
                      )
                      (i32.xor
                        (i32.shl
                          (i32.const 1)
                          (get_local $4)
                        )
                        (i32.const -1)
                      )
                    )
                  )
                  (br $do-once4)
                )
              )
              (if
                (i32.eq
                  (get_local $2)
                  (get_local $0)
                )
                (set_local $14
                  (i32.add
                    (get_local $2)
                    (i32.const 8)
                  )
                )
                (block
                  (if
                    (i32.lt_u
                      (get_local $2)
                      (i32.load
                        (i32.const 1153204)
                      )
                    )
                    (call $_abort)
                  )
                  (if
                    (i32.eq
                      (i32.load
                        (tee_local $0
                          (i32.add
                            (get_local $2)
                            (i32.const 8)
                          )
                        )
                      )
                      (get_local $6)
                    )
                    (set_local $14
                      (get_local $0)
                    )
                    (call $_abort)
                  )
                )
              )
              (i32.store offset=12
                (get_local $1)
                (get_local $2)
              )
              (i32.store
                (get_local $14)
                (get_local $1)
              )
            )
            (block
              (set_local $7
                (i32.load offset=24
                  (get_local $6)
                )
              )
              (block $do-once6
                (if
                  (i32.eq
                    (tee_local $0
                      (i32.load offset=12
                        (get_local $6)
                      )
                    )
                    (get_local $6)
                  )
                  (block
                    (if
                      (tee_local $0
                        (i32.load
                          (tee_local $1
                            (i32.add
                              (tee_local $2
                                (i32.add
                                  (get_local $6)
                                  (i32.const 16)
                                )
                              )
                              (i32.const 4)
                            )
                          )
                        )
                      )
                      (set_local $2
                        (get_local $1)
                      )
                      (if
                        (i32.eqz
                          (tee_local $0
                            (i32.load
                              (get_local $2)
                            )
                          )
                        )
                        (block
                          (set_local $9
                            (i32.const 0)
                          )
                          (br $do-once6)
                        )
                      )
                    )
                    (loop $while-in9
                      (if
                        (tee_local $4
                          (i32.load
                            (tee_local $1
                              (i32.add
                                (get_local $0)
                                (i32.const 20)
                              )
                            )
                          )
                        )
                        (block
                          (set_local $0
                            (get_local $4)
                          )
                          (set_local $2
                            (get_local $1)
                          )
                          (br $while-in9)
                        )
                      )
                      (if
                        (tee_local $4
                          (i32.load
                            (tee_local $1
                              (i32.add
                                (get_local $0)
                                (i32.const 16)
                              )
                            )
                          )
                        )
                        (block
                          (set_local $0
                            (get_local $4)
                          )
                          (set_local $2
                            (get_local $1)
                          )
                          (br $while-in9)
                        )
                      )
                    )
                    (if
                      (i32.lt_u
                        (get_local $2)
                        (i32.load
                          (i32.const 1153204)
                        )
                      )
                      (call $_abort)
                      (block
                        (i32.store
                          (get_local $2)
                          (i32.const 0)
                        )
                        (set_local $9
                          (get_local $0)
                        )
                      )
                    )
                  )
                  (block
                    (if
                      (i32.lt_u
                        (tee_local $2
                          (i32.load offset=8
                            (get_local $6)
                          )
                        )
                        (i32.load
                          (i32.const 1153204)
                        )
                      )
                      (call $_abort)
                    )
                    (if
                      (i32.ne
                        (i32.load
                          (tee_local $1
                            (i32.add
                              (get_local $2)
                              (i32.const 12)
                            )
                          )
                        )
                        (get_local $6)
                      )
                      (call $_abort)
                    )
                    (if
                      (i32.eq
                        (i32.load
                          (tee_local $4
                            (i32.add
                              (get_local $0)
                              (i32.const 8)
                            )
                          )
                        )
                        (get_local $6)
                      )
                      (block
                        (i32.store
                          (get_local $1)
                          (get_local $0)
                        )
                        (i32.store
                          (get_local $4)
                          (get_local $2)
                        )
                        (set_local $9
                          (get_local $0)
                        )
                      )
                      (call $_abort)
                    )
                  )
                )
              )
              (if
                (get_local $7)
                (block
                  (if
                    (i32.eq
                      (get_local $6)
                      (i32.load
                        (tee_local $2
                          (i32.add
                            (i32.shl
                              (tee_local $0
                                (i32.load offset=28
                                  (get_local $6)
                                )
                              )
                              (i32.const 2)
                            )
                            (i32.const 1153492)
                          )
                        )
                      )
                    )
                    (block
                      (i32.store
                        (get_local $2)
                        (get_local $9)
                      )
                      (if
                        (i32.eqz
                          (get_local $9)
                        )
                        (block
                          (i32.store
                            (i32.const 1153192)
                            (i32.and
                              (i32.load
                                (i32.const 1153192)
                              )
                              (i32.xor
                                (i32.shl
                                  (i32.const 1)
                                  (get_local $0)
                                )
                                (i32.const -1)
                              )
                            )
                          )
                          (br $do-once4)
                        )
                      )
                    )
                    (block
                      (if
                        (i32.lt_u
                          (get_local $7)
                          (i32.load
                            (i32.const 1153204)
                          )
                        )
                        (call $_abort)
                      )
                      (if
                        (i32.eq
                          (i32.load
                            (tee_local $0
                              (i32.add
                                (get_local $7)
                                (i32.const 16)
                              )
                            )
                          )
                          (get_local $6)
                        )
                        (i32.store
                          (get_local $0)
                          (get_local $9)
                        )
                        (i32.store offset=20
                          (get_local $7)
                          (get_local $9)
                        )
                      )
                      (br_if $do-once4
                        (i32.eqz
                          (get_local $9)
                        )
                      )
                    )
                  )
                  (if
                    (i32.lt_u
                      (get_local $9)
                      (tee_local $2
                        (i32.load
                          (i32.const 1153204)
                        )
                      )
                    )
                    (call $_abort)
                  )
                  (i32.store offset=24
                    (get_local $9)
                    (get_local $7)
                  )
                  (if
                    (tee_local $0
                      (i32.load
                        (tee_local $1
                          (i32.add
                            (get_local $6)
                            (i32.const 16)
                          )
                        )
                      )
                    )
                    (if
                      (i32.lt_u
                        (get_local $0)
                        (get_local $2)
                      )
                      (call $_abort)
                      (block
                        (i32.store offset=16
                          (get_local $9)
                          (get_local $0)
                        )
                        (i32.store offset=24
                          (get_local $0)
                          (get_local $9)
                        )
                      )
                    )
                  )
                  (if
                    (tee_local $0
                      (i32.load offset=4
                        (get_local $1)
                      )
                    )
                    (if
                      (i32.lt_u
                        (get_local $0)
                        (i32.load
                          (i32.const 1153204)
                        )
                      )
                      (call $_abort)
                      (block
                        (i32.store offset=20
                          (get_local $9)
                          (get_local $0)
                        )
                        (i32.store offset=24
                          (get_local $0)
                          (get_local $9)
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
        (i32.store offset=4
          (get_local $3)
          (i32.or
            (get_local $5)
            (i32.const 1)
          )
        )
        (i32.store
          (i32.add
            (get_local $3)
            (get_local $5)
          )
          (get_local $5)
        )
        (if
          (i32.eq
            (get_local $3)
            (i32.load
              (i32.const 1153208)
            )
          )
          (block
            (i32.store
              (i32.const 1153196)
              (get_local $5)
            )
            (return)
          )
          (set_local $2
            (get_local $5)
          )
        )
      )
    )
    (set_local $1
      (i32.shr_u
        (get_local $2)
        (i32.const 3)
      )
    )
    (if
      (i32.lt_u
        (get_local $2)
        (i32.const 256)
      )
      (block
        (set_local $0
          (i32.add
            (i32.shl
              (i32.shl
                (get_local $1)
                (i32.const 1)
              )
              (i32.const 2)
            )
            (i32.const 1153228)
          )
        )
        (if
          (i32.and
            (tee_local $2
              (i32.load
                (i32.const 1153188)
              )
            )
            (tee_local $1
              (i32.shl
                (i32.const 1)
                (get_local $1)
              )
            )
          )
          (if
            (i32.lt_u
              (tee_local $1
                (i32.load
                  (tee_local $2
                    (i32.add
                      (get_local $0)
                      (i32.const 8)
                    )
                  )
                )
              )
              (i32.load
                (i32.const 1153204)
              )
            )
            (call $_abort)
            (block
              (set_local $13
                (get_local $1)
              )
              (set_local $15
                (get_local $2)
              )
            )
          )
          (block
            (i32.store
              (i32.const 1153188)
              (i32.or
                (get_local $2)
                (get_local $1)
              )
            )
            (set_local $13
              (get_local $0)
            )
            (set_local $15
              (i32.add
                (get_local $0)
                (i32.const 8)
              )
            )
          )
        )
        (i32.store
          (get_local $15)
          (get_local $3)
        )
        (i32.store offset=12
          (get_local $13)
          (get_local $3)
        )
        (i32.store offset=8
          (get_local $3)
          (get_local $13)
        )
        (i32.store offset=12
          (get_local $3)
          (get_local $0)
        )
        (return)
      )
    )
    (set_local $0
      (i32.add
        (i32.shl
          (tee_local $1
            (if i32
              (tee_local $0
                (i32.shr_u
                  (get_local $2)
                  (i32.const 8)
                )
              )
              (if i32
                (i32.gt_u
                  (get_local $2)
                  (i32.const 16777215)
                )
                (i32.const 31)
                (i32.or
                  (i32.and
                    (i32.shr_u
                      (get_local $2)
                      (i32.add
                        (tee_local $0
                          (i32.add
                            (i32.sub
                              (i32.const 14)
                              (i32.or
                                (i32.or
                                  (tee_local $4
                                    (i32.and
                                      (i32.shr_u
                                        (i32.add
                                          (tee_local $1
                                            (i32.shl
                                              (get_local $0)
                                              (tee_local $0
                                                (i32.and
                                                  (i32.shr_u
                                                    (i32.add
                                                      (get_local $0)
                                                      (i32.const 1048320)
                                                    )
                                                    (i32.const 16)
                                                  )
                                                  (i32.const 8)
                                                )
                                              )
                                            )
                                          )
                                          (i32.const 520192)
                                        )
                                        (i32.const 16)
                                      )
                                      (i32.const 4)
                                    )
                                  )
                                  (get_local $0)
                                )
                                (tee_local $1
                                  (i32.and
                                    (i32.shr_u
                                      (i32.add
                                        (tee_local $0
                                          (i32.shl
                                            (get_local $1)
                                            (get_local $4)
                                          )
                                        )
                                        (i32.const 245760)
                                      )
                                      (i32.const 16)
                                    )
                                    (i32.const 2)
                                  )
                                )
                              )
                            )
                            (i32.shr_u
                              (i32.shl
                                (get_local $0)
                                (get_local $1)
                              )
                              (i32.const 15)
                            )
                          )
                        )
                        (i32.const 7)
                      )
                    )
                    (i32.const 1)
                  )
                  (i32.shl
                    (get_local $0)
                    (i32.const 1)
                  )
                )
              )
              (i32.const 0)
            )
          )
          (i32.const 2)
        )
        (i32.const 1153492)
      )
    )
    (i32.store offset=28
      (get_local $3)
      (get_local $1)
    )
    (i32.store offset=20
      (get_local $3)
      (i32.const 0)
    )
    (i32.store offset=16
      (get_local $3)
      (i32.const 0)
    )
    (block $do-once12
      (if
        (i32.and
          (tee_local $4
            (i32.load
              (i32.const 1153192)
            )
          )
          (tee_local $5
            (i32.shl
              (i32.const 1)
              (get_local $1)
            )
          )
        )
        (block
          (set_local $0
            (i32.load
              (get_local $0)
            )
          )
          (set_local $4
            (i32.sub
              (i32.const 25)
              (i32.shr_u
                (get_local $1)
                (i32.const 1)
              )
            )
          )
          (set_local $1
            (i32.shl
              (get_local $2)
              (if i32
                (i32.eq
                  (get_local $1)
                  (i32.const 31)
                )
                (i32.const 0)
                (get_local $4)
              )
            )
          )
          (block $__rjto$1
            (block $__rjti$1
              (block $__rjti$0
                (loop $while-in15
                  (br_if $__rjti$1
                    (i32.eq
                      (i32.and
                        (i32.load offset=4
                          (get_local $0)
                        )
                        (i32.const -8)
                      )
                      (get_local $2)
                    )
                  )
                  (set_local $4
                    (i32.shl
                      (get_local $1)
                      (i32.const 1)
                    )
                  )
                  (br_if $__rjti$0
                    (i32.eqz
                      (tee_local $5
                        (i32.load
                          (tee_local $1
                            (i32.add
                              (i32.add
                                (get_local $0)
                                (i32.const 16)
                              )
                              (i32.shl
                                (i32.shr_u
                                  (get_local $1)
                                  (i32.const 31)
                                )
                                (i32.const 2)
                              )
                            )
                          )
                        )
                      )
                    )
                  )
                  (set_local $1
                    (get_local $4)
                  )
                  (set_local $0
                    (get_local $5)
                  )
                  (br $while-in15)
                )
              )
              (if
                (i32.lt_u
                  (get_local $1)
                  (i32.load
                    (i32.const 1153204)
                  )
                )
                (call $_abort)
                (block
                  (i32.store
                    (get_local $1)
                    (get_local $3)
                  )
                  (i32.store offset=24
                    (get_local $3)
                    (get_local $0)
                  )
                  (i32.store offset=12
                    (get_local $3)
                    (get_local $3)
                  )
                  (i32.store offset=8
                    (get_local $3)
                    (get_local $3)
                  )
                  (br $do-once12)
                )
              )
              (br $__rjto$1)
            )
            (if
              (i32.and
                (i32.ge_u
                  (tee_local $2
                    (i32.load
                      (tee_local $1
                        (i32.add
                          (get_local $0)
                          (i32.const 8)
                        )
                      )
                    )
                  )
                  (tee_local $4
                    (i32.load
                      (i32.const 1153204)
                    )
                  )
                )
                (i32.ge_u
                  (get_local $0)
                  (get_local $4)
                )
              )
              (block
                (i32.store offset=12
                  (get_local $2)
                  (get_local $3)
                )
                (i32.store
                  (get_local $1)
                  (get_local $3)
                )
                (i32.store offset=8
                  (get_local $3)
                  (get_local $2)
                )
                (i32.store offset=12
                  (get_local $3)
                  (get_local $0)
                )
                (i32.store offset=24
                  (get_local $3)
                  (i32.const 0)
                )
              )
              (call $_abort)
            )
          )
        )
        (block
          (i32.store
            (i32.const 1153192)
            (i32.or
              (get_local $4)
              (get_local $5)
            )
          )
          (i32.store
            (get_local $0)
            (get_local $3)
          )
          (i32.store offset=24
            (get_local $3)
            (get_local $0)
          )
          (i32.store offset=12
            (get_local $3)
            (get_local $3)
          )
          (i32.store offset=8
            (get_local $3)
            (get_local $3)
          )
        )
      )
    )
    (i32.store
      (i32.const 1153220)
      (tee_local $0
        (i32.add
          (i32.load
            (i32.const 1153220)
          )
          (i32.const -1)
        )
      )
    )
    (if
      (get_local $0)
      (return)
      (set_local $0
        (i32.const 1153644)
      )
    )
    (loop $while-in17
      (set_local $0
        (i32.add
          (tee_local $2
            (i32.load
              (get_local $0)
            )
          )
          (i32.const 8)
        )
      )
      (br_if $while-in17
        (get_local $2)
      )
    )
    (i32.store
      (i32.const 1153220)
      (i32.const -1)
    )
  )
  (func $runPostSets
    (nop)
  )
  (func $_sbrk (param $0 i32) (result i32)
    (local $1 i32)
    (local $2 i32)
    (set_local $1
      (i32.add
        (tee_local $2
          (i32.load
            (get_global $DYNAMICTOP_PTR)
          )
        )
        (tee_local $0
          (i32.and
            (i32.add
              (get_local $0)
              (i32.const 15)
            )
            (i32.const -16)
          )
        )
      )
    )
    (if
      (i32.or
        (i32.and
          (i32.gt_s
            (get_local $0)
            (i32.const 0)
          )
          (i32.lt_s
            (get_local $1)
            (get_local $2)
          )
        )
        (i32.lt_s
          (get_local $1)
          (i32.const 0)
        )
      )
      (block
        (drop
          (call $abortOnCannotGrowMemory)
        )
        (call $___setErrNo
          (i32.const 12)
        )
        (return
          (i32.const -1)
        )
      )
    )
    (i32.store
      (get_global $DYNAMICTOP_PTR)
      (get_local $1)
    )
    (if
      (i32.gt_s
        (get_local $1)
        (call $getTotalMemory)
      )
      (if
        (i32.eqz
          (call $enlargeMemory)
        )
        (block
          (call $___setErrNo
            (i32.const 12)
          )
          (i32.store
            (get_global $DYNAMICTOP_PTR)
            (get_local $2)
          )
          (return
            (i32.const -1)
          )
        )
      )
    )
    (get_local $2)
  )
  (func $_memset (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
    (local $3 i32)
    (local $4 i32)
    (local $5 i32)
    (set_local $4
      (i32.add
        (get_local $0)
        (get_local $2)
      )
    )
    (if
      (i32.ge_s
        (get_local $2)
        (i32.const 20)
      )
      (block
        (set_local $1
          (i32.and
            (get_local $1)
            (i32.const 255)
          )
        )
        (if
          (tee_local $3
            (i32.and
              (get_local $0)
              (i32.const 3)
            )
          )
          (block
            (set_local $3
              (i32.sub
                (i32.add
                  (get_local $0)
                  (i32.const 4)
                )
                (get_local $3)
              )
            )
            (loop $while-in
              (if
                (i32.lt_s
                  (get_local $0)
                  (get_local $3)
                )
                (block
                  (i32.store8
                    (get_local $0)
                    (get_local $1)
                  )
                  (set_local $0
                    (i32.add
                      (get_local $0)
                      (i32.const 1)
                    )
                  )
                  (br $while-in)
                )
              )
            )
          )
        )
        (set_local $3
          (i32.or
            (i32.or
              (i32.or
                (get_local $1)
                (i32.shl
                  (get_local $1)
                  (i32.const 8)
                )
              )
              (i32.shl
                (get_local $1)
                (i32.const 16)
              )
            )
            (i32.shl
              (get_local $1)
              (i32.const 24)
            )
          )
        )
        (set_local $5
          (i32.and
            (get_local $4)
            (i32.const -4)
          )
        )
        (loop $while-in1
          (if
            (i32.lt_s
              (get_local $0)
              (get_local $5)
            )
            (block
              (i32.store
                (get_local $0)
                (get_local $3)
              )
              (set_local $0
                (i32.add
                  (get_local $0)
                  (i32.const 4)
                )
              )
              (br $while-in1)
            )
          )
        )
      )
    )
    (loop $while-in3
      (if
        (i32.lt_s
          (get_local $0)
          (get_local $4)
        )
        (block
          (i32.store8
            (get_local $0)
            (get_local $1)
          )
          (set_local $0
            (i32.add
              (get_local $0)
              (i32.const 1)
            )
          )
          (br $while-in3)
        )
      )
    )
    (i32.sub
      (get_local $0)
      (get_local $2)
    )
  )
  (func $_memcpy (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
    (local $3 i32)
    (if
      (i32.ge_s
        (get_local $2)
        (i32.const 4096)
      )
      (return
        (call $_emscripten_memcpy_big
          (get_local $0)
          (get_local $1)
          (get_local $2)
        )
      )
    )
    (set_local $3
      (get_local $0)
    )
    (if
      (i32.eq
        (i32.and
          (get_local $0)
          (i32.const 3)
        )
        (i32.and
          (get_local $1)
          (i32.const 3)
        )
      )
      (block
        (loop $while-in
          (if
            (i32.and
              (get_local $0)
              (i32.const 3)
            )
            (block
              (if
                (i32.eqz
                  (get_local $2)
                )
                (return
                  (get_local $3)
                )
              )
              (i32.store8
                (get_local $0)
                (i32.load8_s
                  (get_local $1)
                )
              )
              (set_local $0
                (i32.add
                  (get_local $0)
                  (i32.const 1)
                )
              )
              (set_local $1
                (i32.add
                  (get_local $1)
                  (i32.const 1)
                )
              )
              (set_local $2
                (i32.sub
                  (get_local $2)
                  (i32.const 1)
                )
              )
              (br $while-in)
            )
          )
        )
        (loop $while-in1
          (if
            (i32.ge_s
              (get_local $2)
              (i32.const 4)
            )
            (block
              (i32.store
                (get_local $0)
                (i32.load
                  (get_local $1)
                )
              )
              (set_local $0
                (i32.add
                  (get_local $0)
                  (i32.const 4)
                )
              )
              (set_local $1
                (i32.add
                  (get_local $1)
                  (i32.const 4)
                )
              )
              (set_local $2
                (i32.sub
                  (get_local $2)
                  (i32.const 4)
                )
              )
              (br $while-in1)
            )
          )
        )
      )
    )
    (loop $while-in3
      (if
        (i32.gt_s
          (get_local $2)
          (i32.const 0)
        )
        (block
          (i32.store8
            (get_local $0)
            (i32.load8_s
              (get_local $1)
            )
          )
          (set_local $0
            (i32.add
              (get_local $0)
              (i32.const 1)
            )
          )
          (set_local $1
            (i32.add
              (get_local $1)
              (i32.const 1)
            )
          )
          (set_local $2
            (i32.sub
              (get_local $2)
              (i32.const 1)
            )
          )
          (br $while-in3)
        )
      )
    )
    (get_local $3)
  )
  (func $_pthread_self (result i32)
    (i32.const 0)
  )
  (func $dynCall_ii (param $0 i32) (param $1 i32) (result i32)
    (call_indirect $FUNCSIG$ii
      (get_local $1)
      (i32.add
        (i32.and
          (get_local $0)
          (i32.const 1)
        )
        (i32.const 0)
      )
    )
  )
  (func $dynCall_iiii (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
    (call_indirect $FUNCSIG$iiii
      (get_local $1)
      (get_local $2)
      (get_local $3)
      (i32.add
        (i32.and
          (get_local $0)
          (i32.const 3)
        )
        (i32.const 2)
      )
    )
  )
  (func $dynCall_vi (param $0 i32) (param $1 i32)
    (call_indirect $FUNCSIG$vi
      (get_local $1)
      (i32.add
        (i32.and
          (get_local $0)
          (i32.const 1)
        )
        (i32.const 6)
      )
    )
  )
  (func $b0 (param $0 i32) (result i32)
    (call $abort
      (i32.const 0)
    )
    (i32.const 0)
  )
  (func $b1 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
    (call $abort
      (i32.const 1)
    )
    (i32.const 0)
  )
  (func $b2 (param $0 i32)
    (call $abort
      (i32.const 2)
    )
  )
)
