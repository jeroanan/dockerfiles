FROM ubuntu:latest
ENV TZ=Europe/London
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt update && apt install -y vim-gtk3 git

ENV USER drw
ENV HOME /home/${USER}

RUN  useradd -d ${HOME} -m ${USER} && \
    passwd -d ${USER}
    
USER ${USER}
WORKDIR ${HOME}


ENTRYPOINT ["gvim", "-f"]
