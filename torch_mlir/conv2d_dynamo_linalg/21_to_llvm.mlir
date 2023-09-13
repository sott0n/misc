module attributes {torch.debug_module_name = "Conv2dWithPaddingDilationStrideModule"} {
  llvm.func @free(!llvm.ptr)
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func private @refbackend_consume_func_return_mrf32(%arg0: i64, %arg1: !llvm.ptr) attributes {llvm.emit_c_interface, sym_visibility = "private"} {
    %0 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(i64, ptr)>
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(i64, ptr)>
    %3 = llvm.mlir.constant(1 : index) : i64
    %4 = llvm.alloca %3 x !llvm.struct<(i64, ptr)> : (i64) -> !llvm.ptr
    llvm.store %2, %4 : !llvm.struct<(i64, ptr)>, !llvm.ptr
    llvm.call @_mlir_ciface_refbackend_consume_func_return_mrf32(%4) : (!llvm.ptr) -> ()
    llvm.return
  }
  llvm.func @_mlir_ciface_refbackend_consume_func_return_mrf32(!llvm.ptr) attributes {llvm.emit_c_interface, sym_visibility = "private"}
  llvm.mlir.global private @global_seed(0 : i64) {addr_space = 0 : i32} : i64
  llvm.mlir.global private constant @__constant_10x2x3x3xf32(dense<"0x2E4CE7BABE79013E42A646BE27A031BEC9EBB9BDC771813DE50699BB015F3F3E7D5AABBC74777F3D3EE291BD7AC53DBD029566BE0BD91FBED4FCC6BD880D0F3CE4D5BE3D2BD2103E94A023BEB234D2BDDF54AF3DF56B483EDFAF46BDA39C343EBF9C1BBD4750CC3C818B5A3ED6E65FBED9F117BE3B6A74BDDE29BCBDD388503EAE711CBE0936DEBD8D9F28BE2B0C62BE1EE40CBEC9784F3ED265D73DD5F5E93D62184B3C4F7BF7BD4A56233D115B61BEE0652EBE11DBF8BD5A48183E94830D3E4915D6BD4C570BBC225D1A3E6EF16F3E0F95BF3D6F6C023DF7D3213EE11C0EBE40E7333D86203BBE5C4827BE435DF9BDC06ADA3D5221C23D3DF80EBE25D5913DD97F043EAEB5F3BC8A72133C39B25F3DCABB153E69C0673E3DFF39BED1E6B0BD8AB6BD3D5BFA473E5008523E00F7543ECA22403DB7E151BE36A0B13CDDFE16BE85EF60BE1D72563E0F85373E31C370BEE6B3343D2FA322BD93DF1EBDB4F7DCBDDDA1B93D36F50EBED8F5B03D511DF43D3AC82C3E657EB43DB2E16EBEA4911CBE4907F13D31114A3DC7473CBEB2FA0ABEF40E633ED0A1223E2F7AD2BD55FC72BD11EB65BEB7D28ABBF4C135BE892C3ABEDAC754BC9CF4103D0FB0C5BD93370F3E60E012BE86005B3E4367253EB6884BBE314870BD8A402E3CB5DB0C3D08FA643DAA6EBD3DB851673C3888EBBDBE6AE43D028667BE1F0E0FBE75AD71BD7523EBBDF6DEA8BDBBD245BEEB5C4DBD475E4E3DB93C1DBEAD2E46BCF2C62C3E857EC6BC27A7D63B0493A6BCE862433D3577193E63A0643ECB46193E4D26653ED8A48BBC6ED158BE81D8E4BDBA57243E0345C8BAEFEEEFBDD2F438BE5DE061BE86B54BBE74D343BDE05C043E187D023E41C668BE348E163EA4DD3CBE6B1A4CBDA2BAC3BD33F539BD718E3DBD669558BE0B6650BE2D1217BD60C3473B6A49DBBDEED6B53DBF3C59BE2D4F82BC8341543E9BE5C4BDB2F2593E77D1AE3D32D159BE10B5183EE3CFDEBC1D7DD7BDED00413E890A43BE"> : tensor<10x2x3x3xf32>) {addr_space = 0 : i32} : !llvm.array<10 x array<2 x array<3 x array<3 x f32>>>>
  llvm.func @forward(%arg0: i64, %arg1: !llvm.ptr) attributes {llvm.emit_c_interface} {
    %0 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(i64, ptr)>
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(i64, ptr)>
    %3 = llvm.mlir.constant(-1 : i64) : i64
    %4 = llvm.mlir.constant(0 : i64) : i64
    %5 = llvm.mlir.constant(0 : index) : i64
    %6 = llvm.mlir.constant(1 : index) : i64
    %7 = llvm.mlir.constant(2 : index) : i64
    %8 = llvm.mlir.constant(3 : index) : i64
    %9 = llvm.mlir.constant(10 : index) : i64
    %10 = llvm.mlir.constant(2 : i64) : i64
    %11 = llvm.mlir.constant(1 : i64) : i64
    %12 = llvm.mlir.constant(0.000000e+00 : f32) : f32
    %13 = llvm.mlir.constant(6 : index) : i64
    %14 = llvm.extractvalue %2[1] : !llvm.struct<(i64, ptr)>
    %15 = llvm.load %14 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %16 = llvm.mlir.constant(10 : index) : i64
    %17 = llvm.mlir.constant(2 : index) : i64
    %18 = llvm.mlir.constant(3 : index) : i64
    %19 = llvm.mlir.constant(3 : index) : i64
    %20 = llvm.mlir.constant(1 : index) : i64
    %21 = llvm.mlir.constant(9 : index) : i64
    %22 = llvm.mlir.constant(18 : index) : i64
    %23 = llvm.mlir.constant(180 : index) : i64
    %24 = llvm.mlir.null : !llvm.ptr
    %25 = llvm.getelementptr %24[180] : (!llvm.ptr) -> !llvm.ptr, f32
    %26 = llvm.ptrtoint %25 : !llvm.ptr to i64
    %27 = llvm.mlir.addressof @__constant_10x2x3x3xf32 : !llvm.ptr
    %28 = llvm.getelementptr %27[0, 0, 0, 0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<10 x array<2 x array<3 x array<3 x f32>>>>
    %29 = llvm.mlir.constant(3735928559 : index) : i64
    %30 = llvm.inttoptr %29 : i64 to !llvm.ptr
    %31 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %32 = llvm.insertvalue %30, %31[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %33 = llvm.insertvalue %28, %32[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %34 = llvm.mlir.constant(0 : index) : i64
    %35 = llvm.insertvalue %34, %33[2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %36 = llvm.insertvalue %16, %35[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %37 = llvm.insertvalue %17, %36[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %38 = llvm.insertvalue %18, %37[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %39 = llvm.insertvalue %19, %38[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %40 = llvm.insertvalue %22, %39[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %41 = llvm.insertvalue %21, %40[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %42 = llvm.insertvalue %19, %41[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %43 = llvm.insertvalue %20, %42[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %44 = llvm.extractvalue %15[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %45 = llvm.extractvalue %15[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %46 = llvm.extractvalue %15[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %47 = llvm.extractvalue %15[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %48 = llvm.add %45, %13  : i64
    %49 = llvm.add %46, %13  : i64
    %50 = llvm.mlir.constant(1 : index) : i64
    %51 = llvm.mul %49, %48  : i64
    %52 = llvm.mul %51, %47  : i64
    %53 = llvm.mul %52, %44  : i64
    %54 = llvm.mlir.null : !llvm.ptr
    %55 = llvm.getelementptr %54[%53] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %56 = llvm.ptrtoint %55 : !llvm.ptr to i64
    %57 = llvm.mlir.constant(64 : index) : i64
    %58 = llvm.add %56, %57  : i64
    %59 = llvm.call @malloc(%58) : (i64) -> !llvm.ptr
    %60 = llvm.ptrtoint %59 : !llvm.ptr to i64
    %61 = llvm.mlir.constant(1 : index) : i64
    %62 = llvm.sub %57, %61  : i64
    %63 = llvm.add %60, %62  : i64
    %64 = llvm.urem %63, %57  : i64
    %65 = llvm.sub %63, %64  : i64
    %66 = llvm.inttoptr %65 : i64 to !llvm.ptr
    %67 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %68 = llvm.insertvalue %59, %67[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %69 = llvm.insertvalue %66, %68[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %70 = llvm.mlir.constant(0 : index) : i64
    %71 = llvm.insertvalue %70, %69[2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %72 = llvm.insertvalue %44, %71[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %73 = llvm.insertvalue %47, %72[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %74 = llvm.insertvalue %48, %73[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %75 = llvm.insertvalue %49, %74[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %76 = llvm.insertvalue %52, %75[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %77 = llvm.insertvalue %51, %76[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %78 = llvm.insertvalue %49, %77[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %79 = llvm.insertvalue %50, %78[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    llvm.br ^bb1(%5 : i64)
  ^bb1(%80: i64):  // 2 preds: ^bb0, ^bb8
    %81 = llvm.icmp "slt" %80, %44 : i64
    llvm.cond_br %81, ^bb2(%5 : i64), ^bb9
  ^bb2(%82: i64):  // 2 preds: ^bb1, ^bb7
    %83 = llvm.icmp "slt" %82, %47 : i64
    llvm.cond_br %83, ^bb3(%5 : i64), ^bb8
  ^bb3(%84: i64):  // 2 preds: ^bb2, ^bb6
    %85 = llvm.icmp "slt" %84, %48 : i64
    llvm.cond_br %85, ^bb4(%5 : i64), ^bb7
  ^bb4(%86: i64):  // 2 preds: ^bb3, ^bb5
    %87 = llvm.icmp "slt" %86, %49 : i64
    llvm.cond_br %87, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %88 = llvm.mul %80, %52  : i64
    %89 = llvm.mul %82, %51  : i64
    %90 = llvm.add %88, %89  : i64
    %91 = llvm.mul %84, %49  : i64
    %92 = llvm.add %90, %91  : i64
    %93 = llvm.add %92, %86  : i64
    %94 = llvm.getelementptr %66[%93] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %12, %94 : f32, !llvm.ptr
    %95 = llvm.add %86, %6  : i64
    llvm.br ^bb4(%95 : i64)
  ^bb6:  // pred: ^bb4
    %96 = llvm.add %84, %6  : i64
    llvm.br ^bb3(%96 : i64)
  ^bb7:  // pred: ^bb3
    %97 = llvm.add %82, %6  : i64
    llvm.br ^bb2(%97 : i64)
  ^bb8:  // pred: ^bb2
    %98 = llvm.add %80, %6  : i64
    llvm.br ^bb1(%98 : i64)
  ^bb9:  // pred: ^bb1
    %99 = llvm.mlir.constant(1 : index) : i64
    %100 = llvm.mul %49, %48  : i64
    %101 = llvm.mul %100, %47  : i64
    %102 = llvm.mul %101, %44  : i64
    %103 = llvm.mlir.null : !llvm.ptr
    %104 = llvm.getelementptr %103[%102] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %105 = llvm.ptrtoint %104 : !llvm.ptr to i64
    %106 = llvm.mlir.constant(64 : index) : i64
    %107 = llvm.add %105, %106  : i64
    %108 = llvm.call @malloc(%107) : (i64) -> !llvm.ptr
    %109 = llvm.ptrtoint %108 : !llvm.ptr to i64
    %110 = llvm.mlir.constant(1 : index) : i64
    %111 = llvm.sub %106, %110  : i64
    %112 = llvm.add %109, %111  : i64
    %113 = llvm.urem %112, %106  : i64
    %114 = llvm.sub %112, %113  : i64
    %115 = llvm.inttoptr %114 : i64 to !llvm.ptr
    %116 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %117 = llvm.insertvalue %108, %116[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %118 = llvm.insertvalue %115, %117[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %119 = llvm.mlir.constant(0 : index) : i64
    %120 = llvm.insertvalue %119, %118[2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %121 = llvm.insertvalue %44, %120[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %122 = llvm.insertvalue %47, %121[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %123 = llvm.insertvalue %48, %122[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %124 = llvm.insertvalue %49, %123[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %125 = llvm.insertvalue %101, %124[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %126 = llvm.insertvalue %100, %125[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %127 = llvm.insertvalue %49, %126[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %128 = llvm.insertvalue %99, %127[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    llvm.br ^bb10(%5 : i64)
  ^bb10(%129: i64):  // 2 preds: ^bb9, ^bb17
    %130 = llvm.icmp "slt" %129, %44 : i64
    llvm.cond_br %130, ^bb11(%5 : i64), ^bb18
  ^bb11(%131: i64):  // 2 preds: ^bb10, ^bb16
    %132 = llvm.icmp "slt" %131, %47 : i64
    llvm.cond_br %132, ^bb12(%5 : i64), ^bb17
  ^bb12(%133: i64):  // 2 preds: ^bb11, ^bb15
    %134 = llvm.icmp "slt" %133, %48 : i64
    llvm.cond_br %134, ^bb13(%5 : i64), ^bb16
  ^bb13(%135: i64):  // 2 preds: ^bb12, ^bb14
    %136 = llvm.icmp "slt" %135, %49 : i64
    llvm.cond_br %136, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %137 = llvm.mul %129, %52  : i64
    %138 = llvm.mul %131, %51  : i64
    %139 = llvm.add %137, %138  : i64
    %140 = llvm.mul %133, %49  : i64
    %141 = llvm.add %139, %140  : i64
    %142 = llvm.add %141, %135  : i64
    %143 = llvm.getelementptr %66[%142] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %144 = llvm.load %143 : !llvm.ptr -> f32
    %145 = llvm.mul %129, %101  : i64
    %146 = llvm.mul %131, %100  : i64
    %147 = llvm.add %145, %146  : i64
    %148 = llvm.mul %133, %49  : i64
    %149 = llvm.add %147, %148  : i64
    %150 = llvm.add %149, %135  : i64
    %151 = llvm.getelementptr %115[%150] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %144, %151 : f32, !llvm.ptr
    %152 = llvm.add %135, %6  : i64
    llvm.br ^bb13(%152 : i64)
  ^bb15:  // pred: ^bb13
    %153 = llvm.add %133, %6  : i64
    llvm.br ^bb12(%153 : i64)
  ^bb16:  // pred: ^bb12
    %154 = llvm.add %131, %6  : i64
    llvm.br ^bb11(%154 : i64)
  ^bb17:  // pred: ^bb11
    %155 = llvm.add %129, %6  : i64
    llvm.br ^bb10(%155 : i64)
  ^bb18:  // pred: ^bb10
    llvm.call @free(%59) : (!llvm.ptr) -> ()
    %156 = llvm.mul %48, %49  : i64
    %157 = llvm.mul %47, %48  : i64
    %158 = llvm.mul %157, %49  : i64
    %159 = llvm.mlir.constant(3 : index) : i64
    %160 = llvm.mul %49, %159  : i64
    %161 = llvm.mlir.constant(3 : index) : i64
    %162 = llvm.add %160, %161  : i64
    %163 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %164 = llvm.insertvalue %108, %163[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %165 = llvm.insertvalue %115, %164[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %166 = llvm.insertvalue %162, %165[2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %167 = llvm.insertvalue %44, %166[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %168 = llvm.insertvalue %158, %167[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %169 = llvm.insertvalue %47, %168[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %170 = llvm.insertvalue %156, %169[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %171 = llvm.insertvalue %45, %170[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %172 = llvm.insertvalue %49, %171[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %173 = llvm.insertvalue %46, %172[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %174 = llvm.mlir.constant(1 : index) : i64
    %175 = llvm.insertvalue %174, %173[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %176 = llvm.extractvalue %15[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %177 = llvm.extractvalue %15[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %178 = llvm.extractvalue %15[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %179 = llvm.extractvalue %15[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    llvm.br ^bb19(%5 : i64)
  ^bb19(%180: i64):  // 2 preds: ^bb18, ^bb26
    %181 = llvm.icmp "slt" %180, %176 : i64
    llvm.cond_br %181, ^bb20(%5 : i64), ^bb27
  ^bb20(%182: i64):  // 2 preds: ^bb19, ^bb25
    %183 = llvm.icmp "slt" %182, %177 : i64
    llvm.cond_br %183, ^bb21(%5 : i64), ^bb26
  ^bb21(%184: i64):  // 2 preds: ^bb20, ^bb24
    %185 = llvm.icmp "slt" %184, %178 : i64
    llvm.cond_br %185, ^bb22(%5 : i64), ^bb25
  ^bb22(%186: i64):  // 2 preds: ^bb21, ^bb23
    %187 = llvm.icmp "slt" %186, %179 : i64
    llvm.cond_br %187, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %188 = llvm.extractvalue %15[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %189 = llvm.extractvalue %15[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %190 = llvm.mul %180, %189  : i64
    %191 = llvm.extractvalue %15[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %192 = llvm.mul %182, %191  : i64
    %193 = llvm.add %190, %192  : i64
    %194 = llvm.extractvalue %15[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %195 = llvm.mul %184, %194  : i64
    %196 = llvm.add %193, %195  : i64
    %197 = llvm.add %196, %186  : i64
    %198 = llvm.getelementptr %188[%197] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %199 = llvm.load %198 : !llvm.ptr -> f32
    %200 = llvm.getelementptr %115[%162] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %201 = llvm.mul %180, %158  : i64
    %202 = llvm.mul %182, %156  : i64
    %203 = llvm.add %201, %202  : i64
    %204 = llvm.mul %184, %49  : i64
    %205 = llvm.add %203, %204  : i64
    %206 = llvm.add %205, %186  : i64
    %207 = llvm.getelementptr %200[%206] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %199, %207 : f32, !llvm.ptr
    %208 = llvm.add %186, %6  : i64
    llvm.br ^bb22(%208 : i64)
  ^bb24:  // pred: ^bb22
    %209 = llvm.add %184, %6  : i64
    llvm.br ^bb21(%209 : i64)
  ^bb25:  // pred: ^bb21
    %210 = llvm.add %182, %6  : i64
    llvm.br ^bb20(%210 : i64)
  ^bb26:  // pred: ^bb20
    %211 = llvm.add %180, %6  : i64
    llvm.br ^bb19(%211 : i64)
  ^bb27:  // pred: ^bb19
    %212 = llvm.sub %45, %11  : i64
    %213 = llvm.sub %3, %212  : i64
    %214 = llvm.sdiv %213, %10  : i64
    %215 = llvm.sub %3, %214  : i64
    %216 = llvm.sdiv %212, %10  : i64
    %217 = llvm.icmp "slt" %212, %4 : i64
    %218 = llvm.select %217, %215, %216 : i1, i64
    %219 = llvm.add %218, %11  : i64
    %220 = llvm.sub %46, %11  : i64
    %221 = llvm.sub %3, %220  : i64
    %222 = llvm.sdiv %221, %10  : i64
    %223 = llvm.sub %3, %222  : i64
    %224 = llvm.sdiv %220, %10  : i64
    %225 = llvm.icmp "slt" %220, %4 : i64
    %226 = llvm.select %225, %223, %224 : i1, i64
    %227 = llvm.add %226, %11  : i64
    %228 = llvm.mlir.constant(10 : index) : i64
    %229 = llvm.mlir.constant(1 : index) : i64
    %230 = llvm.mul %227, %219  : i64
    %231 = llvm.mul %230, %228  : i64
    %232 = llvm.mul %231, %44  : i64
    %233 = llvm.mlir.null : !llvm.ptr
    %234 = llvm.getelementptr %233[%232] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %235 = llvm.ptrtoint %234 : !llvm.ptr to i64
    %236 = llvm.mlir.constant(64 : index) : i64
    %237 = llvm.add %235, %236  : i64
    %238 = llvm.call @malloc(%237) : (i64) -> !llvm.ptr
    %239 = llvm.ptrtoint %238 : !llvm.ptr to i64
    %240 = llvm.mlir.constant(1 : index) : i64
    %241 = llvm.sub %236, %240  : i64
    %242 = llvm.add %239, %241  : i64
    %243 = llvm.urem %242, %236  : i64
    %244 = llvm.sub %242, %243  : i64
    %245 = llvm.inttoptr %244 : i64 to !llvm.ptr
    %246 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %247 = llvm.insertvalue %238, %246[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %248 = llvm.insertvalue %245, %247[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %249 = llvm.mlir.constant(0 : index) : i64
    %250 = llvm.insertvalue %249, %248[2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %251 = llvm.insertvalue %44, %250[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %252 = llvm.insertvalue %228, %251[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %253 = llvm.insertvalue %219, %252[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %254 = llvm.insertvalue %227, %253[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %255 = llvm.insertvalue %231, %254[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %256 = llvm.insertvalue %230, %255[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %257 = llvm.insertvalue %227, %256[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %258 = llvm.insertvalue %229, %257[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    llvm.br ^bb28(%5 : i64)
  ^bb28(%259: i64):  // 2 preds: ^bb27, ^bb35
    %260 = llvm.icmp "slt" %259, %44 : i64
    llvm.cond_br %260, ^bb29(%5 : i64), ^bb36
  ^bb29(%261: i64):  // 2 preds: ^bb28, ^bb34
    %262 = llvm.icmp "slt" %261, %9 : i64
    llvm.cond_br %262, ^bb30(%5 : i64), ^bb35
  ^bb30(%263: i64):  // 2 preds: ^bb29, ^bb33
    %264 = llvm.icmp "slt" %263, %219 : i64
    llvm.cond_br %264, ^bb31(%5 : i64), ^bb34
  ^bb31(%265: i64):  // 2 preds: ^bb30, ^bb32
    %266 = llvm.icmp "slt" %265, %227 : i64
    llvm.cond_br %266, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %267 = llvm.mul %259, %231  : i64
    %268 = llvm.mul %261, %230  : i64
    %269 = llvm.add %267, %268  : i64
    %270 = llvm.mul %263, %227  : i64
    %271 = llvm.add %269, %270  : i64
    %272 = llvm.add %271, %265  : i64
    %273 = llvm.getelementptr %245[%272] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %12, %273 : f32, !llvm.ptr
    %274 = llvm.add %265, %6  : i64
    llvm.br ^bb31(%274 : i64)
  ^bb33:  // pred: ^bb31
    %275 = llvm.add %263, %6  : i64
    llvm.br ^bb30(%275 : i64)
  ^bb34:  // pred: ^bb30
    %276 = llvm.add %261, %6  : i64
    llvm.br ^bb29(%276 : i64)
  ^bb35:  // pred: ^bb29
    %277 = llvm.add %259, %6  : i64
    llvm.br ^bb28(%277 : i64)
  ^bb36:  // pred: ^bb28
    %278 = llvm.mlir.constant(10 : index) : i64
    %279 = llvm.mlir.constant(1 : index) : i64
    %280 = llvm.mul %227, %219  : i64
    %281 = llvm.mul %280, %278  : i64
    %282 = llvm.mul %281, %44  : i64
    %283 = llvm.mlir.null : !llvm.ptr
    %284 = llvm.getelementptr %283[%282] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %285 = llvm.ptrtoint %284 : !llvm.ptr to i64
    %286 = llvm.mlir.constant(64 : index) : i64
    %287 = llvm.add %285, %286  : i64
    %288 = llvm.call @malloc(%287) : (i64) -> !llvm.ptr
    %289 = llvm.ptrtoint %288 : !llvm.ptr to i64
    %290 = llvm.mlir.constant(1 : index) : i64
    %291 = llvm.sub %286, %290  : i64
    %292 = llvm.add %289, %291  : i64
    %293 = llvm.urem %292, %286  : i64
    %294 = llvm.sub %292, %293  : i64
    %295 = llvm.inttoptr %294 : i64 to !llvm.ptr
    %296 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %297 = llvm.insertvalue %288, %296[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %298 = llvm.insertvalue %295, %297[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %299 = llvm.mlir.constant(0 : index) : i64
    %300 = llvm.insertvalue %299, %298[2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %301 = llvm.insertvalue %44, %300[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %302 = llvm.insertvalue %278, %301[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %303 = llvm.insertvalue %219, %302[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %304 = llvm.insertvalue %227, %303[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %305 = llvm.insertvalue %281, %304[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %306 = llvm.insertvalue %280, %305[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %307 = llvm.insertvalue %227, %306[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %308 = llvm.insertvalue %279, %307[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    llvm.br ^bb37(%5 : i64)
  ^bb37(%309: i64):  // 2 preds: ^bb36, ^bb44
    %310 = llvm.icmp "slt" %309, %44 : i64
    llvm.cond_br %310, ^bb38(%5 : i64), ^bb45
  ^bb38(%311: i64):  // 2 preds: ^bb37, ^bb43
    %312 = llvm.icmp "slt" %311, %9 : i64
    llvm.cond_br %312, ^bb39(%5 : i64), ^bb44
  ^bb39(%313: i64):  // 2 preds: ^bb38, ^bb42
    %314 = llvm.icmp "slt" %313, %219 : i64
    llvm.cond_br %314, ^bb40(%5 : i64), ^bb43
  ^bb40(%315: i64):  // 2 preds: ^bb39, ^bb41
    %316 = llvm.icmp "slt" %315, %227 : i64
    llvm.cond_br %316, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %317 = llvm.mul %309, %231  : i64
    %318 = llvm.mul %311, %230  : i64
    %319 = llvm.add %317, %318  : i64
    %320 = llvm.mul %313, %227  : i64
    %321 = llvm.add %319, %320  : i64
    %322 = llvm.add %321, %315  : i64
    %323 = llvm.getelementptr %245[%322] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %324 = llvm.load %323 : !llvm.ptr -> f32
    %325 = llvm.mul %309, %281  : i64
    %326 = llvm.mul %311, %280  : i64
    %327 = llvm.add %325, %326  : i64
    %328 = llvm.mul %313, %227  : i64
    %329 = llvm.add %327, %328  : i64
    %330 = llvm.add %329, %315  : i64
    %331 = llvm.getelementptr %295[%330] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %324, %331 : f32, !llvm.ptr
    %332 = llvm.add %315, %6  : i64
    llvm.br ^bb40(%332 : i64)
  ^bb42:  // pred: ^bb40
    %333 = llvm.add %313, %6  : i64
    llvm.br ^bb39(%333 : i64)
  ^bb43:  // pred: ^bb39
    %334 = llvm.add %311, %6  : i64
    llvm.br ^bb38(%334 : i64)
  ^bb44:  // pred: ^bb38
    %335 = llvm.add %309, %6  : i64
    llvm.br ^bb37(%335 : i64)
  ^bb45:  // pred: ^bb37
    llvm.call @free(%238) : (!llvm.ptr) -> ()
    llvm.br ^bb46(%5 : i64)
  ^bb46(%336: i64):  // 2 preds: ^bb45, ^bb59
    %337 = llvm.icmp "slt" %336, %44 : i64
    llvm.cond_br %337, ^bb47(%5 : i64), ^bb60
  ^bb47(%338: i64):  // 2 preds: ^bb46, ^bb58
    %339 = llvm.icmp "slt" %338, %9 : i64
    llvm.cond_br %339, ^bb48(%5 : i64), ^bb59
  ^bb48(%340: i64):  // 2 preds: ^bb47, ^bb57
    %341 = llvm.icmp "slt" %340, %219 : i64
    llvm.cond_br %341, ^bb49(%5 : i64), ^bb58
  ^bb49(%342: i64):  // 2 preds: ^bb48, ^bb56
    %343 = llvm.icmp "slt" %342, %227 : i64
    llvm.cond_br %343, ^bb50(%5 : i64), ^bb57
  ^bb50(%344: i64):  // 2 preds: ^bb49, ^bb55
    %345 = llvm.icmp "slt" %344, %47 : i64
    llvm.cond_br %345, ^bb51(%5 : i64), ^bb56
  ^bb51(%346: i64):  // 2 preds: ^bb50, ^bb54
    %347 = llvm.icmp "slt" %346, %8 : i64
    llvm.cond_br %347, ^bb52(%5 : i64), ^bb55
  ^bb52(%348: i64):  // 2 preds: ^bb51, ^bb53
    %349 = llvm.icmp "slt" %348, %8 : i64
    llvm.cond_br %349, ^bb53, ^bb54
  ^bb53:  // pred: ^bb52
    %350 = llvm.mul %340, %7  : i64
    %351 = llvm.mul %346, %8  : i64
    %352 = llvm.add %350, %351  : i64
    %353 = llvm.mul %342, %7  : i64
    %354 = llvm.mul %348, %8  : i64
    %355 = llvm.add %353, %354  : i64
    %356 = llvm.mul %336, %101  : i64
    %357 = llvm.mul %344, %100  : i64
    %358 = llvm.add %356, %357  : i64
    %359 = llvm.mul %352, %49  : i64
    %360 = llvm.add %358, %359  : i64
    %361 = llvm.add %360, %355  : i64
    %362 = llvm.getelementptr %115[%361] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %363 = llvm.load %362 : !llvm.ptr -> f32
    %364 = llvm.mlir.constant(18 : index) : i64
    %365 = llvm.mul %338, %364  : i64
    %366 = llvm.mlir.constant(9 : index) : i64
    %367 = llvm.mul %344, %366  : i64
    %368 = llvm.add %365, %367  : i64
    %369 = llvm.mlir.constant(3 : index) : i64
    %370 = llvm.mul %346, %369  : i64
    %371 = llvm.add %368, %370  : i64
    %372 = llvm.add %371, %348  : i64
    %373 = llvm.getelementptr %28[%372] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %374 = llvm.load %373 : !llvm.ptr -> f32
    %375 = llvm.mul %336, %281  : i64
    %376 = llvm.mul %338, %280  : i64
    %377 = llvm.add %375, %376  : i64
    %378 = llvm.mul %340, %227  : i64
    %379 = llvm.add %377, %378  : i64
    %380 = llvm.add %379, %342  : i64
    %381 = llvm.getelementptr %295[%380] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %382 = llvm.load %381 : !llvm.ptr -> f32
    %383 = llvm.fmul %363, %374  : f32
    %384 = llvm.fadd %382, %383  : f32
    %385 = llvm.mul %336, %281  : i64
    %386 = llvm.mul %338, %280  : i64
    %387 = llvm.add %385, %386  : i64
    %388 = llvm.mul %340, %227  : i64
    %389 = llvm.add %387, %388  : i64
    %390 = llvm.add %389, %342  : i64
    %391 = llvm.getelementptr %295[%390] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %384, %391 : f32, !llvm.ptr
    %392 = llvm.add %348, %6  : i64
    llvm.br ^bb52(%392 : i64)
  ^bb54:  // pred: ^bb52
    %393 = llvm.add %346, %6  : i64
    llvm.br ^bb51(%393 : i64)
  ^bb55:  // pred: ^bb51
    %394 = llvm.add %344, %6  : i64
    llvm.br ^bb50(%394 : i64)
  ^bb56:  // pred: ^bb50
    %395 = llvm.add %342, %6  : i64
    llvm.br ^bb49(%395 : i64)
  ^bb57:  // pred: ^bb49
    %396 = llvm.add %340, %6  : i64
    llvm.br ^bb48(%396 : i64)
  ^bb58:  // pred: ^bb48
    %397 = llvm.add %338, %6  : i64
    llvm.br ^bb47(%397 : i64)
  ^bb59:  // pred: ^bb47
    %398 = llvm.add %336, %6  : i64
    llvm.br ^bb46(%398 : i64)
  ^bb60:  // pred: ^bb46
    llvm.call @free(%108) : (!llvm.ptr) -> ()
    %399 = llvm.mlir.constant(1 : index) : i64
    %400 = llvm.alloca %399 x !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %308, %400 : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>, !llvm.ptr
    %401 = llvm.mlir.constant(4 : index) : i64
    %402 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %403 = llvm.insertvalue %401, %402[0] : !llvm.struct<(i64, ptr)>
    %404 = llvm.insertvalue %400, %403[1] : !llvm.struct<(i64, ptr)>
    llvm.call @refbackend_consume_func_return_mrf32(%401, %400) : (i64, !llvm.ptr) -> ()
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