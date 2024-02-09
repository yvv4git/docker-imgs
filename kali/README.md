# Pentest with Kali-linux.
Docker image - Kali linux


## Docker.
1. CREATE IMAGE  
```
docker build --no-cache --rm -m 2G --network=host -t yvv4docker/kali -f Dockerfile.kali .
docker build -m 2G --network=host -t yvv4docker/kali -f Dockerfile.kali .
```

2. AUTORISATION
```
docker login
```

3. PUSH  
```
docker push yvv4docker/kali
```

4. PULL  
```
docker pull yvv4docker/kali  
```
Теперь страничку образа можно посмотреть здесь: https://hub.docker.com/r/yvv4docker/kali


## Use tor.
```
docker exec -it kali bash
curl --socks5 tor:9050 http://ipecho.net/plain
```

Or from host:
curl --socks5 localhost:9051 http://ipecho.net/plain



## Tor build and run.
```
docker-compose build tor
docker run --rm --name tor -p9050:9050 yvv4docker/tor
curl --socks5 localhost:9050 http://ipecho.net/plain
curl -x socks5://localhost:9050 https://ifconfig.io/ip
```