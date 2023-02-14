# A day with Docker

### To build a Docker image

here . means the source path of local directory (here, current directory). so all the files in the local directory get tar d and sent to the Docker daemon. The PATH
specifies where to find the files for the “context” of the build on the Docker daemon.

```bash
docker build —tag image-name:tag .
```

### To check Docker images

```bash
docker images
```

or

```bash
docker image ls
```

### To remove a image

```bash
docker rmi image-name
```

### After building a Docker image, run the following command to run this image into a container

```bash
docker run -p 8080:80 —name container-name -d image-name
```

Here -d means, run this container in the background and print container ID

### For checking the running container details

```bash
docker ps
```

### For checking all container details

```bash
docker ps -a
```

### To start a container

```bash
docker start container-name
```

### To stop a container

```bash
docker stop container-name
```

### To remove a container

```bash
docker rm container-name
```

### Tag docker image before pushing it

```bash
docker tag source-image-name:tag destination-image-name:tag
```

### Download a docker image from registry (ex: docker hub)

```bash
docker pull image-name:tag
```

### Copy files/folders between a container to the local filesystem

here first path (./app/.) is the source directory of the container and the next dot. is the path of the local directory

```bash
docker cp container-id:./app/. .
```

### To show the container folder structure

```bash
docker exec container-id ls -la
```

### To enter into a container

```bash
docker exec -it container-id sh
```

Docker compose helps to build a docker image and create and run containers by a compose file. So we don't need to run docker build, run etc command manually.

### Docker compose up

```bash
docker-compose up
```

Docker compose down remove docker containers automatically defined on this file

### Docker compose down

```bash
docker-compose down
```
