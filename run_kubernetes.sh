#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=binhnguyen058/prediction-app:latest
echo "Docker ID and Image: $dockerpath"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run prediction-app --image=$dockerpath --port=80 --labels app=binhnguyen058


# Step 3:
# List kubernetes pods
sleep 100
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward prediction-app 8000:80
