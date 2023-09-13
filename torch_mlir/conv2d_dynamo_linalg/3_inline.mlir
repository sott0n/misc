module attributes {torch.debug_module_name = "Conv2dWithPaddingDilationStrideModule"} {
  ml_program.global private mutable @global_seed(dense<0> : tensor<i64>) : tensor<i64>
  func.func @forward(%arg0: tensor<?x?x?x?xf32>) -> tensor<?x10x?x?xf32> {
    %c6 = arith.constant 6 : index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c2 = arith.constant 2 : index
    %c3 = arith.constant 3 : index
    %cst = arith.constant dense<"0x2E4CE7BABE79013E42A646BE27A031BEC9EBB9BDC771813DE50699BB015F3F3E7D5AABBC74777F3D3EE291BD7AC53DBD029566BE0BD91FBED4FCC6BD880D0F3CE4D5BE3D2BD2103E94A023BEB234D2BDDF54AF3DF56B483EDFAF46BDA39C343EBF9C1BBD4750CC3C818B5A3ED6E65FBED9F117BE3B6A74BDDE29BCBDD388503EAE711CBE0936DEBD8D9F28BE2B0C62BE1EE40CBEC9784F3ED265D73DD5F5E93D62184B3C4F7BF7BD4A56233D115B61BEE0652EBE11DBF8BD5A48183E94830D3E4915D6BD4C570BBC225D1A3E6EF16F3E0F95BF3D6F6C023DF7D3213EE11C0EBE40E7333D86203BBE5C4827BE435DF9BDC06ADA3D5221C23D3DF80EBE25D5913DD97F043EAEB5F3BC8A72133C39B25F3DCABB153E69C0673E3DFF39BED1E6B0BD8AB6BD3D5BFA473E5008523E00F7543ECA22403DB7E151BE36A0B13CDDFE16BE85EF60BE1D72563E0F85373E31C370BEE6B3343D2FA322BD93DF1EBDB4F7DCBDDDA1B93D36F50EBED8F5B03D511DF43D3AC82C3E657EB43DB2E16EBEA4911CBE4907F13D31114A3DC7473CBEB2FA0ABEF40E633ED0A1223E2F7AD2BD55FC72BD11EB65BEB7D28ABBF4C135BE892C3ABEDAC754BC9CF4103D0FB0C5BD93370F3E60E012BE86005B3E4367253EB6884BBE314870BD8A402E3CB5DB0C3D08FA643DAA6EBD3DB851673C3888EBBDBE6AE43D028667BE1F0E0FBE75AD71BD7523EBBDF6DEA8BDBBD245BEEB5C4DBD475E4E3DB93C1DBEAD2E46BCF2C62C3E857EC6BC27A7D63B0493A6BCE862433D3577193E63A0643ECB46193E4D26653ED8A48BBC6ED158BE81D8E4BDBA57243E0345C8BAEFEEEFBDD2F438BE5DE061BE86B54BBE74D343BDE05C043E187D023E41C668BE348E163EA4DD3CBE6B1A4CBDA2BAC3BD33F539BD718E3DBD669558BE0B6650BE2D1217BD60C3473B6A49DBBDEED6B53DBF3C59BE2D4F82BC8341543E9BE5C4BDB2F2593E77D1AE3D32D159BE10B5183EE3CFDEBC1D7DD7BDED00413E890A43BE"> : tensor<10x2x3x3xf32>
    %cst_0 = arith.constant 0.000000e+00 : f32
    %c1_i64 = arith.constant 1 : i64
    %c2_i64 = arith.constant 2 : i64
    %dim = tensor.dim %arg0, %c0 : tensor<?x?x?x?xf32>
    %dim_1 = tensor.dim %arg0, %c2 : tensor<?x?x?x?xf32>
    %dim_2 = tensor.dim %arg0, %c3 : tensor<?x?x?x?xf32>
    %dim_3 = tensor.dim %arg0, %c0 : tensor<?x?x?x?xf32>
    %dim_4 = tensor.dim %arg0, %c1 : tensor<?x?x?x?xf32>
    %dim_5 = tensor.dim %arg0, %c2 : tensor<?x?x?x?xf32>
    %0 = arith.addi %dim_5, %c6 : index
    %dim_6 = tensor.dim %arg0, %c3 : tensor<?x?x?x?xf32>
    %1 = arith.addi %dim_6, %c6 : index
    %2 = tensor.empty(%dim_3, %dim_4, %0, %1) : tensor<?x?x?x?xf32>
    %3 = linalg.fill ins(%cst_0 : f32) outs(%2 : tensor<?x?x?x?xf32>) -> tensor<?x?x?x?xf32>
    %dim_7 = tensor.dim %arg0, %c0 : tensor<?x?x?x?xf32>
    %dim_8 = tensor.dim %arg0, %c1 : tensor<?x?x?x?xf32>
    %dim_9 = tensor.dim %arg0, %c2 : tensor<?x?x?x?xf32>
    %dim_10 = tensor.dim %arg0, %c3 : tensor<?x?x?x?xf32>
    %inserted_slice = tensor.insert_slice %arg0 into %3[0, 0, 3, 3] [%dim_7, %dim_8, %dim_9, %dim_10] [1, 1, 1, 1] : tensor<?x?x?x?xf32> into tensor<?x?x?x?xf32>
    %4 = arith.index_cast %dim_1 : index to i64
    %5 = arith.subi %4, %c1_i64 : i64
    %6 = arith.floordivsi %5, %c2_i64 : i64
    %7 = arith.addi %6, %c1_i64 : i64
    %8 = arith.index_cast %7 : i64 to index
    %9 = arith.index_cast %dim_2 : index to i64
    %10 = arith.subi %9, %c1_i64 : i64
    %11 = arith.floordivsi %10, %c2_i64 : i64
    %12 = arith.addi %11, %c1_i64 : i64
    %13 = arith.index_cast %12 : i64 to index
    %14 = tensor.empty(%dim, %8, %13) : tensor<?x10x?x?xf32>
    %15 = linalg.fill ins(%cst_0 : f32) outs(%14 : tensor<?x10x?x?xf32>) -> tensor<?x10x?x?xf32>
    %16 = linalg.conv_2d_nchw_fchw {dilations = dense<3> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%inserted_slice, %cst : tensor<?x?x?x?xf32>, tensor<10x2x3x3xf32>) outs(%15 : tensor<?x10x?x?xf32>) -> tensor<?x10x?x?xf32>
    return %16 : tensor<?x10x?x?xf32>
  }
}