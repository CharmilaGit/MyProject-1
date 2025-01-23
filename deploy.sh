#!/bin/bash

# Pull the latest image from Docker Hub
docker pull devops-build:latest

# Stop and remove the existing container
docker stop app || true
docker rm app || true

# Run the container again
docker run -d -p 80:80 --name app devops-build:latest

