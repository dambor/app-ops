#!/bin/bash

kubectl apply --validate=false -f https://github.com/jetstack/cert-manager/releases/download/v1.0.0/cert-manager.yaml
k create ns project-contour
helm install ingress bitnami/contour --namespace project-contour
k create ns kubeapps
helm install kubeapps bitnami/kubeapps --set useHelm3=true --namespace kubeapps
