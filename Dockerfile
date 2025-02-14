FROM fstarlang/fstar:latest

RUN apt -y update && apt -y upgrade && apt -y autoremove
RUN cd /home/build/ && git clone hhttps://dassarthak18/dy-star-docker.git
RUN cd dy-star-docker && chmod u+x install.sh
RUN ./install.sh "$GIT_USERNAME" "$GIT_PAT"

WORKDIR /home/build/
