#ub = affine_map<()[s0, s1] -> (s0, 4096 floordiv s1)>
//func.func @tile_loop_with_div_in_upper_bound(%t5 : index, %A : memref<? x i32>, %L : index, %U : index) {
func.func @tile_loop_with_div_in_upper_bound(%t5 : index, %A : memref<? x i32>, %U : index) {
  %c0 = arith.constant 0 : index
  %M = memref.dim %A, %c0 : memref<? x i32>
  affine.for %i = 0 to min #ub()[%M, %U] {
    arith.addi %i, %i : index
  }
  return
}
