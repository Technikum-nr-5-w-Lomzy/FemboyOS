#!/bin/bash 
cd /sources/
wget -nc $2
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/libdvdread-6.1.3 &&
make

make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
