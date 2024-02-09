# TOR IMAGE
FROM alpine:3.13

LABEL maintainer="Vladimir Eliseev <yvv4recon@gmail.com>"

ARG TOR_VERSION

RUN echo "https://dl-cdn.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories && \
    apk add --no-cache tor>=${TOR_VERSION}

COPY torrc /etc/tor/torrc

RUN apk add curl

EXPOSE 9050
EXPOSE 9053

USER tor

ENTRYPOINT ["/usr/bin/tor"]