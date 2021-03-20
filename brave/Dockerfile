FROM ubuntu:latest


RUN apt update && \
  export DEBIAN_FRONTEND=noninteractive && \
  apt install -y apt-transport-https curl gnupg && \
  curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add - && \
  echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | tee /etc/apt/sources.list.d/brave-browser-release.list && \
  apt update && \
  apt install -y brave-browser

ENV USER user
ENV HOME /home/${USER}

RUN useradd -d ${HOME} -m ${USER} && \
  passwd -d ${USER}

USER ${USER}
WORKDIR ${HOME}


CMD "brave-browser"
  
