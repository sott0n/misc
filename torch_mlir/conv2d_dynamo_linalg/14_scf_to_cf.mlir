module attributes {torch.debug_module_name = "Conv2dWithPaddingDilationStrideModule"} {
  func.func private @refbackend_consume_func_return_mrf32(memref<*xf32>) attributes {llvm.emit_c_interface}
  memref.global "private" @global_seed : memref<i64> = dense<0>
  memref.global "private" constant @__constant_10x2x3x3xf32 : memref<10x2x3x3xf32> = dense<"0x2E4CE7BABE79013E42A646BE27A031BEC9EBB9BDC771813DE50699BB015F3F3E7D5AABBC74777F3D3EE291BD7AC53DBD029566BE0BD91FBED4FCC6BD880D0F3CE4D5BE3D2BD2103E94A023BEB234D2BDDF54AF3DF56B483EDFAF46BDA39C343EBF9C1BBD4750CC3C818B5A3ED6E65FBED9F117BE3B6A74BDDE29BCBDD388503EAE711CBE0936DEBD8D9F28BE2B0C62BE1EE40CBEC9784F3ED265D73DD5F5E93D62184B3C4F7BF7BD4A56233D115B61BEE0652EBE11DBF8BD5A48183E94830D3E4915D6BD4C570BBC225D1A3E6EF16F3E0F95BF3D6F6C023DF7D3213EE11C0EBE40E7333D86203BBE5C4827BE435DF9BDC06ADA3D5221C23D3DF80EBE25D5913DD97F043EAEB5F3BC8A72133C39B25F3DCABB153E69C0673E3DFF39BED1E6B0BD8AB6BD3D5BFA473E5008523E00F7543ECA22403DB7E151BE36A0B13CDDFE16BE85EF60BE1D72563E0F85373E31C370BEE6B3343D2FA322BD93DF1EBDB4F7DCBDDDA1B93D36F50EBED8F5B03D511DF43D3AC82C3E657EB43DB2E16EBEA4911CBE4907F13D31114A3DC7473CBEB2FA0ABEF40E633ED0A1223E2F7AD2BD55FC72BD11EB65BEB7D28ABBF4C135BE892C3ABEDAC754BC9CF4103D0FB0C5BD93370F3E60E012BE86005B3E4367253EB6884BBE314870BD8A402E3CB5DB0C3D08FA643DAA6EBD3DB851673C3888EBBDBE6AE43D028667BE1F0E0FBE75AD71BD7523EBBDF6DEA8BDBBD245BEEB5C4DBD475E4E3DB93C1DBEAD2E46BCF2C62C3E857EC6BC27A7D63B0493A6BCE862433D3577193E63A0643ECB46193E4D26653ED8A48BBC6ED158BE81D8E4BDBA57243E0345C8BAEFEEEFBDD2F438BE5DE061BE86B54BBE74D343BDE05C043E187D023E41C668BE348E163EA4DD3CBE6B1A4CBDA2BAC3BD33F539BD718E3DBD669558BE0B6650BE2D1217BD60C3473B6A49DBBDEED6B53DBF3C59BE2D4F82BC8341543E9BE5C4BDB2F2593E77D1AE3D32D159BE10B5183EE3CFDEBC1D7DD7BDED00413E890A43BE">
  func.func @forward(%arg0: memref<*xf32>) attributes {llvm.emit_c_interface} {
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
  ^bb1(%3: index):  // 2 preds: ^bb0, ^bb11
    %4 = arith.cmpi slt, %3, %dim : index
    cf.cond_br %4, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    cf.br ^bb3(%c0 : index)
  ^bb3(%5: index):  // 2 preds: ^bb2, ^bb10
    %6 = arith.cmpi slt, %5, %dim_2 : index
    cf.cond_br %6, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    cf.br ^bb5(%c0 : index)
  ^bb5(%7: index):  // 2 preds: ^bb4, ^bb9
    %8 = arith.cmpi slt, %7, %1 : index
    cf.cond_br %8, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    cf.br ^bb7(%c0 : index)
  ^bb7(%9: index):  // 2 preds: ^bb6, ^bb8
    %10 = arith.cmpi slt, %9, %2 : index
    cf.cond_br %10, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    memref.store %cst, %alloc[%3, %5, %7, %9] : memref<?x?x?x?xf32>
    %11 = arith.addi %9, %c1 : index
    cf.br ^bb7(%11 : index)
  ^bb9:  // pred: ^bb7
    %12 = arith.addi %7, %c1 : index
    cf.br ^bb5(%12 : index)
  ^bb10:  // pred: ^bb5
    %13 = arith.addi %5, %c1 : index
    cf.br ^bb3(%13 : index)
  ^bb11:  // pred: ^bb3
    %14 = arith.addi %3, %c1 : index
    cf.br ^bb1(%14 : index)
  ^bb12:  // pred: ^bb1
    %alloc_3 = memref.alloc(%dim, %dim_2, %1, %2) {alignment = 64 : i64} : memref<?x?x?x?xf32>
    cf.br ^bb13(%c0 : index)
  ^bb13(%15: index):  // 2 preds: ^bb12, ^bb23
    %16 = arith.cmpi slt, %15, %dim : index
    cf.cond_br %16, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    cf.br ^bb15(%c0 : index)
  ^bb15(%17: index):  // 2 preds: ^bb14, ^bb22
    %18 = arith.cmpi slt, %17, %dim_2 : index
    cf.cond_br %18, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    cf.br ^bb17(%c0 : index)
  ^bb17(%19: index):  // 2 preds: ^bb16, ^bb21
    %20 = arith.cmpi slt, %19, %1 : index
    cf.cond_br %20, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    cf.br ^bb19(%c0 : index)
  ^bb19(%21: index):  // 2 preds: ^bb18, ^bb20
    %22 = arith.cmpi slt, %21, %2 : index
    cf.cond_br %22, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %23 = memref.load %alloc[%15, %17, %19, %21] : memref<?x?x?x?xf32>
    memref.store %23, %alloc_3[%15, %17, %19, %21] : memref<?x?x?x?xf32>
    %24 = arith.addi %21, %c1 : index
    cf.br ^bb19(%24 : index)
  ^bb21:  // pred: ^bb19
    %25 = arith.addi %19, %c1 : index
    cf.br ^bb17(%25 : index)
  ^bb22:  // pred: ^bb17
    %26 = arith.addi %17, %c1 : index
    cf.br ^bb15(%26 : index)
  ^bb23:  // pred: ^bb15
    %27 = arith.addi %15, %c1 : index
    cf.br ^bb13(%27 : index)
  ^bb24:  // pred: ^bb13
    memref.dealloc %alloc : memref<?x?x?x?xf32>
    %subview = memref.subview %alloc_3[0, 0, 3, 3] [%dim, %dim_2, %dim_0, %dim_1] [1, 1, 1, 1] : memref<?x?x?x?xf32> to memref<?x?x?x?xf32, strided<[?, ?, ?, 1], offset: ?>>
    %dim_4 = memref.dim %cast, %c0 : memref<?x?x?x?xf32>
    %dim_5 = memref.dim %cast, %c1 : memref<?x?x?x?xf32>
    %dim_6 = memref.dim %cast, %c2 : memref<?x?x?x?xf32>
    %dim_7 = memref.dim %cast, %c3 : memref<?x?x?x?xf32>
    cf.br ^bb25(%c0 : index)
  ^bb25(%28: index):  // 2 preds: ^bb24, ^bb35
    %29 = arith.cmpi slt, %28, %dim_4 : index
    cf.cond_br %29, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    cf.br ^bb27(%c0 : index)
  ^bb27(%30: index):  // 2 preds: ^bb26, ^bb34
    %31 = arith.cmpi slt, %30, %dim_5 : index
    cf.cond_br %31, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    cf.br ^bb29(%c0 : index)
  ^bb29(%32: index):  // 2 preds: ^bb28, ^bb33
    %33 = arith.cmpi slt, %32, %dim_6 : index
    cf.cond_br %33, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    cf.br ^bb31(%c0 : index)
  ^bb31(%34: index):  // 2 preds: ^bb30, ^bb32
    %35 = arith.cmpi slt, %34, %dim_7 : index
    cf.cond_br %35, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %36 = memref.load %cast[%28, %30, %32, %34] : memref<?x?x?x?xf32>
    memref.store %36, %subview[%28, %30, %32, %34] : memref<?x?x?x?xf32, strided<[?, ?, ?, 1], offset: ?>>
    %37 = arith.addi %34, %c1 : index
    cf.br ^bb31(%37 : index)
  ^bb33:  // pred: ^bb31
    %38 = arith.addi %32, %c1 : index
    cf.br ^bb29(%38 : index)
  ^bb34:  // pred: ^bb29
    %39 = arith.addi %30, %c1 : index
    cf.br ^bb27(%39 : index)
  ^bb35:  // pred: ^bb27
    %40 = arith.addi %28, %c1 : index
    cf.br ^bb25(%40 : index)
  ^bb36:  // pred: ^bb25
    %41 = arith.index_cast %dim_0 : index to i64
    %42 = arith.subi %41, %c1_i64 : i64
    %43 = arith.floordivsi %42, %c2_i64 : i64
    %44 = arith.addi %43, %c1_i64 : i64
    %45 = arith.index_cast %44 : i64 to index
    %46 = arith.index_cast %dim_1 : index to i64
    %47 = arith.subi %46, %c1_i64 : i64
    %48 = arith.floordivsi %47, %c2_i64 : i64
    %49 = arith.addi %48, %c1_i64 : i64
    %50 = arith.index_cast %49 : i64 to index
    %alloc_8 = memref.alloc(%dim, %45, %50) {alignment = 64 : i64} : memref<?x10x?x?xf32>
    cf.br ^bb37(%c0 : index)
  ^bb37(%51: index):  // 2 preds: ^bb36, ^bb47
    %52 = arith.cmpi slt, %51, %dim : index
    cf.cond_br %52, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    cf.br ^bb39(%c0 : index)
  ^bb39(%53: index):  // 2 preds: ^bb38, ^bb46
    %54 = arith.cmpi slt, %53, %c10 : index
    cf.cond_br %54, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    cf.br ^bb41(%c0 : index)
  ^bb41(%55: index):  // 2 preds: ^bb40, ^bb45
    %56 = arith.cmpi slt, %55, %45 : index
    cf.cond_br %56, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    cf.br ^bb43(%c0 : index)
  ^bb43(%57: index):  // 2 preds: ^bb42, ^bb44
    %58 = arith.cmpi slt, %57, %50 : index
    cf.cond_br %58, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    memref.store %cst, %alloc_8[%51, %53, %55, %57] : memref<?x10x?x?xf32>
    %59 = arith.addi %57, %c1 : index
    cf.br ^bb43(%59 : index)
  ^bb45:  // pred: ^bb43
    %60 = arith.addi %55, %c1 : index
    cf.br ^bb41(%60 : index)
  ^bb46:  // pred: ^bb41
    %61 = arith.addi %53, %c1 : index
    cf.br ^bb39(%61 : index)
  ^bb47:  // pred: ^bb39
    %62 = arith.addi %51, %c1 : index
    cf.br ^bb37(%62 : index)
  ^bb48:  // pred: ^bb37
    %alloc_9 = memref.alloc(%dim, %45, %50) {alignment = 64 : i64} : memref<?x10x?x?xf32>
    cf.br ^bb49(%c0 : index)
  ^bb49(%63: index):  // 2 preds: ^bb48, ^bb59
    %64 = arith.cmpi slt, %63, %dim : index
    cf.cond_br %64, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    cf.br ^bb51(%c0 : index)
  ^bb51(%65: index):  // 2 preds: ^bb50, ^bb58
    %66 = arith.cmpi slt, %65, %c10 : index
    cf.cond_br %66, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    cf.br ^bb53(%c0 : index)
  ^bb53(%67: index):  // 2 preds: ^bb52, ^bb57
    %68 = arith.cmpi slt, %67, %45 : index
    cf.cond_br %68, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    cf.br ^bb55(%c0 : index)
  ^bb55(%69: index):  // 2 preds: ^bb54, ^bb56
    %70 = arith.cmpi slt, %69, %50 : index
    cf.cond_br %70, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %71 = memref.load %alloc_8[%63, %65, %67, %69] : memref<?x10x?x?xf32>
    memref.store %71, %alloc_9[%63, %65, %67, %69] : memref<?x10x?x?xf32>
    %72 = arith.addi %69, %c1 : index
    cf.br ^bb55(%72 : index)
  ^bb57:  // pred: ^bb55
    %73 = arith.addi %67, %c1 : index
    cf.br ^bb53(%73 : index)
  ^bb58:  // pred: ^bb53
    %74 = arith.addi %65, %c1 : index
    cf.br ^bb51(%74 : index)
  ^bb59:  // pred: ^bb51
    %75 = arith.addi %63, %c1 : index
    cf.br ^bb49(%75 : index)
  ^bb60:  // pred: ^bb49
    memref.dealloc %alloc_8 : memref<?x10x?x?xf32>
    cf.br ^bb61(%c0 : index)
  ^bb61(%76: index):  // 2 preds: ^bb60, ^bb80
    %77 = arith.cmpi slt, %76, %dim : index
    cf.cond_br %77, ^bb62, ^bb81
  ^bb62:  // pred: ^bb61
    cf.br ^bb63(%c0 : index)
  ^bb63(%78: index):  // 2 preds: ^bb62, ^bb79
    %79 = arith.cmpi slt, %78, %c10 : index
    cf.cond_br %79, ^bb64, ^bb80
  ^bb64:  // pred: ^bb63
    cf.br ^bb65(%c0 : index)
  ^bb65(%80: index):  // 2 preds: ^bb64, ^bb78
    %81 = arith.cmpi slt, %80, %45 : index
    cf.cond_br %81, ^bb66, ^bb79
  ^bb66:  // pred: ^bb65
    cf.br ^bb67(%c0 : index)
  ^bb67(%82: index):  // 2 preds: ^bb66, ^bb77
    %83 = arith.cmpi slt, %82, %50 : index
    cf.cond_br %83, ^bb68, ^bb78
  ^bb68:  // pred: ^bb67
    cf.br ^bb69(%c0 : index)
  ^bb69(%84: index):  // 2 preds: ^bb68, ^bb76
    %85 = arith.cmpi slt, %84, %dim_2 : index
    cf.cond_br %85, ^bb70, ^bb77
  ^bb70:  // pred: ^bb69
    cf.br ^bb71(%c0 : index)
  ^bb71(%86: index):  // 2 preds: ^bb70, ^bb75
    %87 = arith.cmpi slt, %86, %c3 : index
    cf.cond_br %87, ^bb72, ^bb76
  ^bb72:  // pred: ^bb71
    cf.br ^bb73(%c0 : index)
  ^bb73(%88: index):  // 2 preds: ^bb72, ^bb74
    %89 = arith.cmpi slt, %88, %c3 : index
    cf.cond_br %89, ^bb74, ^bb75
  ^bb74:  // pred: ^bb73
    %c2_10 = arith.constant 2 : index
    %90 = arith.muli %80, %c2_10 : index
    %c3_11 = arith.constant 3 : index
    %91 = arith.muli %86, %c3_11 : index
    %92 = arith.addi %90, %91 : index
    %c2_12 = arith.constant 2 : index
    %93 = arith.muli %82, %c2_12 : index
    %c3_13 = arith.constant 3 : index
    %94 = arith.muli %88, %c3_13 : index
    %95 = arith.addi %93, %94 : index
    %96 = memref.load %alloc_3[%76, %84, %92, %95] : memref<?x?x?x?xf32>
    %97 = memref.load %0[%78, %84, %86, %88] : memref<10x2x3x3xf32>
    %98 = memref.load %alloc_9[%76, %78, %80, %82] : memref<?x10x?x?xf32>
    %99 = arith.mulf %96, %97 : f32
    %100 = arith.addf %98, %99 : f32
    memref.store %100, %alloc_9[%76, %78, %80, %82] : memref<?x10x?x?xf32>
    %101 = arith.addi %88, %c1 : index
    cf.br ^bb73(%101 : index)
  ^bb75:  // pred: ^bb73
    %102 = arith.addi %86, %c1 : index
    cf.br ^bb71(%102 : index)
  ^bb76:  // pred: ^bb71
    %103 = arith.addi %84, %c1 : index
    cf.br ^bb69(%103 : index)
  ^bb77:  // pred: ^bb69
    %104 = arith.addi %82, %c1 : index
    cf.br ^bb67(%104 : index)
  ^bb78:  // pred: ^bb67
    %105 = arith.addi %80, %c1 : index
    cf.br ^bb65(%105 : index)
  ^bb79:  // pred: ^bb65
    %106 = arith.addi %78, %c1 : index
    cf.br ^bb63(%106 : index)
  ^bb80:  // pred: ^bb63
    %107 = arith.addi %76, %c1 : index
    cf.br ^bb61(%107 : index)
  ^bb81:  // pred: ^bb61
    memref.dealloc %alloc_3 : memref<?x?x?x?xf32>
    %cast_14 = memref.cast %alloc_9 : memref<?x10x?x?xf32> to memref<*xf32>
    call @refbackend_consume_func_return_mrf32(%cast_14) : (memref<*xf32>) -> ()
    return
  }
}