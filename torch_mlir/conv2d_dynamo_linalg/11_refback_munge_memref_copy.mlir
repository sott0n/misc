#map = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
module attributes {torch.debug_module_name = "Conv2dWithPaddingDilationStrideModule"} {
  func.func private @refbackend_consume_func_return_mrf32(memref<*xf32>) attributes {llvm.emit_c_interface}
  memref.global "private" @global_seed : memref<i64> = dense<0>
  memref.global "private" constant @__constant_10x2x3x3xf32 : memref<10x2x3x3xf32> = dense<"0x2E4CE7BABE79013E42A646BE27A031BEC9EBB9BDC771813DE50699BB015F3F3E7D5AABBC74777F3D3EE291BD7AC53DBD029566BE0BD91FBED4FCC6BD880D0F3CE4D5BE3D2BD2103E94A023BEB234D2BDDF54AF3DF56B483EDFAF46BDA39C343EBF9C1BBD4750CC3C818B5A3ED6E65FBED9F117BE3B6A74BDDE29BCBDD388503EAE711CBE0936DEBD8D9F28BE2B0C62BE1EE40CBEC9784F3ED265D73DD5F5E93D62184B3C4F7BF7BD4A56233D115B61BEE0652EBE11DBF8BD5A48183E94830D3E4915D6BD4C570BBC225D1A3E6EF16F3E0F95BF3D6F6C023DF7D3213EE11C0EBE40E7333D86203BBE5C4827BE435DF9BDC06ADA3D5221C23D3DF80EBE25D5913DD97F043EAEB5F3BC8A72133C39B25F3DCABB153E69C0673E3DFF39BED1E6B0BD8AB6BD3D5BFA473E5008523E00F7543ECA22403DB7E151BE36A0B13CDDFE16BE85EF60BE1D72563E0F85373E31C370BEE6B3343D2FA322BD93DF1EBDB4F7DCBDDDA1B93D36F50EBED8F5B03D511DF43D3AC82C3E657EB43DB2E16EBEA4911CBE4907F13D31114A3DC7473CBEB2FA0ABEF40E633ED0A1223E2F7AD2BD55FC72BD11EB65BEB7D28ABBF4C135BE892C3ABEDAC754BC9CF4103D0FB0C5BD93370F3E60E012BE86005B3E4367253EB6884BBE314870BD8A402E3CB5DB0C3D08FA643DAA6EBD3DB851673C3888EBBDBE6AE43D028667BE1F0E0FBE75AD71BD7523EBBDF6DEA8BDBBD245BEEB5C4DBD475E4E3DB93C1DBEAD2E46BCF2C62C3E857EC6BC27A7D63B0493A6BCE862433D3577193E63A0643ECB46193E4D26653ED8A48BBC6ED158BE81D8E4BDBA57243E0345C8BAEFEEEFBDD2F438BE5DE061BE86B54BBE74D343BDE05C043E187D023E41C668BE348E163EA4DD3CBE6B1A4CBDA2BAC3BD33F539BD718E3DBD669558BE0B6650BE2D1217BD60C3473B6A49DBBDEED6B53DBF3C59BE2D4F82BC8341543E9BE5C4BDB2F2593E77D1AE3D32D159BE10B5183EE3CFDEBC1D7DD7BDED00413E890A43BE">
  func.func @forward(%arg0: memref<*xf32>) attributes {llvm.emit_c_interface} {
    %c2_i64 = arith.constant 2 : i64
    %c1_i64 = arith.constant 1 : i64
    %cst = arith.constant 0.000000e+00 : f32
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %c6 = arith.constant 6 : index
    %cast = memref.cast %arg0 : memref<*xf32> to memref<?x?x?x?xf32>
    %0 = memref.get_global @__constant_10x2x3x3xf32 : memref<10x2x3x3xf32>
    %dim = memref.dim %cast, %c0 : memref<?x?x?x?xf32>
    %dim_0 = memref.dim %cast, %c2 : memref<?x?x?x?xf32>
    %dim_1 = memref.dim %cast, %c3 : memref<?x?x?x?xf32>
    %dim_2 = memref.dim %cast, %c1 : memref<?x?x?x?xf32>
    %1 = arith.addi %dim_0, %c6 : index
    %2 = arith.addi %dim_1, %c6 : index
    %alloc = memref.alloc(%dim, %dim_2, %1, %2) {alignment = 64 : i64} : memref<?x?x?x?xf32>
    linalg.fill ins(%cst : f32) outs(%alloc : memref<?x?x?x?xf32>)
    %alloc_3 = memref.alloc(%dim, %dim_2, %1, %2) {alignment = 64 : i64} : memref<?x?x?x?xf32>
    linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%alloc : memref<?x?x?x?xf32>) outs(%alloc_3 : memref<?x?x?x?xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    }
    memref.dealloc %alloc : memref<?x?x?x?xf32>
    %subview = memref.subview %alloc_3[0, 0, 3, 3] [%dim, %dim_2, %dim_0, %dim_1] [1, 1, 1, 1] : memref<?x?x?x?xf32> to memref<?x?x?x?xf32, strided<[?, ?, ?, 1], offset: ?>>
    linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cast : memref<?x?x?x?xf32>) outs(%subview : memref<?x?x?x?xf32, strided<[?, ?, ?, 1], offset: ?>>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    }
    %3 = arith.index_cast %dim_0 : index to i64
    %4 = arith.subi %3, %c1_i64 : i64
    %5 = arith.floordivsi %4, %c2_i64 : i64
    %6 = arith.addi %5, %c1_i64 : i64
    %7 = arith.index_cast %6 : i64 to index
    %8 = arith.index_cast %dim_1 : index to i64
    %9 = arith.subi %8, %c1_i64 : i64
    %10 = arith.floordivsi %9, %c2_i64 : i64
    %11 = arith.addi %10, %c1_i64 : i64
    %12 = arith.index_cast %11 : i64 to index
    %alloc_4 = memref.alloc(%dim, %7, %12) {alignment = 64 : i64} : memref<?x10x?x?xf32>
    linalg.fill ins(%cst : f32) outs(%alloc_4 : memref<?x10x?x?xf32>)
    %alloc_5 = memref.alloc(%dim, %7, %12) {alignment = 64 : i64} : memref<?x10x?x?xf32>
    linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%alloc_4 : memref<?x10x?x?xf32>) outs(%alloc_5 : memref<?x10x?x?xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    }
    memref.dealloc %alloc_4 : memref<?x10x?x?xf32>
    linalg.conv_2d_nchw_fchw {dilations = dense<3> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%alloc_3, %0 : memref<?x?x?x?xf32>, memref<10x2x3x3xf32>) outs(%alloc_5 : memref<?x10x?x?xf32>)
    memref.dealloc %alloc_3 : memref<?x?x?x?xf32>
    %cast_6 = memref.cast %alloc_5 : memref<?x10x?x?xf32> to memref<*xf32>
    call @refbackend_consume_func_return_mrf32(%cast_6) : (memref<*xf32>) -> ()
    return
  }
}
