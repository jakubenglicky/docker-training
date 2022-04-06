# Docker Training
## Installation
### Docker
```
https://docs.docker.com/get-docker/
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
- `docker rm <container>` - remove container
- `docker exec -it <container> <command>` - connect to running container and run command
- `docker logs -f <container>` - show logs from container

### Docker Compose
- `docker-compose ps` - list of containers in project
- `docker-compose up` - start stack
- `docker-compose stop` - stop stack
- `docker-compose down` - stop stack and delete containers
- `docker-compose exec <container> <command>` - connect to running container in stack and run command
- `docker-compose logs -f <container>` - show logs from container

## Docker Machine

```
export DOCKER_HOST=ssh://root@<ip-your-machine>
docker info
```