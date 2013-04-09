cd `dirname $0`

if [ ! -e "../../build" ]; then
    mkdir "../../build"
fi

if [ ! -e "../../build/re2c" ]; then
    mkdir "../../build/re2c"
fi

cd ../../build/re2c

cmake ../../include/re2c

make
