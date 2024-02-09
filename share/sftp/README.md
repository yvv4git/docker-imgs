# docker-sftp
The container is designed to share documents, multimedia or other files over the sftp protocol over the network.

## HOW TO
````
make build              # for build image from Dockerfile
make volume             # create volume - host dir for share
make run                # run container
make clear_volume       # delete volume
make push_dockerhub     # push image to docker hub
````


## ACCESS BY SFTP
The password is configured at the image build stage


## RUN SSH SERVER

По умолчаию, если не указать пользователя и пароль, то будет использован пользователь root и пароль secret.
docker run -d --rm --name test -p 2222:22 -it yvv4docker/srv-sftp

А можно задать login и password вручную.
docker run -d --rm --name server-ssh -p 2222:22 -e SSH_USER=root -e SSH_PASWD=secret -it yvv4docker/srv-sftp