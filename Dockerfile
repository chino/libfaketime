FROM ubuntu

RUN apt update && apt install -y build-essential

WORKDIR /faketime

ADD . .

RUN make && make test && make install

CMD "/bin/bash"