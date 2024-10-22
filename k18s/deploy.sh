#!/bin/bash

kubectl apply -f aws-secret.yaml
kubectl apply -f env-secret.yaml
kubectl apply -f env-configmap.yaml

kubectl apply -f api-user-deployment.yaml
kubectl apply -f api-feed-deployment.yaml
kubectl apply -f reverse-proxy-deployment.yaml
kubectl apply -f frontend-deployment.yaml

kubectl apply -f api-user-service.yaml
kubectl apply -f api-feed-service.yaml
kubectl apply -f reverse-proxy-service.yaml
kubectl apply -f frontend-service.yaml
