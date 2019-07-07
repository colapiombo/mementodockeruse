#!/bin/bash
COMPOSE_PROJECT_NAME=doodleonchain

# Export UID and GID as env variables for docker-compose
export COMPOSE_PROJECT_NAME
export HOST_UID=`id -u`
export HOST_GID=`id -g`


docker-compose stop
