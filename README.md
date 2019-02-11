# bedrock-container

A docker container to run the [Server Software (ALPHA) for Minecraft](https://minecraft.net/en-us/download/server/bedrock/) enabling you to run a multiplayer server for Minecraft.  

## Getting Started

These instructions will cover usage information and for the docker container 

### Prerequisities

In order to run this container you'll need docker installed.

* [Windows](https://docs.docker.com/windows/started)
* [OS X](https://docs.docker.com/mac/started/)
* [Linux](https://docs.docker.com/linux/started/)

### Usage

#### Container Parameters

Starting the Server Software (ALPHA) for Minecraft

```shell
docker container run -p 19132:19132/udp mumblingmac/bedrock
```

Copying Data from Container

```shell
docker container cp <container_name>/data ./
```

Starting the Server Software (ALPHA) for Minecraft with external volume

```shell
docker run -p 19132:19132/udp -v $(PWD)/data:/data mumblingmac/bedrock
```

Getting access to a shell

```shell
docker run --it -p 19132:19132/udp mumblingmac/bedrock /bin/bash
```

#### Environment Variables

#### Volumes

* `/data` - Persistent Data Folder

#### Useful File Locations

* `/data/permissions.json`  - user permissions file
* `/data/server.properties` - server configuration file
* `/data/whitelist.json`    - approved users file

## Built With

* Ubuntu 18.04
* Curl 7.58.0
* Minecraft Server Software for Ubuntu 1.9.0.15

## Find Us

* [GitHub](https://github.com/mumblingMac/bedrock-container)
* [DockerHub](https://hub.docker.com/r/mumblingmac/bedrock)

## Authors

* **Kenneth McDaniel** - *Initial work* - [MumblingMac](https://github.com/MumblingMac)

See also the list of [contributors](https://github.com/mumblingMac/bedrock-container) who 
participated in this project.

## Acknowledgments

