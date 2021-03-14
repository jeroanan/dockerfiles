FROM alpine:latest

RUN apk add --no-cache gvim git ttf-inconsolata bash

ENV USER drw
ENV HOME /home/${USER}

RUN  adduser --home ${HOME} -D ${USER}
    
USER ${USER}
WORKDIR ${HOME}

ENTRYPOINT ["gvim", "-f"]
