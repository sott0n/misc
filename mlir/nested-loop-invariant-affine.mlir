func.func @nested_loops_both_having_invariant_code() {
  %m = memref.alloc() : memref<10xf32>
  %cf7 = arith.constant 7.0 : f32
  %cf8 = arith.constant 8.0 : f32

  affine.for %arg0 = 0 to 10 {
    %v0 = arith.addf %cf7, %cf8 : f32
    affine.for %arg1 = 0 to 10 {
      //affine.store %v0, %m[%arg0] : memref<10xf32>
      memref.store %v0, %m[%arg0] : memref<10xf32>
    }
  }

  return
}
