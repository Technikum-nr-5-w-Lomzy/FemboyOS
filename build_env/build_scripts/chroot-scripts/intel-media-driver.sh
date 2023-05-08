#!/bin/bash 
cd /sources/
wget -nc $2
cp intel-media-23.1.2.tar.gz media-driver-intel-media-23.1.2.tar.gz

. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

mkdir build &&
cd    build &&

cmake -DCMAKE_INSTALL_PREFIX=/usr   \
      -DINSTALL_DRIVER_SYSCONF=OFF  \
      -DBUILD_TYPE=Release          \
      -Wno-dev ..                   &&
make

make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
