#!/bin/bash

git rev-parse --show-toplevel || (echo "not git repo." & exit 1)

# set user and email for private git repos
git config user.name "Karol Pucynski"
git config user.email "kpucynski@gmail.com"

# show output
git config user.name
git config user.email

