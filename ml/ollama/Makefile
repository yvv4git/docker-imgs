#!/usr/bin/make

SHELL = /bin/sh

TIMESTAMP := $(shell date  +%Y-%m-%d)


image_build:
	docker build -t yvv4docker/ollama:v${TIMESTAMP} -f ollama.Dockerfile .

image_push:
	docker push yvv4docker/ollama:v${TIMESTAMP}

image_sec:
	docker scout cves local://yvv4docker/ollama:v${TIMESTAMP}

up_ollama:
	docker-compose -f ollama.docker-compose.yml up -d

down_ollama:
	docker-compose -f ollama.docker-compose.yml down