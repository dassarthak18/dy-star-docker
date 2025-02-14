# DY* Docker Image

This docker image inherits from the official docker image of F*, found at fstarlang/fstar. To use this docker image, clone this repository and run the following command inside the directory:

```bash
  docker build -t dy-star .
```

Alternatively, pull from <address>:

```bash
  docker pull <imagename>:latest
```

Once that is out of the way, you can run an interactive container of this image as follows:

```bash
docker run -it dy-star
```
