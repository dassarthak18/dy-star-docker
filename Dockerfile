FROM ubuntu:latest
LABEL org.opencontainers.image.authors="sarthak.das@iitgn.ac.in"

# Install F* binaries
RUN apt -y update && apt -y upgrade && apt -y autoremove
ENV TZ=Asia/Kolkata
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt install -y git libgomp1 make wget
RUN mkdir /home/build && cd /home/build/
RUN wget https://github.com/FStarLang/FStar/releases/download/v2025.02.06/fstar-v2025.02.06-Linux-x86_64.tar.gz
RUN tar -xf fstar-v2025.02.06-Linux-x86_64.tar.gz && rm -rf fstar-v2025.02.06-Linux-x86_64.tar.gz
RUN mv fstar FStar

# Install this repo and set things up
RUN cd /home/build/ && git clone https://github.com/dassarthak18/dy-star-docker.git
RUN echo ls
RUN cd dy-star-docker && chmod u+x install.sh

ENV GIT_USERNAME=""
ENV GIT_PAT=""
ENV REPO_NAME=""
ENV BRANCH_NAME=""

# Install the desired repo and get going
WORKDIR /home/build/dy-star-docker/
CMD ["./install.sh"]
