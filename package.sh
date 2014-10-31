#!/bin/sh

VERSION=`git describe --tags`

echo "Packaging libuv version $VERSION"

sh ./autogen.sh
rm -rf /tmp/libuv-packaging/
mkdir -p /tmp/libuv-packaging/
./configure --prefix=/tmp/libuv-packaging
make
make install

echo "Packaging directory is done, now time to FPM"
