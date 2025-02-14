FROM fstarlang/fstar:latest

RUN cd /home/build/ && git clone https://github.com/dassarthak18/dy-star-docker.git
RUN cd dy-star-docker && chmod u+x install.sh

ENV GIT_USERNAME=""
ENV GIT_PAT=""

WORKDIR /home/build/dy-star-docker/
CMD ["./install.sh"]
