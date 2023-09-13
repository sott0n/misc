#map = affine_map<(d0) -> (d0)>
#map1 = affine_map<(d0, d1, d2, d3) -> (0, d1, d2, d3)>
#map2 = affine_map<(d0, d1, d2, d3) -> (d1, 0, 0)>
#map3 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map4 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>
#map5 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>
#map6 = affine_map<(d0, d1, d2, d3) -> (d0, d1, 0, 0)>
#map7 = affine_map<(d0, d1, d2, d3) -> (0, d1, 0, 0)>
#map8 = affine_map<(d0, d1) -> (d0, d1)>
#map9 = affine_map<(d0, d1) -> (d1, d0)>
#map10 = affine_map<(d0, d1) -> (d1)>
#map11 = affine_map<(d0, d1) -> (0, d1)>
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
    %5 = tensor.empty() : tensor<64xf32>
    %6 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg63 : tensor<64xf32>) outs(%5 : tensor<64xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.truncf %cst_2 : f64 to f32
      %253 = arith.addf %in, %252 : f32
      linalg.yield %253 : f32
    } -> tensor<64xf32>
    %7 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%6 : tensor<64xf32>) outs(%5 : tensor<64xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = math.sqrt %in : f32
      linalg.yield %252 : f32
    } -> tensor<64xf32>
    %8 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%7 : tensor<64xf32>) outs(%5 : tensor<64xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.cmpf one, %in, %cst : f32
      cf.assert %252, "unimplemented: tensor with zero element"
      %253 = arith.divf %cst_0, %in : f32
      linalg.yield %253 : f32
    } -> tensor<64xf32>
    %expanded = tensor.expand_shape %arg62 [[0, 1, 2]] : tensor<64xf32> into tensor<64x1x1xf32>
    %expanded_4 = tensor.expand_shape %8 [[0, 1, 2]] : tensor<64xf32> into tensor<64x1x1xf32>
    %9 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%4, %expanded : tensor<1x64x112x112xf32>, tensor<64x1x1xf32>) outs(%2 : tensor<1x64x112x112xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.subf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x64x112x112xf32>
    %10 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%9, %expanded_4 : tensor<1x64x112x112xf32>, tensor<64x1x1xf32>) outs(%2 : tensor<1x64x112x112xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.mulf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x64x112x112xf32>
    %expanded_5 = tensor.expand_shape %arg1 [[0, 1, 2]] : tensor<64xf32> into tensor<64x1x1xf32>
    %11 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%10, %expanded_5 : tensor<1x64x112x112xf32>, tensor<64x1x1xf32>) outs(%2 : tensor<1x64x112x112xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.mulf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x64x112x112xf32>
    %expanded_6 = tensor.expand_shape %arg2 [[0, 1, 2]] : tensor<64xf32> into tensor<64x1x1xf32>
    %12 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%11, %expanded_6 : tensor<1x64x112x112xf32>, tensor<64x1x1xf32>) outs(%2 : tensor<1x64x112x112xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.addf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x64x112x112xf32>
    %13 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%12 : tensor<1x64x112x112xf32>) outs(%2 : tensor<1x64x112x112xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.cmpf ugt, %in, %cst : f32
      %253 = arith.select %252, %in, %cst : f32
      linalg.yield %253 : f32
    } -> tensor<1x64x112x112xf32>
    %14 = tensor.empty() : tensor<1x64x114x114xf32>
    %15 = linalg.fill ins(%cst_1 : f32) outs(%14 : tensor<1x64x114x114xf32>) -> tensor<1x64x114x114xf32>
    %inserted_slice_7 = tensor.insert_slice %13 into %15[0, 0, 1, 1] [1, 64, 112, 112] [1, 1, 1, 1] : tensor<1x64x112x112xf32> into tensor<1x64x114x114xf32>
    %16 = tensor.empty() : tensor<1x64x56x56xf32>
    %17 = linalg.fill ins(%cst_1 : f32) outs(%16 : tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %18 = tensor.empty() : tensor<3x3xf32>
    %19 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%inserted_slice_7, %18 : tensor<1x64x114x114xf32>, tensor<3x3xf32>) outs(%17 : tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %20 = tensor.empty() : tensor<1x64x56x56xi64>
    %21 = linalg.fill ins(%c-1_i64 : i64) outs(%20 : tensor<1x64x56x56xi64>) -> tensor<1x64x56x56xi64>
    %22 = tensor.empty() : tensor<3x3xi64>
    %23 = linalg.generic {indexing_maps = [#map4, #map5, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%19, %22 : tensor<1x64x56x56xf32>, tensor<3x3xi64>) outs(%21 : tensor<1x64x56x56xi64>) {
    ^bb0(%in: f32, %in_100: i64, %out: i64):
      %252 = linalg.index 0 : index
      %253 = linalg.index 1 : index
      %254 = linalg.index 2 : index
      %255 = linalg.index 3 : index
      %256 = linalg.index 4 : index
      %257 = linalg.index 5 : index
      %258 = arith.muli %254, %c2 : index
      %259 = arith.addi %258, %256 : index
      %260 = arith.muli %255, %c2 : index
      %261 = arith.addi %260, %257 : index
      %extracted = tensor.extract %inserted_slice_7[%252, %253, %259, %261] : tensor<1x64x114x114xf32>
      %262 = arith.cmpf oeq, %extracted, %in : f32
      %263 = arith.subi %259, %c1 : index
      %264 = arith.subi %261, %c1 : index
      %265 = arith.muli %263, %c112 : index
      %266 = arith.addi %265, %264 : index
      %267 = arith.index_cast %266 : index to i64
      %268 = arith.select %262, %267, %out : i64
      %269 = arith.cmpi eq, %out, %c-1_i64 : i64
      %270 = arith.select %269, %268, %out : i64
      linalg.yield %270 : i64
    } -> tensor<1x64x56x56xi64>
    %24 = tensor.empty() : tensor<1x64x58x58xf32>
    %25 = linalg.fill ins(%cst : f32) outs(%24 : tensor<1x64x58x58xf32>) -> tensor<1x64x58x58xf32>
    %inserted_slice_8 = tensor.insert_slice %19 into %25[0, 0, 1, 1] [1, 64, 56, 56] [1, 1, 1, 1] : tensor<1x64x56x56xf32> into tensor<1x64x58x58xf32>
    %26 = linalg.fill ins(%cst : f32) outs(%16 : tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %27 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_8, %arg3 : tensor<1x64x58x58xf32>, tensor<64x64x3x3xf32>) outs(%26 : tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %28 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg66 : tensor<64xf32>) outs(%5 : tensor<64xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.truncf %cst_2 : f64 to f32
      %253 = arith.addf %in, %252 : f32
      linalg.yield %253 : f32
    } -> tensor<64xf32>
    %29 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%28 : tensor<64xf32>) outs(%5 : tensor<64xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = math.sqrt %in : f32
      linalg.yield %252 : f32
    } -> tensor<64xf32>
    %30 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%29 : tensor<64xf32>) outs(%5 : tensor<64xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.cmpf one, %in, %cst : f32
      cf.assert %252, "unimplemented: tensor with zero element"
      %253 = arith.divf %cst_0, %in : f32
      linalg.yield %253 : f32
    } -> tensor<64xf32>
    %expanded_9 = tensor.expand_shape %arg65 [[0, 1, 2]] : tensor<64xf32> into tensor<64x1x1xf32>
    %expanded_10 = tensor.expand_shape %30 [[0, 1, 2]] : tensor<64xf32> into tensor<64x1x1xf32>
    %31 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%27, %expanded_9 : tensor<1x64x56x56xf32>, tensor<64x1x1xf32>) outs(%16 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.subf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x64x56x56xf32>
    %32 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%31, %expanded_10 : tensor<1x64x56x56xf32>, tensor<64x1x1xf32>) outs(%16 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.mulf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x64x56x56xf32>
    %expanded_11 = tensor.expand_shape %arg4 [[0, 1, 2]] : tensor<64xf32> into tensor<64x1x1xf32>
    %33 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%32, %expanded_11 : tensor<1x64x56x56xf32>, tensor<64x1x1xf32>) outs(%16 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.mulf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x64x56x56xf32>
    %expanded_12 = tensor.expand_shape %arg5 [[0, 1, 2]] : tensor<64xf32> into tensor<64x1x1xf32>
    %34 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%33, %expanded_12 : tensor<1x64x56x56xf32>, tensor<64x1x1xf32>) outs(%16 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.addf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x64x56x56xf32>
    %35 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%34 : tensor<1x64x56x56xf32>) outs(%16 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.cmpf ugt, %in, %cst : f32
      %253 = arith.select %252, %in, %cst : f32
      linalg.yield %253 : f32
    } -> tensor<1x64x56x56xf32>
    %36 = tensor.empty() : tensor<1x64x58x58xf32>
    %37 = linalg.fill ins(%cst : f32) outs(%36 : tensor<1x64x58x58xf32>) -> tensor<1x64x58x58xf32>
    %inserted_slice_13 = tensor.insert_slice %35 into %37[0, 0, 1, 1] [1, 64, 56, 56] [1, 1, 1, 1] : tensor<1x64x56x56xf32> into tensor<1x64x58x58xf32>
    %38 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_13, %arg6 : tensor<1x64x58x58xf32>, tensor<64x64x3x3xf32>) outs(%26 : tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %39 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg69 : tensor<64xf32>) outs(%5 : tensor<64xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.truncf %cst_2 : f64 to f32
      %253 = arith.addf %in, %252 : f32
      linalg.yield %253 : f32
    } -> tensor<64xf32>
    %40 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%39 : tensor<64xf32>) outs(%5 : tensor<64xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = math.sqrt %in : f32
      linalg.yield %252 : f32
    } -> tensor<64xf32>
    %41 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%40 : tensor<64xf32>) outs(%5 : tensor<64xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.cmpf one, %in, %cst : f32
      cf.assert %252, "unimplemented: tensor with zero element"
      %253 = arith.divf %cst_0, %in : f32
      linalg.yield %253 : f32
    } -> tensor<64xf32>
    %expanded_14 = tensor.expand_shape %arg68 [[0, 1, 2]] : tensor<64xf32> into tensor<64x1x1xf32>
    %expanded_15 = tensor.expand_shape %41 [[0, 1, 2]] : tensor<64xf32> into tensor<64x1x1xf32>
    %42 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%38, %expanded_14 : tensor<1x64x56x56xf32>, tensor<64x1x1xf32>) outs(%16 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.subf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x64x56x56xf32>
    %43 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%42, %expanded_15 : tensor<1x64x56x56xf32>, tensor<64x1x1xf32>) outs(%16 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.mulf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x64x56x56xf32>
    %expanded_16 = tensor.expand_shape %arg7 [[0, 1, 2]] : tensor<64xf32> into tensor<64x1x1xf32>
    %44 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%43, %expanded_16 : tensor<1x64x56x56xf32>, tensor<64x1x1xf32>) outs(%16 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.mulf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x64x56x56xf32>
    %expanded_17 = tensor.expand_shape %arg8 [[0, 1, 2]] : tensor<64xf32> into tensor<64x1x1xf32>
    %45 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%44, %expanded_17 : tensor<1x64x56x56xf32>, tensor<64x1x1xf32>) outs(%16 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.addf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x64x56x56xf32>
    %46 = linalg.generic {indexing_maps = [#map1, #map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%45, %19 : tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) outs(%16 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.addf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x64x56x56xf32>
    %47 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%46 : tensor<1x64x56x56xf32>) outs(%16 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.cmpf ugt, %in, %cst : f32
      %253 = arith.select %252, %in, %cst : f32
      linalg.yield %253 : f32
    } -> tensor<1x64x56x56xf32>
    %48 = tensor.empty() : tensor<1x64x58x58xf32>
    %49 = linalg.fill ins(%cst : f32) outs(%48 : tensor<1x64x58x58xf32>) -> tensor<1x64x58x58xf32>
    %inserted_slice_18 = tensor.insert_slice %47 into %49[0, 0, 1, 1] [1, 64, 56, 56] [1, 1, 1, 1] : tensor<1x64x56x56xf32> into tensor<1x64x58x58xf32>
    %50 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_18, %arg9 : tensor<1x64x58x58xf32>, tensor<64x64x3x3xf32>) outs(%26 : tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %51 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg72 : tensor<64xf32>) outs(%5 : tensor<64xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.truncf %cst_2 : f64 to f32
      %253 = arith.addf %in, %252 : f32
      linalg.yield %253 : f32
    } -> tensor<64xf32>
    %52 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%51 : tensor<64xf32>) outs(%5 : tensor<64xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = math.sqrt %in : f32
      linalg.yield %252 : f32
    } -> tensor<64xf32>
    %53 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%52 : tensor<64xf32>) outs(%5 : tensor<64xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.cmpf one, %in, %cst : f32
      cf.assert %252, "unimplemented: tensor with zero element"
      %253 = arith.divf %cst_0, %in : f32
      linalg.yield %253 : f32
    } -> tensor<64xf32>
    %expanded_19 = tensor.expand_shape %arg71 [[0, 1, 2]] : tensor<64xf32> into tensor<64x1x1xf32>
    %expanded_20 = tensor.expand_shape %53 [[0, 1, 2]] : tensor<64xf32> into tensor<64x1x1xf32>
    %54 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%50, %expanded_19 : tensor<1x64x56x56xf32>, tensor<64x1x1xf32>) outs(%16 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.subf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x64x56x56xf32>
    %55 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%54, %expanded_20 : tensor<1x64x56x56xf32>, tensor<64x1x1xf32>) outs(%16 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.mulf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x64x56x56xf32>
    %expanded_21 = tensor.expand_shape %arg10 [[0, 1, 2]] : tensor<64xf32> into tensor<64x1x1xf32>
    %56 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%55, %expanded_21 : tensor<1x64x56x56xf32>, tensor<64x1x1xf32>) outs(%16 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.mulf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x64x56x56xf32>
    %expanded_22 = tensor.expand_shape %arg11 [[0, 1, 2]] : tensor<64xf32> into tensor<64x1x1xf32>
    %57 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%56, %expanded_22 : tensor<1x64x56x56xf32>, tensor<64x1x1xf32>) outs(%16 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.addf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x64x56x56xf32>
    %58 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%57 : tensor<1x64x56x56xf32>) outs(%16 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.cmpf ugt, %in, %cst : f32
      %253 = arith.select %252, %in, %cst : f32
      linalg.yield %253 : f32
    } -> tensor<1x64x56x56xf32>
    %59 = tensor.empty() : tensor<1x64x58x58xf32>
    %60 = linalg.fill ins(%cst : f32) outs(%59 : tensor<1x64x58x58xf32>) -> tensor<1x64x58x58xf32>
    %inserted_slice_23 = tensor.insert_slice %58 into %60[0, 0, 1, 1] [1, 64, 56, 56] [1, 1, 1, 1] : tensor<1x64x56x56xf32> into tensor<1x64x58x58xf32>
    %61 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_23, %arg12 : tensor<1x64x58x58xf32>, tensor<64x64x3x3xf32>) outs(%26 : tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %62 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg75 : tensor<64xf32>) outs(%5 : tensor<64xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.truncf %cst_2 : f64 to f32
      %253 = arith.addf %in, %252 : f32
      linalg.yield %253 : f32
    } -> tensor<64xf32>
    %63 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%62 : tensor<64xf32>) outs(%5 : tensor<64xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = math.sqrt %in : f32
      linalg.yield %252 : f32
    } -> tensor<64xf32>
    %64 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%63 : tensor<64xf32>) outs(%5 : tensor<64xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.cmpf one, %in, %cst : f32
      cf.assert %252, "unimplemented: tensor with zero element"
      %253 = arith.divf %cst_0, %in : f32
      linalg.yield %253 : f32
    } -> tensor<64xf32>
    %expanded_24 = tensor.expand_shape %arg74 [[0, 1, 2]] : tensor<64xf32> into tensor<64x1x1xf32>
    %expanded_25 = tensor.expand_shape %64 [[0, 1, 2]] : tensor<64xf32> into tensor<64x1x1xf32>
    %65 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%61, %expanded_24 : tensor<1x64x56x56xf32>, tensor<64x1x1xf32>) outs(%16 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.subf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x64x56x56xf32>
    %66 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%65, %expanded_25 : tensor<1x64x56x56xf32>, tensor<64x1x1xf32>) outs(%16 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.mulf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x64x56x56xf32>
    %expanded_26 = tensor.expand_shape %arg13 [[0, 1, 2]] : tensor<64xf32> into tensor<64x1x1xf32>
    %67 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%66, %expanded_26 : tensor<1x64x56x56xf32>, tensor<64x1x1xf32>) outs(%16 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.mulf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x64x56x56xf32>
    %expanded_27 = tensor.expand_shape %arg14 [[0, 1, 2]] : tensor<64xf32> into tensor<64x1x1xf32>
    %68 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%67, %expanded_27 : tensor<1x64x56x56xf32>, tensor<64x1x1xf32>) outs(%16 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.addf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x64x56x56xf32>
    %69 = linalg.generic {indexing_maps = [#map1, #map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%68, %47 : tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) outs(%16 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.addf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x64x56x56xf32>
    %70 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%69 : tensor<1x64x56x56xf32>) outs(%16 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.cmpf ugt, %in, %cst : f32
      %253 = arith.select %252, %in, %cst : f32
      linalg.yield %253 : f32
    } -> tensor<1x64x56x56xf32>
    %71 = tensor.empty() : tensor<1x64x58x58xf32>
    %72 = linalg.fill ins(%cst : f32) outs(%71 : tensor<1x64x58x58xf32>) -> tensor<1x64x58x58xf32>
    %inserted_slice_28 = tensor.insert_slice %70 into %72[0, 0, 1, 1] [1, 64, 56, 56] [1, 1, 1, 1] : tensor<1x64x56x56xf32> into tensor<1x64x58x58xf32>
    %73 = tensor.empty() : tensor<1x128x28x28xf32>
    %74 = linalg.fill ins(%cst : f32) outs(%73 : tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %75 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%inserted_slice_28, %arg15 : tensor<1x64x58x58xf32>, tensor<128x64x3x3xf32>) outs(%74 : tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %76 = tensor.empty() : tensor<128xf32>
    %77 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg78 : tensor<128xf32>) outs(%76 : tensor<128xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.truncf %cst_2 : f64 to f32
      %253 = arith.addf %in, %252 : f32
      linalg.yield %253 : f32
    } -> tensor<128xf32>
    %78 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%77 : tensor<128xf32>) outs(%76 : tensor<128xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = math.sqrt %in : f32
      linalg.yield %252 : f32
    } -> tensor<128xf32>
    %79 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%78 : tensor<128xf32>) outs(%76 : tensor<128xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.cmpf one, %in, %cst : f32
      cf.assert %252, "unimplemented: tensor with zero element"
      %253 = arith.divf %cst_0, %in : f32
      linalg.yield %253 : f32
    } -> tensor<128xf32>
    %expanded_29 = tensor.expand_shape %arg77 [[0, 1, 2]] : tensor<128xf32> into tensor<128x1x1xf32>
    %expanded_30 = tensor.expand_shape %79 [[0, 1, 2]] : tensor<128xf32> into tensor<128x1x1xf32>
    %80 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%75, %expanded_29 : tensor<1x128x28x28xf32>, tensor<128x1x1xf32>) outs(%73 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.subf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x128x28x28xf32>
    %81 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%80, %expanded_30 : tensor<1x128x28x28xf32>, tensor<128x1x1xf32>) outs(%73 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.mulf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x128x28x28xf32>
    %expanded_31 = tensor.expand_shape %arg16 [[0, 1, 2]] : tensor<128xf32> into tensor<128x1x1xf32>
    %82 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%81, %expanded_31 : tensor<1x128x28x28xf32>, tensor<128x1x1xf32>) outs(%73 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.mulf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x128x28x28xf32>
    %expanded_32 = tensor.expand_shape %arg17 [[0, 1, 2]] : tensor<128xf32> into tensor<128x1x1xf32>
    %83 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%82, %expanded_32 : tensor<1x128x28x28xf32>, tensor<128x1x1xf32>) outs(%73 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.addf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x128x28x28xf32>
    %84 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%83 : tensor<1x128x28x28xf32>) outs(%73 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.cmpf ugt, %in, %cst : f32
      %253 = arith.select %252, %in, %cst : f32
      linalg.yield %253 : f32
    } -> tensor<1x128x28x28xf32>
    %85 = tensor.empty() : tensor<1x128x30x30xf32>
    %86 = linalg.fill ins(%cst : f32) outs(%85 : tensor<1x128x30x30xf32>) -> tensor<1x128x30x30xf32>
    %inserted_slice_33 = tensor.insert_slice %84 into %86[0, 0, 1, 1] [1, 128, 28, 28] [1, 1, 1, 1] : tensor<1x128x28x28xf32> into tensor<1x128x30x30xf32>
    %87 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_33, %arg18 : tensor<1x128x30x30xf32>, tensor<128x128x3x3xf32>) outs(%74 : tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %88 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg81 : tensor<128xf32>) outs(%76 : tensor<128xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.truncf %cst_2 : f64 to f32
      %253 = arith.addf %in, %252 : f32
      linalg.yield %253 : f32
    } -> tensor<128xf32>
    %89 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%88 : tensor<128xf32>) outs(%76 : tensor<128xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = math.sqrt %in : f32
      linalg.yield %252 : f32
    } -> tensor<128xf32>
    %90 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%89 : tensor<128xf32>) outs(%76 : tensor<128xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.cmpf one, %in, %cst : f32
      cf.assert %252, "unimplemented: tensor with zero element"
      %253 = arith.divf %cst_0, %in : f32
      linalg.yield %253 : f32
    } -> tensor<128xf32>
    %expanded_34 = tensor.expand_shape %arg80 [[0, 1, 2]] : tensor<128xf32> into tensor<128x1x1xf32>
    %expanded_35 = tensor.expand_shape %90 [[0, 1, 2]] : tensor<128xf32> into tensor<128x1x1xf32>
    %91 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%87, %expanded_34 : tensor<1x128x28x28xf32>, tensor<128x1x1xf32>) outs(%73 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.subf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x128x28x28xf32>
    %92 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%91, %expanded_35 : tensor<1x128x28x28xf32>, tensor<128x1x1xf32>) outs(%73 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.mulf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x128x28x28xf32>
    %expanded_36 = tensor.expand_shape %arg19 [[0, 1, 2]] : tensor<128xf32> into tensor<128x1x1xf32>
    %93 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%92, %expanded_36 : tensor<1x128x28x28xf32>, tensor<128x1x1xf32>) outs(%73 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.mulf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x128x28x28xf32>
    %expanded_37 = tensor.expand_shape %arg20 [[0, 1, 2]] : tensor<128xf32> into tensor<128x1x1xf32>
    %94 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%93, %expanded_37 : tensor<1x128x28x28xf32>, tensor<128x1x1xf32>) outs(%73 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.addf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x128x28x28xf32>
    %95 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%70, %arg21 : tensor<1x64x56x56xf32>, tensor<128x64x1x1xf32>) outs(%74 : tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %96 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg84 : tensor<128xf32>) outs(%76 : tensor<128xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.truncf %cst_2 : f64 to f32
      %253 = arith.addf %in, %252 : f32
      linalg.yield %253 : f32
    } -> tensor<128xf32>
    %97 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%96 : tensor<128xf32>) outs(%76 : tensor<128xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = math.sqrt %in : f32
      linalg.yield %252 : f32
    } -> tensor<128xf32>
    %98 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%97 : tensor<128xf32>) outs(%76 : tensor<128xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.cmpf one, %in, %cst : f32
      cf.assert %252, "unimplemented: tensor with zero element"
      %253 = arith.divf %cst_0, %in : f32
      linalg.yield %253 : f32
    } -> tensor<128xf32>
    %expanded_38 = tensor.expand_shape %arg83 [[0, 1, 2]] : tensor<128xf32> into tensor<128x1x1xf32>
    %expanded_39 = tensor.expand_shape %98 [[0, 1, 2]] : tensor<128xf32> into tensor<128x1x1xf32>
    %99 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%95, %expanded_38 : tensor<1x128x28x28xf32>, tensor<128x1x1xf32>) outs(%73 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.subf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x128x28x28xf32>
    %100 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%99, %expanded_39 : tensor<1x128x28x28xf32>, tensor<128x1x1xf32>) outs(%73 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.mulf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x128x28x28xf32>
    %expanded_40 = tensor.expand_shape %arg22 [[0, 1, 2]] : tensor<128xf32> into tensor<128x1x1xf32>
    %101 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%100, %expanded_40 : tensor<1x128x28x28xf32>, tensor<128x1x1xf32>) outs(%73 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.mulf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x128x28x28xf32>
    %expanded_41 = tensor.expand_shape %arg23 [[0, 1, 2]] : tensor<128xf32> into tensor<128x1x1xf32>
    %102 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%101, %expanded_41 : tensor<1x128x28x28xf32>, tensor<128x1x1xf32>) outs(%73 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.addf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x128x28x28xf32>
    %103 = linalg.generic {indexing_maps = [#map1, #map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%94, %102 : tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) outs(%73 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.addf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x128x28x28xf32>
    %104 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%103 : tensor<1x128x28x28xf32>) outs(%73 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.cmpf ugt, %in, %cst : f32
      %253 = arith.select %252, %in, %cst : f32
      linalg.yield %253 : f32
    } -> tensor<1x128x28x28xf32>
    %105 = tensor.empty() : tensor<1x128x30x30xf32>
    %106 = linalg.fill ins(%cst : f32) outs(%105 : tensor<1x128x30x30xf32>) -> tensor<1x128x30x30xf32>
    %inserted_slice_42 = tensor.insert_slice %104 into %106[0, 0, 1, 1] [1, 128, 28, 28] [1, 1, 1, 1] : tensor<1x128x28x28xf32> into tensor<1x128x30x30xf32>
    %107 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_42, %arg24 : tensor<1x128x30x30xf32>, tensor<128x128x3x3xf32>) outs(%74 : tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %108 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg87 : tensor<128xf32>) outs(%76 : tensor<128xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.truncf %cst_2 : f64 to f32
      %253 = arith.addf %in, %252 : f32
      linalg.yield %253 : f32
    } -> tensor<128xf32>
    %109 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%108 : tensor<128xf32>) outs(%76 : tensor<128xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = math.sqrt %in : f32
      linalg.yield %252 : f32
    } -> tensor<128xf32>
    %110 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%109 : tensor<128xf32>) outs(%76 : tensor<128xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.cmpf one, %in, %cst : f32
      cf.assert %252, "unimplemented: tensor with zero element"
      %253 = arith.divf %cst_0, %in : f32
      linalg.yield %253 : f32
    } -> tensor<128xf32>
    %expanded_43 = tensor.expand_shape %arg86 [[0, 1, 2]] : tensor<128xf32> into tensor<128x1x1xf32>
    %expanded_44 = tensor.expand_shape %110 [[0, 1, 2]] : tensor<128xf32> into tensor<128x1x1xf32>
    %111 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%107, %expanded_43 : tensor<1x128x28x28xf32>, tensor<128x1x1xf32>) outs(%73 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.subf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x128x28x28xf32>
    %112 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%111, %expanded_44 : tensor<1x128x28x28xf32>, tensor<128x1x1xf32>) outs(%73 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.mulf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x128x28x28xf32>
    %expanded_45 = tensor.expand_shape %arg25 [[0, 1, 2]] : tensor<128xf32> into tensor<128x1x1xf32>
    %113 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%112, %expanded_45 : tensor<1x128x28x28xf32>, tensor<128x1x1xf32>) outs(%73 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.mulf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x128x28x28xf32>
    %expanded_46 = tensor.expand_shape %arg26 [[0, 1, 2]] : tensor<128xf32> into tensor<128x1x1xf32>
    %114 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%113, %expanded_46 : tensor<1x128x28x28xf32>, tensor<128x1x1xf32>) outs(%73 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.addf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x128x28x28xf32>
    %115 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%114 : tensor<1x128x28x28xf32>) outs(%73 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.cmpf ugt, %in, %cst : f32
      %253 = arith.select %252, %in, %cst : f32
      linalg.yield %253 : f32
    } -> tensor<1x128x28x28xf32>
    %116 = tensor.empty() : tensor<1x128x30x30xf32>
    %117 = linalg.fill ins(%cst : f32) outs(%116 : tensor<1x128x30x30xf32>) -> tensor<1x128x30x30xf32>
    %inserted_slice_47 = tensor.insert_slice %115 into %117[0, 0, 1, 1] [1, 128, 28, 28] [1, 1, 1, 1] : tensor<1x128x28x28xf32> into tensor<1x128x30x30xf32>
    %118 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_47, %arg27 : tensor<1x128x30x30xf32>, tensor<128x128x3x3xf32>) outs(%74 : tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %119 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg90 : tensor<128xf32>) outs(%76 : tensor<128xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.truncf %cst_2 : f64 to f32
      %253 = arith.addf %in, %252 : f32
      linalg.yield %253 : f32
    } -> tensor<128xf32>
    %120 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%119 : tensor<128xf32>) outs(%76 : tensor<128xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = math.sqrt %in : f32
      linalg.yield %252 : f32
    } -> tensor<128xf32>
    %121 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%120 : tensor<128xf32>) outs(%76 : tensor<128xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.cmpf one, %in, %cst : f32
      cf.assert %252, "unimplemented: tensor with zero element"
      %253 = arith.divf %cst_0, %in : f32
      linalg.yield %253 : f32
    } -> tensor<128xf32>
    %expanded_48 = tensor.expand_shape %arg89 [[0, 1, 2]] : tensor<128xf32> into tensor<128x1x1xf32>
    %expanded_49 = tensor.expand_shape %121 [[0, 1, 2]] : tensor<128xf32> into tensor<128x1x1xf32>
    %122 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%118, %expanded_48 : tensor<1x128x28x28xf32>, tensor<128x1x1xf32>) outs(%73 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.subf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x128x28x28xf32>
    %123 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%122, %expanded_49 : tensor<1x128x28x28xf32>, tensor<128x1x1xf32>) outs(%73 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.mulf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x128x28x28xf32>
    %expanded_50 = tensor.expand_shape %arg28 [[0, 1, 2]] : tensor<128xf32> into tensor<128x1x1xf32>
    %124 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%123, %expanded_50 : tensor<1x128x28x28xf32>, tensor<128x1x1xf32>) outs(%73 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.mulf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x128x28x28xf32>
    %expanded_51 = tensor.expand_shape %arg29 [[0, 1, 2]] : tensor<128xf32> into tensor<128x1x1xf32>
    %125 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%124, %expanded_51 : tensor<1x128x28x28xf32>, tensor<128x1x1xf32>) outs(%73 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.addf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x128x28x28xf32>
    %126 = linalg.generic {indexing_maps = [#map1, #map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%125, %104 : tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) outs(%73 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.addf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x128x28x28xf32>
    %127 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%126 : tensor<1x128x28x28xf32>) outs(%73 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.cmpf ugt, %in, %cst : f32
      %253 = arith.select %252, %in, %cst : f32
      linalg.yield %253 : f32
    } -> tensor<1x128x28x28xf32>
    %128 = tensor.empty() : tensor<1x128x30x30xf32>
    %129 = linalg.fill ins(%cst : f32) outs(%128 : tensor<1x128x30x30xf32>) -> tensor<1x128x30x30xf32>
    %inserted_slice_52 = tensor.insert_slice %127 into %129[0, 0, 1, 1] [1, 128, 28, 28] [1, 1, 1, 1] : tensor<1x128x28x28xf32> into tensor<1x128x30x30xf32>
    %130 = tensor.empty() : tensor<1x256x14x14xf32>
    %131 = linalg.fill ins(%cst : f32) outs(%130 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %132 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%inserted_slice_52, %arg30 : tensor<1x128x30x30xf32>, tensor<256x128x3x3xf32>) outs(%131 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %133 = tensor.empty() : tensor<256xf32>
    %134 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg93 : tensor<256xf32>) outs(%133 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.truncf %cst_2 : f64 to f32
      %253 = arith.addf %in, %252 : f32
      linalg.yield %253 : f32
    } -> tensor<256xf32>
    %135 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%134 : tensor<256xf32>) outs(%133 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = math.sqrt %in : f32
      linalg.yield %252 : f32
    } -> tensor<256xf32>
    %136 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%135 : tensor<256xf32>) outs(%133 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.cmpf one, %in, %cst : f32
      cf.assert %252, "unimplemented: tensor with zero element"
      %253 = arith.divf %cst_0, %in : f32
      linalg.yield %253 : f32
    } -> tensor<256xf32>
    %expanded_53 = tensor.expand_shape %arg92 [[0, 1, 2]] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_54 = tensor.expand_shape %136 [[0, 1, 2]] : tensor<256xf32> into tensor<256x1x1xf32>
    %137 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%132, %expanded_53 : tensor<1x256x14x14xf32>, tensor<256x1x1xf32>) outs(%130 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.subf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x256x14x14xf32>
    %138 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%137, %expanded_54 : tensor<1x256x14x14xf32>, tensor<256x1x1xf32>) outs(%130 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.mulf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x256x14x14xf32>
    %expanded_55 = tensor.expand_shape %arg31 [[0, 1, 2]] : tensor<256xf32> into tensor<256x1x1xf32>
    %139 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%138, %expanded_55 : tensor<1x256x14x14xf32>, tensor<256x1x1xf32>) outs(%130 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.mulf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x256x14x14xf32>
    %expanded_56 = tensor.expand_shape %arg32 [[0, 1, 2]] : tensor<256xf32> into tensor<256x1x1xf32>
    %140 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%139, %expanded_56 : tensor<1x256x14x14xf32>, tensor<256x1x1xf32>) outs(%130 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.addf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x256x14x14xf32>
    %141 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%140 : tensor<1x256x14x14xf32>) outs(%130 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.cmpf ugt, %in, %cst : f32
      %253 = arith.select %252, %in, %cst : f32
      linalg.yield %253 : f32
    } -> tensor<1x256x14x14xf32>
    %142 = tensor.empty() : tensor<1x256x16x16xf32>
    %143 = linalg.fill ins(%cst : f32) outs(%142 : tensor<1x256x16x16xf32>) -> tensor<1x256x16x16xf32>
    %inserted_slice_57 = tensor.insert_slice %141 into %143[0, 0, 1, 1] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x256x16x16xf32>
    %144 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_57, %arg33 : tensor<1x256x16x16xf32>, tensor<256x256x3x3xf32>) outs(%131 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %145 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg96 : tensor<256xf32>) outs(%133 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.truncf %cst_2 : f64 to f32
      %253 = arith.addf %in, %252 : f32
      linalg.yield %253 : f32
    } -> tensor<256xf32>
    %146 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%145 : tensor<256xf32>) outs(%133 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = math.sqrt %in : f32
      linalg.yield %252 : f32
    } -> tensor<256xf32>
    %147 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%146 : tensor<256xf32>) outs(%133 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.cmpf one, %in, %cst : f32
      cf.assert %252, "unimplemented: tensor with zero element"
      %253 = arith.divf %cst_0, %in : f32
      linalg.yield %253 : f32
    } -> tensor<256xf32>
    %expanded_58 = tensor.expand_shape %arg95 [[0, 1, 2]] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_59 = tensor.expand_shape %147 [[0, 1, 2]] : tensor<256xf32> into tensor<256x1x1xf32>
    %148 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%144, %expanded_58 : tensor<1x256x14x14xf32>, tensor<256x1x1xf32>) outs(%130 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.subf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x256x14x14xf32>
    %149 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%148, %expanded_59 : tensor<1x256x14x14xf32>, tensor<256x1x1xf32>) outs(%130 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.mulf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x256x14x14xf32>
    %expanded_60 = tensor.expand_shape %arg34 [[0, 1, 2]] : tensor<256xf32> into tensor<256x1x1xf32>
    %150 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%149, %expanded_60 : tensor<1x256x14x14xf32>, tensor<256x1x1xf32>) outs(%130 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.mulf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x256x14x14xf32>
    %expanded_61 = tensor.expand_shape %arg35 [[0, 1, 2]] : tensor<256xf32> into tensor<256x1x1xf32>
    %151 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%150, %expanded_61 : tensor<1x256x14x14xf32>, tensor<256x1x1xf32>) outs(%130 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.addf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x256x14x14xf32>
    %152 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%127, %arg36 : tensor<1x128x28x28xf32>, tensor<256x128x1x1xf32>) outs(%131 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %153 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg99 : tensor<256xf32>) outs(%133 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.truncf %cst_2 : f64 to f32
      %253 = arith.addf %in, %252 : f32
      linalg.yield %253 : f32
    } -> tensor<256xf32>
    %154 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%153 : tensor<256xf32>) outs(%133 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = math.sqrt %in : f32
      linalg.yield %252 : f32
    } -> tensor<256xf32>
    %155 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%154 : tensor<256xf32>) outs(%133 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.cmpf one, %in, %cst : f32
      cf.assert %252, "unimplemented: tensor with zero element"
      %253 = arith.divf %cst_0, %in : f32
      linalg.yield %253 : f32
    } -> tensor<256xf32>
    %expanded_62 = tensor.expand_shape %arg98 [[0, 1, 2]] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_63 = tensor.expand_shape %155 [[0, 1, 2]] : tensor<256xf32> into tensor<256x1x1xf32>
    %156 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%152, %expanded_62 : tensor<1x256x14x14xf32>, tensor<256x1x1xf32>) outs(%130 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.subf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x256x14x14xf32>
    %157 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%156, %expanded_63 : tensor<1x256x14x14xf32>, tensor<256x1x1xf32>) outs(%130 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.mulf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x256x14x14xf32>
    %expanded_64 = tensor.expand_shape %arg37 [[0, 1, 2]] : tensor<256xf32> into tensor<256x1x1xf32>
    %158 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%157, %expanded_64 : tensor<1x256x14x14xf32>, tensor<256x1x1xf32>) outs(%130 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.mulf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x256x14x14xf32>
    %expanded_65 = tensor.expand_shape %arg38 [[0, 1, 2]] : tensor<256xf32> into tensor<256x1x1xf32>
    %159 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%158, %expanded_65 : tensor<1x256x14x14xf32>, tensor<256x1x1xf32>) outs(%130 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.addf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x256x14x14xf32>
    %160 = linalg.generic {indexing_maps = [#map1, #map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%151, %159 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%130 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.addf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x256x14x14xf32>
    %161 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%160 : tensor<1x256x14x14xf32>) outs(%130 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.cmpf ugt, %in, %cst : f32
      %253 = arith.select %252, %in, %cst : f32
      linalg.yield %253 : f32
    } -> tensor<1x256x14x14xf32>
    %162 = tensor.empty() : tensor<1x256x16x16xf32>
    %163 = linalg.fill ins(%cst : f32) outs(%162 : tensor<1x256x16x16xf32>) -> tensor<1x256x16x16xf32>
    %inserted_slice_66 = tensor.insert_slice %161 into %163[0, 0, 1, 1] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x256x16x16xf32>
    %164 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_66, %arg39 : tensor<1x256x16x16xf32>, tensor<256x256x3x3xf32>) outs(%131 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %165 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg102 : tensor<256xf32>) outs(%133 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.truncf %cst_2 : f64 to f32
      %253 = arith.addf %in, %252 : f32
      linalg.yield %253 : f32
    } -> tensor<256xf32>
    %166 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%165 : tensor<256xf32>) outs(%133 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = math.sqrt %in : f32
      linalg.yield %252 : f32
    } -> tensor<256xf32>
    %167 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%166 : tensor<256xf32>) outs(%133 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.cmpf one, %in, %cst : f32
      cf.assert %252, "unimplemented: tensor with zero element"
      %253 = arith.divf %cst_0, %in : f32
      linalg.yield %253 : f32
    } -> tensor<256xf32>
    %expanded_67 = tensor.expand_shape %arg101 [[0, 1, 2]] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_68 = tensor.expand_shape %167 [[0, 1, 2]] : tensor<256xf32> into tensor<256x1x1xf32>
    %168 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%164, %expanded_67 : tensor<1x256x14x14xf32>, tensor<256x1x1xf32>) outs(%130 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.subf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x256x14x14xf32>
    %169 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%168, %expanded_68 : tensor<1x256x14x14xf32>, tensor<256x1x1xf32>) outs(%130 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.mulf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x256x14x14xf32>
    %expanded_69 = tensor.expand_shape %arg40 [[0, 1, 2]] : tensor<256xf32> into tensor<256x1x1xf32>
    %170 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%169, %expanded_69 : tensor<1x256x14x14xf32>, tensor<256x1x1xf32>) outs(%130 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.mulf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x256x14x14xf32>
    %expanded_70 = tensor.expand_shape %arg41 [[0, 1, 2]] : tensor<256xf32> into tensor<256x1x1xf32>
    %171 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%170, %expanded_70 : tensor<1x256x14x14xf32>, tensor<256x1x1xf32>) outs(%130 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.addf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x256x14x14xf32>
    %172 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%171 : tensor<1x256x14x14xf32>) outs(%130 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.cmpf ugt, %in, %cst : f32
      %253 = arith.select %252, %in, %cst : f32
      linalg.yield %253 : f32
    } -> tensor<1x256x14x14xf32>
    %173 = tensor.empty() : tensor<1x256x16x16xf32>
    %174 = linalg.fill ins(%cst : f32) outs(%173 : tensor<1x256x16x16xf32>) -> tensor<1x256x16x16xf32>
    %inserted_slice_71 = tensor.insert_slice %172 into %174[0, 0, 1, 1] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x256x16x16xf32>
    %175 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_71, %arg42 : tensor<1x256x16x16xf32>, tensor<256x256x3x3xf32>) outs(%131 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %176 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg105 : tensor<256xf32>) outs(%133 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.truncf %cst_2 : f64 to f32
      %253 = arith.addf %in, %252 : f32
      linalg.yield %253 : f32
    } -> tensor<256xf32>
    %177 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%176 : tensor<256xf32>) outs(%133 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = math.sqrt %in : f32
      linalg.yield %252 : f32
    } -> tensor<256xf32>
    %178 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%177 : tensor<256xf32>) outs(%133 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.cmpf one, %in, %cst : f32
      cf.assert %252, "unimplemented: tensor with zero element"
      %253 = arith.divf %cst_0, %in : f32
      linalg.yield %253 : f32
    } -> tensor<256xf32>
    %expanded_72 = tensor.expand_shape %arg104 [[0, 1, 2]] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_73 = tensor.expand_shape %178 [[0, 1, 2]] : tensor<256xf32> into tensor<256x1x1xf32>
    %179 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%175, %expanded_72 : tensor<1x256x14x14xf32>, tensor<256x1x1xf32>) outs(%130 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.subf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x256x14x14xf32>
    %180 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%179, %expanded_73 : tensor<1x256x14x14xf32>, tensor<256x1x1xf32>) outs(%130 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.mulf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x256x14x14xf32>
    %expanded_74 = tensor.expand_shape %arg43 [[0, 1, 2]] : tensor<256xf32> into tensor<256x1x1xf32>
    %181 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%180, %expanded_74 : tensor<1x256x14x14xf32>, tensor<256x1x1xf32>) outs(%130 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.mulf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x256x14x14xf32>
    %expanded_75 = tensor.expand_shape %arg44 [[0, 1, 2]] : tensor<256xf32> into tensor<256x1x1xf32>
    %182 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%181, %expanded_75 : tensor<1x256x14x14xf32>, tensor<256x1x1xf32>) outs(%130 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.addf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x256x14x14xf32>
    %183 = linalg.generic {indexing_maps = [#map1, #map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%182, %161 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%130 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.addf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x256x14x14xf32>
    %184 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%183 : tensor<1x256x14x14xf32>) outs(%130 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.cmpf ugt, %in, %cst : f32
      %253 = arith.select %252, %in, %cst : f32
      linalg.yield %253 : f32
    } -> tensor<1x256x14x14xf32>
    %185 = tensor.empty() : tensor<1x256x16x16xf32>
    %186 = linalg.fill ins(%cst : f32) outs(%185 : tensor<1x256x16x16xf32>) -> tensor<1x256x16x16xf32>
    %inserted_slice_76 = tensor.insert_slice %184 into %186[0, 0, 1, 1] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x256x16x16xf32>
    %187 = tensor.empty() : tensor<1x512x7x7xf32>
    %188 = linalg.fill ins(%cst : f32) outs(%187 : tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %189 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%inserted_slice_76, %arg45 : tensor<1x256x16x16xf32>, tensor<512x256x3x3xf32>) outs(%188 : tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %190 = tensor.empty() : tensor<512xf32>
    %191 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg108 : tensor<512xf32>) outs(%190 : tensor<512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.truncf %cst_2 : f64 to f32
      %253 = arith.addf %in, %252 : f32
      linalg.yield %253 : f32
    } -> tensor<512xf32>
    %192 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%191 : tensor<512xf32>) outs(%190 : tensor<512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = math.sqrt %in : f32
      linalg.yield %252 : f32
    } -> tensor<512xf32>
    %193 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%192 : tensor<512xf32>) outs(%190 : tensor<512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.cmpf one, %in, %cst : f32
      cf.assert %252, "unimplemented: tensor with zero element"
      %253 = arith.divf %cst_0, %in : f32
      linalg.yield %253 : f32
    } -> tensor<512xf32>
    %expanded_77 = tensor.expand_shape %arg107 [[0, 1, 2]] : tensor<512xf32> into tensor<512x1x1xf32>
    %expanded_78 = tensor.expand_shape %193 [[0, 1, 2]] : tensor<512xf32> into tensor<512x1x1xf32>
    %194 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%189, %expanded_77 : tensor<1x512x7x7xf32>, tensor<512x1x1xf32>) outs(%187 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.subf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x512x7x7xf32>
    %195 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%194, %expanded_78 : tensor<1x512x7x7xf32>, tensor<512x1x1xf32>) outs(%187 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.mulf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x512x7x7xf32>
    %expanded_79 = tensor.expand_shape %arg46 [[0, 1, 2]] : tensor<512xf32> into tensor<512x1x1xf32>
    %196 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%195, %expanded_79 : tensor<1x512x7x7xf32>, tensor<512x1x1xf32>) outs(%187 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.mulf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x512x7x7xf32>
    %expanded_80 = tensor.expand_shape %arg47 [[0, 1, 2]] : tensor<512xf32> into tensor<512x1x1xf32>
    %197 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%196, %expanded_80 : tensor<1x512x7x7xf32>, tensor<512x1x1xf32>) outs(%187 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.addf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x512x7x7xf32>
    %198 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%197 : tensor<1x512x7x7xf32>) outs(%187 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.cmpf ugt, %in, %cst : f32
      %253 = arith.select %252, %in, %cst : f32
      linalg.yield %253 : f32
    } -> tensor<1x512x7x7xf32>
    %199 = tensor.empty() : tensor<1x512x9x9xf32>
    %200 = linalg.fill ins(%cst : f32) outs(%199 : tensor<1x512x9x9xf32>) -> tensor<1x512x9x9xf32>
    %inserted_slice_81 = tensor.insert_slice %198 into %200[0, 0, 1, 1] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x512x7x7xf32> into tensor<1x512x9x9xf32>
    %201 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_81, %arg48 : tensor<1x512x9x9xf32>, tensor<512x512x3x3xf32>) outs(%188 : tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %202 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg111 : tensor<512xf32>) outs(%190 : tensor<512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.truncf %cst_2 : f64 to f32
      %253 = arith.addf %in, %252 : f32
      linalg.yield %253 : f32
    } -> tensor<512xf32>
    %203 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%202 : tensor<512xf32>) outs(%190 : tensor<512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = math.sqrt %in : f32
      linalg.yield %252 : f32
    } -> tensor<512xf32>
    %204 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%203 : tensor<512xf32>) outs(%190 : tensor<512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.cmpf one, %in, %cst : f32
      cf.assert %252, "unimplemented: tensor with zero element"
      %253 = arith.divf %cst_0, %in : f32
      linalg.yield %253 : f32
    } -> tensor<512xf32>
    %expanded_82 = tensor.expand_shape %arg110 [[0, 1, 2]] : tensor<512xf32> into tensor<512x1x1xf32>
    %expanded_83 = tensor.expand_shape %204 [[0, 1, 2]] : tensor<512xf32> into tensor<512x1x1xf32>
    %205 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%201, %expanded_82 : tensor<1x512x7x7xf32>, tensor<512x1x1xf32>) outs(%187 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.subf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x512x7x7xf32>
    %206 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%205, %expanded_83 : tensor<1x512x7x7xf32>, tensor<512x1x1xf32>) outs(%187 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.mulf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x512x7x7xf32>
    %expanded_84 = tensor.expand_shape %arg49 [[0, 1, 2]] : tensor<512xf32> into tensor<512x1x1xf32>
    %207 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%206, %expanded_84 : tensor<1x512x7x7xf32>, tensor<512x1x1xf32>) outs(%187 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.mulf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x512x7x7xf32>
    %expanded_85 = tensor.expand_shape %arg50 [[0, 1, 2]] : tensor<512xf32> into tensor<512x1x1xf32>
    %208 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%207, %expanded_85 : tensor<1x512x7x7xf32>, tensor<512x1x1xf32>) outs(%187 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.addf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x512x7x7xf32>
    %209 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%184, %arg51 : tensor<1x256x14x14xf32>, tensor<512x256x1x1xf32>) outs(%188 : tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %210 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg114 : tensor<512xf32>) outs(%190 : tensor<512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.truncf %cst_2 : f64 to f32
      %253 = arith.addf %in, %252 : f32
      linalg.yield %253 : f32
    } -> tensor<512xf32>
    %211 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%210 : tensor<512xf32>) outs(%190 : tensor<512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = math.sqrt %in : f32
      linalg.yield %252 : f32
    } -> tensor<512xf32>
    %212 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%211 : tensor<512xf32>) outs(%190 : tensor<512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.cmpf one, %in, %cst : f32
      cf.assert %252, "unimplemented: tensor with zero element"
      %253 = arith.divf %cst_0, %in : f32
      linalg.yield %253 : f32
    } -> tensor<512xf32>
    %expanded_86 = tensor.expand_shape %arg113 [[0, 1, 2]] : tensor<512xf32> into tensor<512x1x1xf32>
    %expanded_87 = tensor.expand_shape %212 [[0, 1, 2]] : tensor<512xf32> into tensor<512x1x1xf32>
    %213 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%209, %expanded_86 : tensor<1x512x7x7xf32>, tensor<512x1x1xf32>) outs(%187 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.subf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x512x7x7xf32>
    %214 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%213, %expanded_87 : tensor<1x512x7x7xf32>, tensor<512x1x1xf32>) outs(%187 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.mulf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x512x7x7xf32>
    %expanded_88 = tensor.expand_shape %arg52 [[0, 1, 2]] : tensor<512xf32> into tensor<512x1x1xf32>
    %215 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%214, %expanded_88 : tensor<1x512x7x7xf32>, tensor<512x1x1xf32>) outs(%187 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.mulf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x512x7x7xf32>
    %expanded_89 = tensor.expand_shape %arg53 [[0, 1, 2]] : tensor<512xf32> into tensor<512x1x1xf32>
    %216 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%215, %expanded_89 : tensor<1x512x7x7xf32>, tensor<512x1x1xf32>) outs(%187 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.addf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x512x7x7xf32>
    %217 = linalg.generic {indexing_maps = [#map1, #map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%208, %216 : tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) outs(%187 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.addf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x512x7x7xf32>
    %218 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%217 : tensor<1x512x7x7xf32>) outs(%187 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.cmpf ugt, %in, %cst : f32
      %253 = arith.select %252, %in, %cst : f32
      linalg.yield %253 : f32
    } -> tensor<1x512x7x7xf32>
    %219 = tensor.empty() : tensor<1x512x9x9xf32>
    %220 = linalg.fill ins(%cst : f32) outs(%219 : tensor<1x512x9x9xf32>) -> tensor<1x512x9x9xf32>
    %inserted_slice_90 = tensor.insert_slice %218 into %220[0, 0, 1, 1] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x512x7x7xf32> into tensor<1x512x9x9xf32>
    %221 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_90, %arg54 : tensor<1x512x9x9xf32>, tensor<512x512x3x3xf32>) outs(%188 : tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %222 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg117 : tensor<512xf32>) outs(%190 : tensor<512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.truncf %cst_2 : f64 to f32
      %253 = arith.addf %in, %252 : f32
      linalg.yield %253 : f32
    } -> tensor<512xf32>
    %223 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%222 : tensor<512xf32>) outs(%190 : tensor<512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = math.sqrt %in : f32
      linalg.yield %252 : f32
    } -> tensor<512xf32>
    %224 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%223 : tensor<512xf32>) outs(%190 : tensor<512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.cmpf one, %in, %cst : f32
      cf.assert %252, "unimplemented: tensor with zero element"
      %253 = arith.divf %cst_0, %in : f32
      linalg.yield %253 : f32
    } -> tensor<512xf32>
    %expanded_91 = tensor.expand_shape %arg116 [[0, 1, 2]] : tensor<512xf32> into tensor<512x1x1xf32>
    %expanded_92 = tensor.expand_shape %224 [[0, 1, 2]] : tensor<512xf32> into tensor<512x1x1xf32>
    %225 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%221, %expanded_91 : tensor<1x512x7x7xf32>, tensor<512x1x1xf32>) outs(%187 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.subf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x512x7x7xf32>
    %226 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%225, %expanded_92 : tensor<1x512x7x7xf32>, tensor<512x1x1xf32>) outs(%187 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.mulf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x512x7x7xf32>
    %expanded_93 = tensor.expand_shape %arg55 [[0, 1, 2]] : tensor<512xf32> into tensor<512x1x1xf32>
    %227 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%226, %expanded_93 : tensor<1x512x7x7xf32>, tensor<512x1x1xf32>) outs(%187 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.mulf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x512x7x7xf32>
    %expanded_94 = tensor.expand_shape %arg56 [[0, 1, 2]] : tensor<512xf32> into tensor<512x1x1xf32>
    %228 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%227, %expanded_94 : tensor<1x512x7x7xf32>, tensor<512x1x1xf32>) outs(%187 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.addf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x512x7x7xf32>
    %229 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%228 : tensor<1x512x7x7xf32>) outs(%187 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.cmpf ugt, %in, %cst : f32
      %253 = arith.select %252, %in, %cst : f32
      linalg.yield %253 : f32
    } -> tensor<1x512x7x7xf32>
    %230 = tensor.empty() : tensor<1x512x9x9xf32>
    %231 = linalg.fill ins(%cst : f32) outs(%230 : tensor<1x512x9x9xf32>) -> tensor<1x512x9x9xf32>
    %inserted_slice_95 = tensor.insert_slice %229 into %231[0, 0, 1, 1] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x512x7x7xf32> into tensor<1x512x9x9xf32>
    %232 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_95, %arg57 : tensor<1x512x9x9xf32>, tensor<512x512x3x3xf32>) outs(%188 : tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %233 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg120 : tensor<512xf32>) outs(%190 : tensor<512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.truncf %cst_2 : f64 to f32
      %253 = arith.addf %in, %252 : f32
      linalg.yield %253 : f32
    } -> tensor<512xf32>
    %234 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%233 : tensor<512xf32>) outs(%190 : tensor<512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = math.sqrt %in : f32
      linalg.yield %252 : f32
    } -> tensor<512xf32>
    %235 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%234 : tensor<512xf32>) outs(%190 : tensor<512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.cmpf one, %in, %cst : f32
      cf.assert %252, "unimplemented: tensor with zero element"
      %253 = arith.divf %cst_0, %in : f32
      linalg.yield %253 : f32
    } -> tensor<512xf32>
    %expanded_96 = tensor.expand_shape %arg119 [[0, 1, 2]] : tensor<512xf32> into tensor<512x1x1xf32>
    %expanded_97 = tensor.expand_shape %235 [[0, 1, 2]] : tensor<512xf32> into tensor<512x1x1xf32>
    %236 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%232, %expanded_96 : tensor<1x512x7x7xf32>, tensor<512x1x1xf32>) outs(%187 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.subf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x512x7x7xf32>
    %237 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%236, %expanded_97 : tensor<1x512x7x7xf32>, tensor<512x1x1xf32>) outs(%187 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.mulf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x512x7x7xf32>
    %expanded_98 = tensor.expand_shape %arg58 [[0, 1, 2]] : tensor<512xf32> into tensor<512x1x1xf32>
    %238 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%237, %expanded_98 : tensor<1x512x7x7xf32>, tensor<512x1x1xf32>) outs(%187 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.mulf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x512x7x7xf32>
    %expanded_99 = tensor.expand_shape %arg59 [[0, 1, 2]] : tensor<512xf32> into tensor<512x1x1xf32>
    %239 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%238, %expanded_99 : tensor<1x512x7x7xf32>, tensor<512x1x1xf32>) outs(%187 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.addf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x512x7x7xf32>
    %240 = linalg.generic {indexing_maps = [#map1, #map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%239, %218 : tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) outs(%187 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.addf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x512x7x7xf32>
    %241 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%240 : tensor<1x512x7x7xf32>) outs(%187 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.cmpf ugt, %in, %cst : f32
      %253 = arith.select %252, %in, %cst : f32
      linalg.yield %253 : f32
    } -> tensor<1x512x7x7xf32>
    %242 = tensor.empty() : tensor<1x512x1x1xf32>
    %243 = linalg.fill ins(%cst : f32) outs(%242 : tensor<1x512x1x1xf32>) -> tensor<1x512x1x1xf32>
    %244 = linalg.generic {indexing_maps = [#map3, #map6], iterator_types = ["parallel", "parallel", "reduction", "reduction"]} ins(%241 : tensor<1x512x7x7xf32>) outs(%243 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.addf %in, %out : f32
      linalg.yield %252 : f32
    } -> tensor<1x512x1x1xf32>
    %245 = linalg.generic {indexing_maps = [#map7, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%244 : tensor<1x512x1x1xf32>) outs(%242 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.divf %in, %cst_3 : f32
      linalg.yield %252 : f32
    } -> tensor<1x512x1x1xf32>
    %collapsed = tensor.collapse_shape %245 [[0], [1, 2, 3]] : tensor<1x512x1x1xf32> into tensor<1x512xf32>
    %246 = tensor.empty() : tensor<512x1000xf32>
    %247 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%arg60 : tensor<1000x512xf32>) outs(%246 : tensor<512x1000xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x1000xf32>
    %248 = tensor.empty() : tensor<1x1000xf32>
    %249 = linalg.fill ins(%cst : f32) outs(%248 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %250 = linalg.matmul ins(%collapsed, %247 : tensor<1x512xf32>, tensor<512x1000xf32>) outs(%249 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %251 = linalg.generic {indexing_maps = [#map10, #map11, #map8], iterator_types = ["parallel", "parallel"]} ins(%arg61, %250 : tensor<1000xf32>, tensor<1x1000xf32>) outs(%248 : tensor<1x1000xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %252 = arith.addf %in, %in_100 : f32
      linalg.yield %252 : f32
    } -> tensor<1x1000xf32>
    return %251, %arg0, %arg1, %arg3, %arg4, %arg6, %arg7, %arg9, %arg10, %arg12, %arg13, %arg15, %arg16, %arg18, %arg19, %arg21, %arg22, %arg24, %arg25, %arg27, %arg28, %arg30, %arg31, %arg33, %arg34, %arg36, %arg37, %arg39, %arg40, %arg42, %arg43, %arg45, %arg46, %arg48, %arg49, %arg51, %arg52, %arg54, %arg55, %arg57, %arg58, %arg62, %arg63, %arg65, %arg66, %arg68, %arg69, %arg71, %arg72, %arg74, %arg75, %arg77, %arg78, %arg80, %arg81, %arg83, %arg84, %arg86, %arg87, %arg89, %arg90, %arg92, %arg93, %arg95, %arg96, %arg98, %arg99, %arg101, %arg102, %arg104, %arg105, %arg107, %arg108, %arg110, %arg111, %arg113, %arg114, %arg116, %arg117, %arg119, %arg120, %arg122, %4, %13, %19, %23, %27, %35, %38, %47, %50, %58, %61, %70, %75, %84, %87, %95, %104, %107, %115, %118, %127, %132, %141, %144, %152, %161, %164, %172, %175, %184, %189, %198, %201, %209, %218, %221, %229, %232, %241, %collapsed, %247 : tensor<1x1000xf32>, tensor<64x3x7x7xf32>, tensor<64xf32>, tensor<64x64x3x3xf32>, tensor<64xf32>, tensor<64x64x3x3xf32>, tensor<64xf32>, tensor<64x64x3x3xf32>, tensor<64xf32>, tensor<64x64x3x3xf32>, tensor<64xf32>, tensor<128x64x3x3xf32>, tensor<128xf32>, tensor<128x128x3x3xf32>, tensor<128xf32>, tensor<128x64x1x1xf32>, tensor<128xf32>, tensor<128x128x3x3xf32>, tensor<128xf32>, tensor<128x128x3x3xf32>, tensor<128xf32>, tensor<256x128x3x3xf32>, tensor<256xf32>, tensor<256x256x3x3xf32>, tensor<256xf32>, tensor<256x128x1x1xf32>, tensor<256xf32>, tensor<256x256x3x3xf32>, tensor<256xf32>, tensor<256x256x3x3xf32>, tensor<256xf32>, tensor<512x256x3x3xf32>, tensor<512xf32>, tensor<512x512x3x3xf32>, tensor<512xf32>, tensor<512x256x1x1xf32>, tensor<512xf32>, tensor<512x512x3x3xf32>, tensor<512xf32>, tensor<512x512x3x3xf32>, tensor<512xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<1x3x224x224xf32>, tensor<1x64x112x112xf32>, tensor<1x64x112x112xf32>, tensor<1x64x56x56xf32>, tensor<1x64x56x56xi64>, tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>, tensor<1x512xf32>, tensor<512x1000xf32>
  }
}