func.func private @func2() {
  %c209092661_i64 = arith.constant 209092661 : i64
  %c0 = arith.constant 0 : index
  %c1 = arith.constant 1 : index
  %c3 = arith.constant 3 : index
  %c16 = arith.constant 16 : index
  %c19 = arith.constant 19 : index
  %c29 = arith.constant 29 : index
  %12 = tensor.empty() : tensor<20x5x5xi1>
  %17 = index.shrs %c1, %c0
  memref.alloca_scope  {
    %131 = index.or %c3, %c29
    %c0_60 = arith.constant 0 : index
    %148 = index.casts %c209092661_i64 : i64 to index
    %151 = tensor.empty() : tensor<20x5x5xi1>
    %152 = tensor.empty() : tensor<1x1xi32>
    %c1_65 = arith.constant 1 : index
    %c0_69 = arith.constant 0 : index
    %c1_70 = arith.constant 1 : index
    %153 = scf.for %arg0 = %c0_69 to %c0_60 step %17 iter_args(%arg1 = %151) -> (tensor<20x5x5xi1>) {
      %158 = scf.for %arg2 = %c0_69 to %c19 step %148 iter_args(%arg3 = %12) -> (tensor<20x5x5xi1>) {
        %extracted = tensor.extract %152[%arg0, %c1_65] : tensor<1x1xi32>
        %159 = arith.index_cast %extracted : i32 to index
        %extracted_slice = tensor.extract_slice %151[%arg0, %arg2, %c0_69] [%131, %159, %17] [%c0_60, %131, %c0_60] : tensor<20x5x5xi1> to tensor<?x?x?xi1>
        %inserted_slice = tensor.insert_slice %extracted_slice into %arg3[%148, %c16, %131] [%c1_70, %17, %148] [%c0_60, %c1_70, %c1_70] : tensor<?x?x?xi1> into tensor<20x5x5xi1>
        scf.yield %inserted_slice : tensor<20x5x5xi1>
      }
      scf.yield %151 : tensor<20x5x5xi1>
    }
  }
  return
}
