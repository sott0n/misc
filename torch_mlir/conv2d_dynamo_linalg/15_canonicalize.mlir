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
    %subview = memref.subview %alloc_3[0, 0, 3, 3] [%dim, %dim_2, %dim_0, %dim_1] [1, 1, 1, 1] : memref<?x?x?x?xf32> to memref<?x?x?x?xf32, strided<[?, ?, ?, 1], offset: ?>>
    %dim_4 = memref.dim %cast, %c0 : memref<?x?x?x?xf32>
    %dim_5 = memref.dim %cast, %c1 : memref<?x?x?x?xf32>
    %dim_6 = memref.dim %cast, %c2 : memref<?x?x?x?xf32>
    %dim_7 = memref.dim %cast, %c3 : memref<?x?x?x?xf32>
    cf.br ^bb19(%c0 : index)
  ^bb19(%28: index):  // 2 preds: ^bb18, ^bb26
    %29 = arith.cmpi slt, %28, %dim_4 : index
    cf.cond_br %29, ^bb20(%c0 : index), ^bb27
  ^bb20(%30: index):  // 2 preds: ^bb19, ^bb25
    %31 = arith.cmpi slt, %30, %dim_5 : index
    cf.cond_br %31, ^bb21(%c0 : index), ^bb26
  ^bb21(%32: index):  // 2 preds: ^bb20, ^bb24
    %33 = arith.cmpi slt, %32, %dim_6 : index
    cf.cond_br %33, ^bb22(%c0 : index), ^bb25
  ^bb22(%34: index):  // 2 preds: ^bb21, ^bb23
    %35 = arith.cmpi slt, %34, %dim_7 : index
    cf.cond_br %35, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %36 = memref.load %cast[%28, %30, %32, %34] : memref<?x?x?x?xf32>
    memref.store %36, %subview[%28, %30, %32, %34] : memref<?x?x?x?xf32, strided<[?, ?, ?, 1], offset: ?>>
    %37 = arith.addi %34, %c1 : index
    cf.br ^bb22(%37 : index)
  ^bb24:  // pred: ^bb22
    %38 = arith.addi %32, %c1 : index
    cf.br ^bb21(%38 : index)
  ^bb25:  // pred: ^bb21
    %39 = arith.addi %30, %c1 : index
    cf.br ^bb20(%39 : index)
  ^bb26:  // pred: ^bb20
    %40 = arith.addi %28, %c1 : index
    cf.br ^bb19(%40 : index)
  ^bb27:  // pred: ^bb19
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
    cf.br ^bb28(%c0 : index)
  ^bb28(%51: index):  // 2 preds: ^bb27, ^bb35
    %52 = arith.cmpi slt, %51, %dim : index
    cf.cond_br %52, ^bb29(%c0 : index), ^bb36
  ^bb29(%53: index):  // 2 preds: ^bb28, ^bb34
    %54 = arith.cmpi slt, %53, %c10 : index
    cf.cond_br %54, ^bb30(%c0 : index), ^bb35
  ^bb30(%55: index):  // 2 preds: ^bb29, ^bb33
    %56 = arith.cmpi slt, %55, %45 : index
    cf.cond_br %56, ^bb31(%c0 : index), ^bb34
  ^bb31(%57: index):  // 2 preds: ^bb30, ^bb32
    %58 = arith.cmpi slt, %57, %50 : index
    cf.cond_br %58, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    memref.store %cst, %alloc_8[%51, %53, %55, %57] : memref<?x10x?x?xf32>
    %59 = arith.addi %57, %c1 : index
    cf.br ^bb31(%59 : index)
  ^bb33:  // pred: ^bb31
    %60 = arith.addi %55, %c1 : index
    cf.br ^bb30(%60 : index)
  ^bb34:  // pred: ^bb30
    %61 = arith.addi %53, %c1 : index
    cf.br ^bb29(%61 : index)
  ^bb35:  // pred: ^bb29
    %62 = arith.addi %51, %c1 : index
    cf.br ^bb28(%62 : index)
  ^bb36:  // pred: ^bb28
    %alloc_9 = memref.alloc(%dim, %45, %50) {alignment = 64 : i64} : memref<?x10x?x?xf32>
    cf.br ^bb37(%c0 : index)
  ^bb37(%63: index):  // 2 preds: ^bb36, ^bb44
    %64 = arith.cmpi slt, %63, %dim : index
    cf.cond_br %64, ^bb38(%c0 : index), ^bb45
  ^bb38(%65: index):  // 2 preds: ^bb37, ^bb43
    %66 = arith.cmpi slt, %65, %c10 : index
    cf.cond_br %66, ^bb39(%c0 : index), ^bb44
  ^bb39(%67: index):  // 2 preds: ^bb38, ^bb42
    %68 = arith.cmpi slt, %67, %45 : index
    cf.cond_br %68, ^bb40(%c0 : index), ^bb43
  ^bb40(%69: index):  // 2 preds: ^bb39, ^bb41
    %70 = arith.cmpi slt, %69, %50 : index
    cf.cond_br %70, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %71 = memref.load %alloc_8[%63, %65, %67, %69] : memref<?x10x?x?xf32>
    memref.store %71, %alloc_9[%63, %65, %67, %69] : memref<?x10x?x?xf32>
    %72 = arith.addi %69, %c1 : index
    cf.br ^bb40(%72 : index)
  ^bb42:  // pred: ^bb40
    %73 = arith.addi %67, %c1 : index
    cf.br ^bb39(%73 : index)
  ^bb43:  // pred: ^bb39
    %74 = arith.addi %65, %c1 : index
    cf.br ^bb38(%74 : index)
  ^bb44:  // pred: ^bb38
    %75 = arith.addi %63, %c1 : index
    cf.br ^bb37(%75 : index)
  ^bb45:  // pred: ^bb37
    memref.dealloc %alloc_8 : memref<?x10x?x?xf32>
    cf.br ^bb46(%c0 : index)
  ^bb46(%76: index):  // 2 preds: ^bb45, ^bb59
    %77 = arith.cmpi slt, %76, %dim : index
    cf.cond_br %77, ^bb47(%c0 : index), ^bb60
  ^bb47(%78: index):  // 2 preds: ^bb46, ^bb58
    %79 = arith.cmpi slt, %78, %c10 : index
    cf.cond_br %79, ^bb48(%c0 : index), ^bb59
  ^bb48(%80: index):  // 2 preds: ^bb47, ^bb57
    %81 = arith.cmpi slt, %80, %45 : index
    cf.cond_br %81, ^bb49(%c0 : index), ^bb58
  ^bb49(%82: index):  // 2 preds: ^bb48, ^bb56
    %83 = arith.cmpi slt, %82, %50 : index
    cf.cond_br %83, ^bb50(%c0 : index), ^bb57
  ^bb50(%84: index):  // 2 preds: ^bb49, ^bb55
    %85 = arith.cmpi slt, %84, %dim_2 : index
    cf.cond_br %85, ^bb51(%c0 : index), ^bb56
  ^bb51(%86: index):  // 2 preds: ^bb50, ^bb54
    %87 = arith.cmpi slt, %86, %c3 : index
    cf.cond_br %87, ^bb52(%c0 : index), ^bb55
  ^bb52(%88: index):  // 2 preds: ^bb51, ^bb53
    %89 = arith.cmpi slt, %88, %c3 : index
    cf.cond_br %89, ^bb53, ^bb54
  ^bb53:  // pred: ^bb52
    %90 = arith.muli %80, %c2 : index
    %91 = arith.muli %86, %c3 : index
    %92 = arith.addi %90, %91 : index
    %93 = arith.muli %82, %c2 : index
    %94 = arith.muli %88, %c3 : index
    %95 = arith.addi %93, %94 : index
    %96 = memref.load %alloc_3[%76, %84, %92, %95] : memref<?x?x?x?xf32>
    %97 = memref.load %0[%78, %84, %86, %88] : memref<10x2x3x3xf32>
    %98 = memref.load %alloc_9[%76, %78, %80, %82] : memref<?x10x?x?xf32>
    %99 = arith.mulf %96, %97 : f32
    %100 = arith.addf %98, %99 : f32
    memref.store %100, %alloc_9[%76, %78, %80, %82] : memref<?x10x?x?xf32>
    %101 = arith.addi %88, %c1 : index
    cf.br ^bb52(%101 : index)
  ^bb54:  // pred: ^bb52
    %102 = arith.addi %86, %c1 : index
    cf.br ^bb51(%102 : index)
  ^bb55:  // pred: ^bb51
    %103 = arith.addi %84, %c1 : index
    cf.br ^bb50(%103 : index)
  ^bb56:  // pred: ^bb50
    %104 = arith.addi %82, %c1 : index
    cf.br ^bb49(%104 : index)
  ^bb57:  // pred: ^bb49
    %105 = arith.addi %80, %c1 : index
    cf.br ^bb48(%105 : index)
  ^bb58:  // pred: ^bb48
    %106 = arith.addi %78, %c1 : index
    cf.br ^bb47(%106 : index)
  ^bb59:  // pred: ^bb47
    %107 = arith.addi %76, %c1 : index
    cf.br ^bb46(%107 : index)
  ^bb60:  // pred: ^bb46
    memref.dealloc %alloc_3 : memref<?x?x?x?xf32>
    %cast_10 = memref.cast %alloc_9 : memref<?x10x?x?xf32> to memref<*xf32>
    call @refbackend_consume_func_return_mrf32(%cast_10) : (memref<*xf32>) -> ()
    return
  }
}
