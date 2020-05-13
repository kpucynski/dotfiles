#!/usr/bin/env bash

helm repo update
helm install stable/nginx-ingress --name nginx
