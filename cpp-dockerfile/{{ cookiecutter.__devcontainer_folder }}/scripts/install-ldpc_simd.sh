#! /usr/bin/env bash
# This script is intended to install ldpc simd library from the sdrmakerspace.
# https://gitlab.com/librespacefoundation/sdrmakerspace/ldpc_simd
#
# Copyright (c) 2022 Andrés Ferreiro González
#
# This software is released under the MIT License.
# https://opensource.org/licenses/MIT

wget https://gitlab.com/librespacefoundation/sdrmakerspace/ldpc_simd/-/archive/master/ldpc_simd-master.tar.gz
tar xzvf ldpc_simd-master.tar.gz
cd ldpc_simd-master
mkdir build
cd build
cmake ..
make
sudo make install
cd ..
cd ..
rm ldpc_simd-master.tar.gz
