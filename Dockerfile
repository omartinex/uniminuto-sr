FROM debian:jessie
LABEL maintainer="omartinex@gmail.com"

RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive \
       apt-get -y --quiet --no-install-recommends install \
       openssh-server vim \
    && apt-get -y autoremove \
    && apt-get clean autoclean \
    && rm -fr /var/lib/apt/lists/{apt,dpkg,cache,log} /tmp/* /var/tmp/*

RUN service ssh start
