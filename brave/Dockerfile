FROM ubuntu:25.04

ENV USER=user
ENV HOME=/home/${USER}

RUN apt update && \
  export DEBIAN_FRONTEND=noninteractive && \
  apt install -y curl && \
  curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg && \
  echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"| tee /etc/apt/sources.list.d/brave-browser-release.list && \
  apt update && \
  apt install -y brave-browser && \
  rm -rf /var/lib/apt/lists/* && \
  apt remove -y curl && \
  useradd -d ${HOME} -m ${USER} && \
  passwd -d ${USER}

USER ${USER}
WORKDIR ${HOME}

CMD ["brave-browser"]
  
