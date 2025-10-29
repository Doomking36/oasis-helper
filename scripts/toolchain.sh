#!/bin/sh -e

curl -O http://musl.cc/x86_64-linux-musl-cross.tgz
zcat x86_64-linux-musl-cross.tgz | pax -r
PATH=$PATH:$PWD/x86_64-linux-musl-cross/bin
