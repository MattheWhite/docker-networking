# On Alpine Linux sh is available, bash not installed by default
docker exec -it <alpine-containerID> sh

# Alpine Package Keeper -> Alpine Linux's package manager
apk update

apk upgrade

apk add iputils

# now pin tool is installed
ping <IP/URL>


# meanwhile in another terminal...
# get the running container IDs
docker ps

# ping from one of the client the target container, first the app, then the secret container which should be unavailable
docker inspect <containerID>
