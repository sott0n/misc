func.func @restrict(%arg: memref<?xf32>, %arg1: memref<?xf32> {local_alias_analysis.restrict}) attributes {test.ptr = "func"} {
  %0 = memref.subview %arg[0][2][1] {test.ptr = "view1"} : memref<?xf32> to memref<2xf32>
  %1 = memref.subview %arg1[0][2][1] {test.ptr = "view2"} : memref<?xf32> to memref<2xf32>
  return
}
