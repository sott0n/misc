module {
  func.func private @printMemrefF32(memref<*xf32>)
  func.func @matmul(%arg0: memref<?x?xf32>, %arg1: memref<?x?xf32>) -> memref<?x?xf32> {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %cst = arith.constant 0.000000e+00 : f32
    %dim = memref.dim %arg0, %c0 : memref<?x?xf32>
    %dim_0 = memref.dim %arg1, %c1 : memref<?x?xf32>
    %alloc = memref.alloc(%dim, %dim_0) : memref<?x?xf32>
    affine.for %arg2 = 0 to %dim {
      affine.for %arg3 = 0 to %dim_0 {
        affine.store %cst, %alloc[%arg2, %arg3] : memref<?x?xf32>
      }
    }
    %dim_1 = memref.dim %arg0, %c0 : memref<?x?xf32>
    %dim_2 = memref.dim %arg0, %c1 : memref<?x?xf32>
    %dim_3 = memref.dim %arg1, %c1 : memref<?x?xf32>
    affine.for %arg2 = 0 to %dim_1 {
      affine.for %arg3 = 0 to %dim_3 {
        affine.for %arg4 = 0 to %dim_2 {
          %0 = affine.load %arg0[%arg2, %arg4] : memref<?x?xf32>
          %1 = affine.load %arg1[%arg4, %arg3] : memref<?x?xf32>
          %2 = affine.load %alloc[%arg2, %arg3] : memref<?x?xf32>
          %3 = arith.mulf %0, %1 : f32
          %4 = arith.addf %2, %3 : f32
          affine.store %4, %alloc[%arg2, %arg3] : memref<?x?xf32>
        }
      }
    }
    return %alloc : memref<?x?xf32>
  }
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
  func.func @main() {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c5 = arith.constant 5 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %cst = arith.constant 1.300000e+01 : f32
    %cst_0 = arith.constant 1.700000e+01 : f32
    %alloc = memref.alloc(%c5, %c3) : memref<?x?xf32>
    %alloc_1 = memref.alloc(%c3, %c2) : memref<?x?xf32>
    affine.for %arg0 = 0 to 5 {
      affine.for %arg1 = 0 to 3 {
        affine.store %cst, %alloc[%arg0, %arg1] : memref<?x?xf32>
      }
    }
    affine.for %arg0 = 0 to 3 {
      affine.for %arg1 = 0 to 2 {
        affine.store %cst_0, %alloc_1[%arg0, %arg1] : memref<?x?xf32>
      }
    }
    memref.store %cst, %alloc_1[%c0, %c0] : memref<?x?xf32>
    %0 = call @matmul(%alloc, %alloc_1) : (memref<?x?xf32>, memref<?x?xf32>) -> memref<?x?xf32>
    %1 = call @matvec(%alloc, %alloc_1) : (memref<?x?xf32>, memref<?x?xf32>) -> memref<?x?xf32>
    scf.for %arg0 = %c0 to %c5 step %c1 {
      scf.for %arg1 = %c0 to %c2 step %c1 {
        %2 = memref.load %0[%arg0, %arg1] : memref<?x?xf32>
        %3 = memref.load %1[%arg0, %arg1] : memref<?x?xf32>
        %4 = arith.cmpf oeq, %2, %3 : f32
        cf.assert %4, "Matmul does not produce same output as matvec"
      }
    }
    %cast = memref.cast %1 : memref<?x?xf32> to memref<*xf32>
    call @printMemrefF32(%cast) : (memref<*xf32>) -> ()
    memref.dealloc %0 : memref<?x?xf32>
    memref.dealloc %1 : memref<?x?xf32>
    return
  }
}

