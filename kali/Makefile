### DOCKER
docker_build:
	docker build --no-cache --rm -m 2G --network=host -t yvv4docker/kali -f docker/kali.Dockerfile .

docker_run:
	docker run --rm -it --name recon yvv4docker/kali bash


docker_push:
	docker tag yvv4docker/kali:latest yvv4docker/kali:v1.0.3
	docker push yvv4docker/kali:v1.0.3

### DOCKER-COMPOSE
compose_build:
	docker-compose build

compose_up:
	docker-compose up -d

compose_stop:
	docker-compose stop


### CHECK
check:
	scripts/check.sh