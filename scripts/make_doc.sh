#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

mkdir -p build && cd build
cmake ..
cd doc
wget https://github.com/HaoZeke/doxyYoda/releases/download/0.0.2/doxyYoda_0.0.2.tar.gz
tar -xf doxyYoda_0.0.2.tar.gz
rm -rf doxyYoda_0.0.2.tar.gz
cd ../
cp ../doc/Doxygen-eigen.cfg doc/
doxygen doc/Doxygen-eigen.cfg
