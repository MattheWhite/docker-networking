#!/bin/bash

# Here there is the docker-compose file, tagged my flask-nginx image inside
cd <PROJECT_FOLDER>
# Create and start container based on the compose-config file inside the folder
docker-compose up
# Stop and remove containers, networks
docker-compose down

# See at: localhost:80 -> should be able to see the static HTML page what i created, and built inside the image

# Build a new image with secret.txt added
nano Dockerfile
nano secret.txt

# Build a docker image with the secret.txt and alpine base
docker build -t alpine-with-secret .

# Start container with alpine-with-secret image (created above) and start an interactive sh in it (alpine has sh not bash)
docker run --name alpine-with-secret -it alpine-with-secret sh
# check if the secret.txt file is there
ls

docker-compose up

docker network inspect padlock # padlock is my network name of the container built with alpine-from-secret image
[
    {
        "Name": "padlock",
        "Id": "ccafa903d6e390762c470441fe53aaeb4dabe60d7595487e74b55a1ae63ffabe",
        "Created": "2023-02-23T10:15:54.800456461Z",
        "Scope": "local",
        "Driver": "bridge",
        "EnableIPv6": false,
        "IPAM": {
            "Driver": "default",
            "Options": null,
            "Config": [
                {
                    "Subnet": "172.31.0.0/16",
                    "Gateway": "172.31.0.1"
                }
            ]
        },
        "Internal": false,
        "Attachable": false,
        "Ingress": false,
        "ConfigFrom": {
            "Network": ""
        },
        "ConfigOnly": false,
        "Containers": {
            "b37d0a8c9021909a91cbe74a13eb55813e3db27ed8e49a7f6de5a46bb153d3c6": {
                "Name": "introduction-to-docker-networking-general-matthewhite-app-with-secret-1",
                "EndpointID": "0605d9a0f7d46ca3ffeee3bc9a7adf65310ceee0516f18bd19f6db1bf58ded34",
                "MacAddress": "02:42:ac:1f:00:02",
                "IPv4Address": "172.31.0.2/16",
                "IPv6Address": ""
            }
        },
        "Options": {},
        "Labels": {
            "com.docker.compose.network": "network1",
            "com.docker.compose.project": "introduction-to-docker-networking-general-matthewhite",
            "com.docker.compose.version": "2.16.0"
        }
    }
]

# if you start type docker exec +TAB -> will show the running containers you can execute commands with
docker exec <containerID> ping google.com

docker inspect <containerID> 

docker exec TAB -> output the docker objects, you can use only the containers, not images LOOK OUT FOR THAT
'80bbbf965dc0                                                                     --      17 minutes, flask-nginx'

# find out the client1 container's IP address
docker inspect introduction-to-docker-networking-general-matthewhite-client1-1

# ping the client1 container from flask-nginx app container
docker exec 80bbbf965dc0 ping 172.17.0.2
