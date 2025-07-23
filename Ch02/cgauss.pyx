
# cython: language_level=3

cdef extern from "gauss_iterate.h":
    cdef void gauss_iterate(int nx, int ny, double array[], int iterations)

# it would be even safer to declare array with "double [:,::1]",
# which would accept only contiguous arrays

def gauss(double [:,:] array, int iterations):
    # array is a Cython "memoryview", but it supports numpy
    # operations such as obtaining its shape
    cdef int nx = array.shape[0], ny = array.shape[1]

    # call the C function, obtaining the address of the first array item
    gauss_iterate(nx, ny, &array[0,0], iterations)
