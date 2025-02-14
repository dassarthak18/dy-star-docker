FROM fstarlang/fstar:latest
LABEL org.opencontainers.image.authors="sarthak.das@iitgn.ac.in"

RUN cd /home/build/ && git clone https://github.com/dassarthak18/dy-star-docker.git
RUN cd dy-star-docker && chmod u+x install.sh

ENV GIT_USERNAME=""
ENV GIT_PAT=""
ENV REPO_NAME=""
ENV BRANCH_NAME=""

WORKDIR /home/build/dy-star-docker/
CMD ["./install.sh"]
