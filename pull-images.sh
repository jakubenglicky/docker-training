#!/bin/bash

docker pull ubuntu:latest
docker pull debian:latest
docker pull debian:11

docker pull httpd:latest
docker pull nginx:latest

docker pull php:8.2-apache
docker pull php:8.2-fpm-bookworm

docker pull composer:latest

docker pull jwilder/nginx-proxy:latest
docker pull traefik:latest

docker pull node:16
docker pull node:18

docker pull golang:latest
docker pull mariadb:latest
docker pull hello-world:latest

docker pull maildev/maildev:latest
docker pull adminer:latest

docker pull portainer/portainer-ce

docker pull rabbitmq:3-management
