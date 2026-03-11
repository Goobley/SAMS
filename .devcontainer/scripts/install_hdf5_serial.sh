#!/bin/bash

# Call with installation prefix as arg 1
if [ -z "$1" ]; then
    echo "Using default HDF5 installation prefix"
else
    # PREFIX="--prefix=$1"
    PREFIX="-DCMAKE_INSTALL_PREFIX=$1"
    echo "Setting HDF5 installation prefix to $1"
fi

HDF_VERSION="1.14.6"
rm -rf "hdf5-${HDF_VERSION}*"
rm -rf hdfsrc

wget "https://github.com/HDFGroup/hdf5/releases/download/hdf5_${HDF_VERSION}/hdf5-${HDF_VERSION}.tar.gz"
tar xvzf "hdf5-${HDF_VERSION}.tar.gz"
cd hdf5-${HDF_VERSION}
# ./configure CC=$(which mpicc) --enable-parallel --with-default-api-version=v110 ${PREFIX}
mkdir build
cd build
cmake -DBUILD_CPP_LIB=On -DDEFAULT_API_VERSION="v112" ${PREFIX} ..
make -j 10
make install