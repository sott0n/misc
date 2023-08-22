func.func @nested_loop_both_having_invariant_code() {
  %m = memref.alloc() : memref<10xf32>
  %c0 = arith.constant 0 : index
  %c2 = arith.constant 2 : index
  %c10 = arith.constant 10 : index

  scf.for %arg0 = %c0 to %c10 step %c2 {
    %cf7 = arith.constant 7.0 : f32
    %cf8 = arith.constant 8.0 : f32
    %v0 = arith.addf %cf7, %cf8 : f32
    scf.for %arg1 = %c0 to %c10 step %c2 {
      memref.store %v0, %m[%arg0] : memref<10xf32>
    }
  }
  return
}
