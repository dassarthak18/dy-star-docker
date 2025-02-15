FROM ubuntu:latest
LABEL org.opencontainers.image.authors="sarthak.das@iitgn.ac.in"

# Install F* binaries
RUN apt -y update && apt -y upgrade && apt -y autoremove

ENV TZ=Asia/Kolkata
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt install -y curl git jq libgomp1 make wget

RUN mkdir /home/build
WORKDIR /home/build/
RUN curl -L $(curl -s https://api.github.com/repos/fstarlang/fstar/releases/latest | jq -r '.assets[] | select(.name | contains("Linux")) | .browser_download_url') -o fstar.tar.gz
RUN tar -xf fstar.tar.gz && rm -rf fstar.tar.gz && mv fstar FStar

# Install this repo and set things up
RUN git clone https://github.com/dassarthak18/dy-star-docker.git
RUN cd dy-star-docker && chmod u+x install.sh

# Install the desired repo and get going
ENV GIT_USERNAME=""
ENV GIT_PAT=""
ENV REPO_NAME=""
ENV BRANCH_NAME=""

WORKDIR /home/build/dy-star-docker/
CMD ["./install.sh"]
