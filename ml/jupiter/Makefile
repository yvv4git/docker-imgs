#!/usr/bin/make

SHELL = /bin/sh

UID := $(shell id -u)
GID := $(shell id -g)
TIMESTAMP := $(shell date  +%Y-%m-%d)

export UID
export GID

image_build:
	docker build -t yvv4docker/jupiter:v${TIMESTAMP} -f jupiter.Dockerfile .

image_push:
	docker push yvv4docker/jupiter:v${TIMESTAMP}

image_sec:
	docker scout cves local://yvv4docker/jupiter:v${TIMESTAMP}


up_jupiter:
	env UID=${UID} GID=${GID} docker-compose -f jupiter.docker-compose.yml up -d