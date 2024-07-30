import benchmark
from math import iota
from sys import num_physical_cores
from algorithm import parallelize, vectorize
from complex import ComplexFloat64, ComplexSIMD
from python import Python

alias float_type = DType.float32
alias int_type = DType.int32
alias simd_width = 2 * simdwidthof[float_type]()
alias unit = benchmark.Unit.ms

alias width = 960
alias height = 960
alias MAX_ITERS = 200

alias min_x = -2.0
alias max_x = 0.6
alias min_y = -1.5
alias max_y = 1.5

@value
struct Matrix[type: DType, rows: Int, cols: Int]:
    var data: DTypePointer[type]

    fn __init__(inout self):
        self.data = DTypePointer[type].alloc(rows * cols)

    fn __getitem__(self, row: Int, col: Int) -> Scalar[type]:
        return self.data.load(row * cols + col)

    fn store[width: Int = 1](self, row: Int, col: Int, val: SIMD[type, width]):
        self.data.store[width=width](row * cols + col, val)


# Compute the number of steps to escape.
def mandelbrot_kernel(c: ComplexFloat64) -> Int:
    z = c
    for i in range(MAX_ITERS):
        z = z * z + c
        if z.squared_norm() > 4:
            return i
    return MAX_ITERS
