transform.sequence failures(propagate) {
^bb0(%arg0: !transform.any_op):
  %0 = transform.test_produce_param_or_forward_operand 42 { foo = "bar" }
  // expected-remark @below {{succeeded}}
  transform.test_consume_operand_if_matches_param_or_fail %0[21]
}
