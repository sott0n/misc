module {
func.func @convert_f_to_s_vector(%arg0 : vector<3xf32>) -> vector<3xi32> {
  %0 = spirv.ConvertFToS %arg0 : vector<3xf32> to vector<3xi32>
  spirv.ReturnValue %0 : vector<3xi32>
}
}
