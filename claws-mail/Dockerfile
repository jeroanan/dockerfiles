FROM alpine:latest

RUN apk add --no-cache claws-mail ttf-freefont bash

ENV USER user
ENV HOME /home/${USER}

RUN  adduser --home ${HOME} -D ${USER} 
    
USER ${USER}
WORKDIR ${HOME}

CMD "claws-mail"
