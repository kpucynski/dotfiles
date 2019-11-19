#!/bin/sh

helm repo update
helm install stable/nginx-ingress --name nginx
