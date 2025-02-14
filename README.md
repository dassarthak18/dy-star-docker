# DY* Docker Image

This docker image inherits from the official docker image of F*, found at [fstarlang/fstar](https://hub.docker.com/r/fstarlang/fstar). To use this docker image, clone this repository and build the docker image. Make sure to clear your docker builder cache if this is not your first time building the image:

```bash
  docker builder prune --all --force
  git clone https://github.com/dassarthak18/dy-star-docker.git
  cd dy-star-docker/
  docker build -t dy-star .
```

Alternatively, pull from [dassarthak18/dy-star](https://hub.docker.com/r/dassarthak18/dy-star):

```bash
  docker pull dassarthak18/dy-star:latest
```

Once that is out of the way, you can run an interactive container of this image. Note that since the DY* repository is private, you would require proper authentication (with your [GitHub Personal Access Token](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/managing-your-personal-access-tokens)). You would also require to specify the branch name you wish to work with:

```bash
docker run -it -e GIT_USERNAME="your_username" -e GIT_PAT="your_PAT" -e BRANCH_NAME="branch_name" dy-star
```

If no branch name is specified, the script defaults to the master branch.

# TO-DO

[] Use a smaller base image that inherits from Ubuntu and does not lock the apt cache.
[] Check why ```make``` is not working as expected.
