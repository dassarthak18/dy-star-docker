# DY* Docker Image

To use this docker image, clone this repository and build the docker image. Make sure to clear your docker builder cache if this is not your first time building the image:

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

Please note that it is better to build the image yourself if you want to access the latest F* release.

Once that is out of the way, you can run an interactive container of this image. Note that since the DY* repository is private, you would require proper authentication (with your [GitHub Personal Access Token](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/managing-your-personal-access-tokens)). You could also specify (optional) the branch name you wish to work with:

```bash
docker run -it -e GIT_USERNAME="your_username" -e GIT_PAT="your_PAT" -e BRANCH_NAME="branch_name" dy-star
```

if you built it yourself, otherwise:

```bash
docker run -it -e GIT_USERNAME="your_username" -e GIT_PAT="your_PAT" -e BRANCH_NAME="branch_name" dassarthak18/dy-star
```

If no branch name is specified, the script defaults to the master branch.

## Notes
* The docker image is isolated from the repository or branch the user chooses to work with. This instantiation will be done when a container is run from the image that is built/pulled. There is an optional ```REPO_NAME``` variable that can be used to work with any private fork of the parent DY* repository. This ensures that you do not have to wait for a pull request to be merged to the main repository in order to verify the soundness of your code.
* This repository hosts a GitHub Actions pipeline that builds and pushes a fresh image to DockerHub after every commit. If you wish to fork this repository and host your own DockerHub images, please ensure that the variables ```DOCKER_USERNAME``` and ```DOCKER_PASSWORD``` are set to their correct values (corresponding to your credentials) in [GitHub Secrets](https://docs.github.com/en/actions/security-for-github-actions/security-guides/using-secrets-in-github-actions) for your forked repository.
