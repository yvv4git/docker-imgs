
FROM debian:latest

RUN apt update && apt install openssh-server sudo -y \
    && apt-get install -y net-tools lsof \
    && apt-get install -y vim nano \
    && apt-get install -y nmap netcat-traditional curl iputils-ping nload privoxy

RUN mkdir /var/run/sshd

# Add my scripts
RUN mkdir /scripts
COPY scripts /scripts
COPY configs /configs

# SSH and Keeping Session Alive 
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

# ENV NOTVISIBLE in users profile
RUN echo "export VISIBLE=now" >> /etc/profile

EXPOSE 22

CMD ["/scripts/run.sh"]
