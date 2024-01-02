#!/bin/bash

mkdir -p build/{CMake,output}

cd build/CMake
cmake -G Ninja ../../
ninja -j 8


cd ../
cp -R ../IDKGameEngine/IDKGE ./output/.
cp -R ../IDKGame/assets ./output/.
