func.func @tensor_load_of_buffer_cast(%arg0: tensor<?xf32>) -> tensor<?xf32> {
  %0 = bufferization.to_memref %arg0 : memref<?xf32>
  %1 = bufferization.to_tensor %0 : memref<?xf32>
  return %1 : tensor<?xf32>
}
