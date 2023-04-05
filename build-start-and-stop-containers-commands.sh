#!/bin/bash

# Here there is the docker-compose file, tagged my flask-nginx image inside
cd <PROJECT_FOLDER>
# Create and start container based on the compose-config file inside the folder
docker-compose up
# Stop and remove containers, networks
docker-compose down
