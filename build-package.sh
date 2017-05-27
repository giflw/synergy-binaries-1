#!/usr/bin/env bash

VERSION="1.8.8"

git clone --depth=1 https://github.com/symless/synergy.git

## Build Ubuntu version
docker build -t synergy-ubuntu -f ubuntu/Dockerfile .
rm -rf build-ubuntu
mkdir -p build-ubuntu
docker run --rm -v "$PWD/build-ubuntu":'/src/synergy/bin' synergy-ubuntu ./build.sh

## Build Centos version
docker build -t synergy-centos -f centos/Dockerfile .
rm -rf build-centos
mkdir -p build-centos
docker run --rm -v "$PWD/build-centos":'/src/synergy/bin' synergy-centos ./build.sh

rm -rf builds
mkdir -p builds

cp build-ubuntu/*.deb "builds/synergy-master-stable-${VERSION}-Linux-x86_64.deb"
cp build-centos/*.rpm "builds/synergy-master-stable-${VERSION}-Linux-x86_64.rpm"

ls -alF builds/
