.PHONY: build_macos
build_macos:
	DOCKER_BUILDKIT=0 docker build --no-cache -t yvv4docker/pivote-mac -f Dockerfile .

.PHONY: build_linux
build_linux:
	docker buildx build --platform linux/amd64 -t yvv4docker/pivote-linux -f Dockerfile .

run_mac:
	docker run --rm --name pivote -it -p 2222:22 -p 2443:2443 -p 8118:8118 -e SSH_USER=user -e SSH_PASWD=secret -d yvv4docker/pivote-mac:v1.0.2

run_linux:
	docker run --rm --name pivote -it -e SSH_USER=user -e SSH_PASWD=secret -d yvv4docker/pivote-linux:v1.0.2

docker_repo_push_linux_v2:
	docker tag yvv4docker/pivote-linux:latest yvv4docker/pivote-linux:v1.0.2
	docker push yvv4docker/pivote-linux:v1.0.2

docker_repo_push_mac_v2:
	docker tag yvv4docker/pivote-mac:latest yvv4docker/pivote-mac:v1.0.2
	docker push yvv4docker/pivote-mac:v1.0.2
