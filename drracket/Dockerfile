FROM racket/racket:8.0-full

ENV USER developer
ENV HOME /home/${USER}

RUN  useradd -d ${HOME} -m ${USER} && \
    passwd -d ${USER}
    
USER ${USER}
WORKDIR ${HOME}

ENTRYPOINT ["drracket"]
