#!/bin/bash

export GIT_USERNAME=${GIT_USERNAME}
export GIT_PAT=${GIT_PAT}
export BRANCH_NAME=${BRANCH_NAME}

if [ -z "$GIT_USERNAME" ] || [ -z "$GIT_PAT" ] || [ -z "$BRANCH_NAME" ]; then
  echo "Missing environment variables: GIT_USERNAME, GIT_PAT or BRANCH_NAME"
  exit 1
fi

git clone --branch $BRANCH_NAME --single-branch https://$GIT_USERNAME:$GIT_PAT@github.com/bichhawat/dolev-yao-star.git /home/build/dolev-yao-star/
cd /home/build/dolev-yao-star/ && clear
exec bash
