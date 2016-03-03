FROM debian:jessie

RUN apt-get update && apt-get install -y curl git iptables

ARG DOCKER_VERSION=1.10.2
ARG COMPOSE_VERSION=1.6.2
ARG OS=Linux
ARG ARCH=x86_64

RUN curl -L -o /usr/bin/docker https://get.docker.com/builds/${OS}/${ARCH}/docker-${DOCKER_VERSION} && chmod +x /usr/bin/docker
RUN curl -L -o /usr/bin/docker-compose https://github.com/docker/compose/releases/download/${COMPOSE_VERSION}/docker-compose-${OS}-${ARCH} && chmod +x /usr/bin/docker-compose
