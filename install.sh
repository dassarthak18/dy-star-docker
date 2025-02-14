#!/bin/bash

export GIT_USERNAME=${GIT_USERNAME}
export GIT_PAT=${GIT_PAT}

if [ -z "$GIT_USERNAME" ] || [ -z "$GIT_PAT" ]; then
  echo "Missing environment variables: GIT_USERNAME or GIT_PAT"
  exit 1
fi

git clone https://$GIT_USERNAME:$GIT_PAT@github.com/bichhawat/dolev-yao-star.git /home/build/dolev-yao-star/
exec bash
