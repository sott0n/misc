func.func @invariant_if(%arg0: i1, %arg1: f32) {
  %m = memref.alloc() : memref<10xf32>
  %c0 = arith.constant 0 : index
  %c2 = arith.constant 2 : index
  %c10 = arith.constant 10 : index
  %cf8 = arith.constant 8.0 : f32

  scf.for %i = %c0 to %c10 step %c2 {
    scf.for %j = %c0 to %c10 step %c2 {
      scf.if %arg0 {
        %0 = arith.addf %arg1, %arg1 : f32
      }
    }
  }
  return
}
