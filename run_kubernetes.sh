#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=amrussell/udacityproject4

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment --image=${dockerpath} flask-app

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
NEW_POD=$(kubectl get pods | awk '{print $1}' | awk 'NR==2')
sleep 30s
kubectl get pods
kubectl port-forward $NEW_POD 8000:80 

