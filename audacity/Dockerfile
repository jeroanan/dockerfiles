FROM ubuntu:latest

RUN apt update && apt upgrade -y

RUN export DEBIAN_FRONTEND=noninteractive && apt-get install -y tzdata && ln -fs /usr/share/zoneinfo/Europe/London /etc/localtime && dpkg-reconfigure --frontend noninteractive tzdata
  
RUN export DEBIAN_FRONTEND=noninteractive && apt install -y audacity

RUN useradd -ms /bin/bash user
RUN usermod -a -G audio user

USER user

CMD audacity
