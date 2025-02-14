#!/bin/bash

export GIT_USERNAME=${GIT_USERNAME}
export GIT_PAT=${GIT_PAT}
export REPO_NAME=${REPO_NAME}
export BRANCH_NAME=${BRANCH_NAME}

if [ -z "$GIT_USERNAME" ] || [ -z "$GIT_PAT" ]; then
  echo "Missing environment variables: GIT_USERNAME or GIT_PAT"
  exit 1
fi

REPO_NAME=${REPO_NAME:-github.com/bichhawat/dolev-yao-star.git}
BRANCH_NAME=${BRANCH_NAME:-master}

git clone --branch $BRANCH_NAME --single-branch https://$GIT_USERNAME:$GIT_PAT@$REPO_NAME /home/build/dolev-yao-star/
cd /home/build/dolev-yao-star/ && clear
exec bash
