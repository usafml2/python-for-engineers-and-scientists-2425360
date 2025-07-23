
# "cimport" gives us access to functions in the C standard library
from libc.math cimport sin, cos

# "cdef" creates a function callable from C only
# (while def in the %%cython block above, creates a Python callable)
cdef double integrand_cc(int n, double x[]):
    return cos(x[1] * sin(x[0]))
