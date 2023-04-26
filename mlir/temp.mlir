func.func @func(
  %arg0: index,
  %arg1: index,
  %arg2: index,
  %arg3: memref<2xf32>) -> memref<2xf32> {
  %0 = memref.alloc() : memref<2xf32>
  %1 = scf.for %i = %arg0 to %arg1 step %arg2
    iter_args(%arg4 = %arg3) -> memref<2xf32> {
    %2 = arith.cmpi eq, %i, %arg1 : index
    %3 = scf.if %2 -> (memref<2xf32>) { 
      scf.yield %0 : memref<2xf32>
    } else {
      scf.yield %0 : memref<2xf32>
    }
    scf.yield %0 : memref<2xf32>
  }
  return %1 : memref<2xf32>
}
