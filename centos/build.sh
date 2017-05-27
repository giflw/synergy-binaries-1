#!/usr/bin/env bash
set -e

echo $QT_SELECT
export CXX=g++
export CC=gcc
g++ --version

cd synergy

# Display generators list
echo "Display xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
./hm.sh genlist

# Configure generator
echo "Configure xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
./hm.sh conf -g1
# ./hm.sh conf -g1 -d # Debug

echo "Build xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
# Build
./hm.sh build
# ./hm.sh build -d # Debug

echo "Package xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
# Package
./hm.sh package rpm

echo "End xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
# Display result
ls -alF bin/
