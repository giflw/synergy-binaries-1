FROM centos:centos7
MAINTAINER  Ludovic Fernandez "lfernandez.dev@gmail.com"

# RUN yum -y update; yum clean all
RUN yum install -y \
  git \
  fakeroot \
  python \
  cmake  \
  make  \
  gcc-c++  \
  libX11-devel  \
  libXext-devel  \
  libXi-devel  \
  libXtst-devel  \
  libXinerama-devel  \
  libcurl-devel  \
  qt-devel  \
  avahi-compat-libdns_sd-devel  \
  openssl-devel  \
  rpm-build  \
  rpmlint

ENV PATH="$PATH:/usr/lib64/qt4/bin:/usr/lib/qt4/bin"
ENV QT_SELECT 4

COPY ./centos/build.sh ./src/build.sh

COPY ./synergy/ /src/synergy/
WORKDIR /src/
