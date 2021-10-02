FROM alpine:latest

RUN apk add --no-cache keepassxc ttf-freefont bash

ENV USER developer
ENV HOME /home/${USER}

RUN  adduser -D --home ${HOME} ${USER}
    
USER ${USER}
WORKDIR ${HOME}

CMD "keepassxc"
