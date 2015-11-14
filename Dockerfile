FROM resin/rpi-raspbian:jessie

RUN apt-get update && \
    apt-get install -y --no-install-recommends build-essential git libssl-dev python ca-certificates curl && \
    rm -rf /var/lib/apt/lists/*

RUN curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
RUN sudo apt-get install -y nodejs

CMD [ "node" ]
