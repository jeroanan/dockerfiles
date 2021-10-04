FROM racket/racket:8.0

ENV USER user
ENV HOME /home/${USER}

RUN apt update && apt upgrade -y

RUN apt install -y git

RUN  useradd -d ${HOME} -m ${USER} && \
    passwd -d ${USER}
    
USER ${USER}
WORKDIR ${HOME}

RUN mkdir src && mkdir geminiroot
WORKDIR src

RUN git clone https://git.sr.ht/~rwv/dezhemini

RUN raco pkg install -D --deps search-auto rackunit

WORKDIR dezhemini

COPY entrypoint.sh .

ENTRYPOINT ["./entrypoint.sh"]
