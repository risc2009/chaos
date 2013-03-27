if not exist build mkdir build
if not exist build\mingw mkdir build\mingw
cd build\mingw
cmake -G "MinGW Makefiles" ../..
mingw32-make
