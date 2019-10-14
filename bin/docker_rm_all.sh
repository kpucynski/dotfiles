#!/bin/bash -x 

docker rmi $(docker images -a -q)

