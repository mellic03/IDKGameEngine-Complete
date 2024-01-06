#!/bin/bash

mkdir -p build/CMake
mkdir -p build/CMake/{debug,release}

cd build/CMake/debug
cmake -DCMAKE_BUILD_TYPE=Debug -DUSE_IDK_DEBUG=ON -G Ninja ../../../
ninja -j 12


cd ../release
# cmake -DCMAKE_BUILD_TYPE=Release -DUSE_IDK_DEBUG=OFF -G Ninja ../../../
# ninja -j 12



cd ../../
cp -R ../IDKGraphics/IDKGE ./debug/.
cp -R ../IDKGame/assets        ./debug/.
cp -R ../IDKBuiltinUI/assets   ./debug/.


# cp -R ../IDKGraphics/IDKGE ./release/.
# cp -R ../IDKGame/assets        ./release/.
# cp -R ../IDKEditorUI/assets    ./release/.