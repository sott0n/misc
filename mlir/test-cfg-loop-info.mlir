func.func @simple_loop(%c: i1) {
  cf.br ^bb1
^bb1:
  cf.cond_br %c, ^bb2, ^bb3
^bb2:
  cf.br ^bb1
^bb3:
  return
}
