module attributes {llvm.data_layout = ""} {
  llvm.func @func(%arg0: i64, %arg1: !llvm.ptr<i8>, %arg2: !llvm.ptr<i8>, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: !llvm.ptr<i8>, %arg7: !llvm.ptr<i8>, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<f64>, %arg12: !llvm.ptr<f64>, %arg13: i64, %arg14: i64, %arg15: i64) -> !llvm.struct<(struct<(ptr<i8>, ptr<i8>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i8>, ptr<i8>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<1 x i64>, array<1 x i64>)>)> {
    %0 = builtin.unrealized_conversion_cast %arg0 : i64 to index
    %1 = llvm.mlir.undef : !llvm.struct<(ptr<i8>, ptr<i8>, i64, array<1 x i64>, array<1 x i64>)>
    %2 = llvm.insertvalue %arg1, %1[0] : !llvm.struct<(ptr<i8>, ptr<i8>, i64, array<1 x i64>, array<1 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[1] : !llvm.struct<(ptr<i8>, ptr<i8>, i64, array<1 x i64>, array<1 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[2] : !llvm.struct<(ptr<i8>, ptr<i8>, i64, array<1 x i64>, array<1 x i64>)> 
    %5 = llvm.insertvalue %arg4, %4[3, 0] : !llvm.struct<(ptr<i8>, ptr<i8>, i64, array<1 x i64>, array<1 x i64>)> 
    %6 = llvm.insertvalue %arg5, %5[4, 0] : !llvm.struct<(ptr<i8>, ptr<i8>, i64, array<1 x i64>, array<1 x i64>)> 
    %7 = builtin.unrealized_conversion_cast %6 : !llvm.struct<(ptr<i8>, ptr<i8>, i64, array<1 x i64>, array<1 x i64>)> to memref<10xi8>
    %8 = llvm.mlir.undef : !llvm.struct<(ptr<i8>, ptr<i8>, i64, array<1 x i64>, array<1 x i64>)>
    %9 = llvm.insertvalue %arg6, %8[0] : !llvm.struct<(ptr<i8>, ptr<i8>, i64, array<1 x i64>, array<1 x i64>)> 
    %10 = llvm.insertvalue %arg7, %9[1] : !llvm.struct<(ptr<i8>, ptr<i8>, i64, array<1 x i64>, array<1 x i64>)> 
    %11 = llvm.insertvalue %arg8, %10[2] : !llvm.struct<(ptr<i8>, ptr<i8>, i64, array<1 x i64>, array<1 x i64>)> 
    %12 = llvm.insertvalue %arg9, %11[3, 0] : !llvm.struct<(ptr<i8>, ptr<i8>, i64, array<1 x i64>, array<1 x i64>)> 
    %13 = llvm.insertvalue %arg10, %12[4, 0] : !llvm.struct<(ptr<i8>, ptr<i8>, i64, array<1 x i64>, array<1 x i64>)> 
    %14 = builtin.unrealized_conversion_cast %13 : !llvm.struct<(ptr<i8>, ptr<i8>, i64, array<1 x i64>, array<1 x i64>)> to memref<20xi8>
    %15 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<1 x i64>, array<1 x i64>)>
    %16 = llvm.insertvalue %arg11, %15[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<1 x i64>, array<1 x i64>)> 
    %17 = llvm.insertvalue %arg12, %16[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<1 x i64>, array<1 x i64>)> 
    %18 = llvm.insertvalue %arg13, %17[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<1 x i64>, array<1 x i64>)> 
    %19 = llvm.insertvalue %arg14, %18[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<1 x i64>, array<1 x i64>)> 
    %20 = llvm.insertvalue %arg15, %19[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<1 x i64>, array<1 x i64>)> 
    %21 = builtin.unrealized_conversion_cast %20 : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<1 x i64>, array<1 x i64>)> to memref<10xf64>
    sparse_tensor.sort insertion_sort_stable %0, %7, %14 jointly %21 : memref<10xi8>, memref<20xi8> jointly memref<10xf64>
    %22 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i8>, ptr<i8>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i8>, ptr<i8>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<1 x i64>, array<1 x i64>)>)>
    %23 = llvm.insertvalue %6, %22[0] : !llvm.struct<(struct<(ptr<i8>, ptr<i8>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i8>, ptr<i8>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<1 x i64>, array<1 x i64>)>)> 
    %24 = llvm.insertvalue %13, %23[1] : !llvm.struct<(struct<(ptr<i8>, ptr<i8>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i8>, ptr<i8>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<1 x i64>, array<1 x i64>)>)> 
    %25 = llvm.insertvalue %20, %24[2] : !llvm.struct<(struct<(ptr<i8>, ptr<i8>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i8>, ptr<i8>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<1 x i64>, array<1 x i64>)>)> 
    llvm.return %25 : !llvm.struct<(struct<(ptr<i8>, ptr<i8>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i8>, ptr<i8>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<1 x i64>, array<1 x i64>)>)>
  }
}
