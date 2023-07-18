#map = affine_map<() -> (1)>
#map1 = affine_map<(d0)  -> (d0 )>  
func.func @func(%arg0: index, %arg1: index) {
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() : memref<1xf32>
  %alloc_0 = memref.alloc() : memref<100x100xf32, 2> 
  %0 = affine.apply #map() 
  %1 = affine.apply #map1(%0) 
  affine.for %arg2 = 0 to %1 {  
    affine.dma_start %alloc[%arg0, %arg0], %alloc_0[%arg0, %arg0], %alloc[%c0], %c0, %c0, %c0 : memref<1xf32>, memref<100x100xf32, 2>, memref<1xf32>
    affine.dma_wait %alloc[%c0], %c0 : memref<1xf32>
  }
  return
}
