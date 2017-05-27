#!/usr/bin/env bash

git clone git@github.com:symless/synergy.git

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
