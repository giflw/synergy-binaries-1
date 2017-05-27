FROM ldez/synergy-base-centos
MAINTAINER  Ludovic Fernandez "lfernandez.dev@gmail.com"

ENV PATH="$PATH:/usr/lib64/qt4/bin:/usr/lib/qt4/bin"
ENV QT_SELECT 4

COPY ./centos/build.sh ./src/build.sh

COPY ./synergy/ /src/synergy/
WORKDIR /src/
