./install.sh \
    "-DKokkos_ENABLE_SERIAL=ON \
     -DKokkos_ENABLE_OPENMP=ON \
     -DKokkos_ENABLE_COMPILE_AS_CMAKE_LANGUAGE=ON \
     -DCMAKE_CXX_COMPILER=g++ \
     -DCMAKE_BUILD_TYPE=Release \
     -DCMAKE_INSTALL_PREFIX=/usr/local/kokkos"