FROM ubuntu:latest as build

# install tools required to download 
# and unzip the bedrock-server file
RUN apt-get -y update \
&& apt-get install -y \
    unzip \
    wget \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/*

ARG BEDROCK_SERVER_URL=https://minecraft.azureedge.net/bin-linux/bedrock-server-1.9.0.15.zip
# download and extract the current version of the bedrock server 
# unfortunately, there isn't a "download the latest" link 
RUN wget $BEDROCK_SERVER_URL -O bedrock-server.zip \
&& unzip bedrock-server.zip -d bedrock-server\
&& rm bedrock-server.zip 

from ubuntu:18.04

# bedrock-server requires 19132 for IPv4
# bedrock-server requires 19133 for IPv6
EXPOSE 19132/udp
EXPOSE 19133/udp

# copy the bedrock-server directory that
# was extracted from the previous stage
COPY --from=build bedrock-server app

WORKDIR app

# install tools required to launch
# the bedrock-server, and stage
# the data folder for copying to a
# volume
RUN apt-get -y update \
&& apt-get install -y \
    curl \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/* \
&& mkdir /data \
&& mv permissions.json server.properties whitelist.json /data \
&& ln -s /data/permissions.json permissions.json \
&& ln -s /data/server.properties server.properties \
&& ln -s /data/whitelist.json whitelist.json \
&& mkdir /data/worlds \
&& ln -s /data/worlds worlds

CMD LD_LIBRARY_PATH=. ./bedrock_server
