
# Judge Hiciano
# W207 Spring

SHELL := bash

PROJECT_NAME=iv-crush
VERSION=$(shell cat VERSION)
PWD=$(shell pwd)

NAME=w207:${VERSION}


# Variables
.PHONY: docker-build
docker-build:
	@docker build \
	-t ${NAME} \
	.

.PHONY: run-local
run-local:
	@docker run -it --rm -p 8888:8888 -p 8080:8080 -v "${PWD}":/home/jovyan/work ${NAME}

