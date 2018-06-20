FROM ubuntu:18.04

MAINTAINER Reto Hasler <reto.hasler@asciich.ch>

ENV DEBIAN_FRONTEND noninteractive
ENV DEBCONF_NONINTERACTIVE_SEEN true

RUN echo "Europe/Zurich" > /etc/timezone && \
    apt-get update && \
    apt-get install -y \
        python-dev \
        python-opencv \
        python-wxgtk3.0 \
        python-pip \
        python-matplotlib \
        python-pygame \
        python-lxml \
        python-yaml \
        vim \
        wget \
    && \
    apt-get clean all && \
    pip install --upgrade pip && \
    pip install --upgrade setuptools && \
    pip install --upgrade MAVProxy
