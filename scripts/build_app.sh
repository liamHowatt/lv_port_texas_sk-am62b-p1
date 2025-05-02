#!/bin/bash

cd /app/lv_port_linux

CC=aarch64-linux-gnu-gcc CXX=aarch64-linux-gnu-g++ cmake -B build-arm64 -S . \
      -DCMAKE_CXX_FLAGS="-g" \
      -DCMAKE_C_FLAGS="-g" \
      -DCMAKE_BUILD_TYPE=Debug

VERBOSE=1 CC=aarch64-linux-gnu-gcc CXX=aarch64-linux-gnu-g++ make -j$(nproc) -C build-arm64

      # -DCMAKE_C_COMPILER="gcc-aarch64-linux-gnu"
      # -DCMAKE_CXX_COMPILER="g++-aarch64-linux-gnu"