#!/usr/bin/env bash

pwd
ls -alF

make -C src F90=mpif90 LIBS="-lopenblas -lparpack -larpack"
#make install -C src

# build python part of edrixs
$PYTHON setup.py config_fc build_ext --library-dirs=$LIBRARY_LIB
$PYTHON -m pip install . --no-deps --ignore-installed -vvv
