VOLUME := 'share'
MOUNT_FROM := ${HOME}
MOUNT_TO := '/media/share'

CONTAINER_NAME := 'srv-sftp'
HOST_PORT := 2222


build:
	docker build --cache-from yvv4docker/srv-sftp:latest --rm -m 2G -t yvv4docker/srv-sftp:latest -f Dockerfile .

volume:
	docker volume create --driver local \
       --opt type=none \
       --opt device=${MOUNT_FROM} \
       --opt o=bind ${VOLUME}

run:
	docker run --rm -p ${HOST_PORT}:22 -v ${VOLUME}:${MOUNT_TO} --name ${CONTAINER_NAME} yvv4docker/srv-sftp:v2

stop:
	docker stop ${CONTAINER_NAME}

clear_volume:
	docker volume rm ${VOLUME}

push_dockerhub:
	docker tag yvv4docker/srv-sftp:latest yvv4docker/srv-sftp:v2
	docker push yvv4docker/srv-sftp:v2