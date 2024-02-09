# PENTESTER IMAGE
FROM kalilinux/kali-rolling:latest

LABEL maintainer="Vladimir Eliseev <yvv4recon@gmail.com>"

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get -y update && apt-get -y upgrade && \
    apt-get install -y kali-linux-headless --fix-missing && \
    apt-get install -y \
    software-properties-common iputils-arping iputils-ping iputils-tracepath golang \
    bash-completion git colordiff colortail unzip vim tmux zsh curl telnet strace python3-pip \
    tmate iputils-ping && \
    apt-get autoremove -y && \
    apt-get clean

RUN mkdir /data

WORKDIR /data
# CMD ["/bin/bash"]