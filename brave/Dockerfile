FROM ubuntu:25.04


RUN apt update && \
  export DEBIAN_FRONTEND=noninteractive && \
  apt install -y apt-transport-https curl gnupg 

RUN curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg && \
  echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"| tee /etc/apt/sources.list.d/brave-browser-release.list

RUN apt update && apt install -y brave-browser

ENV USER=user
ENV HOME=/home/${USER}

RUN useradd -d ${HOME} -m ${USER} && \
  passwd -d ${USER}

USER ${USER}
WORKDIR ${HOME}


CMD ["brave-browser"]
  
