#!/bin/bash
# Navigate into the project application folder
cd <PROJECT_FOLDER>

# Build the Docker Image from the application folder, tag it flask-nginx
docker build -t flask-nginx .

# Start a container, build from the image (last parameter), open host's 80 port and connect to the container's 80 port ()which is the nginx
docker run -p 80:80 --name flask-nginx flask-nginx

# These were troubleshooting commands, i needed to start the nginx assumed to the config file manually, now the Dockerfile works properly
docker exec -it flask-nginx bash
nginx -c /app/nginx.conf
nginx -s stop # stop server

# EC2 -> open HTTP and SSH protocol inbound rules
