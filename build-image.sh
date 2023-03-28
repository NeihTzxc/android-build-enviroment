#!/bin/bash

# Define image name and tag
IMAGE_NAME=thiennguyen98/android-native-build-environment
TAG=$1

# Build the image
docker build -t $IMAGE_NAME:$TAG .

# Push the image to Docker Hub
docker push $IMAGE_NAME:$TAG
