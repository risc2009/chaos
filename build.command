cd `dirname $0`

########
# LLVM #
########
if [ ! -e "build" ]; then
    mkdir "build"
fi
if [ ! -e "build/llvm" ]; then
    mkdir "build/llvm"
fi
cd build/llvm
cmake ../../project/llvm
make
cd ../..

#########
# Clang #
#########
if [ ! -e "build/clang" ]; then
    mkdir "build/clang"
fi
cd build/clang
cmake -DCLANG_PATH_TO_LLVM_SOURCE=../../project/llvm -DCLANG_PATH_TO_LLVM_BUILD=../llvm ../../project/clang
make
cd ../..
