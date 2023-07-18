#map16 = affine_map<(d0) -> ( d0 - 128, d0 * 32)>
func.func @static_tensor.generate2() -> tensor<?x8x1xi32> {
  %cst = arith.constant 0 : i32 
  %c1 = arith.constant 1 : index 
  %139 = affine.min #map16(%c1)
  %tensor = tensor.generate %139 {
  ^bb0(%arg0: index, %arg1: index):
    tensor.yield %cst : i32
  } : tensor<?x8xi32> 
  %expanded_1201 = tensor.expand_shape %tensor [[0], [1, 2]] : tensor<?x8xi32> into tensor<?x8x1xi32>
  return %expanded_1201 : tensor<?x8x1xi32>
}

//func.func @static_tensor.generate2() -> tensor<?x8x1xi32> {
//  %c32 = arith.constant -32 : index
//  %c0_i32 = arith.constant 0 : i32
//  %generated = tensor.generate %c32 {
//  ^bb0(%arg0: index, %arg1: index):
//    tensor.yield %c0_i32 : i32
//  } : tensor<?x8xi32>
//  %cast = tensor.cast %generated : tensor<?x8xi32> to tensor<?x8xi32>
//  %expanded = tensor.expand_shape %cast [[0], [1, 2]] : tensor<?x8xi32> into tensor<?x8x1xi32>
//  return %expanded : tensor<?x8x1xi32>
//}

//func.func @static_tensor.generate(%size1: index, %size4: index) -> tensor<3x?x?x7x?xindex> {
//  %c5 = arith.constant 5 : index
//  %0 = tensor.generate %size1, %c5, %size4 {
//    ^bb0(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: index):
//    %1 = arith.constant 32 : index
//    tensor.yield %1 : index
//  } : tensor<3x?x?x7x?xindex>
//  return %0 : tensor<3x?x?x7x?xindex>
//}
