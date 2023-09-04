func.func @func1() {
  //%alloc_36 = memref.alloc() : memref<3090540x3090540x3090540xi32>
  %alloc_36 = memref.alloc() : memref<3090x3090x3090xi32>
  return
}
