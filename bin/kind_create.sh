#!/bin/bash

#kind create cluster --image=kindest/node:v1.12.8@sha256:cc6e1a928a85c14b52e32ea97a198393fb68097f14c4d4c454a8a3bc1d8d486c
kind create cluster
export KUBECONFIG="$(kind get kubeconfig-path --name="kind")"
