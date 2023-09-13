#map = affine_map<()[s0, s1] -> (s0 * s1)>
#map1 = affine_map<()[s0, s1, s2] -> ((s0 * s1) * s2)>
#map2 = affine_map<()[s0] -> (s0 * 3 + 3)>
module attributes {torch.debug_module_name = "Conv2dWithPaddingDilationStrideModule"} {
  func.func private @refbackend_consume_func_return_mrf32(memref<*xf32>) attributes {llvm.emit_c_interface}
  memref.global "private" @global_seed : memref<i64> = dense<0>
  memref.global "private" constant @__constant_10x2x3x3xf32 : memref<10x2x3x3xf32> = dense<"0x2E4CE7BABE79013E42A646BE27A031BEC9EBB9BDC771813DE50699BB015F3F3E7D5AABBC74777F3D3EE291BD7AC53DBD029566BE0BD91FBED4FCC6BD880D0F3CE4D5BE3D2BD2103E94A023BEB234D2BDDF54AF3DF56B483EDFAF46BDA39C343EBF9C1BBD4750CC3C818B5A3ED6E65FBED9F117BE3B6A74BDDE29BCBDD388503EAE711CBE0936DEBD8D9F28BE2B0C62BE1EE40CBEC9784F3ED265D73DD5F5E93D62184B3C4F7BF7BD4A56233D115B61BEE0652EBE11DBF8BD5A48183E94830D3E4915D6BD4C570BBC225D1A3E6EF16F3E0F95BF3D6F6C023DF7D3213EE11C0EBE40E7333D86203BBE5C4827BE435DF9BDC06ADA3D5221C23D3DF80EBE25D5913DD97F043EAEB5F3BC8A72133C39B25F3DCABB153E69C0673E3DFF39BED1E6B0BD8AB6BD3D5BFA473E5008523E00F7543ECA22403DB7E151BE36A0B13CDDFE16BE85EF60BE1D72563E0F85373E31C370BEE6B3343D2FA322BD93DF1EBDB4F7DCBDDDA1B93D36F50EBED8F5B03D511DF43D3AC82C3E657EB43DB2E16EBEA4911CBE4907F13D31114A3DC7473CBEB2FA0ABEF40E633ED0A1223E2F7AD2BD55FC72BD11EB65BEB7D28ABBF4C135BE892C3ABEDAC754BC9CF4103D0FB0C5BD93370F3E60E012BE86005B3E4367253EB6884BBE314870BD8A402E3CB5DB0C3D08FA643DAA6EBD3DB851673C3888EBBDBE6AE43D028667BE1F0E0FBE75AD71BD7523EBBDF6DEA8BDBBD245BEEB5C4DBD475E4E3DB93C1DBEAD2E46BCF2C62C3E857EC6BC27A7D63B0493A6BCE862433D3577193E63A0643ECB46193E4D26653ED8A48BBC6ED158BE81D8E4BDBA57243E0345C8BAEFEEEFBDD2F438BE5DE061BE86B54BBE74D343BDE05C043E187D023E41C668BE348E163EA4DD3CBE6B1A4CBDA2BAC3BD33F539BD718E3DBD669558BE0B6650BE2D1217BD60C3473B6A49DBBDEED6B53DBF3C59BE2D4F82BC8341543E9BE5C4BDB2F2593E77D1AE3D32D159BE10B5183EE3CFDEBC1D7DD7BDED00413E890A43BE">
  func.func @forward(%arg0: memref<*xf32>) attributes {llvm.emit_c_interface} {
    %c-1_i64 = arith.constant -1 : i64
    %c0_i64 = arith.constant 0 : i64
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c2 = arith.constant 2 : index
    %c3 = arith.constant 3 : index
    %c10 = arith.constant 10 : index
    %c2_i64 = arith.constant 2 : i64
    %c1_i64 = arith.constant 1 : i64
    %cst = arith.constant 0.000000e+00 : f32
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
    cf.br ^bb1(%c0 : index)
  ^bb1(%3: index):  // 2 preds: ^bb0, ^bb8
    %4 = arith.cmpi slt, %3, %dim : index
    cf.cond_br %4, ^bb2(%c0 : index), ^bb9
  ^bb2(%5: index):  // 2 preds: ^bb1, ^bb7
    %6 = arith.cmpi slt, %5, %dim_2 : index
    cf.cond_br %6, ^bb3(%c0 : index), ^bb8
  ^bb3(%7: index):  // 2 preds: ^bb2, ^bb6
    %8 = arith.cmpi slt, %7, %1 : index
    cf.cond_br %8, ^bb4(%c0 : index), ^bb7
  ^bb4(%9: index):  // 2 preds: ^bb3, ^bb5
    %10 = arith.cmpi slt, %9, %2 : index
    cf.cond_br %10, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    memref.store %cst, %alloc[%3, %5, %7, %9] : memref<?x?x?x?xf32>
    %11 = arith.addi %9, %c1 : index
    cf.br ^bb4(%11 : index)
  ^bb6:  // pred: ^bb4
    %12 = arith.addi %7, %c1 : index
    cf.br ^bb3(%12 : index)
  ^bb7:  // pred: ^bb3
    %13 = arith.addi %5, %c1 : index
    cf.br ^bb2(%13 : index)
  ^bb8:  // pred: ^bb2
    %14 = arith.addi %3, %c1 : index
    cf.br ^bb1(%14 : index)
  ^bb9:  // pred: ^bb1
    %alloc_3 = memref.alloc(%dim, %dim_2, %1, %2) {alignment = 64 : i64} : memref<?x?x?x?xf32>
    cf.br ^bb10(%c0 : index)
  ^bb10(%15: index):  // 2 preds: ^bb9, ^bb17
    %16 = arith.cmpi slt, %15, %dim : index
    cf.cond_br %16, ^bb11(%c0 : index), ^bb18
  ^bb11(%17: index):  // 2 preds: ^bb10, ^bb16
    %18 = arith.cmpi slt, %17, %dim_2 : index
    cf.cond_br %18, ^bb12(%c0 : index), ^bb17
  ^bb12(%19: index):  // 2 preds: ^bb11, ^bb15
    %20 = arith.cmpi slt, %19, %1 : index
    cf.cond_br %20, ^bb13(%c0 : index), ^bb16
  ^bb13(%21: index):  // 2 preds: ^bb12, ^bb14
    %22 = arith.cmpi slt, %21, %2 : index
    cf.cond_br %22, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %23 = memref.load %alloc[%15, %17, %19, %21] : memref<?x?x?x?xf32>
    memref.store %23, %alloc_3[%15, %17, %19, %21] : memref<?x?x?x?xf32>
    %24 = arith.addi %21, %c1 : index
    cf.br ^bb13(%24 : index)
  ^bb15:  // pred: ^bb13
    %25 = arith.addi %19, %c1 : index
    cf.br ^bb12(%25 : index)
  ^bb16:  // pred: ^bb12
    %26 = arith.addi %17, %c1 : index
    cf.br ^bb11(%26 : index)
  ^bb17:  // pred: ^bb11
    %27 = arith.addi %15, %c1 : index
    cf.br ^bb10(%27 : index)
  ^bb18:  // pred: ^bb10
    memref.dealloc %alloc : memref<?x?x?x?xf32>
    %28 = affine.apply #map()[%1, %2]
    %29 = affine.apply #map1()[%dim_2, %1, %2]
    %30 = affine.apply #map2()[%2]
    %reinterpret_cast = memref.reinterpret_cast %alloc_3 to offset: [%30], sizes: [%dim, %dim_2, %dim_0, %dim_1], strides: [%29, %28, %2, 1] : memref<?x?x?x?xf32> to memref<?x?x?x?xf32, strided<[?, ?, ?, 1], offset: ?>>
    %dim_4 = memref.dim %cast, %c0 : memref<?x?x?x?xf32>
    %dim_5 = memref.dim %cast, %c1 : memref<?x?x?x?xf32>
    %dim_6 = memref.dim %cast, %c2 : memref<?x?x?x?xf32>
    %dim_7 = memref.dim %cast, %c3 : memref<?x?x?x?xf32>
    cf.br ^bb19(%c0 : index)
  ^bb19(%31: index):  // 2 preds: ^bb18, ^bb26
    %32 = arith.cmpi slt, %31, %dim_4 : index
    cf.cond_br %32, ^bb20(%c0 : index), ^bb27
  ^bb20(%33: index):  // 2 preds: ^bb19, ^bb25
    %34 = arith.cmpi slt, %33, %dim_5 : index
    cf.cond_br %34, ^bb21(%c0 : index), ^bb26
  ^bb21(%35: index):  // 2 preds: ^bb20, ^bb24
    %36 = arith.cmpi slt, %35, %dim_6 : index
    cf.cond_br %36, ^bb22(%c0 : index), ^bb25
  ^bb22(%37: index):  // 2 preds: ^bb21, ^bb23
    %38 = arith.cmpi slt, %37, %dim_7 : index
    cf.cond_br %38, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %39 = memref.load %cast[%31, %33, %35, %37] : memref<?x?x?x?xf32>
    memref.store %39, %reinterpret_cast[%31, %33, %35, %37] : memref<?x?x?x?xf32, strided<[?, ?, ?, 1], offset: ?>>
    %40 = arith.addi %37, %c1 : index
    cf.br ^bb22(%40 : index)
  ^bb24:  // pred: ^bb22
    %41 = arith.addi %35, %c1 : index
    cf.br ^bb21(%41 : index)
  ^bb25:  // pred: ^bb21
    %42 = arith.addi %33, %c1 : index
    cf.br ^bb20(%42 : index)
  ^bb26:  // pred: ^bb20
    %43 = arith.addi %31, %c1 : index
    cf.br ^bb19(%43 : index)
  ^bb27:  // pred: ^bb19
    %44 = arith.index_cast %dim_0 : index to i64
    %45 = arith.subi %44, %c1_i64 : i64
    %46 = arith.subi %c-1_i64, %45 : i64
    %47 = arith.divsi %46, %c2_i64 : i64
    %48 = arith.subi %c-1_i64, %47 : i64
    %49 = arith.divsi %45, %c2_i64 : i64
    %50 = arith.cmpi slt, %45, %c0_i64 : i64
    %51 = arith.select %50, %48, %49 : i64
    %52 = arith.addi %51, %c1_i64 : i64
    %53 = arith.index_cast %52 : i64 to index
    %54 = arith.index_cast %dim_1 : index to i64
    %55 = arith.subi %54, %c1_i64 : i64
    %56 = arith.subi %c-1_i64, %55 : i64
    %57 = arith.divsi %56, %c2_i64 : i64
    %58 = arith.subi %c-1_i64, %57 : i64
    %59 = arith.divsi %55, %c2_i64 : i64
    %60 = arith.cmpi slt, %55, %c0_i64 : i64
    %61 = arith.select %60, %58, %59 : i64
    %62 = arith.addi %61, %c1_i64 : i64
    %63 = arith.index_cast %62 : i64 to index
    %alloc_8 = memref.alloc(%dim, %53, %63) {alignment = 64 : i64} : memref<?x10x?x?xf32>
    cf.br ^bb28(%c0 : index)
  ^bb28(%64: index):  // 2 preds: ^bb27, ^bb35
    %65 = arith.cmpi slt, %64, %dim : index
    cf.cond_br %65, ^bb29(%c0 : index), ^bb36
  ^bb29(%66: index):  // 2 preds: ^bb28, ^bb34
    %67 = arith.cmpi slt, %66, %c10 : index
    cf.cond_br %67, ^bb30(%c0 : index), ^bb35
  ^bb30(%68: index):  // 2 preds: ^bb29, ^bb33
    %69 = arith.cmpi slt, %68, %53 : index
    cf.cond_br %69, ^bb31(%c0 : index), ^bb34
  ^bb31(%70: index):  // 2 preds: ^bb30, ^bb32
    %71 = arith.cmpi slt, %70, %63 : index
    cf.cond_br %71, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    memref.store %cst, %alloc_8[%64, %66, %68, %70] : memref<?x10x?x?xf32>
    %72 = arith.addi %70, %c1 : index
    cf.br ^bb31(%72 : index)
  ^bb33:  // pred: ^bb31
    %73 = arith.addi %68, %c1 : index
    cf.br ^bb30(%73 : index)
  ^bb34:  // pred: ^bb30
    %74 = arith.addi %66, %c1 : index
    cf.br ^bb29(%74 : index)
  ^bb35:  // pred: ^bb29
    %75 = arith.addi %64, %c1 : index
    cf.br ^bb28(%75 : index)
  ^bb36:  // pred: ^bb28
    %alloc_9 = memref.alloc(%dim, %53, %63) {alignment = 64 : i64} : memref<?x10x?x?xf32>
    cf.br ^bb37(%c0 : index)
  ^bb37(%76: index):  // 2 preds: ^bb36, ^bb44
    %77 = arith.cmpi slt, %76, %dim : index
    cf.cond_br %77, ^bb38(%c0 : index), ^bb45
  ^bb38(%78: index):  // 2 preds: ^bb37, ^bb43
    %79 = arith.cmpi slt, %78, %c10 : index
    cf.cond_br %79, ^bb39(%c0 : index), ^bb44
  ^bb39(%80: index):  // 2 preds: ^bb38, ^bb42
    %81 = arith.cmpi slt, %80, %53 : index
    cf.cond_br %81, ^bb40(%c0 : index), ^bb43
  ^bb40(%82: index):  // 2 preds: ^bb39, ^bb41
    %83 = arith.cmpi slt, %82, %63 : index
    cf.cond_br %83, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %84 = memref.load %alloc_8[%76, %78, %80, %82] : memref<?x10x?x?xf32>
    memref.store %84, %alloc_9[%76, %78, %80, %82] : memref<?x10x?x?xf32>
    %85 = arith.addi %82, %c1 : index
    cf.br ^bb40(%85 : index)
  ^bb42:  // pred: ^bb40
    %86 = arith.addi %80, %c1 : index
    cf.br ^bb39(%86 : index)
  ^bb43:  // pred: ^bb39
    %87 = arith.addi %78, %c1 : index
    cf.br ^bb38(%87 : index)
  ^bb44:  // pred: ^bb38
    %88 = arith.addi %76, %c1 : index
    cf.br ^bb37(%88 : index)
  ^bb45:  // pred: ^bb37
    memref.dealloc %alloc_8 : memref<?x10x?x?xf32>
    cf.br ^bb46(%c0 : index)
  ^bb46(%89: index):  // 2 preds: ^bb45, ^bb59
    %90 = arith.cmpi slt, %89, %dim : index
    cf.cond_br %90, ^bb47(%c0 : index), ^bb60
  ^bb47(%91: index):  // 2 preds: ^bb46, ^bb58
    %92 = arith.cmpi slt, %91, %c10 : index
    cf.cond_br %92, ^bb48(%c0 : index), ^bb59
  ^bb48(%93: index):  // 2 preds: ^bb47, ^bb57
    %94 = arith.cmpi slt, %93, %53 : index
    cf.cond_br %94, ^bb49(%c0 : index), ^bb58
  ^bb49(%95: index):  // 2 preds: ^bb48, ^bb56
    %96 = arith.cmpi slt, %95, %63 : index
    cf.cond_br %96, ^bb50(%c0 : index), ^bb57
  ^bb50(%97: index):  // 2 preds: ^bb49, ^bb55
    %98 = arith.cmpi slt, %97, %dim_2 : index
    cf.cond_br %98, ^bb51(%c0 : index), ^bb56
  ^bb51(%99: index):  // 2 preds: ^bb50, ^bb54
    %100 = arith.cmpi slt, %99, %c3 : index
    cf.cond_br %100, ^bb52(%c0 : index), ^bb55
  ^bb52(%101: index):  // 2 preds: ^bb51, ^bb53
    %102 = arith.cmpi slt, %101, %c3 : index
    cf.cond_br %102, ^bb53, ^bb54
  ^bb53:  // pred: ^bb52
    %103 = arith.muli %93, %c2 : index
    %104 = arith.muli %99, %c3 : index
    %105 = arith.addi %103, %104 : index
    %106 = arith.muli %95, %c2 : index
    %107 = arith.muli %101, %c3 : index
    %108 = arith.addi %106, %107 : index
    %109 = memref.load %alloc_3[%89, %97, %105, %108] : memref<?x?x?x?xf32>
    %110 = memref.load %0[%91, %97, %99, %101] : memref<10x2x3x3xf32>
    %111 = memref.load %alloc_9[%89, %91, %93, %95] : memref<?x10x?x?xf32>
    %112 = arith.mulf %109, %110 : f32
    %113 = arith.addf %111, %112 : f32
    memref.store %113, %alloc_9[%89, %91, %93, %95] : memref<?x10x?x?xf32>
    %114 = arith.addi %101, %c1 : index
    cf.br ^bb52(%114 : index)
  ^bb54:  // pred: ^bb52
    %115 = arith.addi %99, %c1 : index
    cf.br ^bb51(%115 : index)
  ^bb55:  // pred: ^bb51
    %116 = arith.addi %97, %c1 : index
    cf.br ^bb50(%116 : index)
  ^bb56:  // pred: ^bb50
    %117 = arith.addi %95, %c1 : index
    cf.br ^bb49(%117 : index)
  ^bb57:  // pred: ^bb49
    %118 = arith.addi %93, %c1 : index
    cf.br ^bb48(%118 : index)
  ^bb58:  // pred: ^bb48
    %119 = arith.addi %91, %c1 : index
    cf.br ^bb47(%119 : index)
  ^bb59:  // pred: ^bb47
    %120 = arith.addi %89, %c1 : index
    cf.br ^bb46(%120 : index)
  ^bb60:  // pred: ^bb46
    memref.dealloc %alloc_3 : memref<?x?x?x?xf32>
    %cast_10 = memref.cast %alloc_9 : memref<?x10x?x?xf32> to memref<*xf32>
    call @refbackend_consume_func_return_mrf32(%cast_10) : (memref<*xf32>) -> ()
    return
  }
}
