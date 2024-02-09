CONTAINER_NAME := 'net-tools'

image_build:
	docker build --cache-from yvv4docker/net-tools:latest -t yvv4docker/net-tools:latest -f Dockerfile .

container_run_default:
	docker run -d --rm --name ${CONTAINER_NAME} -p 2222:2222 yvv4docker/net-tools:latest

container_run_host:
	docker run -d --rm --name ${CONTAINER_NAME} --net host yvv4docker/net-tools:latest

container_shell:
	docker exec -it net-tools bash

container_stop:
	docker stop net-tools

image_tag:
	docker tag yvv4docker/net-tools:latest yvv4docker/net-tools:macos

image_push_default:
	docker push yvv4docker/net-tools:latest

image_push_macos:
	docker push yvv4docker/net-tools:macos