FROM ubuntu:25.04


RUN apt update && \
  export DEBIAN_FRONTEND=noninteractive

RUN apt install -y openttd libgl1 

RUN apt install -y pulseaudio socat alsa-utils

#ENV USER=user
#ENV HOME=/home/${USER}

RUN useradd -ms /bin/bash user
RUN usermod -a -G audio,pulse-access,pulse user

CMD ["/usr/games/openttd"]
