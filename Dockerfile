FROM artifactory.infra.braze.com/docker-virtual/python:3.9-slim-bullseye as quantizer

WORKDIR /quantizer

ADD . .

RUN apt-get update && \
    apt-get install -y build-essential git

RUN make quantize
