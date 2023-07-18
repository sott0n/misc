#SparseVector = #sparse_tensor.encoding<{dimLevelType = ["compressed"], crdWidth=32}>

// CHECK-LABEL: func @sparse_pack(
// CHECK-SAME: %[[D:.*]]: tensor<6xf64>,
// CHECK-SAME: %[[I:.*]]: tensor<6x1xi32>)
//       CHECK: %[[R:.*]] = sparse_tensor.pack %[[D]], %[[I]]
//       CHECK: return %[[R]] : tensor<100xf64, #{{.*}}>
func.func @sparse_pack(%data: tensor<6xf64>, %index: tensor<6x1xi32>)
                            -> tensor<90xf64, #SparseVector> {
  %0 = sparse_tensor.pack %data, %index : tensor<6xf64>, tensor<6x1xi32>
                                       to tensor<90xf64, #SparseVector>
  return %0 : tensor<90xf64, #SparseVector>
}
