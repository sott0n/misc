#map = affine_map<(d0, d1, d2, d3) -> (0, d1, d2, d3)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d1, 0, 0)>
#map2 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map3 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>
#map4 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>
#map5 = affine_map<(d0, d1, d2, d3) -> (d0, d1, 0, 0)>
#map6 = affine_map<(d0, d1, d2, d3) -> (0, d1, 0, 0)>
#map7 = affine_map<(d0, d1) -> (d0, d1)>
#map8 = affine_map<(d0, d1) -> (d1, d0)>
#map9 = affine_map<(d0, d1) -> (d1)>
#map10 = affine_map<(d0, d1) -> (0, d1)>
module attributes {torch.debug_module_name = "GraphModule"} {
  ml_program.global private mutable @global_seed(dense<0> : tensor<i64>) : tensor<i64>
  func.func @forward(%arg0: tensor<64x3x7x7xf32>, %arg1: tensor<64xf32>, %arg2: tensor<64xf32>, %arg3: tensor<64x64x3x3xf32>, %arg4: tensor<64xf32>, %arg5: tensor<64xf32>, %arg6: tensor<64x64x3x3xf32>, %arg7: tensor<64xf32>, %arg8: tensor<64xf32>, %arg9: tensor<64x64x3x3xf32>, %arg10: tensor<64xf32>, %arg11: tensor<64xf32>, %arg12: tensor<64x64x3x3xf32>, %arg13: tensor<64xf32>, %arg14: tensor<64xf32>, %arg15: tensor<128x64x3x3xf32>, %arg16: tensor<128xf32>, %arg17: tensor<128xf32>, %arg18: tensor<128x128x3x3xf32>, %arg19: tensor<128xf32>, %arg20: tensor<128xf32>, %arg21: tensor<128x64x1x1xf32>, %arg22: tensor<128xf32>, %arg23: tensor<128xf32>, %arg24: tensor<128x128x3x3xf32>, %arg25: tensor<128xf32>, %arg26: tensor<128xf32>, %arg27: tensor<128x128x3x3xf32>, %arg28: tensor<128xf32>, %arg29: tensor<128xf32>, %arg30: tensor<256x128x3x3xf32>, %arg31: tensor<256xf32>, %arg32: tensor<256xf32>, %arg33: tensor<256x256x3x3xf32>, %arg34: tensor<256xf32>, %arg35: tensor<256xf32>, %arg36: tensor<256x128x1x1xf32>, %arg37: tensor<256xf32>, %arg38: tensor<256xf32>, %arg39: tensor<256x256x3x3xf32>, %arg40: tensor<256xf32>, %arg41: tensor<256xf32>, %arg42: tensor<256x256x3x3xf32>, %arg43: tensor<256xf32>, %arg44: tensor<256xf32>, %arg45: tensor<512x256x3x3xf32>, %arg46: tensor<512xf32>, %arg47: tensor<512xf32>, %arg48: tensor<512x512x3x3xf32>, %arg49: tensor<512xf32>, %arg50: tensor<512xf32>, %arg51: tensor<512x256x1x1xf32>, %arg52: tensor<512xf32>, %arg53: tensor<512xf32>, %arg54: tensor<512x512x3x3xf32>, %arg55: tensor<512xf32>, %arg56: tensor<512xf32>, %arg57: tensor<512x512x3x3xf32>, %arg58: tensor<512xf32>, %arg59: tensor<512xf32>, %arg60: tensor<1000x512xf32>, %arg61: tensor<1000xf32>, %arg62: tensor<64xf32>, %arg63: tensor<64xf32>, %arg64: tensor<i64>, %arg65: tensor<64xf32>, %arg66: tensor<64xf32>, %arg67: tensor<i64>, %arg68: tensor<64xf32>, %arg69: tensor<64xf32>, %arg70: tensor<i64>, %arg71: tensor<64xf32>, %arg72: tensor<64xf32>, %arg73: tensor<i64>, %arg74: tensor<64xf32>, %arg75: tensor<64xf32>, %arg76: tensor<i64>, %arg77: tensor<128xf32>, %arg78: tensor<128xf32>, %arg79: tensor<i64>, %arg80: tensor<128xf32>, %arg81: tensor<128xf32>, %arg82: tensor<i64>, %arg83: tensor<128xf32>, %arg84: tensor<128xf32>, %arg85: tensor<i64>, %arg86: tensor<128xf32>, %arg87: tensor<128xf32>, %arg88: tensor<i64>, %arg89: tensor<128xf32>, %arg90: tensor<128xf32>, %arg91: tensor<i64>, %arg92: tensor<256xf32>, %arg93: tensor<256xf32>, %arg94: tensor<i64>, %arg95: tensor<256xf32>, %arg96: tensor<256xf32>, %arg97: tensor<i64>, %arg98: tensor<256xf32>, %arg99: tensor<256xf32>, %arg100: tensor<i64>, %arg101: tensor<256xf32>, %arg102: tensor<256xf32>, %arg103: tensor<i64>, %arg104: tensor<256xf32>, %arg105: tensor<256xf32>, %arg106: tensor<i64>, %arg107: tensor<512xf32>, %arg108: tensor<512xf32>, %arg109: tensor<i64>, %arg110: tensor<512xf32>, %arg111: tensor<512xf32>, %arg112: tensor<i64>, %arg113: tensor<512xf32>, %arg114: tensor<512xf32>, %arg115: tensor<i64>, %arg116: tensor<512xf32>, %arg117: tensor<512xf32>, %arg118: tensor<i64>, %arg119: tensor<512xf32>, %arg120: tensor<512xf32>, %arg121: tensor<i64>, %arg122: tensor<1x3x224x224xf32>) -> (tensor<1x1000xf32>, tensor<64x3x7x7xf32>, tensor<64xf32>, tensor<64x64x3x3xf32>, tensor<64xf32>, tensor<64x64x3x3xf32>, tensor<64xf32>, tensor<64x64x3x3xf32>, tensor<64xf32>, tensor<64x64x3x3xf32>, tensor<64xf32>, tensor<128x64x3x3xf32>, tensor<128xf32>, tensor<128x128x3x3xf32>, tensor<128xf32>, tensor<128x64x1x1xf32>, tensor<128xf32>, tensor<128x128x3x3xf32>, tensor<128xf32>, tensor<128x128x3x3xf32>, tensor<128xf32>, tensor<256x128x3x3xf32>, tensor<256xf32>, tensor<256x256x3x3xf32>, tensor<256xf32>, tensor<256x128x1x1xf32>, tensor<256xf32>, tensor<256x256x3x3xf32>, tensor<256xf32>, tensor<256x256x3x3xf32>, tensor<256xf32>, tensor<512x256x3x3xf32>, tensor<512xf32>, tensor<512x512x3x3xf32>, tensor<512xf32>, tensor<512x256x1x1xf32>, tensor<512xf32>, tensor<512x512x3x3xf32>, tensor<512xf32>, tensor<512x512x3x3xf32>, tensor<512xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<1x3x224x224xf32>, tensor<1x64x112x112xf32>, tensor<1x64x112x112xf32>, tensor<1x64x56x56xf32>, tensor<1x64x56x56xi64>, tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>, tensor<1x512xf32>, tensor<512x1000xf32>) {
    %c-1_i64 = arith.constant -1 : i64
    %c2 = arith.constant 2 : index
    %cst = arith.constant 0.000000e+00 : f32
    %cst_0 = arith.constant 1.000000e+00 : f32
    %cst_1 = arith.constant 0xFF800000 : f32
    %cst_2 = arith.constant 1.000000e-05 : f64
    %c112 = arith.constant 112 : index
    %c1 = arith.constant 1 : index
    %cst_3 = arith.constant 4.900000e+01 : f32
    %0 = tensor.empty() : tensor<1x3x230x230xf32>
    %1 = linalg.fill ins(%cst : f32) outs(%0 : tensor<1x3x230x230xf32>) -> tensor<1x3x230x230xf32>
    %inserted_slice = tensor.insert_slice %arg122 into %1[0, 0, 3, 3] [1, 3, 224, 224] [1, 1, 1, 1] : tensor<1x3x224x224xf32> into tensor<1x3x230x230xf32>
    %2 = tensor.empty() : tensor<1x64x112x112xf32>
    %3 = linalg.fill ins(%cst : f32) outs(%2 : tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xf32>
    %4 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%inserted_slice, %arg0 : tensor<1x3x230x230xf32>, tensor<64x3x7x7xf32>) outs(%3 : tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xf32>
    %expanded = tensor.expand_shape %arg63 [[0, 1, 2]] : tensor<64xf32> into tensor<64x1x1xf32>
    %expanded_4 = tensor.expand_shape %arg62 [[0, 1, 2]] : tensor<64xf32> into tensor<64x1x1xf32>
    %expanded_5 = tensor.expand_shape %arg1 [[0, 1, 2]] : tensor<64xf32> into tensor<64x1x1xf32>
    %expanded_6 = tensor.expand_shape %arg2 [[0, 1, 2]] : tensor<64xf32> into tensor<64x1x1xf32>
    %5 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%4, %expanded_4, %expanded, %expanded_5, %expanded_6 : tensor<1x64x112x112xf32>, tensor<64x1x1xf32>, tensor<64x1x1xf32>, tensor<64x1x1xf32>, tensor<64x1x1xf32>) outs(%2 : tensor<1x64x112x112xf32>) {
    ^bb0(%in: f32, %in_100: f32, %in_101: f32, %in_102: f32, %in_103: f32, %out: f32):
      %100 = arith.truncf %cst_2 : f64 to f32
      %101 = arith.addf %in_101, %100 : f32
      %102 = math.sqrt %101 : f32
      %103 = arith.cmpf one, %102, %cst : f32
      cf.assert %103, "unimplemented: tensor with zero element"
      %104 = arith.divf %cst_0, %102 : f32
      %105 = arith.subf %in, %in_100 : f32
      %106 = arith.mulf %105, %104 : f32
      %107 = arith.mulf %106, %in_102 : f32
      %108 = arith.addf %107, %in_103 : f32
      %109 = arith.cmpf ugt, %108, %cst : f32
      %110 = arith.select %109, %108, %cst : f32
      linalg.yield %110 : f32
    } -> tensor<1x64x112x112xf32>
    %6 = tensor.empty() : tensor<1x64x114x114xf32>
    %7 = linalg.fill ins(%cst_1 : f32) outs(%6 : tensor<1x64x114x114xf32>) -> tensor<1x64x114x114xf32>
    %inserted_slice_7 = tensor.insert_slice %5 into %7[0, 0, 1, 1] [1, 64, 112, 112] [1, 1, 1, 1] : tensor<1x64x112x112xf32> into tensor<1x64x114x114xf32>
    %8 = tensor.empty() : tensor<1x64x56x56xf32>
    %9 = linalg.fill ins(%cst_1 : f32) outs(%8 : tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %10 = tensor.empty() : tensor<3x3xf32>
    %11 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%inserted_slice_7, %10 : tensor<1x64x114x114xf32>, tensor<3x3xf32>) outs(%9 : tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %12 = tensor.empty() : tensor<1x64x56x56xi64>
    %13 = linalg.fill ins(%c-1_i64 : i64) outs(%12 : tensor<1x64x56x56xi64>) -> tensor<1x64x56x56xi64>
    %14 = tensor.empty() : tensor<3x3xi64>
    %15 = linalg.generic {indexing_maps = [#map3, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%11, %14 : tensor<1x64x56x56xf32>, tensor<3x3xi64>) outs(%13 : tensor<1x64x56x56xi64>) {
    ^bb0(%in: f32, %in_100: i64, %out: i64):
      %100 = linalg.index 0 : index
      %101 = linalg.index 1 : index
      %102 = linalg.index 2 : index
      %103 = linalg.index 3 : index
      %104 = linalg.index 4 : index
      %105 = linalg.index 5 : index
      %106 = arith.muli %102, %c2 : index
      %107 = arith.addi %106, %104 : index
      %108 = arith.muli %103, %c2 : index
      %109 = arith.addi %108, %105 : index
      %extracted = tensor.extract %inserted_slice_7[%100, %101, %107, %109] : tensor<1x64x114x114xf32>
      %110 = arith.cmpf oeq, %extracted, %in : f32
      %111 = arith.subi %107, %c1 : index
      %112 = arith.subi %109, %c1 : index
      %113 = arith.muli %111, %c112 : index
      %114 = arith.addi %113, %112 : index
      %115 = arith.index_cast %114 : index to i64
      %116 = arith.select %110, %115, %out : i64
      %117 = arith.cmpi eq, %out, %c-1_i64 : i64
      %118 = arith.select %117, %116, %out : i64
      linalg.yield %118 : i64
    } -> tensor<1x64x56x56xi64>
    %16 = tensor.empty() : tensor<1x64x58x58xf32>
    %17 = linalg.fill ins(%cst : f32) outs(%16 : tensor<1x64x58x58xf32>) -> tensor<1x64x58x58xf32>
    %inserted_slice_8 = tensor.insert_slice %11 into %17[0, 0, 1, 1] [1, 64, 56, 56] [1, 1, 1, 1] : tensor<1x64x56x56xf32> into tensor<1x64x58x58xf32>
    %18 = linalg.fill ins(%cst : f32) outs(%8 : tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %19 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_8, %arg3 : tensor<1x64x58x58xf32>, tensor<64x64x3x3xf32>) outs(%18 : tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %expanded_9 = tensor.expand_shape %arg66 [[0, 1, 2]] : tensor<64xf32> into tensor<64x1x1xf32>
    %expanded_10 = tensor.expand_shape %arg65 [[0, 1, 2]] : tensor<64xf32> into tensor<64x1x1xf32>
    %expanded_11 = tensor.expand_shape %arg4 [[0, 1, 2]] : tensor<64xf32> into tensor<64x1x1xf32>
    %expanded_12 = tensor.expand_shape %arg5 [[0, 1, 2]] : tensor<64xf32> into tensor<64x1x1xf32>
    %20 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%19, %expanded_10, %expanded_9, %expanded_11, %expanded_12 : tensor<1x64x56x56xf32>, tensor<64x1x1xf32>, tensor<64x1x1xf32>, tensor<64x1x1xf32>, tensor<64x1x1xf32>) outs(%8 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_100: f32, %in_101: f32, %in_102: f32, %in_103: f32, %out: f32):
      %100 = arith.truncf %cst_2 : f64 to f32
      %101 = arith.addf %in_101, %100 : f32
      %102 = math.sqrt %101 : f32
      %103 = arith.cmpf one, %102, %cst : f32
      cf.assert %103, "unimplemented: tensor with zero element"
      %104 = arith.divf %cst_0, %102 : f32
      %105 = arith.subf %in, %in_100 : f32
      %106 = arith.mulf %105, %104 : f32
      %107 = arith.mulf %106, %in_102 : f32
      %108 = arith.addf %107, %in_103 : f32
      %109 = arith.cmpf ugt, %108, %cst : f32
      %110 = arith.select %109, %108, %cst : f32
      linalg.yield %110 : f32
    } -> tensor<1x64x56x56xf32>
    %21 = tensor.empty() : tensor<1x64x58x58xf32>
    %22 = linalg.fill ins(%cst : f32) outs(%21 : tensor<1x64x58x58xf32>) -> tensor<1x64x58x58xf32>
    %inserted_slice_13 = tensor.insert_slice %20 into %22[0, 0, 1, 1] [1, 64, 56, 56] [1, 1, 1, 1] : tensor<1x64x56x56xf32> into tensor<1x64x58x58xf32>
    %23 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_13, %arg6 : tensor<1x64x58x58xf32>, tensor<64x64x3x3xf32>) outs(%18 : tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %expanded_14 = tensor.expand_shape %arg69 [[0, 1, 2]] : tensor<64xf32> into tensor<64x1x1xf32>
    %expanded_15 = tensor.expand_shape %arg68 [[0, 1, 2]] : tensor<64xf32> into tensor<64x1x1xf32>
    %expanded_16 = tensor.expand_shape %arg7 [[0, 1, 2]] : tensor<64xf32> into tensor<64x1x1xf32>
    %expanded_17 = tensor.expand_shape %arg8 [[0, 1, 2]] : tensor<64xf32> into tensor<64x1x1xf32>
    %24 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%23, %expanded_15, %expanded_14, %expanded_16, %expanded_17, %11 : tensor<1x64x56x56xf32>, tensor<64x1x1xf32>, tensor<64x1x1xf32>, tensor<64x1x1xf32>, tensor<64x1x1xf32>, tensor<1x64x56x56xf32>) outs(%8 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_100: f32, %in_101: f32, %in_102: f32, %in_103: f32, %in_104: f32, %out: f32):
      %100 = arith.truncf %cst_2 : f64 to f32
      %101 = arith.addf %in_101, %100 : f32
      %102 = math.sqrt %101 : f32
      %103 = arith.cmpf one, %102, %cst : f32
      cf.assert %103, "unimplemented: tensor with zero element"
      %104 = arith.divf %cst_0, %102 : f32
      %105 = arith.subf %in, %in_100 : f32
      %106 = arith.mulf %105, %104 : f32
      %107 = arith.mulf %106, %in_102 : f32
      %108 = arith.addf %107, %in_103 : f32
      %109 = arith.addf %108, %in_104 : f32
      %110 = arith.cmpf ugt, %109, %cst : f32
      %111 = arith.select %110, %109, %cst : f32
      linalg.yield %111 : f32
    } -> tensor<1x64x56x56xf32>
    %25 = tensor.empty() : tensor<1x64x58x58xf32>
    %26 = linalg.fill ins(%cst : f32) outs(%25 : tensor<1x64x58x58xf32>) -> tensor<1x64x58x58xf32>
    %inserted_slice_18 = tensor.insert_slice %24 into %26[0, 0, 1, 1] [1, 64, 56, 56] [1, 1, 1, 1] : tensor<1x64x56x56xf32> into tensor<1x64x58x58xf32>
    %27 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_18, %arg9 : tensor<1x64x58x58xf32>, tensor<64x64x3x3xf32>) outs(%18 : tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %expanded_19 = tensor.expand_shape %arg72 [[0, 1, 2]] : tensor<64xf32> into tensor<64x1x1xf32>
    %expanded_20 = tensor.expand_shape %arg71 [[0, 1, 2]] : tensor<64xf32> into tensor<64x1x1xf32>
    %expanded_21 = tensor.expand_shape %arg10 [[0, 1, 2]] : tensor<64xf32> into tensor<64x1x1xf32>
    %expanded_22 = tensor.expand_shape %arg11 [[0, 1, 2]] : tensor<64xf32> into tensor<64x1x1xf32>
    %28 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%27, %expanded_20, %expanded_19, %expanded_21, %expanded_22 : tensor<1x64x56x56xf32>, tensor<64x1x1xf32>, tensor<64x1x1xf32>, tensor<64x1x1xf32>, tensor<64x1x1xf32>) outs(%8 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_100: f32, %in_101: f32, %in_102: f32, %in_103: f32, %out: f32):
      %100 = arith.truncf %cst_2 : f64 to f32
      %101 = arith.addf %in_101, %100 : f32
      %102 = math.sqrt %101 : f32
      %103 = arith.cmpf one, %102, %cst : f32
      cf.assert %103, "unimplemented: tensor with zero element"
      %104 = arith.divf %cst_0, %102 : f32
      %105 = arith.subf %in, %in_100 : f32
      %106 = arith.mulf %105, %104 : f32
      %107 = arith.mulf %106, %in_102 : f32
      %108 = arith.addf %107, %in_103 : f32
      %109 = arith.cmpf ugt, %108, %cst : f32
      %110 = arith.select %109, %108, %cst : f32
      linalg.yield %110 : f32
    } -> tensor<1x64x56x56xf32>
    %29 = tensor.empty() : tensor<1x64x58x58xf32>
    %30 = linalg.fill ins(%cst : f32) outs(%29 : tensor<1x64x58x58xf32>) -> tensor<1x64x58x58xf32>
    %inserted_slice_23 = tensor.insert_slice %28 into %30[0, 0, 1, 1] [1, 64, 56, 56] [1, 1, 1, 1] : tensor<1x64x56x56xf32> into tensor<1x64x58x58xf32>
    %31 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_23, %arg12 : tensor<1x64x58x58xf32>, tensor<64x64x3x3xf32>) outs(%18 : tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %expanded_24 = tensor.expand_shape %arg75 [[0, 1, 2]] : tensor<64xf32> into tensor<64x1x1xf32>
    %expanded_25 = tensor.expand_shape %arg74 [[0, 1, 2]] : tensor<64xf32> into tensor<64x1x1xf32>
    %expanded_26 = tensor.expand_shape %arg13 [[0, 1, 2]] : tensor<64xf32> into tensor<64x1x1xf32>
    %expanded_27 = tensor.expand_shape %arg14 [[0, 1, 2]] : tensor<64xf32> into tensor<64x1x1xf32>
    %32 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%31, %expanded_25, %expanded_24, %expanded_26, %expanded_27, %24 : tensor<1x64x56x56xf32>, tensor<64x1x1xf32>, tensor<64x1x1xf32>, tensor<64x1x1xf32>, tensor<64x1x1xf32>, tensor<1x64x56x56xf32>) outs(%8 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_100: f32, %in_101: f32, %in_102: f32, %in_103: f32, %in_104: f32, %out: f32):
      %100 = arith.truncf %cst_2 : f64 to f32
      %101 = arith.addf %in_101, %100 : f32
      %102 = math.sqrt %101 : f32
      %103 = arith.cmpf one, %102, %cst : f32
      cf.assert %103, "unimplemented: tensor with zero element"
      %104 = arith.divf %cst_0, %102 : f32
      %105 = arith.subf %in, %in_100 : f32
      %106 = arith.mulf %105, %104 : f32
      %107 = arith.mulf %106, %in_102 : f32
      %108 = arith.addf %107, %in_103 : f32
      %109 = arith.addf %108, %in_104 : f32
      %110 = arith.cmpf ugt, %109, %cst : f32
      %111 = arith.select %110, %109, %cst : f32
      linalg.yield %111 : f32
    } -> tensor<1x64x56x56xf32>
    %33 = tensor.empty() : tensor<1x64x58x58xf32>
    %34 = linalg.fill ins(%cst : f32) outs(%33 : tensor<1x64x58x58xf32>) -> tensor<1x64x58x58xf32>
    %inserted_slice_28 = tensor.insert_slice %32 into %34[0, 0, 1, 1] [1, 64, 56, 56] [1, 1, 1, 1] : tensor<1x64x56x56xf32> into tensor<1x64x58x58xf32>
    %35 = tensor.empty() : tensor<1x128x28x28xf32>
    %36 = linalg.fill ins(%cst : f32) outs(%35 : tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %37 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%inserted_slice_28, %arg15 : tensor<1x64x58x58xf32>, tensor<128x64x3x3xf32>) outs(%36 : tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %expanded_29 = tensor.expand_shape %arg78 [[0, 1, 2]] : tensor<128xf32> into tensor<128x1x1xf32>
    %expanded_30 = tensor.expand_shape %arg77 [[0, 1, 2]] : tensor<128xf32> into tensor<128x1x1xf32>
    %expanded_31 = tensor.expand_shape %arg16 [[0, 1, 2]] : tensor<128xf32> into tensor<128x1x1xf32>
    %expanded_32 = tensor.expand_shape %arg17 [[0, 1, 2]] : tensor<128xf32> into tensor<128x1x1xf32>
    %38 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%37, %expanded_30, %expanded_29, %expanded_31, %expanded_32 : tensor<1x128x28x28xf32>, tensor<128x1x1xf32>, tensor<128x1x1xf32>, tensor<128x1x1xf32>, tensor<128x1x1xf32>) outs(%35 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_100: f32, %in_101: f32, %in_102: f32, %in_103: f32, %out: f32):
      %100 = arith.truncf %cst_2 : f64 to f32
      %101 = arith.addf %in_101, %100 : f32
      %102 = math.sqrt %101 : f32
      %103 = arith.cmpf one, %102, %cst : f32
      cf.assert %103, "unimplemented: tensor with zero element"
      %104 = arith.divf %cst_0, %102 : f32
      %105 = arith.subf %in, %in_100 : f32
      %106 = arith.mulf %105, %104 : f32
      %107 = arith.mulf %106, %in_102 : f32
      %108 = arith.addf %107, %in_103 : f32
      %109 = arith.cmpf ugt, %108, %cst : f32
      %110 = arith.select %109, %108, %cst : f32
      linalg.yield %110 : f32
    } -> tensor<1x128x28x28xf32>
    %39 = tensor.empty() : tensor<1x128x30x30xf32>
    %40 = linalg.fill ins(%cst : f32) outs(%39 : tensor<1x128x30x30xf32>) -> tensor<1x128x30x30xf32>
    %inserted_slice_33 = tensor.insert_slice %38 into %40[0, 0, 1, 1] [1, 128, 28, 28] [1, 1, 1, 1] : tensor<1x128x28x28xf32> into tensor<1x128x30x30xf32>
    %41 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_33, %arg18 : tensor<1x128x30x30xf32>, tensor<128x128x3x3xf32>) outs(%36 : tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %expanded_34 = tensor.expand_shape %arg81 [[0, 1, 2]] : tensor<128xf32> into tensor<128x1x1xf32>
    %expanded_35 = tensor.expand_shape %arg80 [[0, 1, 2]] : tensor<128xf32> into tensor<128x1x1xf32>
    %expanded_36 = tensor.expand_shape %arg19 [[0, 1, 2]] : tensor<128xf32> into tensor<128x1x1xf32>
    %expanded_37 = tensor.expand_shape %arg20 [[0, 1, 2]] : tensor<128xf32> into tensor<128x1x1xf32>
    %42 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%32, %arg21 : tensor<1x64x56x56xf32>, tensor<128x64x1x1xf32>) outs(%36 : tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %expanded_38 = tensor.expand_shape %arg84 [[0, 1, 2]] : tensor<128xf32> into tensor<128x1x1xf32>
    %expanded_39 = tensor.expand_shape %arg83 [[0, 1, 2]] : tensor<128xf32> into tensor<128x1x1xf32>
    %expanded_40 = tensor.expand_shape %arg22 [[0, 1, 2]] : tensor<128xf32> into tensor<128x1x1xf32>
    %expanded_41 = tensor.expand_shape %arg23 [[0, 1, 2]] : tensor<128xf32> into tensor<128x1x1xf32>
    %43 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map, #map1, #map1, #map1, #map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%41, %expanded_35, %expanded_34, %expanded_36, %expanded_37, %42, %expanded_39, %expanded_38, %expanded_40, %expanded_41 : tensor<1x128x28x28xf32>, tensor<128x1x1xf32>, tensor<128x1x1xf32>, tensor<128x1x1xf32>, tensor<128x1x1xf32>, tensor<1x128x28x28xf32>, tensor<128x1x1xf32>, tensor<128x1x1xf32>, tensor<128x1x1xf32>, tensor<128x1x1xf32>) outs(%35 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_100: f32, %in_101: f32, %in_102: f32, %in_103: f32, %in_104: f32, %in_105: f32, %in_106: f32, %in_107: f32, %in_108: f32, %out: f32):
      %100 = arith.truncf %cst_2 : f64 to f32
      %101 = arith.addf %in_106, %100 : f32
      %102 = math.sqrt %101 : f32
      %103 = arith.cmpf one, %102, %cst : f32
      cf.assert %103, "unimplemented: tensor with zero element"
      %104 = arith.divf %cst_0, %102 : f32
      %105 = arith.subf %in_104, %in_105 : f32
      %106 = arith.mulf %105, %104 : f32
      %107 = arith.mulf %106, %in_107 : f32
      %108 = arith.addf %107, %in_108 : f32
      %109 = arith.truncf %cst_2 : f64 to f32
      %110 = arith.addf %in_101, %109 : f32
      %111 = math.sqrt %110 : f32
      %112 = arith.cmpf one, %111, %cst : f32
      cf.assert %112, "unimplemented: tensor with zero element"
      %113 = arith.divf %cst_0, %111 : f32
      %114 = arith.subf %in, %in_100 : f32
      %115 = arith.mulf %114, %113 : f32
      %116 = arith.mulf %115, %in_102 : f32
      %117 = arith.addf %116, %in_103 : f32
      %118 = arith.addf %117, %108 : f32
      %119 = arith.cmpf ugt, %118, %cst : f32
      %120 = arith.select %119, %118, %cst : f32
      linalg.yield %120 : f32
    } -> tensor<1x128x28x28xf32>
    %44 = tensor.empty() : tensor<1x128x30x30xf32>
    %45 = linalg.fill ins(%cst : f32) outs(%44 : tensor<1x128x30x30xf32>) -> tensor<1x128x30x30xf32>
    %inserted_slice_42 = tensor.insert_slice %43 into %45[0, 0, 1, 1] [1, 128, 28, 28] [1, 1, 1, 1] : tensor<1x128x28x28xf32> into tensor<1x128x30x30xf32>
    %46 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_42, %arg24 : tensor<1x128x30x30xf32>, tensor<128x128x3x3xf32>) outs(%36 : tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %expanded_43 = tensor.expand_shape %arg87 [[0, 1, 2]] : tensor<128xf32> into tensor<128x1x1xf32>
    %expanded_44 = tensor.expand_shape %arg86 [[0, 1, 2]] : tensor<128xf32> into tensor<128x1x1xf32>
    %expanded_45 = tensor.expand_shape %arg25 [[0, 1, 2]] : tensor<128xf32> into tensor<128x1x1xf32>
    %expanded_46 = tensor.expand_shape %arg26 [[0, 1, 2]] : tensor<128xf32> into tensor<128x1x1xf32>
    %47 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%46, %expanded_44, %expanded_43, %expanded_45, %expanded_46 : tensor<1x128x28x28xf32>, tensor<128x1x1xf32>, tensor<128x1x1xf32>, tensor<128x1x1xf32>, tensor<128x1x1xf32>) outs(%35 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_100: f32, %in_101: f32, %in_102: f32, %in_103: f32, %out: f32):
      %100 = arith.truncf %cst_2 : f64 to f32
      %101 = arith.addf %in_101, %100 : f32
      %102 = math.sqrt %101 : f32
      %103 = arith.cmpf one, %102, %cst : f32
      cf.assert %103, "unimplemented: tensor with zero element"
      %104 = arith.divf %cst_0, %102 : f32
      %105 = arith.subf %in, %in_100 : f32
      %106 = arith.mulf %105, %104 : f32
      %107 = arith.mulf %106, %in_102 : f32
      %108 = arith.addf %107, %in_103 : f32
      %109 = arith.cmpf ugt, %108, %cst : f32
      %110 = arith.select %109, %108, %cst : f32
      linalg.yield %110 : f32
    } -> tensor<1x128x28x28xf32>
    %48 = tensor.empty() : tensor<1x128x30x30xf32>
    %49 = linalg.fill ins(%cst : f32) outs(%48 : tensor<1x128x30x30xf32>) -> tensor<1x128x30x30xf32>
    %inserted_slice_47 = tensor.insert_slice %47 into %49[0, 0, 1, 1] [1, 128, 28, 28] [1, 1, 1, 1] : tensor<1x128x28x28xf32> into tensor<1x128x30x30xf32>
    %50 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_47, %arg27 : tensor<1x128x30x30xf32>, tensor<128x128x3x3xf32>) outs(%36 : tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %expanded_48 = tensor.expand_shape %arg90 [[0, 1, 2]] : tensor<128xf32> into tensor<128x1x1xf32>
    %expanded_49 = tensor.expand_shape %arg89 [[0, 1, 2]] : tensor<128xf32> into tensor<128x1x1xf32>
    %expanded_50 = tensor.expand_shape %arg28 [[0, 1, 2]] : tensor<128xf32> into tensor<128x1x1xf32>
    %expanded_51 = tensor.expand_shape %arg29 [[0, 1, 2]] : tensor<128xf32> into tensor<128x1x1xf32>
    %51 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%50, %expanded_49, %expanded_48, %expanded_50, %expanded_51, %43 : tensor<1x128x28x28xf32>, tensor<128x1x1xf32>, tensor<128x1x1xf32>, tensor<128x1x1xf32>, tensor<128x1x1xf32>, tensor<1x128x28x28xf32>) outs(%35 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_100: f32, %in_101: f32, %in_102: f32, %in_103: f32, %in_104: f32, %out: f32):
      %100 = arith.truncf %cst_2 : f64 to f32
      %101 = arith.addf %in_101, %100 : f32
      %102 = math.sqrt %101 : f32
      %103 = arith.cmpf one, %102, %cst : f32
      cf.assert %103, "unimplemented: tensor with zero element"
      %104 = arith.divf %cst_0, %102 : f32
      %105 = arith.subf %in, %in_100 : f32
      %106 = arith.mulf %105, %104 : f32
      %107 = arith.mulf %106, %in_102 : f32
      %108 = arith.addf %107, %in_103 : f32
      %109 = arith.addf %108, %in_104 : f32
      %110 = arith.cmpf ugt, %109, %cst : f32
      %111 = arith.select %110, %109, %cst : f32
      linalg.yield %111 : f32
    } -> tensor<1x128x28x28xf32>
    %52 = tensor.empty() : tensor<1x128x30x30xf32>
    %53 = linalg.fill ins(%cst : f32) outs(%52 : tensor<1x128x30x30xf32>) -> tensor<1x128x30x30xf32>
    %inserted_slice_52 = tensor.insert_slice %51 into %53[0, 0, 1, 1] [1, 128, 28, 28] [1, 1, 1, 1] : tensor<1x128x28x28xf32> into tensor<1x128x30x30xf32>
    %54 = tensor.empty() : tensor<1x256x14x14xf32>
    %55 = linalg.fill ins(%cst : f32) outs(%54 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %56 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%inserted_slice_52, %arg30 : tensor<1x128x30x30xf32>, tensor<256x128x3x3xf32>) outs(%55 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %expanded_53 = tensor.expand_shape %arg93 [[0, 1, 2]] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_54 = tensor.expand_shape %arg92 [[0, 1, 2]] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_55 = tensor.expand_shape %arg31 [[0, 1, 2]] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_56 = tensor.expand_shape %arg32 [[0, 1, 2]] : tensor<256xf32> into tensor<256x1x1xf32>
    %57 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%56, %expanded_54, %expanded_53, %expanded_55, %expanded_56 : tensor<1x256x14x14xf32>, tensor<256x1x1xf32>, tensor<256x1x1xf32>, tensor<256x1x1xf32>, tensor<256x1x1xf32>) outs(%54 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_100: f32, %in_101: f32, %in_102: f32, %in_103: f32, %out: f32):
      %100 = arith.truncf %cst_2 : f64 to f32
      %101 = arith.addf %in_101, %100 : f32
      %102 = math.sqrt %101 : f32
      %103 = arith.cmpf one, %102, %cst : f32
      cf.assert %103, "unimplemented: tensor with zero element"
      %104 = arith.divf %cst_0, %102 : f32
      %105 = arith.subf %in, %in_100 : f32
      %106 = arith.mulf %105, %104 : f32
      %107 = arith.mulf %106, %in_102 : f32
      %108 = arith.addf %107, %in_103 : f32
      %109 = arith.cmpf ugt, %108, %cst : f32
      %110 = arith.select %109, %108, %cst : f32
      linalg.yield %110 : f32
    } -> tensor<1x256x14x14xf32>
    %58 = tensor.empty() : tensor<1x256x16x16xf32>
    %59 = linalg.fill ins(%cst : f32) outs(%58 : tensor<1x256x16x16xf32>) -> tensor<1x256x16x16xf32>
    %inserted_slice_57 = tensor.insert_slice %57 into %59[0, 0, 1, 1] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x256x16x16xf32>
    %60 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_57, %arg33 : tensor<1x256x16x16xf32>, tensor<256x256x3x3xf32>) outs(%55 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %expanded_58 = tensor.expand_shape %arg96 [[0, 1, 2]] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_59 = tensor.expand_shape %arg95 [[0, 1, 2]] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_60 = tensor.expand_shape %arg34 [[0, 1, 2]] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_61 = tensor.expand_shape %arg35 [[0, 1, 2]] : tensor<256xf32> into tensor<256x1x1xf32>
    %61 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%51, %arg36 : tensor<1x128x28x28xf32>, tensor<256x128x1x1xf32>) outs(%55 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %expanded_62 = tensor.expand_shape %arg99 [[0, 1, 2]] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_63 = tensor.expand_shape %arg98 [[0, 1, 2]] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_64 = tensor.expand_shape %arg37 [[0, 1, 2]] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_65 = tensor.expand_shape %arg38 [[0, 1, 2]] : tensor<256xf32> into tensor<256x1x1xf32>
    %62 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map, #map1, #map1, #map1, #map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%60, %expanded_59, %expanded_58, %expanded_60, %expanded_61, %61, %expanded_63, %expanded_62, %expanded_64, %expanded_65 : tensor<1x256x14x14xf32>, tensor<256x1x1xf32>, tensor<256x1x1xf32>, tensor<256x1x1xf32>, tensor<256x1x1xf32>, tensor<1x256x14x14xf32>, tensor<256x1x1xf32>, tensor<256x1x1xf32>, tensor<256x1x1xf32>, tensor<256x1x1xf32>) outs(%54 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_100: f32, %in_101: f32, %in_102: f32, %in_103: f32, %in_104: f32, %in_105: f32, %in_106: f32, %in_107: f32, %in_108: f32, %out: f32):
      %100 = arith.truncf %cst_2 : f64 to f32
      %101 = arith.addf %in_106, %100 : f32
      %102 = math.sqrt %101 : f32
      %103 = arith.cmpf one, %102, %cst : f32
      cf.assert %103, "unimplemented: tensor with zero element"
      %104 = arith.divf %cst_0, %102 : f32
      %105 = arith.subf %in_104, %in_105 : f32
      %106 = arith.mulf %105, %104 : f32
      %107 = arith.mulf %106, %in_107 : f32
      %108 = arith.addf %107, %in_108 : f32
      %109 = arith.truncf %cst_2 : f64 to f32
      %110 = arith.addf %in_101, %109 : f32
      %111 = math.sqrt %110 : f32
      %112 = arith.cmpf one, %111, %cst : f32
      cf.assert %112, "unimplemented: tensor with zero element"
      %113 = arith.divf %cst_0, %111 : f32
      %114 = arith.subf %in, %in_100 : f32
      %115 = arith.mulf %114, %113 : f32
      %116 = arith.mulf %115, %in_102 : f32
      %117 = arith.addf %116, %in_103 : f32
      %118 = arith.addf %117, %108 : f32
      %119 = arith.cmpf ugt, %118, %cst : f32
      %120 = arith.select %119, %118, %cst : f32
      linalg.yield %120 : f32
    } -> tensor<1x256x14x14xf32>
    %63 = tensor.empty() : tensor<1x256x16x16xf32>
    %64 = linalg.fill ins(%cst : f32) outs(%63 : tensor<1x256x16x16xf32>) -> tensor<1x256x16x16xf32>
    %inserted_slice_66 = tensor.insert_slice %62 into %64[0, 0, 1, 1] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x256x16x16xf32>
    %65 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_66, %arg39 : tensor<1x256x16x16xf32>, tensor<256x256x3x3xf32>) outs(%55 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %expanded_67 = tensor.expand_shape %arg102 [[0, 1, 2]] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_68 = tensor.expand_shape %arg101 [[0, 1, 2]] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_69 = tensor.expand_shape %arg40 [[0, 1, 2]] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_70 = tensor.expand_shape %arg41 [[0, 1, 2]] : tensor<256xf32> into tensor<256x1x1xf32>
    %66 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%65, %expanded_68, %expanded_67, %expanded_69, %expanded_70 : tensor<1x256x14x14xf32>, tensor<256x1x1xf32>, tensor<256x1x1xf32>, tensor<256x1x1xf32>, tensor<256x1x1xf32>) outs(%54 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_100: f32, %in_101: f32, %in_102: f32, %in_103: f32, %out: f32):
      %100 = arith.truncf %cst_2 : f64 to f32
      %101 = arith.addf %in_101, %100 : f32
      %102 = math.sqrt %101 : f32
      %103 = arith.cmpf one, %102, %cst : f32
      cf.assert %103, "unimplemented: tensor with zero element"
      %104 = arith.divf %cst_0, %102 : f32
      %105 = arith.subf %in, %in_100 : f32
      %106 = arith.mulf %105, %104 : f32
      %107 = arith.mulf %106, %in_102 : f32
      %108 = arith.addf %107, %in_103 : f32
      %109 = arith.cmpf ugt, %108, %cst : f32
      %110 = arith.select %109, %108, %cst : f32
      linalg.yield %110 : f32
    } -> tensor<1x256x14x14xf32>
    %67 = tensor.empty() : tensor<1x256x16x16xf32>
    %68 = linalg.fill ins(%cst : f32) outs(%67 : tensor<1x256x16x16xf32>) -> tensor<1x256x16x16xf32>
    %inserted_slice_71 = tensor.insert_slice %66 into %68[0, 0, 1, 1] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x256x16x16xf32>
    %69 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_71, %arg42 : tensor<1x256x16x16xf32>, tensor<256x256x3x3xf32>) outs(%55 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %expanded_72 = tensor.expand_shape %arg105 [[0, 1, 2]] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_73 = tensor.expand_shape %arg104 [[0, 1, 2]] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_74 = tensor.expand_shape %arg43 [[0, 1, 2]] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_75 = tensor.expand_shape %arg44 [[0, 1, 2]] : tensor<256xf32> into tensor<256x1x1xf32>
    %70 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%69, %expanded_73, %expanded_72, %expanded_74, %expanded_75, %62 : tensor<1x256x14x14xf32>, tensor<256x1x1xf32>, tensor<256x1x1xf32>, tensor<256x1x1xf32>, tensor<256x1x1xf32>, tensor<1x256x14x14xf32>) outs(%54 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_100: f32, %in_101: f32, %in_102: f32, %in_103: f32, %in_104: f32, %out: f32):
      %100 = arith.truncf %cst_2 : f64 to f32
      %101 = arith.addf %in_101, %100 : f32
      %102 = math.sqrt %101 : f32
      %103 = arith.cmpf one, %102, %cst : f32
      cf.assert %103, "unimplemented: tensor with zero element"
      %104 = arith.divf %cst_0, %102 : f32
      %105 = arith.subf %in, %in_100 : f32
      %106 = arith.mulf %105, %104 : f32
      %107 = arith.mulf %106, %in_102 : f32
      %108 = arith.addf %107, %in_103 : f32
      %109 = arith.addf %108, %in_104 : f32
      %110 = arith.cmpf ugt, %109, %cst : f32
      %111 = arith.select %110, %109, %cst : f32
      linalg.yield %111 : f32
    } -> tensor<1x256x14x14xf32>
    %71 = tensor.empty() : tensor<1x256x16x16xf32>
    %72 = linalg.fill ins(%cst : f32) outs(%71 : tensor<1x256x16x16xf32>) -> tensor<1x256x16x16xf32>
    %inserted_slice_76 = tensor.insert_slice %70 into %72[0, 0, 1, 1] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x256x16x16xf32>
    %73 = tensor.empty() : tensor<1x512x7x7xf32>
    %74 = linalg.fill ins(%cst : f32) outs(%73 : tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %75 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%inserted_slice_76, %arg45 : tensor<1x256x16x16xf32>, tensor<512x256x3x3xf32>) outs(%74 : tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %expanded_77 = tensor.expand_shape %arg108 [[0, 1, 2]] : tensor<512xf32> into tensor<512x1x1xf32>
    %expanded_78 = tensor.expand_shape %arg107 [[0, 1, 2]] : tensor<512xf32> into tensor<512x1x1xf32>
    %expanded_79 = tensor.expand_shape %arg46 [[0, 1, 2]] : tensor<512xf32> into tensor<512x1x1xf32>
    %expanded_80 = tensor.expand_shape %arg47 [[0, 1, 2]] : tensor<512xf32> into tensor<512x1x1xf32>
    %76 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%75, %expanded_78, %expanded_77, %expanded_79, %expanded_80 : tensor<1x512x7x7xf32>, tensor<512x1x1xf32>, tensor<512x1x1xf32>, tensor<512x1x1xf32>, tensor<512x1x1xf32>) outs(%73 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_100: f32, %in_101: f32, %in_102: f32, %in_103: f32, %out: f32):
      %100 = arith.truncf %cst_2 : f64 to f32
      %101 = arith.addf %in_101, %100 : f32
      %102 = math.sqrt %101 : f32
      %103 = arith.cmpf one, %102, %cst : f32
      cf.assert %103, "unimplemented: tensor with zero element"
      %104 = arith.divf %cst_0, %102 : f32
      %105 = arith.subf %in, %in_100 : f32
      %106 = arith.mulf %105, %104 : f32
      %107 = arith.mulf %106, %in_102 : f32
      %108 = arith.addf %107, %in_103 : f32
      %109 = arith.cmpf ugt, %108, %cst : f32
      %110 = arith.select %109, %108, %cst : f32
      linalg.yield %110 : f32
    } -> tensor<1x512x7x7xf32>
    %77 = tensor.empty() : tensor<1x512x9x9xf32>
    %78 = linalg.fill ins(%cst : f32) outs(%77 : tensor<1x512x9x9xf32>) -> tensor<1x512x9x9xf32>
    %inserted_slice_81 = tensor.insert_slice %76 into %78[0, 0, 1, 1] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x512x7x7xf32> into tensor<1x512x9x9xf32>
    %79 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_81, %arg48 : tensor<1x512x9x9xf32>, tensor<512x512x3x3xf32>) outs(%74 : tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %expanded_82 = tensor.expand_shape %arg111 [[0, 1, 2]] : tensor<512xf32> into tensor<512x1x1xf32>
    %expanded_83 = tensor.expand_shape %arg110 [[0, 1, 2]] : tensor<512xf32> into tensor<512x1x1xf32>
    %expanded_84 = tensor.expand_shape %arg49 [[0, 1, 2]] : tensor<512xf32> into tensor<512x1x1xf32>
    %expanded_85 = tensor.expand_shape %arg50 [[0, 1, 2]] : tensor<512xf32> into tensor<512x1x1xf32>
    %80 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%70, %arg51 : tensor<1x256x14x14xf32>, tensor<512x256x1x1xf32>) outs(%74 : tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %expanded_86 = tensor.expand_shape %arg114 [[0, 1, 2]] : tensor<512xf32> into tensor<512x1x1xf32>
    %expanded_87 = tensor.expand_shape %arg113 [[0, 1, 2]] : tensor<512xf32> into tensor<512x1x1xf32>
    %expanded_88 = tensor.expand_shape %arg52 [[0, 1, 2]] : tensor<512xf32> into tensor<512x1x1xf32>
    %expanded_89 = tensor.expand_shape %arg53 [[0, 1, 2]] : tensor<512xf32> into tensor<512x1x1xf32>
    %81 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map, #map1, #map1, #map1, #map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%79, %expanded_83, %expanded_82, %expanded_84, %expanded_85, %80, %expanded_87, %expanded_86, %expanded_88, %expanded_89 : tensor<1x512x7x7xf32>, tensor<512x1x1xf32>, tensor<512x1x1xf32>, tensor<512x1x1xf32>, tensor<512x1x1xf32>, tensor<1x512x7x7xf32>, tensor<512x1x1xf32>, tensor<512x1x1xf32>, tensor<512x1x1xf32>, tensor<512x1x1xf32>) outs(%73 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_100: f32, %in_101: f32, %in_102: f32, %in_103: f32, %in_104: f32, %in_105: f32, %in_106: f32, %in_107: f32, %in_108: f32, %out: f32):
      %100 = arith.truncf %cst_2 : f64 to f32
      %101 = arith.addf %in_106, %100 : f32
      %102 = math.sqrt %101 : f32
      %103 = arith.cmpf one, %102, %cst : f32
      cf.assert %103, "unimplemented: tensor with zero element"
      %104 = arith.divf %cst_0, %102 : f32
      %105 = arith.subf %in_104, %in_105 : f32
      %106 = arith.mulf %105, %104 : f32
      %107 = arith.mulf %106, %in_107 : f32
      %108 = arith.addf %107, %in_108 : f32
      %109 = arith.truncf %cst_2 : f64 to f32
      %110 = arith.addf %in_101, %109 : f32
      %111 = math.sqrt %110 : f32
      %112 = arith.cmpf one, %111, %cst : f32
      cf.assert %112, "unimplemented: tensor with zero element"
      %113 = arith.divf %cst_0, %111 : f32
      %114 = arith.subf %in, %in_100 : f32
      %115 = arith.mulf %114, %113 : f32
      %116 = arith.mulf %115, %in_102 : f32
      %117 = arith.addf %116, %in_103 : f32
      %118 = arith.addf %117, %108 : f32
      %119 = arith.cmpf ugt, %118, %cst : f32
      %120 = arith.select %119, %118, %cst : f32
      linalg.yield %120 : f32
    } -> tensor<1x512x7x7xf32>
    %82 = tensor.empty() : tensor<1x512x9x9xf32>
    %83 = linalg.fill ins(%cst : f32) outs(%82 : tensor<1x512x9x9xf32>) -> tensor<1x512x9x9xf32>
    %inserted_slice_90 = tensor.insert_slice %81 into %83[0, 0, 1, 1] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x512x7x7xf32> into tensor<1x512x9x9xf32>
    %84 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_90, %arg54 : tensor<1x512x9x9xf32>, tensor<512x512x3x3xf32>) outs(%74 : tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %expanded_91 = tensor.expand_shape %arg117 [[0, 1, 2]] : tensor<512xf32> into tensor<512x1x1xf32>
    %expanded_92 = tensor.expand_shape %arg116 [[0, 1, 2]] : tensor<512xf32> into tensor<512x1x1xf32>
    %expanded_93 = tensor.expand_shape %arg55 [[0, 1, 2]] : tensor<512xf32> into tensor<512x1x1xf32>
    %expanded_94 = tensor.expand_shape %arg56 [[0, 1, 2]] : tensor<512xf32> into tensor<512x1x1xf32>
    %85 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%84, %expanded_92, %expanded_91, %expanded_93, %expanded_94 : tensor<1x512x7x7xf32>, tensor<512x1x1xf32>, tensor<512x1x1xf32>, tensor<512x1x1xf32>, tensor<512x1x1xf32>) outs(%73 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_100: f32, %in_101: f32, %in_102: f32, %in_103: f32, %out: f32):
      %100 = arith.truncf %cst_2 : f64 to f32
      %101 = arith.addf %in_101, %100 : f32
      %102 = math.sqrt %101 : f32
      %103 = arith.cmpf one, %102, %cst : f32
      cf.assert %103, "unimplemented: tensor with zero element"
      %104 = arith.divf %cst_0, %102 : f32
      %105 = arith.subf %in, %in_100 : f32
      %106 = arith.mulf %105, %104 : f32
      %107 = arith.mulf %106, %in_102 : f32
      %108 = arith.addf %107, %in_103 : f32
      %109 = arith.cmpf ugt, %108, %cst : f32
      %110 = arith.select %109, %108, %cst : f32
      linalg.yield %110 : f32
    } -> tensor<1x512x7x7xf32>
    %86 = tensor.empty() : tensor<1x512x9x9xf32>
    %87 = linalg.fill ins(%cst : f32) outs(%86 : tensor<1x512x9x9xf32>) -> tensor<1x512x9x9xf32>
    %inserted_slice_95 = tensor.insert_slice %85 into %87[0, 0, 1, 1] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x512x7x7xf32> into tensor<1x512x9x9xf32>
    %88 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_95, %arg57 : tensor<1x512x9x9xf32>, tensor<512x512x3x3xf32>) outs(%74 : tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %expanded_96 = tensor.expand_shape %arg120 [[0, 1, 2]] : tensor<512xf32> into tensor<512x1x1xf32>
    %expanded_97 = tensor.expand_shape %arg119 [[0, 1, 2]] : tensor<512xf32> into tensor<512x1x1xf32>
    %expanded_98 = tensor.expand_shape %arg58 [[0, 1, 2]] : tensor<512xf32> into tensor<512x1x1xf32>
    %expanded_99 = tensor.expand_shape %arg59 [[0, 1, 2]] : tensor<512xf32> into tensor<512x1x1xf32>
    %89 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%88, %expanded_97, %expanded_96, %expanded_98, %expanded_99, %81 : tensor<1x512x7x7xf32>, tensor<512x1x1xf32>, tensor<512x1x1xf32>, tensor<512x1x1xf32>, tensor<512x1x1xf32>, tensor<1x512x7x7xf32>) outs(%73 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_100: f32, %in_101: f32, %in_102: f32, %in_103: f32, %in_104: f32, %out: f32):
      %100 = arith.truncf %cst_2 : f64 to f32
      %101 = arith.addf %in_101, %100 : f32
      %102 = math.sqrt %101 : f32
      %103 = arith.cmpf one, %102, %cst : f32
      cf.assert %103, "unimplemented: tensor with zero element"
      %104 = arith.divf %cst_0, %102 : f32
      %105 = arith.subf %in, %in_100 : f32
      %106 = arith.mulf %105, %104 : f32
      %107 = arith.mulf %106, %in_102 : f32
      %108 = arith.addf %107, %in_103 : f32
      %109 = arith.addf %108, %in_104 : f32
      %110 = arith.cmpf ugt, %109, %cst : f32
      %111 = arith.select %110, %109, %cst : f32
      linalg.yield %111 : f32
    } -> tensor<1x512x7x7xf32>
    %90 = tensor.empty() : tensor<1x512x1x1xf32>
    %91 = linalg.fill ins(%cst : f32) outs(%90 : tensor<1x512x1x1xf32>) -> tensor<1x512x1x1xf32>
    %92 = linalg.generic {indexing_maps = [#map2, #map5], iterator_types = ["parallel", "parallel", "reduction", "reduction"]} ins(%89 : tensor<1x512x7x7xf32>) outs(%91 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %100 = arith.addf %in, %out : f32
      linalg.yield %100 : f32
    } -> tensor<1x512x1x1xf32>
    %93 = linalg.generic {indexing_maps = [#map6, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%92 : tensor<1x512x1x1xf32>) outs(%90 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %100 = arith.divf %in, %cst_3 : f32
      linalg.yield %100 : f32
    } -> tensor<1x512x1x1xf32>
    %collapsed = tensor.collapse_shape %93 [[0], [1, 2, 3]] : tensor<1x512x1x1xf32> into tensor<1x512xf32>
    %94 = tensor.empty() : tensor<512x1000xf32>
    %95 = linalg.generic {indexing_maps = [#map7, #map8], iterator_types = ["parallel", "parallel"]} ins(%arg60 : tensor<1000x512xf32>) outs(%94 : tensor<512x1000xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x1000xf32>
    %96 = tensor.empty() : tensor<1x1000xf32>
    %97 = linalg.fill ins(%cst : f32) outs(%96 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %98 = linalg.matmul ins(%collapsed, %95 : tensor<1x512xf32>, tensor<512x1000xf32>) outs(%97 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %99 = linalg.generic {indexing_maps = [#map9, #map10, #map7], iterator_types = ["parallel", "parallel"]} ins(%arg61, %98 : tensor<1000xf32>, tensor<1x1000xf32>) outs(%96 : tensor<1x1000xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %100 = arith.addf %in, %in_100 : f32
      linalg.yield %100 : f32
    } -> tensor<1x1000xf32>
    return %99, %arg0, %arg1, %arg3, %arg4, %arg6, %arg7, %arg9, %arg10, %arg12, %arg13, %arg15, %arg16, %arg18, %arg19, %arg21, %arg22, %arg24, %arg25, %arg27, %arg28, %arg30, %arg31, %arg33, %arg34, %arg36, %arg37, %arg39, %arg40, %arg42, %arg43, %arg45, %arg46, %arg48, %arg49, %arg51, %arg52, %arg54, %arg55, %arg57, %arg58, %arg62, %arg63, %arg65, %arg66, %arg68, %arg69, %arg71, %arg72, %arg74, %arg75, %arg77, %arg78, %arg80, %arg81, %arg83, %arg84, %arg86, %arg87, %arg89, %arg90, %arg92, %arg93, %arg95, %arg96, %arg98, %arg99, %arg101, %arg102, %arg104, %arg105, %arg107, %arg108, %arg110, %arg111, %arg113, %arg114, %arg116, %arg117, %arg119, %arg120, %arg122, %4, %5, %11, %15, %19, %20, %23, %24, %27, %28, %31, %32, %37, %38, %41, %42, %43, %46, %47, %50, %51, %56, %57, %60, %61, %62, %65, %66, %69, %70, %75, %76, %79, %80, %81, %84, %85, %88, %89, %collapsed, %95 : tensor<1x1000xf32>, tensor<64x3x7x7xf32>, tensor<64xf32>, tensor<64x64x3x3xf32>, tensor<64xf32>, tensor<64x64x3x3xf32>, tensor<64xf32>, tensor<64x64x3x3xf32>, tensor<64xf32>, tensor<64x64x3x3xf32>, tensor<64xf32>, tensor<128x64x3x3xf32>, tensor<128xf32>, tensor<128x128x3x3xf32>, tensor<128xf32>, tensor<128x64x1x1xf32>, tensor<128xf32>, tensor<128x128x3x3xf32>, tensor<128xf32>, tensor<128x128x3x3xf32>, tensor<128xf32>, tensor<256x128x3x3xf32>, tensor<256xf32>, tensor<256x256x3x3xf32>, tensor<256xf32>, tensor<256x128x1x1xf32>, tensor<256xf32>, tensor<256x256x3x3xf32>, tensor<256xf32>, tensor<256x256x3x3xf32>, tensor<256xf32>, tensor<512x256x3x3xf32>, tensor<512xf32>, tensor<512x512x3x3xf32>, tensor<512xf32>, tensor<512x256x1x1xf32>, tensor<512xf32>, tensor<512x512x3x3xf32>, tensor<512xf32>, tensor<512x512x3x3xf32>, tensor<512xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<1x3x224x224xf32>, tensor<1x64x112x112xf32>, tensor<1x64x112x112xf32>, tensor<1x64x56x56xf32>, tensor<1x64x56x56xi64>, tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>, tensor<1x512xf32>, tensor<512x1000xf32>
  }
}
