#!/bin/sh
rm -rf msys2-runtime
rm -rf src
git clone --bare --depth 1 --filter=tree:0 -b in-container-posix-semantics https://github.com/YO4/msys2-runtime msys2-runtime
VER=(`makepkg --packagelist`)
test -e dist/`basename ${VER[0]}` -a -e dist/`basename ${VER[1]}`
