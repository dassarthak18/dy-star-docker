# DY* Docker Image

This docker image inherits from the official docker image of F*, found at [fstarlang/fstar](https://hub.docker.com/r/fstarlang/fstar). To use this docker image, clone this repository and build the docker image:

```bash
  git clone https://github.com/dassarthak18/dy-star-docker.git
  cd dy-star-docker/
  docker build -t dy-star .
```

Alternatively, pull from dassarthak18/dy-star:

```bash
  docker pull dassarthak18/dy-star:latest
```

Once that is out of the way, you can run an interactive container of this image. Note that since the DY* repository is private, you would require proper authentication (with your Personalized Access Token or PAT):

```bash
docker run -it -e GIT_USERNAME="your_username" -e GIT_PAT="your_PAT" dy-star
```
