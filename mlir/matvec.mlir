module {
  func.func @matvec(%arg0: memref<?x?xf32>, %arg1: memref<?x?xf32>) -> memref<?x?xf32> {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %cst = arith.constant 0.000000e+00 : f32
    %dim = memref.dim %arg0, %c0 : memref<?x?xf32>
    %dim_0 = memref.dim %arg0, %c1 : memref<?x?xf32>
    %dim_1 = memref.dim %arg1, %c1 : memref<?x?xf32>
    %alloc = memref.alloc(%dim, %dim_1) : memref<?x?xf32>
    affine.for %arg2 = 0 to %dim {
      affine.for %arg3 = 0 to %dim_1 {
        affine.store %cst, %alloc[%arg2, %arg3] : memref<?x?xf32>
      }
    }
    scf.for %arg2 = %c0 to %dim_1 step %c1 {
      %subview = memref.subview %arg1[0, %arg2] [%dim_0, 1] [1, 1] : memref<?x?xf32> to memref<?xf32, strided<[?], offset: ?>>
      %subview_2 = memref.subview %alloc[0, %arg2] [%dim, 1] [1, 1] : memref<?x?xf32> to memref<?xf32, strided<[?], offset: ?>>
      %dim_3 = memref.dim %arg0, %c0 : memref<?x?xf32>
      %dim_4 = memref.dim %arg0, %c1 : memref<?x?xf32>
      affine.for %arg3 = 0 to %dim_3 {
        affine.for %arg4 = 0 to %dim_4 {
          %0 = affine.load %arg0[%arg3, %arg4] : memref<?x?xf32>
          %1 = affine.load %subview[%arg4] : memref<?xf32, strided<[?], offset: ?>>
          %2 = affine.load %subview_2[%arg3] : memref<?xf32, strided<[?], offset: ?>>
          %3 = arith.mulf %0, %1 : f32
          %4 = arith.addf %2, %3 : f32
          affine.store %4, %subview_2[%arg3] : memref<?xf32, strided<[?], offset: ?>>
        }
      }
    }
    return %alloc : memref<?x?xf32>
  }
}
