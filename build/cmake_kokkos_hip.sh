#!/bin/bash

cmake \
  -DKOKKOS_HIP=ON \
  -DCMAKE_CXX_COMPILER=hipcc \
  -DHDF5_ROOT="/shared/apps/ubuntu/rocmplus-7.2.0/hdf5/HDF_Group/HDF5/1.14.6" \
  ..
