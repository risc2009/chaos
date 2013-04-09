cd `dirname $0`

if [ ! -e "../../build" ]; then
    mkdir "../../build"
fi

if [ ! -e "../../build/llvm" ]; then
    mkdir "../../build/llvm"
fi

cd ../../build/llvm

cmake ../../project/llvm

make
