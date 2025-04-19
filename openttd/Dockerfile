FROM ubuntu:25.04

RUN apt update && \
  export DEBIAN_FRONTEND=noninteractive && \
  apt install -y openttd libgl1 pulseaudio socat alsa-utils && \
  rm -rf /var/lib/apt/lists/* 

CMD ["/usr/games/openttd"]
