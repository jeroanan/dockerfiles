FROM ubuntu:25.04


RUN apt update && \
  export DEBIAN_FRONTEND=noninteractive

RUN apt install -y openttd libgl1 

RUN apt install -y pulseaudio socat alsa-utils

CMD ["/usr/games/openttd"]
