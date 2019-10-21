#!/bin/bash

kubectl -n kube-system delete deployment tiller-deploy
kubectl -n kube-system delete service/tiller-deploy
helm init --upgrade --force-upgrade --wait --service-account tiller

