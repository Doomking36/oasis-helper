#!/bin/sh -e

cd /mnt
git clone -c 'core.sharedRepository=group' https://github.com/oasislinux/oasis.git src/oasis
git init --template src/oasis/template
cd src/oasis

cp dk-oasis/config.lua /mnt/src/oasis/
lua setup.lua
ninja commit
