
from setuptools import setup, Extension
from Cython.Build import cythonize

ext_modules = [
    Extension("cgauss",
              sources=["cgauss.pyx", "gauss_iterate.c"],
              includes=["gauss_iterate.h"]
              )
]

setup(name="gauss",
      ext_modules=cythonize(ext_modules))
