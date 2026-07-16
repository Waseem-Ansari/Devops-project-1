#!/bin/bash
 
 set -e

 echo "Starting deployment process..."
#change working Dir
 cd ~/devops-project-3.1

# Pull latest image from Docker Hub (match workflow image name)
echo "Pulling latest Docker image..."
docker pull ${DOCKER_USERNAME}/devops-app:latest

#Stop and remove the existing container if it exists
echo "Stopping and removing existing container..."
docker compose down

# Start the new container with the latest image
echo "Starting new container with the latest image..."
docker compose up -d

echo "Deployment completed successfully!"
