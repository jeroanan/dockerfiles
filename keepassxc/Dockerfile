FROM alpine:3.21

ENV USER=developer
ENV HOME=/home/${USER}

RUN apk add --no-cache keepassxc ttf-freefont bash && \
    adduser -D --home ${HOME} ${USER}
    
USER ${USER}
WORKDIR ${HOME}

CMD ["keepassxc"]
