FROM ubuntu:latest

RUN apt update && \
  export DEBIAN_FRONTEND=noninteractive && \
  apt install -y cmake gcc pkg-config wget zlib1g-dev libpcre3-dev libssl-dev libunistring-dev libsdl2-dev

ENV USER user
ENV HOME /home/${USER}

RUN useradd -d ${HOME} -m ${USER} && \
  passwd -d ${USER}

USER ${USER}
WORKDIR ${HOME}

RUN mkdir src

WORKDIR src

ARG LAGRANGE_VER="1.2.3"
ARG ZIP_NAME="lagrange-${LAGRANGE_VER}.tar.gz"

RUN wget https://github.com/skyjake/lagrange/releases/download/v$LAGRANGE_VER/$ZIP_NAME

RUN tar xvf $ZIP_NAME && mkdir build

WORKDIR build 

RUN cmake ../lagrange-$LAGRANGE_VER -DCMAKE_BUILD_TYPE=Release && \
  cmake --build . && \
  rm -rf ../lagrange-$LAGRANGE_VER && \
  rm ../$ZIP_NAME 

USER root

RUN  apt remove -y cmake gcc pkg-config wget zlib1g-dev libpcre3-dev libssl-dev libunistring-dev libsdl2-dev 

USER ${USER}

CMD "./lagrange"
  
