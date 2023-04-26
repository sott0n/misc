func.func @nest_memref() {
    %0 = memref.alloc() : memref<1 x memref<2xf32>>
    return
}
