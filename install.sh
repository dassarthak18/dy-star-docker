#!/bin/bash

GIT_USERNAME=$1
GIT_PAT=$2

if [ -z "$GIT_USERNAME" ] || [ -z "$GIT_PAT" ]; then
  echo "Missing arguments: GIT_USERNAME, or GIT_PAT"
  exit 1
fi

git clone https://$GIT_USERNAME:$GIT_PAT@github.com/bichhawat/dolev-yao-star.git
