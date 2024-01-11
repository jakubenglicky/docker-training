# Docker Training
## Installation
### Docker
```
https://docs.docker.com/get-docker/
```
or
```
https://orbstack.dev/download
```

### Docker Compose

```
https://docs.docker.com/compose/install/
```
---

## Download images which we will use at training
```
./pull-images.sh
```

## Cheatsheet

### Docker
- `docker system prune` - delete unused data
- `docker pull <image>` - download image
- `docker image ls` - list all images
- `docker image rm <image>` - remove image
- `docker build -t <image-name> <path-to-dockerfile>` - build image
- `docker run <image>` - execute image as container
- `docker ps` - list of containers
- `docker kill <container-hash/name>`
- `docker kill $(docker ps -q)` - kill all running containers
- `docker rm <container>` - remove container
- `docker exec -it <container> <command>` - connect to running container and run command
- `docker logs -f <container>` - show logs from container
- `docker system df` - show size of images, containers and volumes
- `docker system prune (--all, --volumes)` - cleanup containers, images

### Docker Compose
- `docker-compose ps` - list of containers in project
- `docker-compose up` - start stack
- `docker-compose stop` - stop stack
- `docker-compose down` - stop stack and delete containers
- `docker-compose exec <container> <command>` - connect to running container in stack and run command
- `docker-compose logs -f <container>` - show logs from container

## HTTPS

#### Mkcert
This tool create valid certificate for your localhost

##### How to install Mkcert
[https://github.com/FiloSottile/mkcert#installation](https://github.com/FiloSottile/mkcert#installation)

##### After instalation
For the first time, you must run an authority installation command
`mkcert -install`

##### Certificate generator
1. Create directory `~/nginx-proxy/certs/` and `cd ~/nginx-proxy/certs/`
2. Create certificate and key for nginx-proxy `mkcert --cert-file=example.cz.test.crt --key-file=example.cz.test.key example.cz.test`
3. Add volume and port mapping to `nginx-proxy` service

```yaml
services:
  nginx-proxy:
    ports:
      - 443:443
    volumes:
      - ~/nginx-proxy/certs:/etc/nginx/certs
```

For valid certificate, you must generate a certificate for each web separately.

## Docker Machine

```
export DOCKER_HOST=ssh://root@<ip-your-machine>
docker info
```
