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
  (global $DYNAMICTOP_PTR (mut i32) (global.get $DYNAMICTOP_PTR$asm2wasm$import))
  (global $STACKTOP (mut i32) (global.get $STACKTOP$asm2wasm$import))
  (global $STACK_MAX (mut i32) (global.get $STACK_MAX$asm2wasm$import))
  (global $__THREW__ (mut i32) (i32.const 0))
  (global $threwValue (mut i32) (i32.const 0))
  (global $tempRet0 (mut i32) (i32.const 0))
  (elem (global.get $tableBase) $b0 $___stdio_close $b1 $___stdout_write $___stdio_seek $___stdio_write $b2 $_cleanup_387)
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
    (local.set $1
      (global.get $STACKTOP)
    )
    (global.set $STACKTOP
      (i32.add
        (global.get $STACKTOP)
        (local.get $0)
      )
    )
    (global.set $STACKTOP
      (i32.and
        (i32.add
          (global.get $STACKTOP)
          (i32.const 15)
        )
        (i32.const -16)
      )
    )
    (local.get $1)
  )
  (func $stackSave (result i32)
    (global.get $STACKTOP)
  )
  (func $stackRestore (param $0 i32)
    (global.set $STACKTOP
      (local.get $0)
    )
  )
  (func $establishStackSpace (param $0 i32) (param $1 i32)
    (global.set $STACKTOP
      (local.get $0)
    )
    (global.set $STACK_MAX
      (local.get $1)
    )
  )
  (func $setThrew (param $0 i32) (param $1 i32)
    (if
      (i32.eqz
        (global.get $__THREW__)
      )
      (block
        (global.set $__THREW__
          (local.get $0)
        )
        (global.set $threwValue
          (local.get $1)
        )
      )
    )
  )
  (func $setTempRet0 (param $0 i32)
    (global.set $tempRet0
      (local.get $0)
    )
  )
  (func $getTempRet0 (result i32)
    (global.get $tempRet0)
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
            (local.get $2)
            (i32.const 0)
          )
        )
      )
      (return)
    )
    (if
      (i32.gt_s
        (local.get $1)
        (i32.const 0)
      )
      (block
        (local.set $4
          (i32.const 0)
        )
        (loop $while-in
          (local.set $10
            (i32.mul
              (local.get $4)
              (i32.const 600)
            )
          )
          (local.set $5
            (i32.const 0)
          )
          (loop $while-in1
            (local.set $3
              (i32.add
                (local.get $0)
                (tee_local $9
                  (i32.shl
                    (tee_local $7
                      (i32.add
                        (local.get $5)
                        (local.get $10)
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
                  (local.get $7)
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
                            (local.get $0)
                            (i32.or
                              (local.get $9)
                              (i32.const 1)
                            )
                          )
                        )
                      )
                      (i32.const 1)
                    )
                    (i32.shr_u
                      (i32.load8_u
                        (local.get $3)
                      )
                      (i32.const 2)
                    )
                  )
                  (i32.shr_u
                    (i32.load8_u
                      (tee_local $11
                        (i32.add
                          (local.get $0)
                          (i32.or
                            (local.get $9)
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
              (local.get $3)
              (tee_local $3
                (i32.and
                  (local.get $12)
                  (i32.const 255)
                )
              )
            )
            (i32.store8
              (local.get $7)
              (local.get $3)
            )
            (i32.store8
              (local.get $11)
              (local.get $3)
            )
            (i32.store8
              (i32.add
                (local.get $0)
                (i32.or
                  (local.get $9)
                  (i32.const 3)
                )
              )
              (i32.const -1)
            )
            (br_if $while-in1
              (i32.ne
                (tee_local $5
                  (i32.add
                    (local.get $5)
                    (i32.const 1)
                  )
                )
                (local.get $1)
              )
            )
          )
          (br_if $while-in
            (i32.ne
              (tee_local $4
                (i32.add
                  (local.get $4)
                  (i32.const 1)
                )
              )
              (local.get $2)
            )
          )
        )
        (if
          (i32.eqz
            (local.get $6)
          )
          (return)
        )
      )
    )
    (local.set $20
      (i32.gt_s
        (local.get $1)
        (i32.const 0)
      )
    )
    (local.set $21
      (i32.add
        (local.get $1)
        (i32.const -1)
      )
    )
    (local.set $22
      (i32.add
        (local.get $2)
        (i32.const -1)
      )
    )
    (local.set $5
      (i32.const 0)
    )
    (loop $while-in3
      (if
        (local.get $20)
        (block
          (local.set $12
            (i32.mul
              (local.get $5)
              (i32.const 600)
            )
          )
          (local.set $23
            (i32.gt_s
              (local.get $5)
              (i32.const 0)
            )
          )
          (local.set $24
            (i32.lt_s
              (local.get $5)
              (local.get $22)
            )
          )
          (local.set $14
            (i32.gt_s
              (local.get $5)
              (i32.const 478)
            )
          )
          (local.set $10
            (i32.mul
              (tee_local $9
                (i32.add
                  (local.get $5)
                  (i32.const 1)
                )
              )
              (i32.const 600)
            )
          )
          (local.set $15
            (i32.gt_s
              (tee_local $11
                (i32.add
                  (local.get $5)
                  (i32.const -1)
                )
              )
              (i32.const 479)
            )
          )
          (local.set $7
            (i32.mul
              (local.get $11)
              (i32.const 600)
            )
          )
          (local.set $19
            (i32.gt_s
              (local.get $5)
              (i32.const 479)
            )
          )
          (local.set $4
            (i32.const 0)
          )
          (loop $while-in5
            (local.set $6
              (if i32
                (i32.lt_s
                  (local.get $4)
                  (i32.const 1)
                )
                (block i32
                  (local.set $3
                    (i32.const 0)
                  )
                  (i32.const 0)
                )
                (if i32
                  (i32.and
                    (local.get $24)
                    (i32.and
                      (local.get $23)
                      (i32.lt_s
                        (local.get $4)
                        (local.get $21)
                      )
                    )
                  )
                  (block i32
                    (local.set $8
                      (i32.gt_s
                        (tee_local $3
                          (i32.add
                            (local.get $4)
                            (i32.const -1)
                          )
                        )
                        (i32.const 599)
                      )
                    )
                    (local.set $25
                      (if i32
                        (tee_local $16
                          (i32.or
                            (i32.lt_s
                              (i32.or
                                (local.get $3)
                                (local.get $11)
                              )
                              (i32.const 0)
                            )
                            (i32.or
                              (local.get $15)
                              (local.get $8)
                            )
                          )
                        )
                        (i32.const 0)
                        (i32.load
                          (i32.add
                            (i32.shl
                              (i32.add
                                (local.get $3)
                                (local.get $7)
                              )
                              (i32.const 2)
                            )
                            (i32.const 1140)
                          )
                        )
                      )
                    )
                    (local.set $26
                      (if i32
                        (tee_local $17
                          (i32.or
                            (i32.lt_s
                              (i32.or
                                (tee_local $6
                                  (i32.add
                                    (local.get $4)
                                    (i32.const 1)
                                  )
                                )
                                (local.get $11)
                              )
                              (i32.const 0)
                            )
                            (i32.or
                              (local.get $15)
                              (tee_local $13
                                (i32.gt_s
                                  (local.get $4)
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
                                (local.get $6)
                                (local.get $7)
                              )
                              (i32.const 2)
                            )
                            (i32.const 1140)
                          )
                        )
                      )
                    )
                    (local.set $27
                      (if i32
                        (i32.or
                          (i32.lt_s
                            (i32.or
                              (local.get $3)
                              (local.get $5)
                            )
                            (i32.const 0)
                          )
                          (i32.or
                            (local.get $19)
                            (local.get $8)
                          )
                        )
                        (i32.const 0)
                        (i32.load
                          (i32.add
                            (i32.shl
                              (i32.add
                                (local.get $3)
                                (local.get $12)
                              )
                              (i32.const 2)
                            )
                            (i32.const 1140)
                          )
                        )
                      )
                    )
                    (local.set $28
                      (if i32
                        (i32.or
                          (i32.lt_s
                            (i32.or
                              (local.get $6)
                              (local.get $5)
                            )
                            (i32.const 0)
                          )
                          (i32.or
                            (local.get $19)
                            (local.get $13)
                          )
                        )
                        (i32.const 0)
                        (i32.load
                          (i32.add
                            (i32.shl
                              (i32.add
                                (local.get $6)
                                (local.get $12)
                              )
                              (i32.const 2)
                            )
                            (i32.const 1140)
                          )
                        )
                      )
                    )
                    (local.set $8
                      (if i32
                        (tee_local $18
                          (i32.or
                            (i32.lt_s
                              (i32.or
                                (local.get $3)
                                (local.get $9)
                              )
                              (i32.const 0)
                            )
                            (i32.or
                              (local.get $14)
                              (local.get $8)
                            )
                          )
                        )
                        (i32.const 0)
                        (i32.load
                          (i32.add
                            (i32.shl
                              (i32.add
                                (local.get $3)
                                (local.get $10)
                              )
                              (i32.const 2)
                            )
                            (i32.const 1140)
                          )
                        )
                      )
                    )
                    (local.set $13
                      (if i32
                        (tee_local $29
                          (i32.or
                            (i32.lt_s
                              (i32.or
                                (local.get $6)
                                (local.get $9)
                              )
                              (i32.const 0)
                            )
                            (i32.or
                              (local.get $14)
                              (local.get $13)
                            )
                          )
                        )
                        (i32.const 0)
                        (i32.load
                          (i32.add
                            (i32.shl
                              (i32.add
                                (local.get $6)
                                (local.get $10)
                              )
                              (i32.const 2)
                            )
                            (i32.const 1140)
                          )
                        )
                      )
                    )
                    (local.set $16
                      (if i32
                        (local.get $16)
                        (i32.const 0)
                        (i32.load
                          (i32.add
                            (i32.shl
                              (i32.add
                                (local.get $3)
                                (local.get $7)
                              )
                              (i32.const 2)
                            )
                            (i32.const 1140)
                          )
                        )
                      )
                    )
                    (local.set $31
                      (if i32
                        (i32.or
                          (i32.lt_s
                            (i32.or
                              (local.get $4)
                              (local.get $11)
                            )
                            (i32.const 0)
                          )
                          (i32.or
                            (local.get $15)
                            (tee_local $30
                              (i32.gt_s
                                (local.get $4)
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
                                (local.get $4)
                                (local.get $7)
                              )
                              (i32.const 2)
                            )
                            (i32.const 1140)
                          )
                        )
                      )
                    )
                    (local.set $17
                      (if i32
                        (local.get $17)
                        (i32.const 0)
                        (i32.load
                          (i32.add
                            (i32.shl
                              (i32.add
                                (local.get $6)
                                (local.get $7)
                              )
                              (i32.const 2)
                            )
                            (i32.const 1140)
                          )
                        )
                      )
                    )
                    (local.set $3
                      (if i32
                        (local.get $18)
                        (i32.const 0)
                        (i32.load
                          (i32.add
                            (i32.shl
                              (i32.add
                                (local.get $3)
                                (local.get $10)
                              )
                              (i32.const 2)
                            )
                            (i32.const 1140)
                          )
                        )
                      )
                    )
                    (local.set $18
                      (if i32
                        (i32.or
                          (i32.lt_s
                            (i32.or
                              (local.get $4)
                              (local.get $9)
                            )
                            (i32.const 0)
                          )
                          (i32.or
                            (local.get $14)
                            (local.get $30)
                          )
                        )
                        (i32.const 0)
                        (i32.load
                          (i32.add
                            (i32.shl
                              (i32.add
                                (local.get $4)
                                (local.get $10)
                              )
                              (i32.const 2)
                            )
                            (i32.const 1140)
                          )
                        )
                      )
                    )
                    (local.set $3
                      (i32.add
                        (i32.add
                          (i32.sub
                            (local.get $3)
                            (i32.add
                              (local.get $17)
                              (local.get $16)
                            )
                          )
                          (tee_local $6
                            (if i32
                              (local.get $29)
                              (i32.const 0)
                              (i32.load
                                (i32.add
                                  (i32.shl
                                    (i32.add
                                      (local.get $6)
                                      (local.get $10)
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
                            (local.get $18)
                            (local.get $31)
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
                              (local.get $26)
                              (local.get $25)
                            )
                            (i32.shl
                              (local.get $27)
                              (i32.const 1)
                            )
                          )
                          (i32.shl
                            (local.get $28)
                            (i32.const 1)
                          )
                        )
                        (local.get $8)
                      )
                      (local.get $13)
                    )
                  )
                  (block i32
                    (local.set $3
                      (i32.const 0)
                    )
                    (i32.const 0)
                  )
                )
              )
            )
            (i32.store8
              (i32.add
                (local.get $0)
                (tee_local $8
                  (i32.shl
                    (i32.add
                      (local.get $4)
                      (local.get $12)
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
                                    (local.get $3)
                                    (local.get $3)
                                  )
                                  (i32.mul
                                    (local.get $6)
                                    (local.get $6)
                                  )
                                )
                              )
                            )
                          )
                        )
                        (i32.const 255)
                      )
                      (i32.const 255)
                      (local.get $3)
                    )
                  )
                  (i32.const 255)
                )
              )
            )
            (i32.store8
              (i32.add
                (local.get $0)
                (i32.or
                  (local.get $8)
                  (i32.const 1)
                )
              )
              (local.get $3)
            )
            (i32.store8
              (i32.add
                (local.get $0)
                (i32.or
                  (local.get $8)
                  (i32.const 2)
                )
              )
              (local.get $3)
            )
            (i32.store8
              (i32.add
                (local.get $0)
                (i32.or
                  (local.get $8)
                  (i32.const 3)
                )
              )
              (i32.const -1)
            )
            (br_if $while-in5
              (i32.ne
                (tee_local $4
                  (i32.add
                    (local.get $4)
                    (i32.const 1)
                  )
                )
                (local.get $1)
              )
            )
            (local.set $4
              (local.get $9)
            )
          )
        )
        (local.set $4
          (i32.add
            (local.get $5)
            (i32.const 1)
          )
        )
      )
      (if
        (i32.ne
          (local.get $4)
          (local.get $2)
        )
        (block
          (local.set $5
            (local.get $4)
          )
          (br $while-in3)
        )
      )
    )
  )
  (func $_change (param $0 i32) (param $1 i32) (param $2 i32)
    (call $_sobel
      (local.get $0)
      (local.get $1)
      (local.get $2)
    )
  )
  (func $___stdio_close (param $0 i32) (result i32)
    (local $1 i32)
    (local $2 i32)
    (local.set $1
      (global.get $STACKTOP)
    )
    (global.set $STACKTOP
      (i32.add
        (global.get $STACKTOP)
        (i32.const 16)
      )
    )
    (i32.store
      (tee_local $2
        (local.get $1)
      )
      (i32.load offset=60
        (local.get $0)
      )
    )
    (local.set $0
      (call $___syscall_ret
        (call $___syscall6
          (i32.const 6)
          (local.get $2)
        )
      )
    )
    (global.set $STACKTOP
      (local.get $1)
    )
    (local.get $0)
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
    (local.set $7
      (global.get $STACKTOP)
    )
    (global.set $STACKTOP
      (i32.add
        (global.get $STACKTOP)
        (i32.const 48)
      )
    )
    (local.set $8
      (i32.add
        (local.get $7)
        (i32.const 16)
      )
    )
    (local.set $9
      (local.get $7)
    )
    (i32.store
      (tee_local $3
        (i32.add
          (local.get $7)
          (i32.const 32)
        )
      )
      (tee_local $4
        (i32.load
          (tee_local $6
            (i32.add
              (local.get $0)
              (i32.const 28)
            )
          )
        )
      )
    )
    (i32.store offset=4
      (local.get $3)
      (tee_local $4
        (i32.sub
          (i32.load
            (tee_local $11
              (i32.add
                (local.get $0)
                (i32.const 20)
              )
            )
          )
          (local.get $4)
        )
      )
    )
    (i32.store offset=8
      (local.get $3)
      (local.get $1)
    )
    (i32.store offset=12
      (local.get $3)
      (local.get $2)
    )
    (local.set $14
      (i32.add
        (local.get $0)
        (i32.const 60)
      )
    )
    (local.set $15
      (i32.add
        (local.get $0)
        (i32.const 44)
      )
    )
    (local.set $5
      (i32.const 2)
    )
    (local.set $12
      (i32.add
        (local.get $4)
        (local.get $2)
      )
    )
    (local.set $1
      (local.get $3)
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
                  (local.get $0)
                )
                (i32.store
                  (local.get $9)
                  (i32.load
                    (local.get $14)
                  )
                )
                (i32.store offset=4
                  (local.get $9)
                  (local.get $1)
                )
                (i32.store offset=8
                  (local.get $9)
                  (local.get $5)
                )
                (local.set $4
                  (call $___syscall_ret
                    (call $___syscall146
                      (i32.const 146)
                      (local.get $9)
                    )
                  )
                )
                (call $_pthread_cleanup_pop
                  (i32.const 0)
                )
              )
              (block
                (i32.store
                  (local.get $8)
                  (i32.load
                    (local.get $14)
                  )
                )
                (i32.store offset=4
                  (local.get $8)
                  (local.get $1)
                )
                (i32.store offset=8
                  (local.get $8)
                  (local.get $5)
                )
                (local.set $4
                  (call $___syscall_ret
                    (call $___syscall146
                      (i32.const 146)
                      (local.get $8)
                    )
                  )
                )
              )
            )
            (br_if $__rjti$0
              (i32.eq
                (local.get $12)
                (local.get $4)
              )
            )
            (br_if $__rjti$1
              (i32.lt_s
                (local.get $4)
                (i32.const 0)
              )
            )
            (local.set $1
              (if i32
                (i32.gt_u
                  (local.get $4)
                  (tee_local $13
                    (i32.load offset=4
                      (local.get $1)
                    )
                  )
                )
                (block i32
                  (i32.store
                    (local.get $6)
                    (tee_local $3
                      (i32.load
                        (local.get $15)
                      )
                    )
                  )
                  (i32.store
                    (local.get $11)
                    (local.get $3)
                  )
                  (local.set $10
                    (i32.sub
                      (local.get $4)
                      (local.get $13)
                    )
                  )
                  (local.set $5
                    (i32.add
                      (local.get $5)
                      (i32.const -1)
                    )
                  )
                  (local.set $3
                    (i32.add
                      (local.get $1)
                      (i32.const 8)
                    )
                  )
                  (i32.load offset=12
                    (local.get $1)
                  )
                )
                (if i32
                  (i32.eq
                    (local.get $5)
                    (i32.const 2)
                  )
                  (block i32
                    (i32.store
                      (local.get $6)
                      (i32.add
                        (i32.load
                          (local.get $6)
                        )
                        (local.get $4)
                      )
                    )
                    (local.set $10
                      (local.get $4)
                    )
                    (local.set $5
                      (i32.const 2)
                    )
                    (local.set $3
                      (local.get $1)
                    )
                    (local.get $13)
                  )
                  (block i32
                    (local.set $10
                      (local.get $4)
                    )
                    (local.set $3
                      (local.get $1)
                    )
                    (local.get $13)
                  )
                )
              )
            )
            (i32.store
              (local.get $3)
              (i32.add
                (i32.load
                  (local.get $3)
                )
                (local.get $10)
              )
            )
            (i32.store offset=4
              (local.get $3)
              (i32.sub
                (local.get $1)
                (local.get $10)
              )
            )
            (local.set $12
              (i32.sub
                (local.get $12)
                (local.get $4)
              )
            )
            (local.set $1
              (local.get $3)
            )
            (br $while-in)
          )
        )
        (i32.store offset=16
          (local.get $0)
          (i32.add
            (tee_local $1
              (i32.load
                (local.get $15)
              )
            )
            (i32.load offset=48
              (local.get $0)
            )
          )
        )
        (i32.store
          (local.get $6)
          (tee_local $0
            (local.get $1)
          )
        )
        (i32.store
          (local.get $11)
          (local.get $0)
        )
        (br $__rjto$1)
      )
      (i32.store offset=16
        (local.get $0)
        (i32.const 0)
      )
      (i32.store
        (local.get $6)
        (i32.const 0)
      )
      (i32.store
        (local.get $11)
        (i32.const 0)
      )
      (i32.store
        (local.get $0)
        (i32.or
          (i32.load
            (local.get $0)
          )
          (i32.const 32)
        )
      )
      (local.set $2
        (if i32
          (i32.eq
            (local.get $5)
            (i32.const 2)
          )
          (i32.const 0)
          (i32.sub
            (local.get $2)
            (i32.load offset=4
              (local.get $1)
            )
          )
        )
      )
    )
    (global.set $STACKTOP
      (local.get $7)
    )
    (local.get $2)
  )
  (func $___stdio_seek (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
    (local $3 i32)
    (local $4 i32)
    (local.set $4
      (global.get $STACKTOP)
    )
    (global.set $STACKTOP
      (i32.add
        (global.get $STACKTOP)
        (i32.const 32)
      )
    )
    (i32.store
      (tee_local $3
        (local.get $4)
      )
      (i32.load offset=60
        (local.get $0)
      )
    )
    (i32.store offset=4
      (local.get $3)
      (i32.const 0)
    )
    (i32.store offset=8
      (local.get $3)
      (local.get $1)
    )
    (i32.store offset=12
      (local.get $3)
      (tee_local $0
        (i32.add
          (local.get $4)
          (i32.const 20)
        )
      )
    )
    (i32.store offset=16
      (local.get $3)
      (local.get $2)
    )
    (local.set $0
      (if i32
        (i32.lt_s
          (call $___syscall_ret
            (call $___syscall140
              (i32.const 140)
              (local.get $3)
            )
          )
          (i32.const 0)
        )
        (block i32
          (i32.store
            (local.get $0)
            (i32.const -1)
          )
          (i32.const -1)
        )
        (i32.load
          (local.get $0)
        )
      )
    )
    (global.set $STACKTOP
      (local.get $4)
    )
    (local.get $0)
  )
  (func $___syscall_ret (param $0 i32) (result i32)
    (if i32
      (i32.gt_u
        (local.get $0)
        (i32.const -4096)
      )
      (block i32
        (i32.store
          (call $___errno_location)
          (i32.sub
            (i32.const 0)
            (local.get $0)
          )
        )
        (i32.const -1)
      )
      (local.get $0)
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
          (local.get $0)
        )
      )
      (call $___unlockfile
        (local.get $0)
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
    (local.set $4
      (global.get $STACKTOP)
    )
    (global.set $STACKTOP
      (i32.add
        (global.get $STACKTOP)
        (i32.const 80)
      )
    )
    (local.set $3
      (local.get $4)
    )
    (local.set $5
      (i32.add
        (local.get $4)
        (i32.const 12)
      )
    )
    (i32.store offset=36
      (local.get $0)
      (i32.const 3)
    )
    (if
      (i32.eqz
        (i32.and
          (i32.load
            (local.get $0)
          )
          (i32.const 64)
        )
      )
      (block
        (i32.store
          (local.get $3)
          (i32.load offset=60
            (local.get $0)
          )
        )
        (i32.store offset=4
          (local.get $3)
          (i32.const 21505)
        )
        (i32.store offset=8
          (local.get $3)
          (local.get $5)
        )
        (if
          (call $___syscall54
            (i32.const 54)
            (local.get $3)
          )
          (i32.store8 offset=75
            (local.get $0)
            (i32.const -1)
          )
        )
      )
    )
    (local.set $0
      (call $___stdio_write
        (local.get $0)
        (local.get $1)
        (local.get $2)
      )
    )
    (global.set $STACKTOP
      (local.get $4)
    )
    (local.get $0)
  )
  (func $___lockfile (param $0 i32) (result i32)
    (i32.const 0)
  )
  (func $_fflush (param $0 i32) (result i32)
    (local $1 i32)
    (local $2 i32)
    (block $do-once
      (if
        (local.get $0)
        (block
          (if
            (i32.le_s
              (i32.load offset=76
                (local.get $0)
              )
              (i32.const -1)
            )
            (block
              (local.set $0
                (call $___fflush_unlocked
                  (local.get $0)
                )
              )
              (br $do-once)
            )
          )
          (local.set $2
            (i32.eqz
              (call $___lockfile
                (local.get $0)
              )
            )
          )
          (local.set $1
            (call $___fflush_unlocked
              (local.get $0)
            )
          )
          (local.set $0
            (if i32
              (local.get $2)
              (local.get $1)
              (block i32
                (call $___unlockfile
                  (local.get $0)
                )
                (local.get $1)
              )
            )
          )
        )
        (block
          (local.set $0
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
              (local.set $2
                (if i32
                  (i32.gt_s
                    (i32.load offset=76
                      (local.get $1)
                    )
                    (i32.const -1)
                  )
                  (call $___lockfile
                    (local.get $1)
                  )
                  (i32.const 0)
                )
              )
              (if
                (i32.gt_u
                  (i32.load offset=20
                    (local.get $1)
                  )
                  (i32.load offset=28
                    (local.get $1)
                  )
                )
                (local.set $0
                  (i32.or
                    (call $___fflush_unlocked
                      (local.get $1)
                    )
                    (local.get $0)
                  )
                )
              )
              (if
                (local.get $2)
                (call $___unlockfile
                  (local.get $1)
                )
              )
              (br_if $while-in
                (tee_local $1
                  (i32.load offset=56
                    (local.get $1)
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
    (local.get $0)
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
                    (local.get $0)
                    (i32.const 20)
                  )
                )
              )
              (i32.load
                (tee_local $2
                  (i32.add
                    (local.get $0)
                    (i32.const 28)
                  )
                )
              )
            )
          )
          (drop
            (call_indirect $FUNCSIG$iiii
              (local.get $0)
              (i32.const 0)
              (i32.const 0)
              (i32.add
                (i32.and
                  (i32.load offset=36
                    (local.get $0)
                  )
                  (i32.const 3)
                )
                (i32.const 2)
              )
            )
          )
          (br_if $__rjti$0
            (i32.load
              (local.get $1)
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
                    (local.get $0)
                    (i32.const 4)
                  )
                )
              )
            )
            (tee_local $6
              (i32.load
                (tee_local $5
                  (i32.add
                    (local.get $0)
                    (i32.const 8)
                  )
                )
              )
            )
          )
          (drop
            (call_indirect $FUNCSIG$iiii
              (local.get $0)
              (i32.sub
                (local.get $4)
                (local.get $6)
              )
              (i32.const 1)
              (i32.add
                (i32.and
                  (i32.load offset=40
                    (local.get $0)
                  )
                  (i32.const 3)
                )
                (i32.const 2)
              )
            )
          )
        )
        (i32.store offset=16
          (local.get $0)
          (i32.const 0)
        )
        (i32.store
          (local.get $2)
          (i32.const 0)
        )
        (i32.store
          (local.get $1)
          (i32.const 0)
        )
        (i32.store
          (local.get $5)
          (i32.const 0)
        )
        (i32.store
          (local.get $3)
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
    (local.set $13
      (global.get $STACKTOP)
    )
    (global.set $STACKTOP
      (i32.add
        (global.get $STACKTOP)
        (i32.const 16)
      )
    )
    (local.set $15
      (local.get $13)
    )
    (block $do-once
      (if
        (i32.lt_u
          (local.get $0)
          (i32.const 245)
        )
        (block
          (local.set $2
            (i32.and
              (i32.add
                (local.get $0)
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
                          (local.get $0)
                          (i32.const 11)
                        )
                        (tee_local $2
                          (i32.const 16)
                        )
                        (local.get $2)
                      )
                      (i32.const 3)
                    )
                  )
                )
              )
              (i32.const 3)
            )
            (block
              (local.set $0
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
                                              (local.get $1)
                                              (i32.const 1)
                                            )
                                            (i32.const 1)
                                          )
                                          (local.get $0)
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
                  (local.get $3)
                  (local.get $0)
                )
                (i32.store
                  (i32.const 1153188)
                  (i32.and
                    (local.get $7)
                    (i32.xor
                      (i32.shl
                        (i32.const 1)
                        (local.get $2)
                      )
                      (i32.const -1)
                    )
                  )
                )
                (block
                  (if
                    (i32.lt_u
                      (local.get $0)
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
                            (local.get $0)
                            (i32.const 12)
                          )
                        )
                      )
                      (local.get $1)
                    )
                    (block
                      (i32.store
                        (local.get $4)
                        (local.get $3)
                      )
                      (i32.store
                        (local.get $5)
                        (local.get $0)
                      )
                    )
                    (call $_abort)
                  )
                )
              )
              (i32.store offset=4
                (local.get $1)
                (i32.or
                  (tee_local $0
                    (i32.shl
                      (local.get $2)
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
                      (local.get $1)
                      (local.get $0)
                    )
                    (i32.const 4)
                  )
                )
                (i32.or
                  (i32.load
                    (local.get $0)
                  )
                  (i32.const 1)
                )
              )
              (global.set $STACKTOP
                (local.get $13)
              )
              (return
                (local.get $6)
              )
            )
          )
          (if
            (i32.gt_u
              (local.get $2)
              (tee_local $16
                (i32.load
                  (i32.const 1153196)
                )
              )
            )
            (block
              (if
                (local.get $1)
                (block
                  (local.set $0
                    (i32.and
                      (i32.shr_u
                        (tee_local $1
                          (i32.add
                            (i32.and
                              (tee_local $0
                                (i32.and
                                  (i32.shl
                                    (local.get $1)
                                    (local.get $0)
                                  )
                                  (i32.or
                                    (tee_local $0
                                      (i32.shl
                                        (i32.const 2)
                                        (local.get $0)
                                      )
                                    )
                                    (i32.sub
                                      (i32.const 0)
                                      (local.get $0)
                                    )
                                  )
                                )
                              )
                              (i32.sub
                                (i32.const 0)
                                (local.get $0)
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
                  (local.set $0
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
                                                                (local.get $1)
                                                                (local.get $0)
                                                              )
                                                            )
                                                            (i32.const 5)
                                                          )
                                                          (i32.const 8)
                                                        )
                                                      )
                                                      (local.get $0)
                                                    )
                                                    (tee_local $1
                                                      (i32.and
                                                        (i32.shr_u
                                                          (tee_local $0
                                                            (i32.shr_u
                                                              (local.get $1)
                                                              (local.get $5)
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
                                                            (local.get $0)
                                                            (local.get $1)
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
                                                          (local.get $0)
                                                          (local.get $1)
                                                        )
                                                      )
                                                      (i32.const 1)
                                                    )
                                                    (i32.const 1)
                                                  )
                                                )
                                              )
                                              (i32.shr_u
                                                (local.get $0)
                                                (local.get $1)
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
                      (local.get $4)
                      (local.get $0)
                    )
                    (i32.store
                      (i32.const 1153188)
                      (tee_local $3
                        (i32.and
                          (local.get $7)
                          (i32.xor
                            (i32.shl
                              (i32.const 1)
                              (local.get $5)
                            )
                            (i32.const -1)
                          )
                        )
                      )
                    )
                    (block
                      (if
                        (i32.lt_u
                          (local.get $0)
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
                                (local.get $0)
                                (i32.const 12)
                              )
                            )
                          )
                          (local.get $1)
                        )
                        (block
                          (i32.store
                            (local.get $12)
                            (local.get $4)
                          )
                          (i32.store
                            (local.get $8)
                            (local.get $0)
                          )
                          (local.set $3
                            (local.get $7)
                          )
                        )
                        (call $_abort)
                      )
                    )
                  )
                  (i32.store offset=4
                    (local.get $1)
                    (i32.or
                      (local.get $2)
                      (i32.const 3)
                    )
                  )
                  (i32.store offset=4
                    (tee_local $8
                      (i32.add
                        (local.get $1)
                        (local.get $2)
                      )
                    )
                    (i32.or
                      (tee_local $4
                        (i32.sub
                          (i32.shl
                            (local.get $5)
                            (i32.const 3)
                          )
                          (local.get $2)
                        )
                      )
                      (i32.const 1)
                    )
                  )
                  (i32.store
                    (i32.add
                      (local.get $8)
                      (local.get $4)
                    )
                    (local.get $4)
                  )
                  (if
                    (local.get $16)
                    (block
                      (local.set $5
                        (i32.load
                          (i32.const 1153208)
                        )
                      )
                      (local.set $0
                        (i32.add
                          (i32.shl
                            (i32.shl
                              (tee_local $1
                                (i32.shr_u
                                  (local.get $16)
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
                          (local.get $3)
                          (tee_local $1
                            (i32.shl
                              (i32.const 1)
                              (local.get $1)
                            )
                          )
                        )
                        (if
                          (i32.lt_u
                            (tee_local $2
                              (i32.load
                                (tee_local $1
                                  (i32.add
                                    (local.get $0)
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
                            (local.set $6
                              (local.get $2)
                            )
                            (local.set $11
                              (local.get $1)
                            )
                          )
                        )
                        (block
                          (i32.store
                            (i32.const 1153188)
                            (i32.or
                              (local.get $3)
                              (local.get $1)
                            )
                          )
                          (local.set $6
                            (local.get $0)
                          )
                          (local.set $11
                            (i32.add
                              (local.get $0)
                              (i32.const 8)
                            )
                          )
                        )
                      )
                      (i32.store
                        (local.get $11)
                        (local.get $5)
                      )
                      (i32.store offset=12
                        (local.get $6)
                        (local.get $5)
                      )
                      (i32.store offset=8
                        (local.get $5)
                        (local.get $6)
                      )
                      (i32.store offset=12
                        (local.get $5)
                        (local.get $0)
                      )
                    )
                  )
                  (i32.store
                    (i32.const 1153196)
                    (local.get $4)
                  )
                  (i32.store
                    (i32.const 1153208)
                    (local.get $8)
                  )
                  (global.set $STACKTOP
                    (local.get $13)
                  )
                  (return
                    (local.get $10)
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
                  (local.set $0
                    (i32.and
                      (i32.shr_u
                        (tee_local $1
                          (i32.add
                            (i32.and
                              (local.get $11)
                              (i32.sub
                                (i32.const 0)
                                (local.get $11)
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
                  (local.set $8
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
                                                (local.get $1)
                                                (local.get $0)
                                              )
                                            )
                                            (i32.const 5)
                                          )
                                          (i32.const 8)
                                        )
                                      )
                                      (local.get $0)
                                    )
                                    (tee_local $1
                                      (i32.and
                                        (i32.shr_u
                                          (tee_local $0
                                            (i32.shr_u
                                              (local.get $1)
                                              (local.get $3)
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
                                            (local.get $0)
                                            (local.get $1)
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
                                          (local.get $0)
                                          (local.get $1)
                                        )
                                      )
                                      (i32.const 1)
                                    )
                                    (i32.const 1)
                                  )
                                )
                              )
                              (i32.shr_u
                                (local.get $0)
                                (local.get $1)
                              )
                            )
                            (i32.const 2)
                          )
                          (i32.const 1153492)
                        )
                      )
                    )
                  )
                  (local.set $3
                    (local.get $0)
                  )
                  (local.set $6
                    (i32.sub
                      (i32.and
                        (i32.load offset=4
                          (local.get $0)
                        )
                        (i32.const -8)
                      )
                      (local.get $2)
                    )
                  )
                  (loop $while-in
                    (block $while-out
                      (if
                        (i32.eqz
                          (tee_local $0
                            (i32.load offset=16
                              (local.get $8)
                            )
                          )
                        )
                        (br_if $while-out
                          (i32.eqz
                            (tee_local $0
                              (i32.load offset=20
                                (local.get $8)
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
                                      (local.get $0)
                                    )
                                    (i32.const -8)
                                  )
                                  (local.get $2)
                                )
                              )
                              (local.get $6)
                            )
                          )
                        )
                        (local.set $1
                          (local.get $6)
                        )
                      )
                      (local.set $8
                        (local.get $0)
                      )
                      (if
                        (local.get $10)
                        (local.set $3
                          (local.get $0)
                        )
                      )
                      (local.set $6
                        (local.get $1)
                      )
                      (br $while-in)
                    )
                  )
                  (if
                    (i32.lt_u
                      (local.get $3)
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
                      (local.get $3)
                      (tee_local $9
                        (i32.add
                          (local.get $3)
                          (local.get $2)
                        )
                      )
                    )
                    (call $_abort)
                  )
                  (local.set $12
                    (i32.load offset=24
                      (local.get $3)
                    )
                  )
                  (block $do-once4
                    (if
                      (i32.eq
                        (tee_local $0
                          (i32.load offset=12
                            (local.get $3)
                          )
                        )
                        (local.get $3)
                      )
                      (block
                        (if
                          (i32.eqz
                            (tee_local $0
                              (i32.load
                                (tee_local $1
                                  (i32.add
                                    (local.get $3)
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
                                      (local.get $3)
                                      (i32.const 16)
                                    )
                                  )
                                )
                              )
                            )
                            (block
                              (local.set $5
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
                                    (local.get $0)
                                    (i32.const 20)
                                  )
                                )
                              )
                            )
                            (block
                              (local.set $0
                                (local.get $10)
                              )
                              (local.set $1
                                (local.get $8)
                              )
                              (br $while-in7)
                            )
                          )
                          (if
                            (tee_local $10
                              (i32.load
                                (tee_local $8
                                  (i32.add
                                    (local.get $0)
                                    (i32.const 16)
                                  )
                                )
                              )
                            )
                            (block
                              (local.set $0
                                (local.get $10)
                              )
                              (local.set $1
                                (local.get $8)
                              )
                              (br $while-in7)
                            )
                          )
                        )
                        (if
                          (i32.lt_u
                            (local.get $1)
                            (local.get $15)
                          )
                          (call $_abort)
                          (block
                            (i32.store
                              (local.get $1)
                              (i32.const 0)
                            )
                            (local.set $5
                              (local.get $0)
                            )
                          )
                        )
                      )
                      (block
                        (if
                          (i32.lt_u
                            (tee_local $1
                              (i32.load offset=8
                                (local.get $3)
                              )
                            )
                            (local.get $15)
                          )
                          (call $_abort)
                        )
                        (if
                          (i32.ne
                            (i32.load
                              (tee_local $8
                                (i32.add
                                  (local.get $1)
                                  (i32.const 12)
                                )
                              )
                            )
                            (local.get $3)
                          )
                          (call $_abort)
                        )
                        (if
                          (i32.eq
                            (i32.load
                              (tee_local $10
                                (i32.add
                                  (local.get $0)
                                  (i32.const 8)
                                )
                              )
                            )
                            (local.get $3)
                          )
                          (block
                            (i32.store
                              (local.get $8)
                              (local.get $0)
                            )
                            (i32.store
                              (local.get $10)
                              (local.get $1)
                            )
                            (local.set $5
                              (local.get $0)
                            )
                          )
                          (call $_abort)
                        )
                      )
                    )
                  )
                  (block $do-once8
                    (if
                      (local.get $12)
                      (block
                        (if
                          (i32.eq
                            (local.get $3)
                            (i32.load
                              (tee_local $1
                                (i32.add
                                  (i32.shl
                                    (tee_local $0
                                      (i32.load offset=28
                                        (local.get $3)
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
                              (local.get $1)
                              (local.get $5)
                            )
                            (if
                              (i32.eqz
                                (local.get $5)
                              )
                              (block
                                (i32.store
                                  (i32.const 1153192)
                                  (i32.and
                                    (local.get $11)
                                    (i32.xor
                                      (i32.shl
                                        (i32.const 1)
                                        (local.get $0)
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
                                (local.get $12)
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
                                      (local.get $12)
                                      (i32.const 16)
                                    )
                                  )
                                )
                                (local.get $3)
                              )
                              (i32.store
                                (local.get $0)
                                (local.get $5)
                              )
                              (i32.store offset=20
                                (local.get $12)
                                (local.get $5)
                              )
                            )
                            (br_if $do-once8
                              (i32.eqz
                                (local.get $5)
                              )
                            )
                          )
                        )
                        (if
                          (i32.lt_u
                            (local.get $5)
                            (tee_local $1
                              (i32.load
                                (i32.const 1153204)
                              )
                            )
                          )
                          (call $_abort)
                        )
                        (i32.store offset=24
                          (local.get $5)
                          (local.get $12)
                        )
                        (if
                          (tee_local $0
                            (i32.load offset=16
                              (local.get $3)
                            )
                          )
                          (if
                            (i32.lt_u
                              (local.get $0)
                              (local.get $1)
                            )
                            (call $_abort)
                            (block
                              (i32.store offset=16
                                (local.get $5)
                                (local.get $0)
                              )
                              (i32.store offset=24
                                (local.get $0)
                                (local.get $5)
                              )
                            )
                          )
                        )
                        (if
                          (tee_local $0
                            (i32.load offset=20
                              (local.get $3)
                            )
                          )
                          (if
                            (i32.lt_u
                              (local.get $0)
                              (i32.load
                                (i32.const 1153204)
                              )
                            )
                            (call $_abort)
                            (block
                              (i32.store offset=20
                                (local.get $5)
                                (local.get $0)
                              )
                              (i32.store offset=24
                                (local.get $0)
                                (local.get $5)
                              )
                            )
                          )
                        )
                      )
                    )
                  )
                  (if
                    (i32.lt_u
                      (local.get $6)
                      (i32.const 16)
                    )
                    (block
                      (i32.store offset=4
                        (local.get $3)
                        (i32.or
                          (tee_local $0
                            (i32.add
                              (local.get $6)
                              (local.get $2)
                            )
                          )
                          (i32.const 3)
                        )
                      )
                      (i32.store
                        (tee_local $0
                          (i32.add
                            (i32.add
                              (local.get $3)
                              (local.get $0)
                            )
                            (i32.const 4)
                          )
                        )
                        (i32.or
                          (i32.load
                            (local.get $0)
                          )
                          (i32.const 1)
                        )
                      )
                    )
                    (block
                      (i32.store offset=4
                        (local.get $3)
                        (i32.or
                          (local.get $2)
                          (i32.const 3)
                        )
                      )
                      (i32.store offset=4
                        (local.get $9)
                        (i32.or
                          (local.get $6)
                          (i32.const 1)
                        )
                      )
                      (i32.store
                        (i32.add
                          (local.get $9)
                          (local.get $6)
                        )
                        (local.get $6)
                      )
                      (if
                        (local.get $16)
                        (block
                          (local.set $5
                            (i32.load
                              (i32.const 1153208)
                            )
                          )
                          (local.set $0
                            (i32.add
                              (i32.shl
                                (i32.shl
                                  (tee_local $1
                                    (i32.shr_u
                                      (local.get $16)
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
                              (local.get $7)
                              (tee_local $1
                                (i32.shl
                                  (i32.const 1)
                                  (local.get $1)
                                )
                              )
                            )
                            (if
                              (i32.lt_u
                                (tee_local $2
                                  (i32.load
                                    (tee_local $1
                                      (i32.add
                                        (local.get $0)
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
                                (local.set $4
                                  (local.get $2)
                                )
                                (local.set $14
                                  (local.get $1)
                                )
                              )
                            )
                            (block
                              (i32.store
                                (i32.const 1153188)
                                (i32.or
                                  (local.get $7)
                                  (local.get $1)
                                )
                              )
                              (local.set $4
                                (local.get $0)
                              )
                              (local.set $14
                                (i32.add
                                  (local.get $0)
                                  (i32.const 8)
                                )
                              )
                            )
                          )
                          (i32.store
                            (local.get $14)
                            (local.get $5)
                          )
                          (i32.store offset=12
                            (local.get $4)
                            (local.get $5)
                          )
                          (i32.store offset=8
                            (local.get $5)
                            (local.get $4)
                          )
                          (i32.store offset=12
                            (local.get $5)
                            (local.get $0)
                          )
                        )
                      )
                      (i32.store
                        (i32.const 1153196)
                        (local.get $6)
                      )
                      (i32.store
                        (i32.const 1153208)
                        (local.get $9)
                      )
                    )
                  )
                  (global.set $STACKTOP
                    (local.get $13)
                  )
                  (return
                    (i32.add
                      (local.get $3)
                      (i32.const 8)
                    )
                  )
                )
                (local.set $0
                  (local.get $2)
                )
              )
            )
            (local.set $0
              (local.get $2)
            )
          )
        )
        (if
          (i32.gt_u
            (local.get $0)
            (i32.const -65)
          )
          (local.set $0
            (i32.const -1)
          )
          (block
            (local.set $5
              (i32.and
                (tee_local $0
                  (i32.add
                    (local.get $0)
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
                (local.set $17
                  (if i32
                    (tee_local $0
                      (i32.shr_u
                        (local.get $0)
                        (i32.const 8)
                      )
                    )
                    (if i32
                      (i32.gt_u
                        (local.get $5)
                        (i32.const 16777215)
                      )
                      (i32.const 31)
                      (i32.or
                        (i32.and
                          (i32.shr_u
                            (local.get $5)
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
                                                    (local.get $0)
                                                    (tee_local $0
                                                      (i32.and
                                                        (i32.shr_u
                                                          (i32.add
                                                            (local.get $0)
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
                                        (local.get $0)
                                      )
                                      (tee_local $2
                                        (i32.and
                                          (i32.shr_u
                                            (i32.add
                                              (tee_local $0
                                                (i32.shl
                                                  (local.get $2)
                                                  (local.get $3)
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
                                      (local.get $0)
                                      (local.get $2)
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
                          (local.get $0)
                          (i32.const 1)
                        )
                      )
                    )
                    (i32.const 0)
                  )
                )
                (local.set $3
                  (i32.sub
                    (i32.const 0)
                    (local.get $5)
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
                                (local.get $17)
                                (i32.const 2)
                              )
                              (i32.const 1153492)
                            )
                          )
                        )
                        (block
                          (local.set $4
                            (i32.sub
                              (i32.const 25)
                              (i32.shr_u
                                (local.get $17)
                                (i32.const 1)
                              )
                            )
                          )
                          (local.set $2
                            (i32.const 0)
                          )
                          (local.set $11
                            (i32.shl
                              (local.get $5)
                              (if i32
                                (i32.eq
                                  (local.get $17)
                                  (i32.const 31)
                                )
                                (i32.const 0)
                                (local.get $4)
                              )
                            )
                          )
                          (local.set $4
                            (i32.const 0)
                          )
                          (loop $while-in14
                            (if
                              (i32.lt_u
                                (tee_local $14
                                  (i32.sub
                                    (i32.and
                                      (i32.load offset=4
                                        (local.get $0)
                                      )
                                      (i32.const -8)
                                    )
                                    (local.get $5)
                                  )
                                )
                                (local.get $3)
                              )
                              (if
                                (local.get $14)
                                (block
                                  (local.set $2
                                    (local.get $0)
                                  )
                                  (local.set $3
                                    (local.get $14)
                                  )
                                )
                                (block
                                  (local.set $2
                                    (local.get $0)
                                  )
                                  (local.set $3
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
                                        (local.get $0)
                                      )
                                    )
                                  )
                                  (i32.eq
                                    (local.get $14)
                                    (tee_local $0
                                      (i32.load
                                        (i32.add
                                          (i32.add
                                            (local.get $0)
                                            (i32.const 16)
                                          )
                                          (i32.shl
                                            (i32.shr_u
                                              (local.get $11)
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
                              (local.set $4
                                (local.get $14)
                              )
                            )
                            (local.set $11
                              (i32.shl
                                (local.get $11)
                                (i32.xor
                                  (i32.and
                                    (tee_local $14
                                      (i32.eqz
                                        (local.get $0)
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
                                (local.get $14)
                              )
                            )
                            (br $__rjti$2)
                          )
                        )
                        (block
                          (local.set $4
                            (i32.const 0)
                          )
                          (local.set $2
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
                              (local.get $4)
                            )
                            (i32.eqz
                              (local.get $2)
                            )
                          )
                          (block i32
                            (if
                              (i32.eqz
                                (tee_local $0
                                  (i32.and
                                    (local.get $6)
                                    (i32.or
                                      (tee_local $0
                                        (i32.shl
                                          (i32.const 2)
                                          (local.get $17)
                                        )
                                      )
                                      (i32.sub
                                        (i32.const 0)
                                        (local.get $0)
                                      )
                                    )
                                  )
                                )
                              )
                              (block
                                (local.set $0
                                  (local.get $5)
                                )
                                (br $do-once)
                              )
                            )
                            (local.set $0
                              (i32.and
                                (i32.shr_u
                                  (tee_local $4
                                    (i32.add
                                      (i32.and
                                        (local.get $0)
                                        (i32.sub
                                          (i32.const 0)
                                          (local.get $0)
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
                                                      (local.get $4)
                                                      (local.get $0)
                                                    )
                                                  )
                                                  (i32.const 5)
                                                )
                                                (i32.const 8)
                                              )
                                            )
                                            (local.get $0)
                                          )
                                          (tee_local $4
                                            (i32.and
                                              (i32.shr_u
                                                (tee_local $0
                                                  (i32.shr_u
                                                    (local.get $4)
                                                    (local.get $11)
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
                                                  (local.get $0)
                                                  (local.get $4)
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
                                                (local.get $0)
                                                (local.get $4)
                                              )
                                            )
                                            (i32.const 1)
                                          )
                                          (i32.const 1)
                                        )
                                      )
                                    )
                                    (i32.shr_u
                                      (local.get $0)
                                      (local.get $4)
                                    )
                                  )
                                  (i32.const 2)
                                )
                                (i32.const 1153492)
                              )
                            )
                          )
                          (local.get $4)
                        )
                      )
                    )
                    (local.set $4
                      (local.get $2)
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
                                  (local.get $0)
                                )
                                (i32.const -8)
                              )
                              (local.get $5)
                            )
                          )
                          (local.get $3)
                        )
                      )
                      (local.set $3
                        (local.get $4)
                      )
                    )
                    (if
                      (local.get $11)
                      (local.set $2
                        (local.get $0)
                      )
                    )
                    (if
                      (tee_local $4
                        (i32.load offset=16
                          (local.get $0)
                        )
                      )
                      (block
                        (local.set $0
                          (local.get $4)
                        )
                        (br $while-in16)
                      )
                    )
                    (br_if $while-in16
                      (tee_local $0
                        (i32.load offset=20
                          (local.get $0)
                        )
                      )
                    )
                    (local.set $4
                      (local.get $2)
                    )
                  )
                )
                (if
                  (local.get $4)
                  (if
                    (i32.lt_u
                      (local.get $3)
                      (i32.sub
                        (i32.load
                          (i32.const 1153196)
                        )
                        (local.get $5)
                      )
                    )
                    (block
                      (if
                        (i32.lt_u
                          (local.get $4)
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
                          (local.get $4)
                          (tee_local $9
                            (i32.add
                              (local.get $4)
                              (local.get $5)
                            )
                          )
                        )
                        (call $_abort)
                      )
                      (local.set $11
                        (i32.load offset=24
                          (local.get $4)
                        )
                      )
                      (block $do-once17
                        (if
                          (i32.eq
                            (tee_local $0
                              (i32.load offset=12
                                (local.get $4)
                              )
                            )
                            (local.get $4)
                          )
                          (block
                            (if
                              (i32.eqz
                                (tee_local $0
                                  (i32.load
                                    (tee_local $2
                                      (i32.add
                                        (local.get $4)
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
                                          (local.get $4)
                                          (i32.const 16)
                                        )
                                      )
                                    )
                                  )
                                )
                                (block
                                  (local.set $8
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
                                        (local.get $0)
                                        (i32.const 20)
                                      )
                                    )
                                  )
                                )
                                (block
                                  (local.set $0
                                    (local.get $12)
                                  )
                                  (local.set $2
                                    (local.get $10)
                                  )
                                  (br $while-in20)
                                )
                              )
                              (if
                                (tee_local $12
                                  (i32.load
                                    (tee_local $10
                                      (i32.add
                                        (local.get $0)
                                        (i32.const 16)
                                      )
                                    )
                                  )
                                )
                                (block
                                  (local.set $0
                                    (local.get $12)
                                  )
                                  (local.set $2
                                    (local.get $10)
                                  )
                                  (br $while-in20)
                                )
                              )
                            )
                            (if
                              (i32.lt_u
                                (local.get $2)
                                (local.get $15)
                              )
                              (call $_abort)
                              (block
                                (i32.store
                                  (local.get $2)
                                  (i32.const 0)
                                )
                                (local.set $8
                                  (local.get $0)
                                )
                              )
                            )
                          )
                          (block
                            (if
                              (i32.lt_u
                                (tee_local $2
                                  (i32.load offset=8
                                    (local.get $4)
                                  )
                                )
                                (local.get $15)
                              )
                              (call $_abort)
                            )
                            (if
                              (i32.ne
                                (i32.load
                                  (tee_local $10
                                    (i32.add
                                      (local.get $2)
                                      (i32.const 12)
                                    )
                                  )
                                )
                                (local.get $4)
                              )
                              (call $_abort)
                            )
                            (if
                              (i32.eq
                                (i32.load
                                  (tee_local $12
                                    (i32.add
                                      (local.get $0)
                                      (i32.const 8)
                                    )
                                  )
                                )
                                (local.get $4)
                              )
                              (block
                                (i32.store
                                  (local.get $10)
                                  (local.get $0)
                                )
                                (i32.store
                                  (local.get $12)
                                  (local.get $2)
                                )
                                (local.set $8
                                  (local.get $0)
                                )
                              )
                              (call $_abort)
                            )
                          )
                        )
                      )
                      (block $do-once21
                        (if
                          (local.get $11)
                          (block
                            (if
                              (i32.eq
                                (local.get $4)
                                (i32.load
                                  (tee_local $2
                                    (i32.add
                                      (i32.shl
                                        (tee_local $0
                                          (i32.load offset=28
                                            (local.get $4)
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
                                  (local.get $2)
                                  (local.get $8)
                                )
                                (if
                                  (i32.eqz
                                    (local.get $8)
                                  )
                                  (block
                                    (i32.store
                                      (i32.const 1153192)
                                      (tee_local $1
                                        (i32.and
                                          (local.get $6)
                                          (i32.xor
                                            (i32.shl
                                              (i32.const 1)
                                              (local.get $0)
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
                                    (local.get $11)
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
                                          (local.get $11)
                                          (i32.const 16)
                                        )
                                      )
                                    )
                                    (local.get $4)
                                  )
                                  (i32.store
                                    (local.get $0)
                                    (local.get $8)
                                  )
                                  (i32.store offset=20
                                    (local.get $11)
                                    (local.get $8)
                                  )
                                )
                                (if
                                  (i32.eqz
                                    (local.get $8)
                                  )
                                  (block
                                    (local.set $1
                                      (local.get $6)
                                    )
                                    (br $do-once21)
                                  )
                                )
                              )
                            )
                            (if
                              (i32.lt_u
                                (local.get $8)
                                (tee_local $2
                                  (i32.load
                                    (i32.const 1153204)
                                  )
                                )
                              )
                              (call $_abort)
                            )
                            (i32.store offset=24
                              (local.get $8)
                              (local.get $11)
                            )
                            (if
                              (tee_local $0
                                (i32.load offset=16
                                  (local.get $4)
                                )
                              )
                              (if
                                (i32.lt_u
                                  (local.get $0)
                                  (local.get $2)
                                )
                                (call $_abort)
                                (block
                                  (i32.store offset=16
                                    (local.get $8)
                                    (local.get $0)
                                  )
                                  (i32.store offset=24
                                    (local.get $0)
                                    (local.get $8)
                                  )
                                )
                              )
                            )
                            (if
                              (tee_local $0
                                (i32.load offset=20
                                  (local.get $4)
                                )
                              )
                              (if
                                (i32.lt_u
                                  (local.get $0)
                                  (i32.load
                                    (i32.const 1153204)
                                  )
                                )
                                (call $_abort)
                                (block
                                  (i32.store offset=20
                                    (local.get $8)
                                    (local.get $0)
                                  )
                                  (i32.store offset=24
                                    (local.get $0)
                                    (local.get $8)
                                  )
                                  (local.set $1
                                    (local.get $6)
                                  )
                                )
                              )
                              (local.set $1
                                (local.get $6)
                              )
                            )
                          )
                          (local.set $1
                            (local.get $6)
                          )
                        )
                      )
                      (block $do-once25
                        (if
                          (i32.lt_u
                            (local.get $3)
                            (i32.const 16)
                          )
                          (block
                            (i32.store offset=4
                              (local.get $4)
                              (i32.or
                                (tee_local $0
                                  (i32.add
                                    (local.get $3)
                                    (local.get $5)
                                  )
                                )
                                (i32.const 3)
                              )
                            )
                            (i32.store
                              (tee_local $0
                                (i32.add
                                  (i32.add
                                    (local.get $4)
                                    (local.get $0)
                                  )
                                  (i32.const 4)
                                )
                              )
                              (i32.or
                                (i32.load
                                  (local.get $0)
                                )
                                (i32.const 1)
                              )
                            )
                          )
                          (block
                            (i32.store offset=4
                              (local.get $4)
                              (i32.or
                                (local.get $5)
                                (i32.const 3)
                              )
                            )
                            (i32.store offset=4
                              (local.get $9)
                              (i32.or
                                (local.get $3)
                                (i32.const 1)
                              )
                            )
                            (i32.store
                              (i32.add
                                (local.get $9)
                                (local.get $3)
                              )
                              (local.get $3)
                            )
                            (local.set $2
                              (i32.shr_u
                                (local.get $3)
                                (i32.const 3)
                              )
                            )
                            (if
                              (i32.lt_u
                                (local.get $3)
                                (i32.const 256)
                              )
                              (block
                                (local.set $0
                                  (i32.add
                                    (i32.shl
                                      (i32.shl
                                        (local.get $2)
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
                                        (local.get $2)
                                      )
                                    )
                                  )
                                  (if
                                    (i32.lt_u
                                      (tee_local $2
                                        (i32.load
                                          (tee_local $1
                                            (i32.add
                                              (local.get $0)
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
                                      (local.set $7
                                        (local.get $2)
                                      )
                                      (local.set $16
                                        (local.get $1)
                                      )
                                    )
                                  )
                                  (block
                                    (i32.store
                                      (i32.const 1153188)
                                      (i32.or
                                        (local.get $1)
                                        (local.get $2)
                                      )
                                    )
                                    (local.set $7
                                      (local.get $0)
                                    )
                                    (local.set $16
                                      (i32.add
                                        (local.get $0)
                                        (i32.const 8)
                                      )
                                    )
                                  )
                                )
                                (i32.store
                                  (local.get $16)
                                  (local.get $9)
                                )
                                (i32.store offset=12
                                  (local.get $7)
                                  (local.get $9)
                                )
                                (i32.store offset=8
                                  (local.get $9)
                                  (local.get $7)
                                )
                                (i32.store offset=12
                                  (local.get $9)
                                  (local.get $0)
                                )
                                (br $do-once25)
                              )
                            )
                            (local.set $0
                              (i32.add
                                (i32.shl
                                  (tee_local $2
                                    (if i32
                                      (tee_local $0
                                        (i32.shr_u
                                          (local.get $3)
                                          (i32.const 8)
                                        )
                                      )
                                      (if i32
                                        (i32.gt_u
                                          (local.get $3)
                                          (i32.const 16777215)
                                        )
                                        (i32.const 31)
                                        (i32.or
                                          (i32.and
                                            (i32.shr_u
                                              (local.get $3)
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
                                                                      (local.get $0)
                                                                      (tee_local $0
                                                                        (i32.and
                                                                          (i32.shr_u
                                                                            (i32.add
                                                                              (local.get $0)
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
                                                          (local.get $0)
                                                        )
                                                        (tee_local $2
                                                          (i32.and
                                                            (i32.shr_u
                                                              (i32.add
                                                                (tee_local $0
                                                                  (i32.shl
                                                                    (local.get $2)
                                                                    (local.get $5)
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
                                                        (local.get $0)
                                                        (local.get $2)
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
                                            (local.get $0)
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
                              (local.get $9)
                              (local.get $2)
                            )
                            (i32.store offset=4
                              (tee_local $5
                                (i32.add
                                  (local.get $9)
                                  (i32.const 16)
                                )
                              )
                              (i32.const 0)
                            )
                            (i32.store
                              (local.get $5)
                              (i32.const 0)
                            )
                            (if
                              (i32.eqz
                                (i32.and
                                  (local.get $1)
                                  (tee_local $5
                                    (i32.shl
                                      (i32.const 1)
                                      (local.get $2)
                                    )
                                  )
                                )
                              )
                              (block
                                (i32.store
                                  (i32.const 1153192)
                                  (i32.or
                                    (local.get $1)
                                    (local.get $5)
                                  )
                                )
                                (i32.store
                                  (local.get $0)
                                  (local.get $9)
                                )
                                (i32.store offset=24
                                  (local.get $9)
                                  (local.get $0)
                                )
                                (i32.store offset=12
                                  (local.get $9)
                                  (local.get $9)
                                )
                                (i32.store offset=8
                                  (local.get $9)
                                  (local.get $9)
                                )
                                (br $do-once25)
                              )
                            )
                            (local.set $0
                              (i32.load
                                (local.get $0)
                              )
                            )
                            (local.set $1
                              (i32.sub
                                (i32.const 25)
                                (i32.shr_u
                                  (local.get $2)
                                  (i32.const 1)
                                )
                              )
                            )
                            (local.set $1
                              (i32.shl
                                (local.get $3)
                                (if i32
                                  (i32.eq
                                    (local.get $2)
                                    (i32.const 31)
                                  )
                                  (i32.const 0)
                                  (local.get $1)
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
                                            (local.get $0)
                                          )
                                          (i32.const -8)
                                        )
                                        (local.get $3)
                                      )
                                    )
                                    (local.set $2
                                      (i32.shl
                                        (local.get $1)
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
                                                  (local.get $0)
                                                  (i32.const 16)
                                                )
                                                (i32.shl
                                                  (i32.shr_u
                                                    (local.get $1)
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
                                    (local.set $1
                                      (local.get $2)
                                    )
                                    (local.set $0
                                      (local.get $5)
                                    )
                                    (br $while-in28)
                                  )
                                )
                                (if
                                  (i32.lt_u
                                    (local.get $1)
                                    (i32.load
                                      (i32.const 1153204)
                                    )
                                  )
                                  (call $_abort)
                                  (block
                                    (i32.store
                                      (local.get $1)
                                      (local.get $9)
                                    )
                                    (i32.store offset=24
                                      (local.get $9)
                                      (local.get $0)
                                    )
                                    (i32.store offset=12
                                      (local.get $9)
                                      (local.get $9)
                                    )
                                    (i32.store offset=8
                                      (local.get $9)
                                      (local.get $9)
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
                                            (local.get $0)
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
                                    (local.get $0)
                                    (local.get $3)
                                  )
                                )
                                (block
                                  (i32.store offset=12
                                    (local.get $1)
                                    (local.get $9)
                                  )
                                  (i32.store
                                    (local.get $2)
                                    (local.get $9)
                                  )
                                  (i32.store offset=8
                                    (local.get $9)
                                    (local.get $1)
                                  )
                                  (i32.store offset=12
                                    (local.get $9)
                                    (local.get $0)
                                  )
                                  (i32.store offset=24
                                    (local.get $9)
                                    (i32.const 0)
                                  )
                                )
                                (call $_abort)
                              )
                            )
                          )
                        )
                      )
                      (global.set $STACKTOP
                        (local.get $13)
                      )
                      (return
                        (i32.add
                          (local.get $4)
                          (i32.const 8)
                        )
                      )
                    )
                    (local.set $0
                      (local.get $5)
                    )
                  )
                  (local.set $0
                    (local.get $5)
                  )
                )
              )
              (local.set $0
                (local.get $5)
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
        (local.get $0)
      )
      (block
        (local.set $1
          (i32.load
            (i32.const 1153208)
          )
        )
        (if
          (i32.gt_u
            (tee_local $2
              (i32.sub
                (local.get $3)
                (local.get $0)
              )
            )
            (i32.const 15)
          )
          (block
            (i32.store
              (i32.const 1153208)
              (tee_local $3
                (i32.add
                  (local.get $1)
                  (local.get $0)
                )
              )
            )
            (i32.store
              (i32.const 1153196)
              (local.get $2)
            )
            (i32.store offset=4
              (local.get $3)
              (i32.or
                (local.get $2)
                (i32.const 1)
              )
            )
            (i32.store
              (i32.add
                (local.get $3)
                (local.get $2)
              )
              (local.get $2)
            )
            (i32.store offset=4
              (local.get $1)
              (i32.or
                (local.get $0)
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
              (local.get $1)
              (i32.or
                (local.get $3)
                (i32.const 3)
              )
            )
            (i32.store
              (tee_local $0
                (i32.add
                  (i32.add
                    (local.get $1)
                    (local.get $3)
                  )
                  (i32.const 4)
                )
              )
              (i32.or
                (i32.load
                  (local.get $0)
                )
                (i32.const 1)
              )
            )
          )
        )
        (global.set $STACKTOP
          (local.get $13)
        )
        (return
          (i32.add
            (local.get $1)
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
        (local.get $0)
      )
      (block
        (i32.store
          (i32.const 1153200)
          (tee_local $2
            (i32.sub
              (local.get $3)
              (local.get $0)
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
              (local.get $0)
            )
          )
        )
        (i32.store offset=4
          (local.get $3)
          (i32.or
            (local.get $2)
            (i32.const 1)
          )
        )
        (i32.store offset=4
          (local.get $1)
          (i32.or
            (local.get $0)
            (i32.const 3)
          )
        )
        (global.set $STACKTOP
          (local.get $13)
        )
        (return
          (i32.add
            (local.get $1)
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
                        (local.get $15)
                        (tee_local $1
                          (i32.xor
                            (i32.and
                              (local.get $15)
                              (i32.const -16)
                            )
                            (i32.const 1431655768)
                          )
                        )
                      )
                      (i32.store
                        (i32.const 1153660)
                        (local.get $1)
                      )
                      (i32.const 4096)
                    )
                  )
                )
                (tee_local $6
                  (i32.add
                    (local.get $0)
                    (i32.const 47)
                  )
                )
              )
            )
            (tee_local $8
              (i32.sub
                (i32.const 0)
                (local.get $1)
              )
            )
          )
        )
        (local.get $0)
      )
      (block
        (global.set $STACKTOP
          (local.get $13)
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
                (local.get $5)
              )
            )
            (local.get $2)
          )
          (i32.gt_u
            (local.get $7)
            (local.get $1)
          )
        )
        (block
          (global.set $STACKTOP
            (local.get $13)
          )
          (return
            (i32.const 0)
          )
        )
      )
    )
    (local.set $7
      (i32.add
        (local.get $0)
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
                  (local.set $2
                    (i32.const 1153636)
                  )
                  (loop $while-in32
                    (block $while-out31
                      (if
                        (i32.le_u
                          (tee_local $11
                            (i32.load
                              (local.get $2)
                            )
                          )
                          (local.get $1)
                        )
                        (br_if $while-out31
                          (i32.gt_u
                            (i32.add
                              (local.get $11)
                              (i32.load
                                (tee_local $11
                                  (i32.add
                                    (local.get $2)
                                    (i32.const 4)
                                  )
                                )
                              )
                            )
                            (local.get $1)
                          )
                        )
                      )
                      (br_if $while-in32
                        (tee_local $2
                          (i32.load offset=8
                            (local.get $2)
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
                            (local.get $4)
                            (local.get $3)
                          )
                          (local.get $8)
                        )
                      )
                      (i32.const 2147483647)
                    )
                    (if
                      (i32.eq
                        (tee_local $3
                          (call $_sbrk
                            (local.get $1)
                          )
                        )
                        (i32.add
                          (i32.load
                            (local.get $2)
                          )
                          (i32.load
                            (local.get $11)
                          )
                        )
                      )
                      (if
                        (i32.ne
                          (local.get $3)
                          (i32.const -1)
                        )
                        (block
                          (local.set $2
                            (local.get $1)
                          )
                          (local.set $1
                            (local.get $3)
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
                    (local.set $2
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
                              (local.get $3)
                            )
                          )
                          (i32.sub
                            (i32.const 0)
                            (local.get $2)
                          )
                        )
                        (local.get $1)
                      )
                    )
                    (local.set $2
                      (i32.add
                        (tee_local $1
                          (i32.add
                            (if i32
                              (i32.and
                                (local.get $4)
                                (local.get $1)
                              )
                              (local.get $2)
                              (i32.const 0)
                            )
                            (local.get $5)
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
                          (local.get $1)
                          (local.get $0)
                        )
                        (i32.lt_u
                          (local.get $1)
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
                                (local.get $2)
                                (local.get $4)
                              )
                              (i32.gt_u
                                (local.get $2)
                                (local.get $8)
                              )
                            )
                          )
                        )
                        (if
                          (i32.eq
                            (tee_local $2
                              (call $_sbrk
                                (local.get $1)
                              )
                            )
                            (local.get $3)
                          )
                          (block
                            (local.set $2
                              (local.get $1)
                            )
                            (local.set $1
                              (local.get $3)
                            )
                            (br $__rjti$13)
                          )
                          (block
                            (local.set $3
                              (local.get $2)
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
              (local.set $4
                (i32.sub
                  (i32.const 0)
                  (local.get $1)
                )
              )
              (if
                (i32.and
                  (i32.gt_u
                    (local.get $7)
                    (local.get $1)
                  )
                  (i32.and
                    (i32.lt_u
                      (local.get $1)
                      (i32.const 2147483647)
                    )
                    (i32.ne
                      (local.get $3)
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
                            (local.get $6)
                            (local.get $1)
                          )
                          (tee_local $2
                            (i32.load
                              (i32.const 1153668)
                            )
                          )
                        )
                        (i32.sub
                          (i32.const 0)
                          (local.get $2)
                        )
                      )
                    )
                    (i32.const 2147483647)
                  )
                  (if
                    (i32.eq
                      (call $_sbrk
                        (local.get $2)
                      )
                      (i32.const -1)
                    )
                    (block
                      (drop
                        (call $_sbrk
                          (local.get $4)
                        )
                      )
                      (br $label$break$L274)
                    )
                    (local.set $1
                      (i32.add
                        (local.get $2)
                        (local.get $1)
                      )
                    )
                  )
                )
              )
              (if
                (i32.ne
                  (local.get $3)
                  (i32.const -1)
                )
                (block
                  (local.set $2
                    (local.get $1)
                  )
                  (local.set $1
                    (local.get $3)
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
            (local.get $5)
            (i32.const 2147483647)
          )
          (if
            (i32.and
              (i32.lt_u
                (tee_local $1
                  (call $_sbrk
                    (local.get $5)
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
                  (local.get $1)
                  (i32.const -1)
                )
                (i32.ne
                  (local.get $2)
                  (i32.const -1)
                )
              )
            )
            (br_if $__rjti$13
              (i32.gt_u
                (tee_local $2
                  (i32.sub
                    (local.get $2)
                    (local.get $1)
                  )
                )
                (i32.add
                  (local.get $0)
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
            (local.get $2)
          )
        )
      )
      (if
        (i32.gt_u
          (local.get $3)
          (i32.load
            (i32.const 1153624)
          )
        )
        (i32.store
          (i32.const 1153624)
          (local.get $3)
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
            (local.set $3
              (i32.const 1153636)
            )
            (block $__rjto$10
              (block $__rjti$10
                (loop $while-in43
                  (br_if $__rjti$10
                    (i32.eq
                      (local.get $1)
                      (i32.add
                        (tee_local $5
                          (i32.load
                            (local.get $3)
                          )
                        )
                        (tee_local $8
                          (i32.load
                            (tee_local $4
                              (i32.add
                                (local.get $3)
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
                        (local.get $3)
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
                      (local.get $3)
                    )
                    (i32.const 8)
                  )
                )
                (if
                  (i32.and
                    (i32.lt_u
                      (local.get $6)
                      (local.get $1)
                    )
                    (i32.ge_u
                      (local.get $6)
                      (local.get $5)
                    )
                  )
                  (block
                    (i32.store
                      (local.get $4)
                      (i32.add
                        (local.get $8)
                        (local.get $2)
                      )
                    )
                    (local.set $5
                      (i32.load
                        (i32.const 1153200)
                      )
                    )
                    (local.set $1
                      (i32.and
                        (i32.sub
                          (i32.const 0)
                          (tee_local $3
                            (i32.add
                              (local.get $6)
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
                          (local.get $6)
                          (if i32
                            (i32.and
                              (local.get $3)
                              (i32.const 7)
                            )
                            (local.get $1)
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
                            (local.get $2)
                            (local.get $1)
                          )
                          (local.get $5)
                        )
                      )
                    )
                    (i32.store offset=4
                      (local.get $3)
                      (i32.or
                        (local.get $1)
                        (i32.const 1)
                      )
                    )
                    (i32.store offset=4
                      (i32.add
                        (local.get $3)
                        (local.get $1)
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
                (local.get $1)
                (tee_local $3
                  (i32.load
                    (i32.const 1153204)
                  )
                )
              )
              (block
                (i32.store
                  (i32.const 1153204)
                  (local.get $1)
                )
                (local.set $3
                  (local.get $1)
                )
              )
            )
            (local.set $4
              (i32.add
                (local.get $1)
                (local.get $2)
              )
            )
            (local.set $5
              (i32.const 1153636)
            )
            (block $__rjto$11
              (block $__rjti$11
                (loop $while-in45
                  (br_if $__rjti$11
                    (i32.eq
                      (i32.load
                        (local.get $5)
                      )
                      (local.get $4)
                    )
                  )
                  (br_if $while-in45
                    (tee_local $5
                      (i32.load offset=8
                        (local.get $5)
                      )
                    )
                  )
                  (local.set $3
                    (i32.const 1153636)
                  )
                )
                (br $__rjto$11)
              )
              (if
                (i32.and
                  (i32.load offset=12
                    (local.get $5)
                  )
                  (i32.const 8)
                )
                (local.set $3
                  (i32.const 1153636)
                )
                (block
                  (i32.store
                    (local.get $5)
                    (local.get $1)
                  )
                  (i32.store
                    (tee_local $5
                      (i32.add
                        (local.get $5)
                        (i32.const 4)
                      )
                    )
                    (i32.add
                      (i32.load
                        (local.get $5)
                      )
                      (local.get $2)
                    )
                  )
                  (local.set $5
                    (i32.and
                      (i32.sub
                        (i32.const 0)
                        (tee_local $2
                          (i32.add
                            (local.get $1)
                            (i32.const 8)
                          )
                        )
                      )
                      (i32.const 7)
                    )
                  )
                  (local.set $11
                    (i32.and
                      (i32.sub
                        (i32.const 0)
                        (tee_local $8
                          (i32.add
                            (local.get $4)
                            (i32.const 8)
                          )
                        )
                      )
                      (i32.const 7)
                    )
                  )
                  (local.set $7
                    (i32.add
                      (tee_local $9
                        (i32.add
                          (local.get $1)
                          (if i32
                            (i32.and
                              (local.get $2)
                              (i32.const 7)
                            )
                            (local.get $5)
                            (i32.const 0)
                          )
                        )
                      )
                      (local.get $0)
                    )
                  )
                  (local.set $8
                    (i32.sub
                      (i32.sub
                        (tee_local $4
                          (i32.add
                            (local.get $4)
                            (if i32
                              (i32.and
                                (local.get $8)
                                (i32.const 7)
                              )
                              (local.get $11)
                              (i32.const 0)
                            )
                          )
                        )
                        (local.get $9)
                      )
                      (local.get $0)
                    )
                  )
                  (i32.store offset=4
                    (local.get $9)
                    (i32.or
                      (local.get $0)
                      (i32.const 3)
                    )
                  )
                  (block $do-once46
                    (if
                      (i32.eq
                        (local.get $4)
                        (local.get $6)
                      )
                      (block
                        (i32.store
                          (i32.const 1153200)
                          (tee_local $0
                            (i32.add
                              (i32.load
                                (i32.const 1153200)
                              )
                              (local.get $8)
                            )
                          )
                        )
                        (i32.store
                          (i32.const 1153212)
                          (local.get $7)
                        )
                        (i32.store offset=4
                          (local.get $7)
                          (i32.or
                            (local.get $0)
                            (i32.const 1)
                          )
                        )
                      )
                      (block
                        (if
                          (i32.eq
                            (local.get $4)
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
                                  (local.get $8)
                                )
                              )
                            )
                            (i32.store
                              (i32.const 1153208)
                              (local.get $7)
                            )
                            (i32.store offset=4
                              (local.get $7)
                              (i32.or
                                (local.get $0)
                                (i32.const 1)
                              )
                            )
                            (i32.store
                              (i32.add
                                (local.get $7)
                                (local.get $0)
                              )
                              (local.get $0)
                            )
                            (br $do-once46)
                          )
                        )
                        (local.set $5
                          (if i32
                            (i32.eq
                              (i32.and
                                (tee_local $0
                                  (i32.load offset=4
                                    (local.get $4)
                                  )
                                )
                                (i32.const 3)
                              )
                              (i32.const 1)
                            )
                            (block i32
                              (local.set $11
                                (i32.and
                                  (local.get $0)
                                  (i32.const -8)
                                )
                              )
                              (local.set $5
                                (i32.shr_u
                                  (local.get $0)
                                  (i32.const 3)
                                )
                              )
                              (block $label$break$L326
                                (if
                                  (i32.lt_u
                                    (local.get $0)
                                    (i32.const 256)
                                  )
                                  (block
                                    (local.set $1
                                      (i32.load offset=12
                                        (local.get $4)
                                      )
                                    )
                                    (block $do-once49
                                      (if
                                        (i32.ne
                                          (tee_local $2
                                            (i32.load offset=8
                                              (local.get $4)
                                            )
                                          )
                                          (tee_local $0
                                            (i32.add
                                              (i32.shl
                                                (i32.shl
                                                  (local.get $5)
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
                                              (local.get $2)
                                              (local.get $3)
                                            )
                                            (call $_abort)
                                          )
                                          (br_if $do-once49
                                            (i32.eq
                                              (i32.load offset=12
                                                (local.get $2)
                                              )
                                              (local.get $4)
                                            )
                                          )
                                          (call $_abort)
                                        )
                                      )
                                    )
                                    (if
                                      (i32.eq
                                        (local.get $1)
                                        (local.get $2)
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
                                                (local.get $5)
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
                                          (local.get $1)
                                          (local.get $0)
                                        )
                                        (local.set $18
                                          (i32.add
                                            (local.get $1)
                                            (i32.const 8)
                                          )
                                        )
                                        (block
                                          (if
                                            (i32.lt_u
                                              (local.get $1)
                                              (local.get $3)
                                            )
                                            (call $_abort)
                                          )
                                          (if
                                            (i32.eq
                                              (i32.load
                                                (tee_local $0
                                                  (i32.add
                                                    (local.get $1)
                                                    (i32.const 8)
                                                  )
                                                )
                                              )
                                              (local.get $4)
                                            )
                                            (block
                                              (local.set $18
                                                (local.get $0)
                                              )
                                              (br $do-once51)
                                            )
                                          )
                                          (call $_abort)
                                        )
                                      )
                                    )
                                    (i32.store offset=12
                                      (local.get $2)
                                      (local.get $1)
                                    )
                                    (i32.store
                                      (local.get $18)
                                      (local.get $2)
                                    )
                                  )
                                  (block
                                    (local.set $6
                                      (i32.load offset=24
                                        (local.get $4)
                                      )
                                    )
                                    (block $do-once53
                                      (if
                                        (i32.eq
                                          (tee_local $0
                                            (i32.load offset=12
                                              (local.get $4)
                                            )
                                          )
                                          (local.get $4)
                                        )
                                        (block
                                          (if
                                            (tee_local $0
                                              (i32.load
                                                (tee_local $2
                                                  (i32.add
                                                    (tee_local $1
                                                      (i32.add
                                                        (local.get $4)
                                                        (i32.const 16)
                                                      )
                                                    )
                                                    (i32.const 4)
                                                  )
                                                )
                                              )
                                            )
                                            (local.set $1
                                              (local.get $2)
                                            )
                                            (if
                                              (i32.eqz
                                                (tee_local $0
                                                  (i32.load
                                                    (local.get $1)
                                                  )
                                                )
                                              )
                                              (block
                                                (local.set $10
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
                                                      (local.get $0)
                                                      (i32.const 20)
                                                    )
                                                  )
                                                )
                                              )
                                              (block
                                                (local.set $0
                                                  (local.get $5)
                                                )
                                                (local.set $1
                                                  (local.get $2)
                                                )
                                                (br $while-in56)
                                              )
                                            )
                                            (if
                                              (tee_local $5
                                                (i32.load
                                                  (tee_local $2
                                                    (i32.add
                                                      (local.get $0)
                                                      (i32.const 16)
                                                    )
                                                  )
                                                )
                                              )
                                              (block
                                                (local.set $0
                                                  (local.get $5)
                                                )
                                                (local.set $1
                                                  (local.get $2)
                                                )
                                                (br $while-in56)
                                              )
                                            )
                                          )
                                          (if
                                            (i32.lt_u
                                              (local.get $1)
                                              (local.get $3)
                                            )
                                            (call $_abort)
                                            (block
                                              (i32.store
                                                (local.get $1)
                                                (i32.const 0)
                                              )
                                              (local.set $10
                                                (local.get $0)
                                              )
                                            )
                                          )
                                        )
                                        (block
                                          (if
                                            (i32.lt_u
                                              (tee_local $1
                                                (i32.load offset=8
                                                  (local.get $4)
                                                )
                                              )
                                              (local.get $3)
                                            )
                                            (call $_abort)
                                          )
                                          (if
                                            (i32.ne
                                              (i32.load
                                                (tee_local $2
                                                  (i32.add
                                                    (local.get $1)
                                                    (i32.const 12)
                                                  )
                                                )
                                              )
                                              (local.get $4)
                                            )
                                            (call $_abort)
                                          )
                                          (if
                                            (i32.eq
                                              (i32.load
                                                (tee_local $3
                                                  (i32.add
                                                    (local.get $0)
                                                    (i32.const 8)
                                                  )
                                                )
                                              )
                                              (local.get $4)
                                            )
                                            (block
                                              (i32.store
                                                (local.get $2)
                                                (local.get $0)
                                              )
                                              (i32.store
                                                (local.get $3)
                                                (local.get $1)
                                              )
                                              (local.set $10
                                                (local.get $0)
                                              )
                                            )
                                            (call $_abort)
                                          )
                                        )
                                      )
                                    )
                                    (br_if $label$break$L326
                                      (i32.eqz
                                        (local.get $6)
                                      )
                                    )
                                    (block $do-once57
                                      (if
                                        (i32.eq
                                          (local.get $4)
                                          (i32.load
                                            (tee_local $1
                                              (i32.add
                                                (i32.shl
                                                  (tee_local $0
                                                    (i32.load offset=28
                                                      (local.get $4)
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
                                            (local.get $1)
                                            (local.get $10)
                                          )
                                          (br_if $do-once57
                                            (local.get $10)
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
                                                  (local.get $0)
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
                                              (local.get $6)
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
                                                    (local.get $6)
                                                    (i32.const 16)
                                                  )
                                                )
                                              )
                                              (local.get $4)
                                            )
                                            (i32.store
                                              (local.get $0)
                                              (local.get $10)
                                            )
                                            (i32.store offset=20
                                              (local.get $6)
                                              (local.get $10)
                                            )
                                          )
                                          (br_if $label$break$L326
                                            (i32.eqz
                                              (local.get $10)
                                            )
                                          )
                                        )
                                      )
                                    )
                                    (if
                                      (i32.lt_u
                                        (local.get $10)
                                        (tee_local $1
                                          (i32.load
                                            (i32.const 1153204)
                                          )
                                        )
                                      )
                                      (call $_abort)
                                    )
                                    (i32.store offset=24
                                      (local.get $10)
                                      (local.get $6)
                                    )
                                    (if
                                      (tee_local $0
                                        (i32.load
                                          (tee_local $2
                                            (i32.add
                                              (local.get $4)
                                              (i32.const 16)
                                            )
                                          )
                                        )
                                      )
                                      (if
                                        (i32.lt_u
                                          (local.get $0)
                                          (local.get $1)
                                        )
                                        (call $_abort)
                                        (block
                                          (i32.store offset=16
                                            (local.get $10)
                                            (local.get $0)
                                          )
                                          (i32.store offset=24
                                            (local.get $0)
                                            (local.get $10)
                                          )
                                        )
                                      )
                                    )
                                    (br_if $label$break$L326
                                      (i32.eqz
                                        (tee_local $0
                                          (i32.load offset=4
                                            (local.get $2)
                                          )
                                        )
                                      )
                                    )
                                    (if
                                      (i32.lt_u
                                        (local.get $0)
                                        (i32.load
                                          (i32.const 1153204)
                                        )
                                      )
                                      (call $_abort)
                                      (block
                                        (i32.store offset=20
                                          (local.get $10)
                                          (local.get $0)
                                        )
                                        (i32.store offset=24
                                          (local.get $0)
                                          (local.get $10)
                                        )
                                      )
                                    )
                                  )
                                )
                              )
                              (local.set $4
                                (i32.add
                                  (local.get $4)
                                  (local.get $11)
                                )
                              )
                              (i32.add
                                (local.get $11)
                                (local.get $8)
                              )
                            )
                            (local.get $8)
                          )
                        )
                        (i32.store
                          (tee_local $0
                            (i32.add
                              (local.get $4)
                              (i32.const 4)
                            )
                          )
                          (i32.and
                            (i32.load
                              (local.get $0)
                            )
                            (i32.const -2)
                          )
                        )
                        (i32.store offset=4
                          (local.get $7)
                          (i32.or
                            (local.get $5)
                            (i32.const 1)
                          )
                        )
                        (i32.store
                          (i32.add
                            (local.get $7)
                            (local.get $5)
                          )
                          (local.get $5)
                        )
                        (local.set $1
                          (i32.shr_u
                            (local.get $5)
                            (i32.const 3)
                          )
                        )
                        (if
                          (i32.lt_u
                            (local.get $5)
                            (i32.const 256)
                          )
                          (block
                            (local.set $0
                              (i32.add
                                (i32.shl
                                  (i32.shl
                                    (local.get $1)
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
                                      (local.get $1)
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
                                              (local.get $0)
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
                                      (local.set $12
                                        (local.get $2)
                                      )
                                      (local.set $19
                                        (local.get $1)
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
                                      (local.get $2)
                                      (local.get $1)
                                    )
                                  )
                                  (local.set $12
                                    (local.get $0)
                                  )
                                  (local.set $19
                                    (i32.add
                                      (local.get $0)
                                      (i32.const 8)
                                    )
                                  )
                                )
                              )
                            )
                            (i32.store
                              (local.get $19)
                              (local.get $7)
                            )
                            (i32.store offset=12
                              (local.get $12)
                              (local.get $7)
                            )
                            (i32.store offset=8
                              (local.get $7)
                              (local.get $12)
                            )
                            (i32.store offset=12
                              (local.get $7)
                              (local.get $0)
                            )
                            (br $do-once46)
                          )
                        )
                        (local.set $0
                          (i32.add
                            (i32.shl
                              (tee_local $1
                                (block $do-once63 i32
                                  (if i32
                                    (tee_local $0
                                      (i32.shr_u
                                        (local.get $5)
                                        (i32.const 8)
                                      )
                                    )
                                    (block i32
                                      (drop
                                        (br_if $do-once63
                                          (i32.const 31)
                                          (i32.gt_u
                                            (local.get $5)
                                            (i32.const 16777215)
                                          )
                                        )
                                      )
                                      (i32.or
                                        (i32.and
                                          (i32.shr_u
                                            (local.get $5)
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
                                                                    (local.get $0)
                                                                    (tee_local $0
                                                                      (i32.and
                                                                        (i32.shr_u
                                                                          (i32.add
                                                                            (local.get $0)
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
                                                        (local.get $0)
                                                      )
                                                      (tee_local $1
                                                        (i32.and
                                                          (i32.shr_u
                                                            (i32.add
                                                              (tee_local $0
                                                                (i32.shl
                                                                  (local.get $1)
                                                                  (local.get $2)
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
                                                      (local.get $0)
                                                      (local.get $1)
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
                                          (local.get $0)
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
                          (local.get $7)
                          (local.get $1)
                        )
                        (i32.store offset=4
                          (tee_local $2
                            (i32.add
                              (local.get $7)
                              (i32.const 16)
                            )
                          )
                          (i32.const 0)
                        )
                        (i32.store
                          (local.get $2)
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
                                  (local.get $1)
                                )
                              )
                            )
                          )
                          (block
                            (i32.store
                              (i32.const 1153192)
                              (i32.or
                                (local.get $2)
                                (local.get $3)
                              )
                            )
                            (i32.store
                              (local.get $0)
                              (local.get $7)
                            )
                            (i32.store offset=24
                              (local.get $7)
                              (local.get $0)
                            )
                            (i32.store offset=12
                              (local.get $7)
                              (local.get $7)
                            )
                            (i32.store offset=8
                              (local.get $7)
                              (local.get $7)
                            )
                            (br $do-once46)
                          )
                        )
                        (local.set $0
                          (i32.load
                            (local.get $0)
                          )
                        )
                        (local.set $2
                          (i32.sub
                            (i32.const 25)
                            (i32.shr_u
                              (local.get $1)
                              (i32.const 1)
                            )
                          )
                        )
                        (local.set $1
                          (i32.shl
                            (local.get $5)
                            (if i32
                              (i32.eq
                                (local.get $1)
                                (i32.const 31)
                              )
                              (i32.const 0)
                              (local.get $2)
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
                                        (local.get $0)
                                      )
                                      (i32.const -8)
                                    )
                                    (local.get $5)
                                  )
                                )
                                (local.set $2
                                  (i32.shl
                                    (local.get $1)
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
                                              (local.get $0)
                                              (i32.const 16)
                                            )
                                            (i32.shl
                                              (i32.shr_u
                                                (local.get $1)
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
                                (local.set $1
                                  (local.get $2)
                                )
                                (local.set $0
                                  (local.get $3)
                                )
                                (br $while-in66)
                              )
                            )
                            (if
                              (i32.lt_u
                                (local.get $1)
                                (i32.load
                                  (i32.const 1153204)
                                )
                              )
                              (call $_abort)
                              (block
                                (i32.store
                                  (local.get $1)
                                  (local.get $7)
                                )
                                (i32.store offset=24
                                  (local.get $7)
                                  (local.get $0)
                                )
                                (i32.store offset=12
                                  (local.get $7)
                                  (local.get $7)
                                )
                                (i32.store offset=8
                                  (local.get $7)
                                  (local.get $7)
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
                                        (local.get $0)
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
                                (local.get $0)
                                (local.get $3)
                              )
                            )
                            (block
                              (i32.store offset=12
                                (local.get $1)
                                (local.get $7)
                              )
                              (i32.store
                                (local.get $2)
                                (local.get $7)
                              )
                              (i32.store offset=8
                                (local.get $7)
                                (local.get $1)
                              )
                              (i32.store offset=12
                                (local.get $7)
                                (local.get $0)
                              )
                              (i32.store offset=24
                                (local.get $7)
                                (i32.const 0)
                              )
                            )
                            (call $_abort)
                          )
                        )
                      )
                    )
                  )
                  (global.set $STACKTOP
                    (local.get $13)
                  )
                  (return
                    (i32.add
                      (local.get $9)
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
                        (local.get $3)
                      )
                    )
                    (local.get $6)
                  )
                  (br_if $while-out67
                    (i32.gt_u
                      (tee_local $10
                        (i32.add
                          (local.get $5)
                          (i32.load offset=4
                            (local.get $3)
                          )
                        )
                      )
                      (local.get $6)
                    )
                  )
                )
                (local.set $3
                  (i32.load offset=8
                    (local.get $3)
                  )
                )
                (br $while-in68)
              )
            )
            (local.set $4
              (i32.and
                (i32.sub
                  (i32.const 0)
                  (tee_local $5
                    (i32.add
                      (tee_local $3
                        (i32.add
                          (local.get $10)
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
            (local.set $8
              (i32.add
                (if i32
                  (i32.lt_u
                    (tee_local $3
                      (i32.add
                        (local.get $3)
                        (if i32
                          (i32.and
                            (local.get $5)
                            (i32.const 7)
                          )
                          (local.get $4)
                          (i32.const 0)
                        )
                      )
                    )
                    (tee_local $12
                      (i32.add
                        (local.get $6)
                        (i32.const 16)
                      )
                    )
                  )
                  (tee_local $3
                    (local.get $6)
                  )
                  (local.get $3)
                )
                (i32.const 8)
              )
            )
            (local.set $5
              (i32.add
                (local.get $3)
                (i32.const 24)
              )
            )
            (local.set $11
              (i32.add
                (local.get $2)
                (i32.const -40)
              )
            )
            (local.set $4
              (i32.and
                (i32.sub
                  (i32.const 0)
                  (tee_local $7
                    (i32.add
                      (local.get $1)
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
                  (local.get $1)
                  (if i32
                    (i32.and
                      (local.get $7)
                      (i32.const 7)
                    )
                    (local.get $4)
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
                  (local.get $11)
                  (local.get $4)
                )
              )
            )
            (i32.store offset=4
              (local.get $7)
              (i32.or
                (local.get $4)
                (i32.const 1)
              )
            )
            (i32.store offset=4
              (i32.add
                (local.get $7)
                (local.get $4)
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
                  (local.get $3)
                  (i32.const 4)
                )
              )
              (i32.const 27)
            )
            (i64.store align=4
              (local.get $8)
              (i64.load align=4
                (i32.const 1153636)
              )
            )
            (i64.store offset=8 align=4
              (local.get $8)
              (i64.load align=4
                (i32.const 1153644)
              )
            )
            (i32.store
              (i32.const 1153636)
              (local.get $1)
            )
            (i32.store
              (i32.const 1153640)
              (local.get $2)
            )
            (i32.store
              (i32.const 1153648)
              (i32.const 0)
            )
            (i32.store
              (i32.const 1153644)
              (local.get $8)
            )
            (local.set $1
              (local.get $5)
            )
            (loop $while-in70
              (i32.store
                (tee_local $1
                  (i32.add
                    (local.get $1)
                    (i32.const 4)
                  )
                )
                (i32.const 7)
              )
              (br_if $while-in70
                (i32.lt_u
                  (i32.add
                    (local.get $1)
                    (i32.const 4)
                  )
                  (local.get $10)
                )
              )
            )
            (if
              (i32.ne
                (local.get $3)
                (local.get $6)
              )
              (block
                (i32.store
                  (local.get $4)
                  (i32.and
                    (i32.load
                      (local.get $4)
                    )
                    (i32.const -2)
                  )
                )
                (i32.store offset=4
                  (local.get $6)
                  (i32.or
                    (tee_local $4
                      (i32.sub
                        (local.get $3)
                        (local.get $6)
                      )
                    )
                    (i32.const 1)
                  )
                )
                (i32.store
                  (local.get $3)
                  (local.get $4)
                )
                (local.set $2
                  (i32.shr_u
                    (local.get $4)
                    (i32.const 3)
                  )
                )
                (if
                  (i32.lt_u
                    (local.get $4)
                    (i32.const 256)
                  )
                  (block
                    (local.set $1
                      (i32.add
                        (i32.shl
                          (i32.shl
                            (local.get $2)
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
                            (local.get $2)
                          )
                        )
                      )
                      (if
                        (i32.lt_u
                          (tee_local $3
                            (i32.load
                              (tee_local $2
                                (i32.add
                                  (local.get $1)
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
                          (local.set $9
                            (local.get $3)
                          )
                          (local.set $20
                            (local.get $2)
                          )
                        )
                      )
                      (block
                        (i32.store
                          (i32.const 1153188)
                          (i32.or
                            (local.get $3)
                            (local.get $2)
                          )
                        )
                        (local.set $9
                          (local.get $1)
                        )
                        (local.set $20
                          (i32.add
                            (local.get $1)
                            (i32.const 8)
                          )
                        )
                      )
                    )
                    (i32.store
                      (local.get $20)
                      (local.get $6)
                    )
                    (i32.store offset=12
                      (local.get $9)
                      (local.get $6)
                    )
                    (i32.store offset=8
                      (local.get $6)
                      (local.get $9)
                    )
                    (i32.store offset=12
                      (local.get $6)
                      (local.get $1)
                    )
                    (br $do-once38)
                  )
                )
                (local.set $1
                  (i32.add
                    (i32.shl
                      (tee_local $2
                        (if i32
                          (tee_local $1
                            (i32.shr_u
                              (local.get $4)
                              (i32.const 8)
                            )
                          )
                          (if i32
                            (i32.gt_u
                              (local.get $4)
                              (i32.const 16777215)
                            )
                            (i32.const 31)
                            (i32.or
                              (i32.and
                                (i32.shr_u
                                  (local.get $4)
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
                                                          (local.get $1)
                                                          (tee_local $1
                                                            (i32.and
                                                              (i32.shr_u
                                                                (i32.add
                                                                  (local.get $1)
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
                                              (local.get $1)
                                            )
                                            (tee_local $2
                                              (i32.and
                                                (i32.shr_u
                                                  (i32.add
                                                    (tee_local $1
                                                      (i32.shl
                                                        (local.get $2)
                                                        (local.get $3)
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
                                            (local.get $1)
                                            (local.get $2)
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
                                (local.get $1)
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
                  (local.get $6)
                  (local.get $2)
                )
                (i32.store offset=20
                  (local.get $6)
                  (i32.const 0)
                )
                (i32.store
                  (local.get $12)
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
                          (local.get $2)
                        )
                      )
                    )
                  )
                  (block
                    (i32.store
                      (i32.const 1153192)
                      (i32.or
                        (local.get $3)
                        (local.get $5)
                      )
                    )
                    (i32.store
                      (local.get $1)
                      (local.get $6)
                    )
                    (i32.store offset=24
                      (local.get $6)
                      (local.get $1)
                    )
                    (i32.store offset=12
                      (local.get $6)
                      (local.get $6)
                    )
                    (i32.store offset=8
                      (local.get $6)
                      (local.get $6)
                    )
                    (br $do-once38)
                  )
                )
                (local.set $1
                  (i32.load
                    (local.get $1)
                  )
                )
                (local.set $3
                  (i32.sub
                    (i32.const 25)
                    (i32.shr_u
                      (local.get $2)
                      (i32.const 1)
                    )
                  )
                )
                (local.set $2
                  (i32.shl
                    (local.get $4)
                    (if i32
                      (i32.eq
                        (local.get $2)
                        (i32.const 31)
                      )
                      (i32.const 0)
                      (local.get $3)
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
                                (local.get $1)
                              )
                              (i32.const -8)
                            )
                            (local.get $4)
                          )
                        )
                        (local.set $3
                          (i32.shl
                            (local.get $2)
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
                                      (local.get $1)
                                      (i32.const 16)
                                    )
                                    (i32.shl
                                      (i32.shr_u
                                        (local.get $2)
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
                        (local.set $2
                          (local.get $3)
                        )
                        (local.set $1
                          (local.get $5)
                        )
                        (br $while-in72)
                      )
                    )
                    (if
                      (i32.lt_u
                        (local.get $2)
                        (i32.load
                          (i32.const 1153204)
                        )
                      )
                      (call $_abort)
                      (block
                        (i32.store
                          (local.get $2)
                          (local.get $6)
                        )
                        (i32.store offset=24
                          (local.get $6)
                          (local.get $1)
                        )
                        (i32.store offset=12
                          (local.get $6)
                          (local.get $6)
                        )
                        (i32.store offset=8
                          (local.get $6)
                          (local.get $6)
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
                                (local.get $1)
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
                        (local.get $1)
                        (local.get $5)
                      )
                    )
                    (block
                      (i32.store offset=12
                        (local.get $2)
                        (local.get $6)
                      )
                      (i32.store
                        (local.get $3)
                        (local.get $6)
                      )
                      (i32.store offset=8
                        (local.get $6)
                        (local.get $2)
                      )
                      (i32.store offset=12
                        (local.get $6)
                        (local.get $1)
                      )
                      (i32.store offset=24
                        (local.get $6)
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
                  (local.get $1)
                  (local.get $3)
                )
              )
              (i32.store
                (i32.const 1153204)
                (local.get $1)
              )
            )
            (i32.store
              (i32.const 1153636)
              (local.get $1)
            )
            (i32.store
              (i32.const 1153640)
              (local.get $2)
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
            (local.set $3
              (i32.const 0)
            )
            (loop $while-in41
              (i32.store offset=12
                (tee_local $5
                  (i32.add
                    (i32.shl
                      (i32.shl
                        (local.get $3)
                        (i32.const 1)
                      )
                      (i32.const 2)
                    )
                    (i32.const 1153228)
                  )
                )
                (local.get $5)
              )
              (i32.store offset=8
                (local.get $5)
                (local.get $5)
              )
              (br_if $while-in41
                (i32.ne
                  (tee_local $3
                    (i32.add
                      (local.get $3)
                      (i32.const 1)
                    )
                  )
                  (i32.const 32)
                )
              )
            )
            (local.set $3
              (i32.add
                (local.get $2)
                (i32.const -40)
              )
            )
            (local.set $2
              (i32.and
                (i32.sub
                  (i32.const 0)
                  (tee_local $5
                    (i32.add
                      (local.get $1)
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
                  (local.get $1)
                  (if i32
                    (i32.and
                      (local.get $5)
                      (i32.const 7)
                    )
                    (local.get $2)
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
                  (local.get $3)
                  (local.get $2)
                )
              )
            )
            (i32.store offset=4
              (local.get $1)
              (i32.or
                (local.get $2)
                (i32.const 1)
              )
            )
            (i32.store offset=4
              (i32.add
                (local.get $1)
                (local.get $2)
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
          (local.get $0)
        )
        (block
          (i32.store
            (i32.const 1153200)
            (tee_local $2
              (i32.sub
                (local.get $1)
                (local.get $0)
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
                (local.get $0)
              )
            )
          )
          (i32.store offset=4
            (local.get $3)
            (i32.or
              (local.get $2)
              (i32.const 1)
            )
          )
          (i32.store offset=4
            (local.get $1)
            (i32.or
              (local.get $0)
              (i32.const 3)
            )
          )
          (global.set $STACKTOP
            (local.get $13)
          )
          (return
            (i32.add
              (local.get $1)
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
    (global.set $STACKTOP
      (local.get $13)
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
        (local.get $0)
      )
      (return)
    )
    (if
      (i32.lt_u
        (tee_local $1
          (i32.add
            (local.get $0)
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
                  (local.get $0)
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
    (local.set $6
      (i32.add
        (local.get $1)
        (tee_local $4
          (i32.and
            (local.get $0)
            (i32.const -8)
          )
        )
      )
    )
    (block $do-once
      (if
        (i32.and
          (local.get $0)
          (i32.const 1)
        )
        (block
          (local.set $3
            (local.get $1)
          )
          (local.set $2
            (local.get $4)
          )
        )
        (block
          (if
            (i32.eqz
              (local.get $8)
            )
            (return)
          )
          (if
            (i32.lt_u
              (tee_local $0
                (i32.add
                  (local.get $1)
                  (i32.sub
                    (i32.const 0)
                    (tee_local $8
                      (i32.load
                        (local.get $1)
                      )
                    )
                  )
                )
              )
              (local.get $11)
            )
            (call $_abort)
          )
          (local.set $1
            (i32.add
              (local.get $8)
              (local.get $4)
            )
          )
          (if
            (i32.eq
              (local.get $0)
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
                            (local.get $6)
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
                  (local.set $3
                    (local.get $0)
                  )
                  (local.set $2
                    (local.get $1)
                  )
                  (br $do-once)
                )
              )
              (i32.store
                (i32.const 1153196)
                (local.get $1)
              )
              (i32.store
                (local.get $2)
                (i32.and
                  (local.get $3)
                  (i32.const -2)
                )
              )
              (i32.store offset=4
                (local.get $0)
                (i32.or
                  (local.get $1)
                  (i32.const 1)
                )
              )
              (i32.store
                (i32.add
                  (local.get $0)
                  (local.get $1)
                )
                (local.get $1)
              )
              (return)
            )
          )
          (local.set $10
            (i32.shr_u
              (local.get $8)
              (i32.const 3)
            )
          )
          (if
            (i32.lt_u
              (local.get $8)
              (i32.const 256)
            )
            (block
              (local.set $3
                (i32.load offset=12
                  (local.get $0)
                )
              )
              (if
                (i32.ne
                  (tee_local $4
                    (i32.load offset=8
                      (local.get $0)
                    )
                  )
                  (tee_local $2
                    (i32.add
                      (i32.shl
                        (i32.shl
                          (local.get $10)
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
                      (local.get $4)
                      (local.get $11)
                    )
                    (call $_abort)
                  )
                  (if
                    (i32.ne
                      (i32.load offset=12
                        (local.get $4)
                      )
                      (local.get $0)
                    )
                    (call $_abort)
                  )
                )
              )
              (if
                (i32.eq
                  (local.get $3)
                  (local.get $4)
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
                          (local.get $10)
                        )
                        (i32.const -1)
                      )
                    )
                  )
                  (local.set $3
                    (local.get $0)
                  )
                  (local.set $2
                    (local.get $1)
                  )
                  (br $do-once)
                )
              )
              (if
                (i32.eq
                  (local.get $3)
                  (local.get $2)
                )
                (local.set $5
                  (i32.add
                    (local.get $3)
                    (i32.const 8)
                  )
                )
                (block
                  (if
                    (i32.lt_u
                      (local.get $3)
                      (local.get $11)
                    )
                    (call $_abort)
                  )
                  (if
                    (i32.eq
                      (i32.load
                        (tee_local $2
                          (i32.add
                            (local.get $3)
                            (i32.const 8)
                          )
                        )
                      )
                      (local.get $0)
                    )
                    (local.set $5
                      (local.get $2)
                    )
                    (call $_abort)
                  )
                )
              )
              (i32.store offset=12
                (local.get $4)
                (local.get $3)
              )
              (i32.store
                (local.get $5)
                (local.get $4)
              )
              (local.set $3
                (local.get $0)
              )
              (local.set $2
                (local.get $1)
              )
              (br $do-once)
            )
          )
          (local.set $12
            (i32.load offset=24
              (local.get $0)
            )
          )
          (block $do-once0
            (if
              (i32.eq
                (tee_local $4
                  (i32.load offset=12
                    (local.get $0)
                  )
                )
                (local.get $0)
              )
              (block
                (if
                  (tee_local $4
                    (i32.load
                      (tee_local $8
                        (i32.add
                          (tee_local $5
                            (i32.add
                              (local.get $0)
                              (i32.const 16)
                            )
                          )
                          (i32.const 4)
                        )
                      )
                    )
                  )
                  (local.set $5
                    (local.get $8)
                  )
                  (if
                    (i32.eqz
                      (tee_local $4
                        (i32.load
                          (local.get $5)
                        )
                      )
                    )
                    (block
                      (local.set $7
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
                            (local.get $4)
                            (i32.const 20)
                          )
                        )
                      )
                    )
                    (block
                      (local.set $4
                        (local.get $10)
                      )
                      (local.set $5
                        (local.get $8)
                      )
                      (br $while-in)
                    )
                  )
                  (if
                    (tee_local $10
                      (i32.load
                        (tee_local $8
                          (i32.add
                            (local.get $4)
                            (i32.const 16)
                          )
                        )
                      )
                    )
                    (block
                      (local.set $4
                        (local.get $10)
                      )
                      (local.set $5
                        (local.get $8)
                      )
                      (br $while-in)
                    )
                  )
                )
                (if
                  (i32.lt_u
                    (local.get $5)
                    (local.get $11)
                  )
                  (call $_abort)
                  (block
                    (i32.store
                      (local.get $5)
                      (i32.const 0)
                    )
                    (local.set $7
                      (local.get $4)
                    )
                  )
                )
              )
              (block
                (if
                  (i32.lt_u
                    (tee_local $5
                      (i32.load offset=8
                        (local.get $0)
                      )
                    )
                    (local.get $11)
                  )
                  (call $_abort)
                )
                (if
                  (i32.ne
                    (i32.load
                      (tee_local $8
                        (i32.add
                          (local.get $5)
                          (i32.const 12)
                        )
                      )
                    )
                    (local.get $0)
                  )
                  (call $_abort)
                )
                (if
                  (i32.eq
                    (i32.load
                      (tee_local $10
                        (i32.add
                          (local.get $4)
                          (i32.const 8)
                        )
                      )
                    )
                    (local.get $0)
                  )
                  (block
                    (i32.store
                      (local.get $8)
                      (local.get $4)
                    )
                    (i32.store
                      (local.get $10)
                      (local.get $5)
                    )
                    (local.set $7
                      (local.get $4)
                    )
                  )
                  (call $_abort)
                )
              )
            )
          )
          (if
            (local.get $12)
            (block
              (if
                (i32.eq
                  (local.get $0)
                  (i32.load
                    (tee_local $5
                      (i32.add
                        (i32.shl
                          (tee_local $4
                            (i32.load offset=28
                              (local.get $0)
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
                    (local.get $5)
                    (local.get $7)
                  )
                  (if
                    (i32.eqz
                      (local.get $7)
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
                              (local.get $4)
                            )
                            (i32.const -1)
                          )
                        )
                      )
                      (local.set $3
                        (local.get $0)
                      )
                      (local.set $2
                        (local.get $1)
                      )
                      (br $do-once)
                    )
                  )
                )
                (block
                  (if
                    (i32.lt_u
                      (local.get $12)
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
                            (local.get $12)
                            (i32.const 16)
                          )
                        )
                      )
                      (local.get $0)
                    )
                    (i32.store
                      (local.get $4)
                      (local.get $7)
                    )
                    (i32.store offset=20
                      (local.get $12)
                      (local.get $7)
                    )
                  )
                  (if
                    (i32.eqz
                      (local.get $7)
                    )
                    (block
                      (local.set $3
                        (local.get $0)
                      )
                      (local.set $2
                        (local.get $1)
                      )
                      (br $do-once)
                    )
                  )
                )
              )
              (if
                (i32.lt_u
                  (local.get $7)
                  (tee_local $5
                    (i32.load
                      (i32.const 1153204)
                    )
                  )
                )
                (call $_abort)
              )
              (i32.store offset=24
                (local.get $7)
                (local.get $12)
              )
              (if
                (tee_local $4
                  (i32.load
                    (tee_local $8
                      (i32.add
                        (local.get $0)
                        (i32.const 16)
                      )
                    )
                  )
                )
                (if
                  (i32.lt_u
                    (local.get $4)
                    (local.get $5)
                  )
                  (call $_abort)
                  (block
                    (i32.store offset=16
                      (local.get $7)
                      (local.get $4)
                    )
                    (i32.store offset=24
                      (local.get $4)
                      (local.get $7)
                    )
                  )
                )
              )
              (if
                (tee_local $4
                  (i32.load offset=4
                    (local.get $8)
                  )
                )
                (if
                  (i32.lt_u
                    (local.get $4)
                    (i32.load
                      (i32.const 1153204)
                    )
                  )
                  (call $_abort)
                  (block
                    (i32.store offset=20
                      (local.get $7)
                      (local.get $4)
                    )
                    (i32.store offset=24
                      (local.get $4)
                      (local.get $7)
                    )
                    (local.set $3
                      (local.get $0)
                    )
                    (local.set $2
                      (local.get $1)
                    )
                  )
                )
                (block
                  (local.set $3
                    (local.get $0)
                  )
                  (local.set $2
                    (local.get $1)
                  )
                )
              )
            )
            (block
              (local.set $3
                (local.get $0)
              )
              (local.set $2
                (local.get $1)
              )
            )
          )
        )
      )
    )
    (if
      (i32.ge_u
        (local.get $3)
        (local.get $6)
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
                  (local.get $6)
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
        (local.get $0)
        (i32.const 2)
      )
      (block
        (i32.store
          (local.get $1)
          (i32.and
            (local.get $0)
            (i32.const -2)
          )
        )
        (i32.store offset=4
          (local.get $3)
          (i32.or
            (local.get $2)
            (i32.const 1)
          )
        )
        (i32.store
          (i32.add
            (local.get $3)
            (local.get $2)
          )
          (local.get $2)
        )
      )
      (block
        (if
          (i32.eq
            (local.get $6)
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
                  (local.get $2)
                )
              )
            )
            (i32.store
              (i32.const 1153212)
              (local.get $3)
            )
            (i32.store offset=4
              (local.get $3)
              (i32.or
                (local.get $0)
                (i32.const 1)
              )
            )
            (if
              (i32.ne
                (local.get $3)
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
            (local.get $6)
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
                  (local.get $2)
                )
              )
            )
            (i32.store
              (i32.const 1153208)
              (local.get $3)
            )
            (i32.store offset=4
              (local.get $3)
              (i32.or
                (local.get $0)
                (i32.const 1)
              )
            )
            (i32.store
              (i32.add
                (local.get $3)
                (local.get $0)
              )
              (local.get $0)
            )
            (return)
          )
        )
        (local.set $5
          (i32.add
            (i32.and
              (local.get $0)
              (i32.const -8)
            )
            (local.get $2)
          )
        )
        (local.set $4
          (i32.shr_u
            (local.get $0)
            (i32.const 3)
          )
        )
        (block $do-once4
          (if
            (i32.lt_u
              (local.get $0)
              (i32.const 256)
            )
            (block
              (local.set $2
                (i32.load offset=12
                  (local.get $6)
                )
              )
              (if
                (i32.ne
                  (tee_local $1
                    (i32.load offset=8
                      (local.get $6)
                    )
                  )
                  (tee_local $0
                    (i32.add
                      (i32.shl
                        (i32.shl
                          (local.get $4)
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
                      (local.get $1)
                      (i32.load
                        (i32.const 1153204)
                      )
                    )
                    (call $_abort)
                  )
                  (if
                    (i32.ne
                      (i32.load offset=12
                        (local.get $1)
                      )
                      (local.get $6)
                    )
                    (call $_abort)
                  )
                )
              )
              (if
                (i32.eq
                  (local.get $2)
                  (local.get $1)
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
                          (local.get $4)
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
                  (local.get $2)
                  (local.get $0)
                )
                (local.set $14
                  (i32.add
                    (local.get $2)
                    (i32.const 8)
                  )
                )
                (block
                  (if
                    (i32.lt_u
                      (local.get $2)
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
                            (local.get $2)
                            (i32.const 8)
                          )
                        )
                      )
                      (local.get $6)
                    )
                    (local.set $14
                      (local.get $0)
                    )
                    (call $_abort)
                  )
                )
              )
              (i32.store offset=12
                (local.get $1)
                (local.get $2)
              )
              (i32.store
                (local.get $14)
                (local.get $1)
              )
            )
            (block
              (local.set $7
                (i32.load offset=24
                  (local.get $6)
                )
              )
              (block $do-once6
                (if
                  (i32.eq
                    (tee_local $0
                      (i32.load offset=12
                        (local.get $6)
                      )
                    )
                    (local.get $6)
                  )
                  (block
                    (if
                      (tee_local $0
                        (i32.load
                          (tee_local $1
                            (i32.add
                              (tee_local $2
                                (i32.add
                                  (local.get $6)
                                  (i32.const 16)
                                )
                              )
                              (i32.const 4)
                            )
                          )
                        )
                      )
                      (local.set $2
                        (local.get $1)
                      )
                      (if
                        (i32.eqz
                          (tee_local $0
                            (i32.load
                              (local.get $2)
                            )
                          )
                        )
                        (block
                          (local.set $9
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
                                (local.get $0)
                                (i32.const 20)
                              )
                            )
                          )
                        )
                        (block
                          (local.set $0
                            (local.get $4)
                          )
                          (local.set $2
                            (local.get $1)
                          )
                          (br $while-in9)
                        )
                      )
                      (if
                        (tee_local $4
                          (i32.load
                            (tee_local $1
                              (i32.add
                                (local.get $0)
                                (i32.const 16)
                              )
                            )
                          )
                        )
                        (block
                          (local.set $0
                            (local.get $4)
                          )
                          (local.set $2
                            (local.get $1)
                          )
                          (br $while-in9)
                        )
                      )
                    )
                    (if
                      (i32.lt_u
                        (local.get $2)
                        (i32.load
                          (i32.const 1153204)
                        )
                      )
                      (call $_abort)
                      (block
                        (i32.store
                          (local.get $2)
                          (i32.const 0)
                        )
                        (local.set $9
                          (local.get $0)
                        )
                      )
                    )
                  )
                  (block
                    (if
                      (i32.lt_u
                        (tee_local $2
                          (i32.load offset=8
                            (local.get $6)
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
                              (local.get $2)
                              (i32.const 12)
                            )
                          )
                        )
                        (local.get $6)
                      )
                      (call $_abort)
                    )
                    (if
                      (i32.eq
                        (i32.load
                          (tee_local $4
                            (i32.add
                              (local.get $0)
                              (i32.const 8)
                            )
                          )
                        )
                        (local.get $6)
                      )
                      (block
                        (i32.store
                          (local.get $1)
                          (local.get $0)
                        )
                        (i32.store
                          (local.get $4)
                          (local.get $2)
                        )
                        (local.set $9
                          (local.get $0)
                        )
                      )
                      (call $_abort)
                    )
                  )
                )
              )
              (if
                (local.get $7)
                (block
                  (if
                    (i32.eq
                      (local.get $6)
                      (i32.load
                        (tee_local $2
                          (i32.add
                            (i32.shl
                              (tee_local $0
                                (i32.load offset=28
                                  (local.get $6)
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
                        (local.get $2)
                        (local.get $9)
                      )
                      (if
                        (i32.eqz
                          (local.get $9)
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
                                  (local.get $0)
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
                          (local.get $7)
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
                                (local.get $7)
                                (i32.const 16)
                              )
                            )
                          )
                          (local.get $6)
                        )
                        (i32.store
                          (local.get $0)
                          (local.get $9)
                        )
                        (i32.store offset=20
                          (local.get $7)
                          (local.get $9)
                        )
                      )
                      (br_if $do-once4
                        (i32.eqz
                          (local.get $9)
                        )
                      )
                    )
                  )
                  (if
                    (i32.lt_u
                      (local.get $9)
                      (tee_local $2
                        (i32.load
                          (i32.const 1153204)
                        )
                      )
                    )
                    (call $_abort)
                  )
                  (i32.store offset=24
                    (local.get $9)
                    (local.get $7)
                  )
                  (if
                    (tee_local $0
                      (i32.load
                        (tee_local $1
                          (i32.add
                            (local.get $6)
                            (i32.const 16)
                          )
                        )
                      )
                    )
                    (if
                      (i32.lt_u
                        (local.get $0)
                        (local.get $2)
                      )
                      (call $_abort)
                      (block
                        (i32.store offset=16
                          (local.get $9)
                          (local.get $0)
                        )
                        (i32.store offset=24
                          (local.get $0)
                          (local.get $9)
                        )
                      )
                    )
                  )
                  (if
                    (tee_local $0
                      (i32.load offset=4
                        (local.get $1)
                      )
                    )
                    (if
                      (i32.lt_u
                        (local.get $0)
                        (i32.load
                          (i32.const 1153204)
                        )
                      )
                      (call $_abort)
                      (block
                        (i32.store offset=20
                          (local.get $9)
                          (local.get $0)
                        )
                        (i32.store offset=24
                          (local.get $0)
                          (local.get $9)
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
          (local.get $3)
          (i32.or
            (local.get $5)
            (i32.const 1)
          )
        )
        (i32.store
          (i32.add
            (local.get $3)
            (local.get $5)
          )
          (local.get $5)
        )
        (if
          (i32.eq
            (local.get $3)
            (i32.load
              (i32.const 1153208)
            )
          )
          (block
            (i32.store
              (i32.const 1153196)
              (local.get $5)
            )
            (return)
          )
          (local.set $2
            (local.get $5)
          )
        )
      )
    )
    (local.set $1
      (i32.shr_u
        (local.get $2)
        (i32.const 3)
      )
    )
    (if
      (i32.lt_u
        (local.get $2)
        (i32.const 256)
      )
      (block
        (local.set $0
          (i32.add
            (i32.shl
              (i32.shl
                (local.get $1)
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
                (local.get $1)
              )
            )
          )
          (if
            (i32.lt_u
              (tee_local $1
                (i32.load
                  (tee_local $2
                    (i32.add
                      (local.get $0)
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
              (local.set $13
                (local.get $1)
              )
              (local.set $15
                (local.get $2)
              )
            )
          )
          (block
            (i32.store
              (i32.const 1153188)
              (i32.or
                (local.get $2)
                (local.get $1)
              )
            )
            (local.set $13
              (local.get $0)
            )
            (local.set $15
              (i32.add
                (local.get $0)
                (i32.const 8)
              )
            )
          )
        )
        (i32.store
          (local.get $15)
          (local.get $3)
        )
        (i32.store offset=12
          (local.get $13)
          (local.get $3)
        )
        (i32.store offset=8
          (local.get $3)
          (local.get $13)
        )
        (i32.store offset=12
          (local.get $3)
          (local.get $0)
        )
        (return)
      )
    )
    (local.set $0
      (i32.add
        (i32.shl
          (tee_local $1
            (if i32
              (tee_local $0
                (i32.shr_u
                  (local.get $2)
                  (i32.const 8)
                )
              )
              (if i32
                (i32.gt_u
                  (local.get $2)
                  (i32.const 16777215)
                )
                (i32.const 31)
                (i32.or
                  (i32.and
                    (i32.shr_u
                      (local.get $2)
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
                                              (local.get $0)
                                              (tee_local $0
                                                (i32.and
                                                  (i32.shr_u
                                                    (i32.add
                                                      (local.get $0)
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
                                  (local.get $0)
                                )
                                (tee_local $1
                                  (i32.and
                                    (i32.shr_u
                                      (i32.add
                                        (tee_local $0
                                          (i32.shl
                                            (local.get $1)
                                            (local.get $4)
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
                                (local.get $0)
                                (local.get $1)
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
                    (local.get $0)
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
      (local.get $3)
      (local.get $1)
    )
    (i32.store offset=20
      (local.get $3)
      (i32.const 0)
    )
    (i32.store offset=16
      (local.get $3)
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
              (local.get $1)
            )
          )
        )
        (block
          (local.set $0
            (i32.load
              (local.get $0)
            )
          )
          (local.set $4
            (i32.sub
              (i32.const 25)
              (i32.shr_u
                (local.get $1)
                (i32.const 1)
              )
            )
          )
          (local.set $1
            (i32.shl
              (local.get $2)
              (if i32
                (i32.eq
                  (local.get $1)
                  (i32.const 31)
                )
                (i32.const 0)
                (local.get $4)
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
                          (local.get $0)
                        )
                        (i32.const -8)
                      )
                      (local.get $2)
                    )
                  )
                  (local.set $4
                    (i32.shl
                      (local.get $1)
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
                                (local.get $0)
                                (i32.const 16)
                              )
                              (i32.shl
                                (i32.shr_u
                                  (local.get $1)
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
                  (local.set $1
                    (local.get $4)
                  )
                  (local.set $0
                    (local.get $5)
                  )
                  (br $while-in15)
                )
              )
              (if
                (i32.lt_u
                  (local.get $1)
                  (i32.load
                    (i32.const 1153204)
                  )
                )
                (call $_abort)
                (block
                  (i32.store
                    (local.get $1)
                    (local.get $3)
                  )
                  (i32.store offset=24
                    (local.get $3)
                    (local.get $0)
                  )
                  (i32.store offset=12
                    (local.get $3)
                    (local.get $3)
                  )
                  (i32.store offset=8
                    (local.get $3)
                    (local.get $3)
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
                          (local.get $0)
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
                  (local.get $0)
                  (local.get $4)
                )
              )
              (block
                (i32.store offset=12
                  (local.get $2)
                  (local.get $3)
                )
                (i32.store
                  (local.get $1)
                  (local.get $3)
                )
                (i32.store offset=8
                  (local.get $3)
                  (local.get $2)
                )
                (i32.store offset=12
                  (local.get $3)
                  (local.get $0)
                )
                (i32.store offset=24
                  (local.get $3)
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
              (local.get $4)
              (local.get $5)
            )
          )
          (i32.store
            (local.get $0)
            (local.get $3)
          )
          (i32.store offset=24
            (local.get $3)
            (local.get $0)
          )
          (i32.store offset=12
            (local.get $3)
            (local.get $3)
          )
          (i32.store offset=8
            (local.get $3)
            (local.get $3)
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
      (local.get $0)
      (return)
      (local.set $0
        (i32.const 1153644)
      )
    )
    (loop $while-in17
      (local.set $0
        (i32.add
          (tee_local $2
            (i32.load
              (local.get $0)
            )
          )
          (i32.const 8)
        )
      )
      (br_if $while-in17
        (local.get $2)
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
    (local.set $1
      (i32.add
        (tee_local $2
          (i32.load
            (global.get $DYNAMICTOP_PTR)
          )
        )
        (tee_local $0
          (i32.and
            (i32.add
              (local.get $0)
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
            (local.get $0)
            (i32.const 0)
          )
          (i32.lt_s
            (local.get $1)
            (local.get $2)
          )
        )
        (i32.lt_s
          (local.get $1)
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
      (global.get $DYNAMICTOP_PTR)
      (local.get $1)
    )
    (if
      (i32.gt_s
        (local.get $1)
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
            (global.get $DYNAMICTOP_PTR)
            (local.get $2)
          )
          (return
            (i32.const -1)
          )
        )
      )
    )
    (local.get $2)
  )
  (func $_memset (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
    (local $3 i32)
    (local $4 i32)
    (local $5 i32)
    (local.set $4
      (i32.add
        (local.get $0)
        (local.get $2)
      )
    )
    (if
      (i32.ge_s
        (local.get $2)
        (i32.const 20)
      )
      (block
        (local.set $1
          (i32.and
            (local.get $1)
            (i32.const 255)
          )
        )
        (if
          (tee_local $3
            (i32.and
              (local.get $0)
              (i32.const 3)
            )
          )
          (block
            (local.set $3
              (i32.sub
                (i32.add
                  (local.get $0)
                  (i32.const 4)
                )
                (local.get $3)
              )
            )
            (loop $while-in
              (if
                (i32.lt_s
                  (local.get $0)
                  (local.get $3)
                )
                (block
                  (i32.store8
                    (local.get $0)
                    (local.get $1)
                  )
                  (local.set $0
                    (i32.add
                      (local.get $0)
                      (i32.const 1)
                    )
                  )
                  (br $while-in)
                )
              )
            )
          )
        )
        (local.set $3
          (i32.or
            (i32.or
              (i32.or
                (local.get $1)
                (i32.shl
                  (local.get $1)
                  (i32.const 8)
                )
              )
              (i32.shl
                (local.get $1)
                (i32.const 16)
              )
            )
            (i32.shl
              (local.get $1)
              (i32.const 24)
            )
          )
        )
        (local.set $5
          (i32.and
            (local.get $4)
            (i32.const -4)
          )
        )
        (loop $while-in1
          (if
            (i32.lt_s
              (local.get $0)
              (local.get $5)
            )
            (block
              (i32.store
                (local.get $0)
                (local.get $3)
              )
              (local.set $0
                (i32.add
                  (local.get $0)
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
          (local.get $0)
          (local.get $4)
        )
        (block
          (i32.store8
            (local.get $0)
            (local.get $1)
          )
          (local.set $0
            (i32.add
              (local.get $0)
              (i32.const 1)
            )
          )
          (br $while-in3)
        )
      )
    )
    (i32.sub
      (local.get $0)
      (local.get $2)
    )
  )
  (func $_memcpy (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
    (local $3 i32)
    (if
      (i32.ge_s
        (local.get $2)
        (i32.const 4096)
      )
      (return
        (call $_emscripten_memcpy_big
          (local.get $0)
          (local.get $1)
          (local.get $2)
        )
      )
    )
    (local.set $3
      (local.get $0)
    )
    (if
      (i32.eq
        (i32.and
          (local.get $0)
          (i32.const 3)
        )
        (i32.and
          (local.get $1)
          (i32.const 3)
        )
      )
      (block
        (loop $while-in
          (if
            (i32.and
              (local.get $0)
              (i32.const 3)
            )
            (block
              (if
                (i32.eqz
                  (local.get $2)
                )
                (return
                  (local.get $3)
                )
              )
              (i32.store8
                (local.get $0)
                (i32.load8_s
                  (local.get $1)
                )
              )
              (local.set $0
                (i32.add
                  (local.get $0)
                  (i32.const 1)
                )
              )
              (local.set $1
                (i32.add
                  (local.get $1)
                  (i32.const 1)
                )
              )
              (local.set $2
                (i32.sub
                  (local.get $2)
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
              (local.get $2)
              (i32.const 4)
            )
            (block
              (i32.store
                (local.get $0)
                (i32.load
                  (local.get $1)
                )
              )
              (local.set $0
                (i32.add
                  (local.get $0)
                  (i32.const 4)
                )
              )
              (local.set $1
                (i32.add
                  (local.get $1)
                  (i32.const 4)
                )
              )
              (local.set $2
                (i32.sub
                  (local.get $2)
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
          (local.get $2)
          (i32.const 0)
        )
        (block
          (i32.store8
            (local.get $0)
            (i32.load8_s
              (local.get $1)
            )
          )
          (local.set $0
            (i32.add
              (local.get $0)
              (i32.const 1)
            )
          )
          (local.set $1
            (i32.add
              (local.get $1)
              (i32.const 1)
            )
          )
          (local.set $2
            (i32.sub
              (local.get $2)
              (i32.const 1)
            )
          )
          (br $while-in3)
        )
      )
    )
    (local.get $3)
  )
  (func $_pthread_self (result i32)
    (i32.const 0)
  )
  (func $dynCall_ii (param $0 i32) (param $1 i32) (result i32)
    (call_indirect $FUNCSIG$ii
      (local.get $1)
      (i32.add
        (i32.and
          (local.get $0)
          (i32.const 1)
        )
        (i32.const 0)
      )
    )
  )
  (func $dynCall_iiii (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
    (call_indirect $FUNCSIG$iiii
      (local.get $1)
      (local.get $2)
      (local.get $3)
      (i32.add
        (i32.and
          (local.get $0)
          (i32.const 3)
        )
        (i32.const 2)
      )
    )
  )
  (func $dynCall_vi (param $0 i32) (param $1 i32)
    (call_indirect $FUNCSIG$vi
      (local.get $1)
      (i32.add
        (i32.and
          (local.get $0)
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
