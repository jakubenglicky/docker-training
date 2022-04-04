#!/bin/bash

docker pull ubuntu:latest
docker pull debian:latest
docker pull debian:11

docker pull httpd:latest
docker pull nginx:latest

docker pull php:8.1-apache
docker pull php:8.1.4-fpm-bullseye

docker pull composer:latest

docker pull registry:2

docker pull jwilder/nginx-proxy:latest
docker pull traefik:latest

docker pull node:16

docker pull golang:latest
docker pull mariadb:latest
docker pull redis:latest
docker pull hello-world:latest

docker pull maildev/maildev:latest
docker pull joxit/docker-registry-ui:latest
