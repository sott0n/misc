func.func @func_with_affine_ops(%N: index) {
  %c = arith.constant 200 : index
  affine.for %i = 1 to 10 {
    affine.if affine_set<(i)[N] : (i - 2 >= 0, 4 - i >= 0)>(%i)[%c]  {
      %w = affine.apply affine_map<(d0,d1)[s0] -> (d0+d1+s0)> (%i, %i) [%N]
    }
  }
  return
}

func.func @inline_with_affine_ops() {
  %c = arith.constant 1 : index
  call @func_with_affine_ops(%c) : (index) -> ()
  return
}
