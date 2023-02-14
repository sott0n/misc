func.func @func(%arg0: memref<256x512xf32>, %arg1: memref<256xf32>) {
   %cst = arith.constant 0.000000e+00 : f32
   affine.for %i = 0 to 256 {
     %0 = affine.for %j = 0 to 512 iter_args(%iter = %cst) -> (f32) {
       %1 = affine.load %arg0[%i, %j] : memref<256x512xf32>
       %2 = arith.addf %1, %iter : f32
       affine.yield %2 : f32
     }
     affine.store %0, %arg1[%i] : memref<256xf32>
   }
   return
  }
