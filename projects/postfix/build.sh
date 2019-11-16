cd postfix
make clean
make makefiles CCARGS="$CFLAGS"
make
find . -name '*.a'
cd src/fuzz
make all
