# net-tools


## What is this
This is an image containing the minimum network utilities I need.




## Connect to host machine
````
host: nc -l 127.0.0.1 1234 -v
docker: curl host.docker.internal:1234
````

## Connect from host machine
````
host: docker run -d --rm --name ${CONTAINER_NAME} -p 2222:2222 yvv4docker/net-tools:latest
docker: nc -l 0.0.0.0 1234 -v
host:   nc localhost 2222 -v
````