#!/bin/bash

mkdir -p build/CMake
mkdir -p build/CMake/{debug,release}
mkdir -p build/{debug,release}


cd build/CMake/debug
cmake -D CMAKE_BUILD_TYPE=DEBUG -D IDK_DEBUG=ON -G Ninja ../../../
ninja
cmake --install .

cd ../release
# cmake -D CMAKE_BUILD_TYPE=RELEASE -G Ninja ../../../
# ninja
# cmake --install .


cd ../../
mkdir -p ./debug/IDKGE/runtime/modules
cp ./lib/debug/*.so ./debug/IDKGE/runtime/.
mv ./debug/IDKGE/runtime/libIDKBuiltin* ./debug/IDKGE/runtime/modules/.
mv ./debug/IDKGE/runtime/libgame* ./debug/.


# mkdir -p ./release/IDKGE/runtime/modules
# cp ./lib/release/*.so ./release/IDKGE/runtime/.
# mv ./release/IDKGE/runtime/libIDKBuiltin* ./release/IDKGE/runtime/modules/.
# mv ./release/IDKGE/runtime/libgame* ./release/.
