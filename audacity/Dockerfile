FROM ubuntu:25.04

RUN apt update  && \
    export DEBIAN_FRONTEND=noninteractive && \
    apt-get install -y tzdata && \
    ln -fs /usr/share/zoneinfo/Europe/London /etc/localtime && \
    dpkg-reconfigure --frontend noninteractive tzdata && \
    apt install -y audacity && \
    rm -rf /var/lib/apt/lists/* && \
    useradd -ms /bin/bash user && \
    usermod -a -G audio user

#USER user

CMD ["audacity"]
