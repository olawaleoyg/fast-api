#!/bin/bash
set -e

kubectl apply -f fastapi-redis-k8s/redis-configmap.yaml
kubectl apply -f fastapi-redis-k8s/redis-secret.yaml
kubectl apply -f fastapi-redis-k8s/redis-pvc.yaml
kubectl apply -f fastapi-redis-k8s/redis-deployments.yaml
kubectl apply -f fastapi-redis-k8s/redis-service.yaml

kubectl apply -f fastapi-redis-k8s/service.yaml
kubectl apply -f fastapi-redis-k8s/deployment.yaml

