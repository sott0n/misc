func.func private @printMemrefF32(memref<*xf32>)

// Creates and returns a 2-D buffer of size (%s1, %s2) filled with the value %f
func.func @alloc_2d_filled_f32(%s1 : index, %s2 : index, %f : f32) -> memref<?x?xf32> {
  %buf = memref.alloc(%s1, %s2) : memref<?x?xf32>
  linalg.fill ins(%f : f32) outs(%buf : memref<?x?xf32>)
  return %buf : memref<?x?xf32>
}

func.func @conv_2d(%arg0: memref<?x?xf32>, %arg1: memref<?x?xf32>, %arg2: memref<?x?xf32>) {
  linalg.conv_2d ins (%arg0, %arg1: memref<?x?xf32>, memref<?x?xf32>)
                outs (%arg2: memref<?x?xf32>)
  return
}

transform.sequence failures(propagate) {
  ^bb0(%arg1: !transform.any_op):
    %0 = transform.structured.match ops{["linalg.conv_2d"]} in %arg1 : (!transform.any_op) -> !transform.any_op
    %1, %loops:2 = transform.structured.tile %0 [2, 2] : (!transform.any_op) -> (!transform.any_op, !transform.any_op, !transform.any_op)
}

func.func @main() {
  %c0 = arith.constant 0 : index
  %c1 = arith.constant 1 : index
  %c3 = arith.constant 3 : index
  %c6 = arith.constant 6 : index
  %c8 = arith.constant 8 : index
  %f10 = arith.constant 10.00000e+00 : f32
  %val = arith.constant 2.00000e+00 : f32
  %zero = arith.constant 0.00000e+00 : f32

  %filter2D = call @alloc_2d_filled_f32(%c3, %c3, %val) : (index, index, f32) -> (memref<?x?xf32>)
  %in2D = call @alloc_2d_filled_f32(%c8, %c8, %val) : (index, index, f32) -> (memref<?x?xf32>)
  %out2D = call @alloc_2d_filled_f32(%c6, %c6, %zero) : (index, index, f32) -> (memref<?x?xf32>)

  memref.store %f10, %in2D[%c0, %c3] : memref<?x?xf32>
  call @conv_2d(%in2D, %filter2D, %out2D) : (memref<?x?xf32>, memref<?x?xf32>, memref<?x?xf32>) -> ()
  %out2D_ = memref.cast %out2D : memref<?x?xf32> to memref<*xf32>
  call @printMemrefF32(%out2D_): (memref<*xf32>) -> ()

  memref.dealloc %filter2D : memref<?x?xf32>
  memref.dealloc %in2D : memref<?x?xf32>
  memref.dealloc %out2D : memref<?x?xf32>
  return
}
