module attributes {torch.debug_module_name = "Conv2dWithPaddingDilationStrideModule"} {
  llvm.func @free(!llvm.ptr)
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func private @refbackend_consume_func_return_mrf32(%arg0: i64, %arg1: !llvm.ptr) attributes {llvm.emit_c_interface, sym_visibility = "private"} {
    %0 = llvm.mlir.constant(1 : index) : i64
    %1 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %2 = llvm.insertvalue %arg0, %1[0] : !llvm.struct<(i64, ptr)>
    %3 = llvm.insertvalue %arg1, %2[1] : !llvm.struct<(i64, ptr)>
    %4 = llvm.alloca %0 x !llvm.struct<(i64, ptr)> : (i64) -> !llvm.ptr
    llvm.store %3, %4 : !llvm.struct<(i64, ptr)>, !llvm.ptr
    llvm.call @_mlir_ciface_refbackend_consume_func_return_mrf32(%4) : (!llvm.ptr) -> ()
    llvm.return
  }
  llvm.func @_mlir_ciface_refbackend_consume_func_return_mrf32(!llvm.ptr) attributes {llvm.emit_c_interface, sym_visibility = "private"}
  llvm.mlir.global private @global_seed(0 : i64) {addr_space = 0 : i32} : i64
  llvm.mlir.global private constant @__constant_10x2x3x3xf32(dense<"0x2E4CE7BABE79013E42A646BE27A031BEC9EBB9BDC771813DE50699BB015F3F3E7D5AABBC74777F3D3EE291BD7AC53DBD029566BE0BD91FBED4FCC6BD880D0F3CE4D5BE3D2BD2103E94A023BEB234D2BDDF54AF3DF56B483EDFAF46BDA39C343EBF9C1BBD4750CC3C818B5A3ED6E65FBED9F117BE3B6A74BDDE29BCBDD388503EAE711CBE0936DEBD8D9F28BE2B0C62BE1EE40CBEC9784F3ED265D73DD5F5E93D62184B3C4F7BF7BD4A56233D115B61BEE0652EBE11DBF8BD5A48183E94830D3E4915D6BD4C570BBC225D1A3E6EF16F3E0F95BF3D6F6C023DF7D3213EE11C0EBE40E7333D86203BBE5C4827BE435DF9BDC06ADA3D5221C23D3DF80EBE25D5913DD97F043EAEB5F3BC8A72133C39B25F3DCABB153E69C0673E3DFF39BED1E6B0BD8AB6BD3D5BFA473E5008523E00F7543ECA22403DB7E151BE36A0B13CDDFE16BE85EF60BE1D72563E0F85373E31C370BEE6B3343D2FA322BD93DF1EBDB4F7DCBDDDA1B93D36F50EBED8F5B03D511DF43D3AC82C3E657EB43DB2E16EBEA4911CBE4907F13D31114A3DC7473CBEB2FA0ABEF40E633ED0A1223E2F7AD2BD55FC72BD11EB65BEB7D28ABBF4C135BE892C3ABEDAC754BC9CF4103D0FB0C5BD93370F3E60E012BE86005B3E4367253EB6884BBE314870BD8A402E3CB5DB0C3D08FA643DAA6EBD3DB851673C3888EBBDBE6AE43D028667BE1F0E0FBE75AD71BD7523EBBDF6DEA8BDBBD245BEEB5C4DBD475E4E3DB93C1DBEAD2E46BCF2C62C3E857EC6BC27A7D63B0493A6BCE862433D3577193E63A0643ECB46193E4D26653ED8A48BBC6ED158BE81D8E4BDBA57243E0345C8BAEFEEEFBDD2F438BE5DE061BE86B54BBE74D343BDE05C043E187D023E41C668BE348E163EA4DD3CBE6B1A4CBDA2BAC3BD33F539BD718E3DBD669558BE0B6650BE2D1217BD60C3473B6A49DBBDEED6B53DBF3C59BE2D4F82BC8341543E9BE5C4BDB2F2593E77D1AE3D32D159BE10B5183EE3CFDEBC1D7DD7BDED00413E890A43BE"> : tensor<10x2x3x3xf32>) {addr_space = 0 : i32} : !llvm.array<10 x array<2 x array<3 x array<3 x f32>>>>
  llvm.func @forward(%arg0: i64, %arg1: !llvm.ptr) attributes {llvm.emit_c_interface} {
    %0 = llvm.mlir.constant(4 : index) : i64
    %1 = llvm.mlir.constant(64 : index) : i64
    %2 = llvm.mlir.constant(18 : index) : i64
    %3 = llvm.mlir.constant(9 : index) : i64
    %4 = llvm.mlir.constant(6 : index) : i64
    %5 = llvm.mlir.constant(0.000000e+00 : f32) : f32
    %6 = llvm.mlir.constant(1 : i64) : i64
    %7 = llvm.mlir.constant(2 : i64) : i64
    %8 = llvm.mlir.constant(10 : index) : i64
    %9 = llvm.mlir.constant(3 : index) : i64
    %10 = llvm.mlir.constant(2 : index) : i64
    %11 = llvm.mlir.constant(1 : index) : i64
    %12 = llvm.mlir.constant(0 : index) : i64
    %13 = llvm.mlir.constant(0 : i64) : i64
    %14 = llvm.mlir.constant(-1 : i64) : i64
    %15 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %16 = llvm.mlir.addressof @__constant_10x2x3x3xf32 : !llvm.ptr
    %17 = llvm.getelementptr %16[0, 0, 0, 0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<10 x array<2 x array<3 x array<3 x f32>>>>
    %18 = llvm.extractvalue %15[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %19 = llvm.extractvalue %15[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %20 = llvm.extractvalue %15[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %21 = llvm.extractvalue %15[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %22 = llvm.add %19, %4  : i64
    %23 = llvm.add %20, %4  : i64
    %24 = llvm.mul %23, %22  : i64
    %25 = llvm.mul %24, %21  : i64
    %26 = llvm.mul %25, %18  : i64
    %27 = llvm.mlir.null : !llvm.ptr
    %28 = llvm.getelementptr %27[%26] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %29 = llvm.ptrtoint %28 : !llvm.ptr to i64
    %30 = llvm.add %29, %1  : i64
    %31 = llvm.call @malloc(%30) : (i64) -> !llvm.ptr
    %32 = llvm.ptrtoint %31 : !llvm.ptr to i64
    %33 = llvm.sub %1, %11  : i64
    %34 = llvm.add %32, %33  : i64
    %35 = llvm.urem %34, %1  : i64
    %36 = llvm.sub %34, %35  : i64
    %37 = llvm.inttoptr %36 : i64 to !llvm.ptr
    llvm.br ^bb1(%12 : i64)
  ^bb1(%38: i64):  // 2 preds: ^bb0, ^bb8
    %39 = llvm.icmp "slt" %38, %18 : i64
    llvm.cond_br %39, ^bb2(%12 : i64), ^bb9
  ^bb2(%40: i64):  // 2 preds: ^bb1, ^bb7
    %41 = llvm.icmp "slt" %40, %21 : i64
    llvm.cond_br %41, ^bb3(%12 : i64), ^bb8
  ^bb3(%42: i64):  // 2 preds: ^bb2, ^bb6
    %43 = llvm.icmp "slt" %42, %22 : i64
    llvm.cond_br %43, ^bb4(%12 : i64), ^bb7
  ^bb4(%44: i64):  // 2 preds: ^bb3, ^bb5
    %45 = llvm.icmp "slt" %44, %23 : i64
    llvm.cond_br %45, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %46 = llvm.mul %38, %25  : i64
    %47 = llvm.mul %40, %24  : i64
    %48 = llvm.add %46, %47  : i64
    %49 = llvm.mul %42, %23  : i64
    %50 = llvm.add %48, %49  : i64
    %51 = llvm.add %50, %44  : i64
    %52 = llvm.getelementptr %37[%51] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %5, %52 : f32, !llvm.ptr
    %53 = llvm.add %44, %11  : i64
    llvm.br ^bb4(%53 : i64)
  ^bb6:  // pred: ^bb4
    %54 = llvm.add %42, %11  : i64
    llvm.br ^bb3(%54 : i64)
  ^bb7:  // pred: ^bb3
    %55 = llvm.add %40, %11  : i64
    llvm.br ^bb2(%55 : i64)
  ^bb8:  // pred: ^bb2
    %56 = llvm.add %38, %11  : i64
    llvm.br ^bb1(%56 : i64)
  ^bb9:  // pred: ^bb1
    %57 = llvm.call @malloc(%30) : (i64) -> !llvm.ptr
    %58 = llvm.ptrtoint %57 : !llvm.ptr to i64
    %59 = llvm.add %58, %33  : i64
    %60 = llvm.urem %59, %1  : i64
    %61 = llvm.sub %59, %60  : i64
    %62 = llvm.inttoptr %61 : i64 to !llvm.ptr
    llvm.br ^bb10(%12 : i64)
  ^bb10(%63: i64):  // 2 preds: ^bb9, ^bb17
    %64 = llvm.icmp "slt" %63, %18 : i64
    llvm.cond_br %64, ^bb11(%12 : i64), ^bb18
  ^bb11(%65: i64):  // 2 preds: ^bb10, ^bb16
    %66 = llvm.icmp "slt" %65, %21 : i64
    llvm.cond_br %66, ^bb12(%12 : i64), ^bb17
  ^bb12(%67: i64):  // 2 preds: ^bb11, ^bb15
    %68 = llvm.icmp "slt" %67, %22 : i64
    llvm.cond_br %68, ^bb13(%12 : i64), ^bb16
  ^bb13(%69: i64):  // 2 preds: ^bb12, ^bb14
    %70 = llvm.icmp "slt" %69, %23 : i64
    llvm.cond_br %70, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %71 = llvm.mul %63, %25  : i64
    %72 = llvm.mul %65, %24  : i64
    %73 = llvm.add %71, %72  : i64
    %74 = llvm.mul %67, %23  : i64
    %75 = llvm.add %73, %74  : i64
    %76 = llvm.add %75, %69  : i64
    %77 = llvm.getelementptr %37[%76] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %78 = llvm.load %77 : !llvm.ptr -> f32
    %79 = llvm.getelementptr %62[%76] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %78, %79 : f32, !llvm.ptr
    %80 = llvm.add %69, %11  : i64
    llvm.br ^bb13(%80 : i64)
  ^bb15:  // pred: ^bb13
    %81 = llvm.add %67, %11  : i64
    llvm.br ^bb12(%81 : i64)
  ^bb16:  // pred: ^bb12
    %82 = llvm.add %65, %11  : i64
    llvm.br ^bb11(%82 : i64)
  ^bb17:  // pred: ^bb11
    %83 = llvm.add %63, %11  : i64
    llvm.br ^bb10(%83 : i64)
  ^bb18:  // pred: ^bb10
    llvm.call @free(%31) : (!llvm.ptr) -> ()
    %84 = llvm.mul %22, %23  : i64
    %85 = llvm.mul %21, %22  : i64
    %86 = llvm.mul %85, %23  : i64
    %87 = llvm.mul %23, %9  : i64
    %88 = llvm.add %87, %9  : i64
    llvm.br ^bb19(%12 : i64)
  ^bb19(%89: i64):  // 2 preds: ^bb18, ^bb26
    %90 = llvm.icmp "slt" %89, %18 : i64
    llvm.cond_br %90, ^bb20(%12 : i64), ^bb27
  ^bb20(%91: i64):  // 2 preds: ^bb19, ^bb25
    %92 = llvm.icmp "slt" %91, %21 : i64
    llvm.cond_br %92, ^bb21(%12 : i64), ^bb26
  ^bb21(%93: i64):  // 2 preds: ^bb20, ^bb24
    %94 = llvm.icmp "slt" %93, %19 : i64
    llvm.cond_br %94, ^bb22(%12 : i64), ^bb25
  ^bb22(%95: i64):  // 2 preds: ^bb21, ^bb23
    %96 = llvm.icmp "slt" %95, %20 : i64
    llvm.cond_br %96, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %97 = llvm.extractvalue %15[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %98 = llvm.extractvalue %15[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %99 = llvm.mul %89, %98  : i64
    %100 = llvm.extractvalue %15[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %101 = llvm.mul %91, %100  : i64
    %102 = llvm.add %99, %101  : i64
    %103 = llvm.extractvalue %15[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %104 = llvm.mul %93, %103  : i64
    %105 = llvm.add %102, %104  : i64
    %106 = llvm.add %105, %95  : i64
    %107 = llvm.getelementptr %97[%106] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %108 = llvm.load %107 : !llvm.ptr -> f32
    %109 = llvm.getelementptr %62[%88] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %110 = llvm.mul %89, %86  : i64
    %111 = llvm.mul %91, %84  : i64
    %112 = llvm.add %110, %111  : i64
    %113 = llvm.mul %93, %23  : i64
    %114 = llvm.add %112, %113  : i64
    %115 = llvm.add %114, %95  : i64
    %116 = llvm.getelementptr %109[%115] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %108, %116 : f32, !llvm.ptr
    %117 = llvm.add %95, %11  : i64
    llvm.br ^bb22(%117 : i64)
  ^bb24:  // pred: ^bb22
    %118 = llvm.add %93, %11  : i64
    llvm.br ^bb21(%118 : i64)
  ^bb25:  // pred: ^bb21
    %119 = llvm.add %91, %11  : i64
    llvm.br ^bb20(%119 : i64)
  ^bb26:  // pred: ^bb20
    %120 = llvm.add %89, %11  : i64
    llvm.br ^bb19(%120 : i64)
  ^bb27:  // pred: ^bb19
    %121 = llvm.sub %19, %6  : i64
    %122 = llvm.sub %14, %121  : i64
    %123 = llvm.sdiv %122, %7  : i64
    %124 = llvm.sub %14, %123  : i64
    %125 = llvm.sdiv %121, %7  : i64
    %126 = llvm.icmp "slt" %121, %13 : i64
    %127 = llvm.select %126, %124, %125 : i1, i64
    %128 = llvm.add %127, %6  : i64
    %129 = llvm.sub %20, %6  : i64
    %130 = llvm.sub %14, %129  : i64
    %131 = llvm.sdiv %130, %7  : i64
    %132 = llvm.sub %14, %131  : i64
    %133 = llvm.sdiv %129, %7  : i64
    %134 = llvm.icmp "slt" %129, %13 : i64
    %135 = llvm.select %134, %132, %133 : i1, i64
    %136 = llvm.add %135, %6  : i64
    %137 = llvm.mul %136, %128  : i64
    %138 = llvm.mul %137, %8  : i64
    %139 = llvm.mul %138, %18  : i64
    %140 = llvm.getelementptr %27[%139] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %141 = llvm.ptrtoint %140 : !llvm.ptr to i64
    %142 = llvm.add %141, %1  : i64
    %143 = llvm.call @malloc(%142) : (i64) -> !llvm.ptr
    %144 = llvm.ptrtoint %143 : !llvm.ptr to i64
    %145 = llvm.add %144, %33  : i64
    %146 = llvm.urem %145, %1  : i64
    %147 = llvm.sub %145, %146  : i64
    %148 = llvm.inttoptr %147 : i64 to !llvm.ptr
    llvm.br ^bb28(%12 : i64)
  ^bb28(%149: i64):  // 2 preds: ^bb27, ^bb35
    %150 = llvm.icmp "slt" %149, %18 : i64
    llvm.cond_br %150, ^bb29(%12 : i64), ^bb36
  ^bb29(%151: i64):  // 2 preds: ^bb28, ^bb34
    %152 = llvm.icmp "slt" %151, %8 : i64
    llvm.cond_br %152, ^bb30(%12 : i64), ^bb35
  ^bb30(%153: i64):  // 2 preds: ^bb29, ^bb33
    %154 = llvm.icmp "slt" %153, %128 : i64
    llvm.cond_br %154, ^bb31(%12 : i64), ^bb34
  ^bb31(%155: i64):  // 2 preds: ^bb30, ^bb32
    %156 = llvm.icmp "slt" %155, %136 : i64
    llvm.cond_br %156, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %157 = llvm.mul %149, %138  : i64
    %158 = llvm.mul %151, %137  : i64
    %159 = llvm.add %157, %158  : i64
    %160 = llvm.mul %153, %136  : i64
    %161 = llvm.add %159, %160  : i64
    %162 = llvm.add %161, %155  : i64
    %163 = llvm.getelementptr %148[%162] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %5, %163 : f32, !llvm.ptr
    %164 = llvm.add %155, %11  : i64
    llvm.br ^bb31(%164 : i64)
  ^bb33:  // pred: ^bb31
    %165 = llvm.add %153, %11  : i64
    llvm.br ^bb30(%165 : i64)
  ^bb34:  // pred: ^bb30
    %166 = llvm.add %151, %11  : i64
    llvm.br ^bb29(%166 : i64)
  ^bb35:  // pred: ^bb29
    %167 = llvm.add %149, %11  : i64
    llvm.br ^bb28(%167 : i64)
  ^bb36:  // pred: ^bb28
    %168 = llvm.call @malloc(%142) : (i64) -> !llvm.ptr
    %169 = llvm.ptrtoint %168 : !llvm.ptr to i64
    %170 = llvm.add %169, %33  : i64
    %171 = llvm.urem %170, %1  : i64
    %172 = llvm.sub %170, %171  : i64
    %173 = llvm.inttoptr %172 : i64 to !llvm.ptr
    %174 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %175 = llvm.insertvalue %168, %174[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %176 = llvm.insertvalue %173, %175[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %177 = llvm.insertvalue %12, %176[2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %178 = llvm.insertvalue %18, %177[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %179 = llvm.insertvalue %8, %178[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %180 = llvm.insertvalue %128, %179[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %181 = llvm.insertvalue %136, %180[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %182 = llvm.insertvalue %138, %181[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %183 = llvm.insertvalue %137, %182[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %184 = llvm.insertvalue %136, %183[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %185 = llvm.insertvalue %11, %184[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    llvm.br ^bb37(%12 : i64)
  ^bb37(%186: i64):  // 2 preds: ^bb36, ^bb44
    %187 = llvm.icmp "slt" %186, %18 : i64
    llvm.cond_br %187, ^bb38(%12 : i64), ^bb45
  ^bb38(%188: i64):  // 2 preds: ^bb37, ^bb43
    %189 = llvm.icmp "slt" %188, %8 : i64
    llvm.cond_br %189, ^bb39(%12 : i64), ^bb44
  ^bb39(%190: i64):  // 2 preds: ^bb38, ^bb42
    %191 = llvm.icmp "slt" %190, %128 : i64
    llvm.cond_br %191, ^bb40(%12 : i64), ^bb43
  ^bb40(%192: i64):  // 2 preds: ^bb39, ^bb41
    %193 = llvm.icmp "slt" %192, %136 : i64
    llvm.cond_br %193, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %194 = llvm.mul %186, %138  : i64
    %195 = llvm.mul %188, %137  : i64
    %196 = llvm.add %194, %195  : i64
    %197 = llvm.mul %190, %136  : i64
    %198 = llvm.add %196, %197  : i64
    %199 = llvm.add %198, %192  : i64
    %200 = llvm.getelementptr %148[%199] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %201 = llvm.load %200 : !llvm.ptr -> f32
    %202 = llvm.getelementptr %173[%199] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %201, %202 : f32, !llvm.ptr
    %203 = llvm.add %192, %11  : i64
    llvm.br ^bb40(%203 : i64)
  ^bb42:  // pred: ^bb40
    %204 = llvm.add %190, %11  : i64
    llvm.br ^bb39(%204 : i64)
  ^bb43:  // pred: ^bb39
    %205 = llvm.add %188, %11  : i64
    llvm.br ^bb38(%205 : i64)
  ^bb44:  // pred: ^bb38
    %206 = llvm.add %186, %11  : i64
    llvm.br ^bb37(%206 : i64)
  ^bb45:  // pred: ^bb37
    llvm.call @free(%143) : (!llvm.ptr) -> ()
    llvm.br ^bb46(%12 : i64)
  ^bb46(%207: i64):  // 2 preds: ^bb45, ^bb59
    %208 = llvm.icmp "slt" %207, %18 : i64
    llvm.cond_br %208, ^bb47(%12 : i64), ^bb60
  ^bb47(%209: i64):  // 2 preds: ^bb46, ^bb58
    %210 = llvm.icmp "slt" %209, %8 : i64
    llvm.cond_br %210, ^bb48(%12 : i64), ^bb59
  ^bb48(%211: i64):  // 2 preds: ^bb47, ^bb57
    %212 = llvm.icmp "slt" %211, %128 : i64
    llvm.cond_br %212, ^bb49(%12 : i64), ^bb58
  ^bb49(%213: i64):  // 2 preds: ^bb48, ^bb56
    %214 = llvm.icmp "slt" %213, %136 : i64
    llvm.cond_br %214, ^bb50(%12 : i64), ^bb57
  ^bb50(%215: i64):  // 2 preds: ^bb49, ^bb55
    %216 = llvm.icmp "slt" %215, %21 : i64
    llvm.cond_br %216, ^bb51(%12 : i64), ^bb56
  ^bb51(%217: i64):  // 2 preds: ^bb50, ^bb54
    %218 = llvm.icmp "slt" %217, %9 : i64
    llvm.cond_br %218, ^bb52(%12 : i64), ^bb55
  ^bb52(%219: i64):  // 2 preds: ^bb51, ^bb53
    %220 = llvm.icmp "slt" %219, %9 : i64
    llvm.cond_br %220, ^bb53, ^bb54
  ^bb53:  // pred: ^bb52
    %221 = llvm.mul %211, %10  : i64
    %222 = llvm.mul %217, %9  : i64
    %223 = llvm.add %221, %222  : i64
    %224 = llvm.mul %213, %10  : i64
    %225 = llvm.mul %219, %9  : i64
    %226 = llvm.add %224, %225  : i64
    %227 = llvm.mul %207, %25  : i64
    %228 = llvm.mul %215, %24  : i64
    %229 = llvm.add %227, %228  : i64
    %230 = llvm.mul %223, %23  : i64
    %231 = llvm.add %229, %230  : i64
    %232 = llvm.add %231, %226  : i64
    %233 = llvm.getelementptr %62[%232] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %234 = llvm.load %233 : !llvm.ptr -> f32
    %235 = llvm.mul %209, %2  : i64
    %236 = llvm.mul %215, %3  : i64
    %237 = llvm.add %235, %236  : i64
    %238 = llvm.add %237, %222  : i64
    %239 = llvm.add %238, %219  : i64
    %240 = llvm.getelementptr %17[%239] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %241 = llvm.load %240 : !llvm.ptr -> f32
    %242 = llvm.mul %207, %138  : i64
    %243 = llvm.mul %209, %137  : i64
    %244 = llvm.add %242, %243  : i64
    %245 = llvm.mul %211, %136  : i64
    %246 = llvm.add %244, %245  : i64
    %247 = llvm.add %246, %213  : i64
    %248 = llvm.getelementptr %173[%247] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %249 = llvm.load %248 : !llvm.ptr -> f32
    %250 = llvm.fmul %234, %241  : f32
    %251 = llvm.fadd %249, %250  : f32
    llvm.store %251, %248 : f32, !llvm.ptr
    %252 = llvm.add %219, %11  : i64
    llvm.br ^bb52(%252 : i64)
  ^bb54:  // pred: ^bb52
    %253 = llvm.add %217, %11  : i64
    llvm.br ^bb51(%253 : i64)
  ^bb55:  // pred: ^bb51
    %254 = llvm.add %215, %11  : i64
    llvm.br ^bb50(%254 : i64)
  ^bb56:  // pred: ^bb50
    %255 = llvm.add %213, %11  : i64
    llvm.br ^bb49(%255 : i64)
  ^bb57:  // pred: ^bb49
    %256 = llvm.add %211, %11  : i64
    llvm.br ^bb48(%256 : i64)
  ^bb58:  // pred: ^bb48
    %257 = llvm.add %209, %11  : i64
    llvm.br ^bb47(%257 : i64)
  ^bb59:  // pred: ^bb47
    %258 = llvm.add %207, %11  : i64
    llvm.br ^bb46(%258 : i64)
  ^bb60:  // pred: ^bb46
    llvm.call @free(%57) : (!llvm.ptr) -> ()
    %259 = llvm.alloca %11 x !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %185, %259 : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>, !llvm.ptr
    llvm.call @refbackend_consume_func_return_mrf32(%0, %259) : (i64, !llvm.ptr) -> ()
    llvm.return
  }
  llvm.func @_mlir_ciface_forward(%arg0: !llvm.ptr) attributes {llvm.emit_c_interface} {
    %0 = llvm.load %arg0 : !llvm.ptr -> !llvm.struct<(i64, ptr)>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(i64, ptr)>
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(i64, ptr)>
    llvm.call @forward(%1, %2) : (i64, !llvm.ptr) -> ()
    llvm.return
  }
}