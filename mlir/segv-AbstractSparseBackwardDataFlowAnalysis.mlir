module {
  func.func @main(%arg1: memref<2x32x10x4096xf32>) {
    %alloc = memref.alloc() {alignment = 64 : i64} : memref<2x32x10x4096xf32>
    memref.copy %arg1, %alloc : memref<2x32x10x4096xf32> to memref<2x32x10x4096xf32>
    return 
  }
}
