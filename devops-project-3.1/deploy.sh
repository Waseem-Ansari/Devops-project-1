#!/bin/bash
 
 set -e

 echo "Starting deployment process..."

 cd ~/devops-project-3.1

 # Pull latest image from Docker Hub
    echo "Pulling latest Docker image..."
docker pull $DOCKER_USERNAME/devops-project-3.1:latest

#Stop and remove the existing container if it exists
echo "Stopping and removing existing container..."
docker-compose down

# Start the new container with the latest image
docker-compose up -d

echo "Deployment completed successfully!"