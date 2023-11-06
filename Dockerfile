FROM ubuntu:22.04 as quantizer

WORKDIR /quantizer

ADD . .

RUN apt-get update && \
    apt-get install -y build-essential git

RUN make quantize
