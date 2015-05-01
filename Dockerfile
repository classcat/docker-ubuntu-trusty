FROM ubuntu:trusty
MAINTAINER Masashi Okumura <masao@classcat.com>

#ENV DEBIAN_FRONTEND noninteractive

RUN locale-gen en_US.UTF-8
ENV LANG       en_US.UTF-8
ENV LC_ALL     en_US.UTF-8
RUN dpkg-reconfigure locales

RUN apt-get update && apt-get -y install supervisor

ADD assets/supervisord.conf /etc/supervisor/supervisord.conf
