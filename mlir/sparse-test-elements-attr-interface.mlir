module {
  module attributes {llvm.data_layout = ""} {
    memref.global "private" constant @"__constant_32xcomplex<f32>_0" : memref<32xcomplex<f32>> =
       sparse<[[1], [28], [31]],
              [(1.000000e+00,0.000000e+00), (2.000000e+00,0.000000e+00), (3.000000e+00,0.000000e+00)]
  	    > {alignment = 128 : i64}
  }
}
