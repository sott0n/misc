func.func @simple_matmul(%arg0: memref<256x256xvector<64xf32>>, %arg1: memref<256x256xvector<64xf32>>, %arg2: memref<256x256xvector<64xf32>>) -> memref<256x256xvector<64xf32>> {
  affine.for %i = 0 to 256 {
    affine.for %j = 0 to 256 {
      affine.for %k = 0 to 250 {
        %l = affine.load %arg0[%i, %k] : memref<256x256xvector<64xf32>>
        %r = affine.load %arg1[%k, %j] : memref<256x256xvector<64xf32>>
        %o = affine.load %arg2[%i, %j] : memref<256x256xvector<64xf32>>
        %m = arith.mulf %l, %r : vector<64xf32>
        %a = arith.addf %o, %m : vector<64xf32>
        affine.store %a, %arg2[%i, %j] : memref<256x256xvector<64xf32>>
      }
    }
  }
  return %arg2 : memref<256x256xvector<64xf32>>
}
