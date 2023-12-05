#accesses = [
  affine_map<(i) -> (i)>,
  affine_map<(i) -> (i)>
]

#trait = {
  indexing_maps = #accesses,
  iterator_types = ["parallel"]
}

//func.func @dce_zero_memref(%arg0 : memref<0xf32>, %arg1: tensor<0xf32>) -> tensor<0xf32> {
func.func @dce_zero_memref(%arg0 : memref<0xf32>, %arg1: tensor<0xf32>) -> memref<0xf32> {
  //%2 = linalg.generic #trait ins(%arg0: memref<0xf32>) outs(%arg1 : tensor<0xf32>) {
  %2 = linalg.generic #trait ins(%arg1: tensor<0xf32>) outs(%arg0 : memref<0xf32>) {
  ^bb(%0: f32, %1: f32) :
    linalg.yield %1 : f32
  //} -> tensor<0xf32>
  } -> memref<0xf32>

  return %2: memref<0xf32>
  //return %arg1: tensor<0xf32>
}
