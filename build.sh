`brew --prefix llvm`/bin/clang++ \
    --target=arm-linux-gnueabihf \
    --sysroot=$HOME/sysroot \
    -isysroot=$HOME/sysroot \
    -isystem $HOME/sysroot/usr/include/c++/8 \
    -isystem $HOME/sysroot/usr/include/arm-linux-gnueabihf/c++/8 \
    -L$HOME/sysroot/usr/lib/gcc/arm-linux-gnueabihf/8 \
    -B$HOME/sysroot/usr/lib/gcc/arm-linux-gnueabihf/8 \
    --gcc-toolchain=`brew --prefix arm-linux-gnueabihf-binutils` \
    -o Undertone \
    main.cpp
