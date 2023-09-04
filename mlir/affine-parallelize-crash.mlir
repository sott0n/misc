func.func @func1(%arg0: memref<9x9xi32>, %arg1: i1) {
  %idx1879048192 = index.constant 1879048192
  %idx0 = index.constant 0
  %c6 = arith.constant 6 : index
  %c0_i64 = arith.constant 0 : i64
  %c1_i64 = arith.constant 1 : i64
  %c807538455_i64 = arith.constant 807538455 : i64
  %c0 = arith.constant 0 : index
  %c1 = arith.constant 1 : index
  %c2 = arith.constant 2 : index 
  %8 = tensor.empty(%c1, %c1) : tensor<?x?x6xi1>
  %14 = tensor.empty() : tensor<31x31xf16>
  %20 = bufferization.to_memref %8 : memref<?x?x6xi1>
  %26 = scf.index_switch %c1 -> tensor<?x31x6xf16> 
  case 2 {
    %alloc_62 = memref.alloc(%c1, %c2) : memref<?x?x6x9xi1>
    %dim = memref.dim %20, %c0 : memref<?x?x6xi1>
    %dim_63 = memref.dim %20, %c1 : memref<?x?x6xi1>
    affine.for %arg2 = 0 to %dim {
      affine.for %arg3 = 0 to %dim_63 {
        affine.for %arg4 = 0 to 6 {
          affine.for %arg5 = 0 to 9 {
            %38 = affine.load %20[%arg2, %arg3, %arg4] : memref<?x?x6xi1>
            affine.store %38, %alloc_62[%arg2, %arg3, %arg4, %arg5] : memref<?x?x6x9xi1>
          }
        }
      }
    }
    %38 = tensor.empty(%idx0) : tensor<?x31x6xf16>
    scf.yield %38 : tensor<?x31x6xf16>
  }
  default {
    %37 = scf.parallel (%arg2) = (%c1) to (%c2) step (%c1) init (%c807538455_i64) -> i64 {
      scf.reduce(%c0_i64)  : i64 {
      ^bb0(%arg3: i64, %arg4: i64):
        %extracted_62 = tensor.extract %14[%c1, %c0] : tensor<31x31xf16>
        scf.reduce.return %c1_i64 : i64
      }
      scf.yield
    }
    %38 = tensor.empty(%c6) : tensor<?x31x6xf16>
    scf.yield %38 : tensor<?x31x6xf16>
  } 
  return
}

