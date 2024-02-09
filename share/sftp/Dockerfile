FROM ubuntu:22.04

RUN apt-get update && apt-get install -y openssh-server \
    && apt-get install -y net-tools lsof \
    && apt-get install -y vim \
    && apt-get install -y nmap netcat curl

RUN mkdir /var/run/sshd
RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# SSH and Keeping Session Alive 
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

# ENV NOTVISIBLE in users profile
RUN echo "export VISIBLE=now" >> /etc/profile

RUN mkdir /scripts
COPY scripts /scripts

EXPOSE 2222

CMD ["/scripts/run.sh"]