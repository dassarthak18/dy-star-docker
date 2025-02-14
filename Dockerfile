FROM fstarlang/fstar:latest
RUN apt -y update && apt -y upgrade && apt -y autoremove
WORKDIR /home/build/
