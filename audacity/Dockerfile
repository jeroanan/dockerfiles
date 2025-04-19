FROM alpine:3.21@sha256:a8560b36e8b8210634f77d9f7f9efd7ffa463e380b75e2e74aff4511df3ef88c

ENV USER=user
ENV HOME=/home/${USER}

RUN apk update && \
    apk add audacity ttf-freefont && \
    adduser --home ${HOME} -D ${USER} && \
    adduser ${USER} audio

COPY pulse-client.conf /etc/pulse/client.conf

USER user
WORKDIR ${HOME}

CMD ["audacity"]
