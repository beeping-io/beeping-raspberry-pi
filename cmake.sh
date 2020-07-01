# OxySound Maven
mkdir -p build
cd build
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_TOOLCHAIN_FILE=../Toolchain-RaspberryPi.cmake -DCMAKE_C_COMPILER=`brew --prefix llvm`/bin/clang -DCMAKE_CXX_COMPILER=`brew --prefix llvm`/bin/clang++ ..
make
