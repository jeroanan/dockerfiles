FROM alpine:latest

RUN apk update
RUN apk add --no-cache gzdoom ttf-freefont mesa-gl 

COPY pulse-client.conf /etc/pulse/client.conf

ENV USER=user
ENV HOME=/home/${USER}

RUN  adduser --home ${HOME} -D ${USER} 
RUN adduser ${USER} audio
    
USER ${USER}
WORKDIR ${HOME}

CMD "gzdoom"
