#!/usr/bin/env bash

docker system prune
docker system prune -a
docker images purge
docker rmi $(docker images -a -q)
