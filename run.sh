#!/bin/bash

IMAGE=`docker image ls -q mumblingmac/bedrock:$VERSION`
SERVER="minecraft"
VERSION=`cat VERSION`

if [ "" == "$IMAGE" ]; then
  `dirname $0`/build.sh
fi

docker container run -it -p 19132:19132/udp -p 19133:19133/udp --rm --name=$SERVER mumblingmac/bedrock:$VERSION
