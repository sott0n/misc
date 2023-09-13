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
    %57 = llvm.mul %23, %22  : i64
    %58 = llvm.mul %57, %21  : i64
    %59 = llvm.mul %58, %18  : i64
    %60 = llvm.mlir.null : !llvm.ptr
    %61 = llvm.getelementptr %60[%59] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %62 = llvm.ptrtoint %61 : !llvm.ptr to i64
    %63 = llvm.add %62, %1  : i64
    %64 = llvm.call @malloc(%63) : (i64) -> !llvm.ptr
    %65 = llvm.ptrtoint %64 : !llvm.ptr to i64
    %66 = llvm.sub %1, %11  : i64
    %67 = llvm.add %65, %66  : i64
    %68 = llvm.urem %67, %1  : i64
    %69 = llvm.sub %67, %68  : i64
    %70 = llvm.inttoptr %69 : i64 to !llvm.ptr
    llvm.br ^bb10(%12 : i64)
  ^bb10(%71: i64):  // 2 preds: ^bb9, ^bb17
    %72 = llvm.icmp "slt" %71, %18 : i64
    llvm.cond_br %72, ^bb11(%12 : i64), ^bb18
  ^bb11(%73: i64):  // 2 preds: ^bb10, ^bb16
    %74 = llvm.icmp "slt" %73, %21 : i64
    llvm.cond_br %74, ^bb12(%12 : i64), ^bb17
  ^bb12(%75: i64):  // 2 preds: ^bb11, ^bb15
    %76 = llvm.icmp "slt" %75, %22 : i64
    llvm.cond_br %76, ^bb13(%12 : i64), ^bb16
  ^bb13(%77: i64):  // 2 preds: ^bb12, ^bb14
    %78 = llvm.icmp "slt" %77, %23 : i64
    llvm.cond_br %78, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %79 = llvm.mul %71, %25  : i64
    %80 = llvm.mul %73, %24  : i64
    %81 = llvm.add %79, %80  : i64
    %82 = llvm.mul %75, %23  : i64
    %83 = llvm.add %81, %82  : i64
    %84 = llvm.add %83, %77  : i64
    %85 = llvm.getelementptr %37[%84] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %86 = llvm.load %85 : !llvm.ptr -> f32
    %87 = llvm.mul %71, %58  : i64
    %88 = llvm.mul %73, %57  : i64
    %89 = llvm.add %87, %88  : i64
    %90 = llvm.mul %75, %23  : i64
    %91 = llvm.add %89, %90  : i64
    %92 = llvm.add %91, %77  : i64
    %93 = llvm.getelementptr %70[%92] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %86, %93 : f32, !llvm.ptr
    %94 = llvm.add %77, %11  : i64
    llvm.br ^bb13(%94 : i64)
  ^bb15:  // pred: ^bb13
    %95 = llvm.add %75, %11  : i64
    llvm.br ^bb12(%95 : i64)
  ^bb16:  // pred: ^bb12
    %96 = llvm.add %73, %11  : i64
    llvm.br ^bb11(%96 : i64)
  ^bb17:  // pred: ^bb11
    %97 = llvm.add %71, %11  : i64
    llvm.br ^bb10(%97 : i64)
  ^bb18:  // pred: ^bb10
    llvm.call @free(%31) : (!llvm.ptr) -> ()
    %98 = llvm.mul %22, %23  : i64
    %99 = llvm.mul %21, %22  : i64
    %100 = llvm.mul %99, %23  : i64
    %101 = llvm.mul %23, %9  : i64
    %102 = llvm.add %101, %9  : i64
    %103 = llvm.extractvalue %15[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %104 = llvm.extractvalue %15[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %105 = llvm.extractvalue %15[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %106 = llvm.extractvalue %15[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    llvm.br ^bb19(%12 : i64)
  ^bb19(%107: i64):  // 2 preds: ^bb18, ^bb26
    %108 = llvm.icmp "slt" %107, %103 : i64
    llvm.cond_br %108, ^bb20(%12 : i64), ^bb27
  ^bb20(%109: i64):  // 2 preds: ^bb19, ^bb25
    %110 = llvm.icmp "slt" %109, %104 : i64
    llvm.cond_br %110, ^bb21(%12 : i64), ^bb26
  ^bb21(%111: i64):  // 2 preds: ^bb20, ^bb24
    %112 = llvm.icmp "slt" %111, %105 : i64
    llvm.cond_br %112, ^bb22(%12 : i64), ^bb25
  ^bb22(%113: i64):  // 2 preds: ^bb21, ^bb23
    %114 = llvm.icmp "slt" %113, %106 : i64
    llvm.cond_br %114, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %115 = llvm.extractvalue %15[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %116 = llvm.extractvalue %15[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %117 = llvm.mul %107, %116  : i64
    %118 = llvm.extractvalue %15[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %119 = llvm.mul %109, %118  : i64
    %120 = llvm.add %117, %119  : i64
    %121 = llvm.extractvalue %15[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %122 = llvm.mul %111, %121  : i64
    %123 = llvm.add %120, %122  : i64
    %124 = llvm.add %123, %113  : i64
    %125 = llvm.getelementptr %115[%124] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %126 = llvm.load %125 : !llvm.ptr -> f32
    %127 = llvm.getelementptr %70[%102] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %128 = llvm.mul %107, %100  : i64
    %129 = llvm.mul %109, %98  : i64
    %130 = llvm.add %128, %129  : i64
    %131 = llvm.mul %111, %23  : i64
    %132 = llvm.add %130, %131  : i64
    %133 = llvm.add %132, %113  : i64
    %134 = llvm.getelementptr %127[%133] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %126, %134 : f32, !llvm.ptr
    %135 = llvm.add %113, %11  : i64
    llvm.br ^bb22(%135 : i64)
  ^bb24:  // pred: ^bb22
    %136 = llvm.add %111, %11  : i64
    llvm.br ^bb21(%136 : i64)
  ^bb25:  // pred: ^bb21
    %137 = llvm.add %109, %11  : i64
    llvm.br ^bb20(%137 : i64)
  ^bb26:  // pred: ^bb20
    %138 = llvm.add %107, %11  : i64
    llvm.br ^bb19(%138 : i64)
  ^bb27:  // pred: ^bb19
    %139 = llvm.sub %19, %6  : i64
    %140 = llvm.sub %14, %139  : i64
    %141 = llvm.sdiv %140, %7  : i64
    %142 = llvm.sub %14, %141  : i64
    %143 = llvm.sdiv %139, %7  : i64
    %144 = llvm.icmp "slt" %139, %13 : i64
    %145 = llvm.select %144, %142, %143 : i1, i64
    %146 = llvm.add %145, %6  : i64
    %147 = llvm.sub %20, %6  : i64
    %148 = llvm.sub %14, %147  : i64
    %149 = llvm.sdiv %148, %7  : i64
    %150 = llvm.sub %14, %149  : i64
    %151 = llvm.sdiv %147, %7  : i64
    %152 = llvm.icmp "slt" %147, %13 : i64
    %153 = llvm.select %152, %150, %151 : i1, i64
    %154 = llvm.add %153, %6  : i64
    %155 = llvm.mul %154, %146  : i64
    %156 = llvm.mul %155, %8  : i64
    %157 = llvm.mul %156, %18  : i64
    %158 = llvm.mlir.null : !llvm.ptr
    %159 = llvm.getelementptr %158[%157] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %160 = llvm.ptrtoint %159 : !llvm.ptr to i64
    %161 = llvm.add %160, %1  : i64
    %162 = llvm.call @malloc(%161) : (i64) -> !llvm.ptr
    %163 = llvm.ptrtoint %162 : !llvm.ptr to i64
    %164 = llvm.sub %1, %11  : i64
    %165 = llvm.add %163, %164  : i64
    %166 = llvm.urem %165, %1  : i64
    %167 = llvm.sub %165, %166  : i64
    %168 = llvm.inttoptr %167 : i64 to !llvm.ptr
    llvm.br ^bb28(%12 : i64)
  ^bb28(%169: i64):  // 2 preds: ^bb27, ^bb35
    %170 = llvm.icmp "slt" %169, %18 : i64
    llvm.cond_br %170, ^bb29(%12 : i64), ^bb36
  ^bb29(%171: i64):  // 2 preds: ^bb28, ^bb34
    %172 = llvm.icmp "slt" %171, %8 : i64
    llvm.cond_br %172, ^bb30(%12 : i64), ^bb35
  ^bb30(%173: i64):  // 2 preds: ^bb29, ^bb33
    %174 = llvm.icmp "slt" %173, %146 : i64
    llvm.cond_br %174, ^bb31(%12 : i64), ^bb34
  ^bb31(%175: i64):  // 2 preds: ^bb30, ^bb32
    %176 = llvm.icmp "slt" %175, %154 : i64
    llvm.cond_br %176, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %177 = llvm.mul %169, %156  : i64
    %178 = llvm.mul %171, %155  : i64
    %179 = llvm.add %177, %178  : i64
    %180 = llvm.mul %173, %154  : i64
    %181 = llvm.add %179, %180  : i64
    %182 = llvm.add %181, %175  : i64
    %183 = llvm.getelementptr %168[%182] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %5, %183 : f32, !llvm.ptr
    %184 = llvm.add %175, %11  : i64
    llvm.br ^bb31(%184 : i64)
  ^bb33:  // pred: ^bb31
    %185 = llvm.add %173, %11  : i64
    llvm.br ^bb30(%185 : i64)
  ^bb34:  // pred: ^bb30
    %186 = llvm.add %171, %11  : i64
    llvm.br ^bb29(%186 : i64)
  ^bb35:  // pred: ^bb29
    %187 = llvm.add %169, %11  : i64
    llvm.br ^bb28(%187 : i64)
  ^bb36:  // pred: ^bb28
    %188 = llvm.mul %154, %146  : i64
    %189 = llvm.mul %188, %8  : i64
    %190 = llvm.mul %189, %18  : i64
    %191 = llvm.mlir.null : !llvm.ptr
    %192 = llvm.getelementptr %191[%190] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %193 = llvm.ptrtoint %192 : !llvm.ptr to i64
    %194 = llvm.add %193, %1  : i64
    %195 = llvm.call @malloc(%194) : (i64) -> !llvm.ptr
    %196 = llvm.ptrtoint %195 : !llvm.ptr to i64
    %197 = llvm.sub %1, %11  : i64
    %198 = llvm.add %196, %197  : i64
    %199 = llvm.urem %198, %1  : i64
    %200 = llvm.sub %198, %199  : i64
    %201 = llvm.inttoptr %200 : i64 to !llvm.ptr
    %202 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %203 = llvm.insertvalue %195, %202[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %204 = llvm.insertvalue %201, %203[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %205 = llvm.insertvalue %12, %204[2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %206 = llvm.insertvalue %18, %205[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %207 = llvm.insertvalue %8, %206[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %208 = llvm.insertvalue %146, %207[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %209 = llvm.insertvalue %154, %208[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %210 = llvm.insertvalue %189, %209[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %211 = llvm.insertvalue %188, %210[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %212 = llvm.insertvalue %154, %211[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %213 = llvm.insertvalue %11, %212[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    llvm.br ^bb37(%12 : i64)
  ^bb37(%214: i64):  // 2 preds: ^bb36, ^bb44
    %215 = llvm.icmp "slt" %214, %18 : i64
    llvm.cond_br %215, ^bb38(%12 : i64), ^bb45
  ^bb38(%216: i64):  // 2 preds: ^bb37, ^bb43
    %217 = llvm.icmp "slt" %216, %8 : i64
    llvm.cond_br %217, ^bb39(%12 : i64), ^bb44
  ^bb39(%218: i64):  // 2 preds: ^bb38, ^bb42
    %219 = llvm.icmp "slt" %218, %146 : i64
    llvm.cond_br %219, ^bb40(%12 : i64), ^bb43
  ^bb40(%220: i64):  // 2 preds: ^bb39, ^bb41
    %221 = llvm.icmp "slt" %220, %154 : i64
    llvm.cond_br %221, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %222 = llvm.mul %214, %156  : i64
    %223 = llvm.mul %216, %155  : i64
    %224 = llvm.add %222, %223  : i64
    %225 = llvm.mul %218, %154  : i64
    %226 = llvm.add %224, %225  : i64
    %227 = llvm.add %226, %220  : i64
    %228 = llvm.getelementptr %168[%227] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %229 = llvm.load %228 : !llvm.ptr -> f32
    %230 = llvm.mul %214, %189  : i64
    %231 = llvm.mul %216, %188  : i64
    %232 = llvm.add %230, %231  : i64
    %233 = llvm.mul %218, %154  : i64
    %234 = llvm.add %232, %233  : i64
    %235 = llvm.add %234, %220  : i64
    %236 = llvm.getelementptr %201[%235] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %229, %236 : f32, !llvm.ptr
    %237 = llvm.add %220, %11  : i64
    llvm.br ^bb40(%237 : i64)
  ^bb42:  // pred: ^bb40
    %238 = llvm.add %218, %11  : i64
    llvm.br ^bb39(%238 : i64)
  ^bb43:  // pred: ^bb39
    %239 = llvm.add %216, %11  : i64
    llvm.br ^bb38(%239 : i64)
  ^bb44:  // pred: ^bb38
    %240 = llvm.add %214, %11  : i64
    llvm.br ^bb37(%240 : i64)
  ^bb45:  // pred: ^bb37
    llvm.call @free(%162) : (!llvm.ptr) -> ()
    llvm.br ^bb46(%12 : i64)
  ^bb46(%241: i64):  // 2 preds: ^bb45, ^bb59
    %242 = llvm.icmp "slt" %241, %18 : i64
    llvm.cond_br %242, ^bb47(%12 : i64), ^bb60
  ^bb47(%243: i64):  // 2 preds: ^bb46, ^bb58
    %244 = llvm.icmp "slt" %243, %8 : i64
    llvm.cond_br %244, ^bb48(%12 : i64), ^bb59
  ^bb48(%245: i64):  // 2 preds: ^bb47, ^bb57
    %246 = llvm.icmp "slt" %245, %146 : i64
    llvm.cond_br %246, ^bb49(%12 : i64), ^bb58
  ^bb49(%247: i64):  // 2 preds: ^bb48, ^bb56
    %248 = llvm.icmp "slt" %247, %154 : i64
    llvm.cond_br %248, ^bb50(%12 : i64), ^bb57
  ^bb50(%249: i64):  // 2 preds: ^bb49, ^bb55
    %250 = llvm.icmp "slt" %249, %21 : i64
    llvm.cond_br %250, ^bb51(%12 : i64), ^bb56
  ^bb51(%251: i64):  // 2 preds: ^bb50, ^bb54
    %252 = llvm.icmp "slt" %251, %9 : i64
    llvm.cond_br %252, ^bb52(%12 : i64), ^bb55
  ^bb52(%253: i64):  // 2 preds: ^bb51, ^bb53
    %254 = llvm.icmp "slt" %253, %9 : i64
    llvm.cond_br %254, ^bb53, ^bb54
  ^bb53:  // pred: ^bb52
    %255 = llvm.mul %245, %10  : i64
    %256 = llvm.mul %251, %9  : i64
    %257 = llvm.add %255, %256  : i64
    %258 = llvm.mul %247, %10  : i64
    %259 = llvm.mul %253, %9  : i64
    %260 = llvm.add %258, %259  : i64
    %261 = llvm.mul %241, %58  : i64
    %262 = llvm.mul %249, %57  : i64
    %263 = llvm.add %261, %262  : i64
    %264 = llvm.mul %257, %23  : i64
    %265 = llvm.add %263, %264  : i64
    %266 = llvm.add %265, %260  : i64
    %267 = llvm.getelementptr %70[%266] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %268 = llvm.load %267 : !llvm.ptr -> f32
    %269 = llvm.mul %243, %2  : i64
    %270 = llvm.mul %249, %3  : i64
    %271 = llvm.add %269, %270  : i64
    %272 = llvm.mul %251, %9  : i64
    %273 = llvm.add %271, %272  : i64
    %274 = llvm.add %273, %253  : i64
    %275 = llvm.getelementptr %17[%274] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %276 = llvm.load %275 : !llvm.ptr -> f32
    %277 = llvm.mul %241, %189  : i64
    %278 = llvm.mul %243, %188  : i64
    %279 = llvm.add %277, %278  : i64
    %280 = llvm.mul %245, %154  : i64
    %281 = llvm.add %279, %280  : i64
    %282 = llvm.add %281, %247  : i64
    %283 = llvm.getelementptr %201[%282] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %284 = llvm.load %283 : !llvm.ptr -> f32
    %285 = llvm.fmul %268, %276  : f32
    %286 = llvm.fadd %284, %285  : f32
    %287 = llvm.mul %241, %189  : i64
    %288 = llvm.mul %243, %188  : i64
    %289 = llvm.add %287, %288  : i64
    %290 = llvm.mul %245, %154  : i64
    %291 = llvm.add %289, %290  : i64
    %292 = llvm.add %291, %247  : i64
    %293 = llvm.getelementptr %201[%292] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %286, %293 : f32, !llvm.ptr
    %294 = llvm.add %253, %11  : i64
    llvm.br ^bb52(%294 : i64)
  ^bb54:  // pred: ^bb52
    %295 = llvm.add %251, %11  : i64
    llvm.br ^bb51(%295 : i64)
  ^bb55:  // pred: ^bb51
    %296 = llvm.add %249, %11  : i64
    llvm.br ^bb50(%296 : i64)
  ^bb56:  // pred: ^bb50
    %297 = llvm.add %247, %11  : i64
    llvm.br ^bb49(%297 : i64)
  ^bb57:  // pred: ^bb49
    %298 = llvm.add %245, %11  : i64
    llvm.br ^bb48(%298 : i64)
  ^bb58:  // pred: ^bb48
    %299 = llvm.add %243, %11  : i64
    llvm.br ^bb47(%299 : i64)
  ^bb59:  // pred: ^bb47
    %300 = llvm.add %241, %11  : i64
    llvm.br ^bb46(%300 : i64)
  ^bb60:  // pred: ^bb46
    llvm.call @free(%64) : (!llvm.ptr) -> ()
    %301 = llvm.alloca %11 x !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %213, %301 : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>, !llvm.ptr
    llvm.call @refbackend_consume_func_return_mrf32(%0, %301) : (i64, !llvm.ptr) -> ()
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