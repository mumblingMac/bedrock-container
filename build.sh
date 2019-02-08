#!/bin/bash

VERSION=`cat VERSION`

docker build ./$VERSION -t bedrock-server:$VERSION
