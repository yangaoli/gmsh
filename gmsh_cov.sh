#!/bin/bash

mkdir build
cd build
cmake -DENABLE_BUILD_DYNAMIC=1 ..
make -j10

echo '# Gmsh环境设置' >> ~/.bashrc
echo 'export LD_LIBRARY_PATH="./build:$LD_LIBRARY_PATH"' >> ~/.bashrc
echo 'export PYTHONPATH="./api:$PYTHONPATH"' >> ~/.bashrc
echo 'export PATH="./build:$PATH"' >> ~/.bashrc
source ~/.bashrc
echo "环境变量设置完成！"
