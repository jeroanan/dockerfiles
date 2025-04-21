FROM alpine:3.21

ENV USER=user
ENV HOME=/home/${USER}

RUN apk update && \
    apk add --no-cache gzdoom ttf-freefont mesa-gl && \
    adduser --home ${HOME} -D ${USER} && \
    adduser ${USER} audio && \
    mkdir -p ${HOME}/.config/gzdoom && \
    chown ${USER} ${HOME}/.config/gzdoom 

COPY pulse-client.conf /etc/pulse/client.conf

USER ${USER}
WORKDIR ${HOME}

ENTRYPOINT ["gzdoom"]
