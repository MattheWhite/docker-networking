<a name="readme-top"></a>

# Docker networking
[![Contributors][contributors-shield]][contributors-url]


![Docker](https://www.docker.com/wp-content/uploads/2022/03/vertical-logo-monochromatic.png)


## About the project
The project was created for learning purposes with docker at the center.
Docker lets you build, test, and deploy applications quickly
Docker packages software into standardized units called containers that have everything the software needs to run including libraries, system tools, code, and runtime.

`Dockerizing is the process of packing, deploying, and running applications using Docker containers.`

Docker enables you to separate your applications from your infrastructure so you can deliver software quickly. 

Several building blocks and technologies related to Docker are present in this learning project:
* How to make and use Dockerfile
* How to make and use docker-compose file
* Use docker networks


## Built With

[![Docker][docker-shield]][docker-url]

<p align="right">(<a href="#readme-top">back to top</a>)</p>


## Tasks of the Project
The necessary commands with explanation comment lines can be find in `commands.sh` file!

1. Make a docker-compose file with own Nginx-Flask image from ECR with `host` network.
    - Flask is running in localhost with your Nginx-Flask Docker image.

2. Create an alpine `Docker image` with `secret.txt`.
    - The secret can be readable.

3. Add the Secret image to the `docker-compose` file and make sure that it uses `none` network.
    - Secret image is added to the `docker-compose` file.
    - The secret can't be reachable over the network.

4. Add two alpine container to the `docker-compose` file and make sure that it uses `bridge` network and `linked` to the Flask's container.
    - Clients image is added to the `docker-compose` file.
    - The flask application can be reachable from the `client` but the secret can't.

5. Create own bridge type network with `vip-clients` name.
    - The `vip-clients` bridge type network exists.

6. Add another two alpine container to the `docker-compose` file and make sure that it uses `vip-clients` network.
    - VIP clients image is added to the `docker-compose` file.
    - The flask application can be reachable from the `VIP client` but the secret can't and the normal clients can't either.

<p align="right">(<a href="#readme-top">back to top</a>)</p>


## General requirements

* Docker Desktop (On Mac you have to use a virtualization)
* Docker CLI

<p align="right">(<a href="#readme-top">back to top</a>)</p>


## Hints

- Run the docker-compose with the ```docker-compose up -d``` (the -d means detach).
- For the connection check if you can use the ```ping``` command.
- If you want to connect two separated networks, use the ```link``` in the compose file.
- A lot of docker images have `alpine` versions, and these are always the lightest versions of those images. Most distributions run a ton of services by default.
This might be reasonable for a non-Docker set up, but chances are your Dockerized application doesn't need most of what's started by default.
Alpine takes a much different approach. It doesn't start too much up by default and expects you to only start the things you need. This is perfect for a Dockerized application.

<p align="right">(<a href="#readme-top">back to top</a>)</p>


## Background materials

* <i class="far fa-book-open"></i> [Docker Networking](https://docs.docker.com/network/)
* <i class="far fa-book-open"></i> [Docker Compose](https://docs.docker.com/compose/)
* <i class="far fa-exclamation"></i> [What is the use of HOST and NONE network in docker](https://stackoverflow.com/questions/41083328/what-is-the-use-of-host-and-none-network-in-docker/43873743#43873743)

<p align="right">(<a href="#readme-top">back to top</a>)</p>


## Contact

MattheWhite - Fehér Mátyás

[![LinkedIn][linkedin-shield]][linkedin-url]
[![GitHub][github-shield]][github-url]

Project Link: [https://github.com/MattheWhite/docker-networking](https://github.com/MattheWhite/docker-networking)

<p align="right">(<a href="#readme-top">back to top</a>)</p>


[contributors-shield]: https://img.shields.io/github/contributors/MattheWhite/docker-networking-general.svg?style=for-the-badge
[contributors-url]: https://github.com/MattheWhite/docker-networking
[docker-shield]: https://img.shields.io/badge/docker-%230db7ed.svg?style=for-the-badge&logo=docker&logoColor=white
[docker-url]: https://docs.docker.com/get-started/overview/
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=349
[linkedin-url]: https://www.linkedin.com/in/matyas-feher/
[github-shield]: https://img.shields.io/badge/-GitHub-black.svg?style=for-the-badge&logo=github&colorB=947
[github-url]: https://github.com/MattheWhite
