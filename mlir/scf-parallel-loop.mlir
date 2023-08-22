func.func @std_parallel_loop(%arg0 : index, %arg1 : index, %arg2 : index,
                        %arg3 : index, %arg4 : index) {
  %c0 = arith.constant 0 : index
  %c2 = arith.constant 2 : index
  %c10 = arith.constant 10 : index

  scf.for %i = %c0 to %c10 step %c2 {
    %step = arith.constant 1 : index
    scf.parallel (%i0, %i1) = (%arg0, %arg1) to (%arg2, %arg3)
                                            step (%arg4, %step) {
      %min_cmp = arith.cmpi slt, %i0, %i1 : index
      %min = arith.select %min_cmp, %i0, %i1 : index
      %max_cmp = arith.cmpi sge, %i0, %i1 : index
      %max = arith.select %max_cmp, %i0, %i1 : index
      %zero = arith.constant 0.0 : f32
      %int_zero = arith.constant 0 : i32
      %red:2 = scf.parallel (%i2) = (%min) to (%max) step (%i1)
                                        init (%zero, %int_zero) -> (f32, i32) {
        %one = arith.constant 1.0 : f32
        scf.reduce(%one) : f32 {
          ^bb0(%lhs : f32, %rhs: f32):
            %res = arith.addf %lhs, %rhs : f32
            scf.reduce.return %res : f32
        }
        %int_one = arith.constant 1 : i32
        scf.reduce(%int_one) : i32 {
          ^bb0(%lhs : i32, %rhs: i32):
            %res = arith.muli %lhs, %rhs : i32
            scf.reduce.return %res : i32
        }
      }
    }
  }
  return
}
