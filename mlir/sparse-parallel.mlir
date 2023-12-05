#CSR = #sparse_tensor.encoding<{
  map = (d0, d1) -> (d0 : dense, d1 : compressed)
}>

#trait_matvec = {
  indexing_maps = [
    affine_map<(i,j) -> (i,j)>,  // A
    affine_map<(i,j) -> (j)>,    // b
    affine_map<(i,j) -> (i)>     // x (out)
  ],
  iterator_types = ["parallel", "reduction"],
  doc = "x(i) += A(i,j) * b(j)"
}

func.func @matvec(%arga: tensor<16x32xf32, #CSR>,
             %argb: tensor<32xf32>,
	     %argx: tensor<16xf32>) -> tensor<16xf32> {
  %0 = linalg.generic #trait_matvec
      ins(%arga, %argb : tensor<16x32xf32, #CSR>, tensor<32xf32>)
     outs(%argx: tensor<16xf32>) {
    ^bb(%A: f32, %b: f32, %x: f32):
      %0 = arith.mulf %A, %b : f32
      %1 = arith.addf %0, %x : f32
      linalg.yield %1 : f32
  } -> tensor<16xf32>
  return %0 : tensor<16xf32>
}
