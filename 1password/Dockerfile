FROM ubuntu:25.04

RUN apt update && \
  export DEBIAN_FRONTEND=noninteractive && \
  apt install -y curl gpg && \
  curl -sS https://downloads.1password.com/linux/keys/1password.asc | gpg --dearmor --output /usr/share/keyrings/1password-archive-keyring.gpg && \
  echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/1password-archive-keyring.gpg] https://downloads.1password.com/linux/debian/amd64 stable main' | tee /etc/apt/sources.list.d/1password.list && \
  mkdir -p /etc/debsig/policies/AC2D62742012EA22/ && \
  curl -sS https://downloads.1password.com/linux/debian/debsig/1password.pol | tee /etc/debsig/policies/AC2D62742012EA22/1password.pol && \
  mkdir -p /usr/share/debsig/keyrings/AC2D62742012EA22 && \
  curl -sS https://downloads.1password.com/linux/keys/1password.asc | gpg --dearmor --output /usr/share/debsig/keyrings/AC2D62742012EA22/debsig.gpg && \
  apt update && apt install -y 1password pulseaudio socat alsa-utils && \
  rm -rf /var/lib/apt/lists/*  && \
  useradd --create-home --shell /bin/bash user && \
  usermod -a -G audio user && chown -R user:user /home/user

USER user
WORKDIR /home/user

CMD ["1password"]


