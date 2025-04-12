FROM ubuntu:25.04

RUN apt update && \
  export DEBIAN_FRONTEND=noninteractive && \
  apt install -y openttd libgl1 pulseaudio socat alsa-utils

CMD ["/usr/games/openttd"]
