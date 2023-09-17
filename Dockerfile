FROM ubuntu:20.04

LABEL maintainer="Vadzim Kazlou vadickozlov@gmail.com"

ENV DEBIAN_FRONTEND=noninteractive 

COPY scalable-cyrfonts-tex-shurph_4.16_all.deb .

RUN apt-get update && \
    apt-get install -y make texlive-full && \
    dpkg -i scalable-cyrfonts-tex-shurph_4.16_all.deb
