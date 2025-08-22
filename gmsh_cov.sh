#!/bin/bash

mkdir build
cd build
cmake -DENABLE_BUILD_DYNAMIC=1 ..
make -j10

make install -j8

