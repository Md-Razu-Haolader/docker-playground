# A day with Docker

### To build a Docker image

```bash
docker build —tag image-name .
```

### After building a Docker image, run the following command to run this image in a container

```bash
docker run -p 8080:80 —name container-name -d image-name
```
