#!/bin/bash

VERSION=`cat VERSION`

docker build ./$VERSION -t mumblingmac/bedrock:$VERSION
