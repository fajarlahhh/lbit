FROM debian:stretch
LABEL maintainer="Luckybit Developers <dev@luckybit.org>"
LABEL description="Dockerised LuckybitCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
