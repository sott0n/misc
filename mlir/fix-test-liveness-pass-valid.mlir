func.func @func_simpleBranch(%arg0: i32, %arg1 : i32) -> i32 {
  cf.br ^exit
^exit:
  %result = arith.addi %arg0, %arg1 : i32
  return %result : i32
}
