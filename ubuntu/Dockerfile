FROM ubuntu:16.04
MAINTAINER  Ludovic Fernandez "lfernandez.dev@gmail.com"

RUN apt-get update && apt-get install -yqq \
  git \
  fakeroot \
  python \
  cmake \
  make \
  g++ \
  xorg-dev \
  libqt4-dev \
  libcurl4-openssl-dev \
  libavahi-compat-libdnssd-dev \
  libssl-dev \
  libx11-dev \
  lintian

ENV QT_SELECT 4

COPY ./synergy/ /src/synergy/

COPY ./ubuntu/build.sh ./src/build.sh

WORKDIR /src/
# RUN mkdir -p /synergy/build/ /synergy/bin/
