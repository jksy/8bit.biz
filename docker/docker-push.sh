#!/bin/bash

if [ $# -ne 1 ]; then
  echo "one container id is needed" 1>&2
  exit 1
fi

docker tag $1 jksy/web.8bit.biz-build:`date +%Y%m%d-%H%M%S`
docker tag $1 jksy/web.8bit.biz-build:latest
docker image ls
docker push jksy/web.8bit.biz-build:latest
