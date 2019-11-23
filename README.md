# Shodan Cli Docker Image

![](https://blog.shodan.io/content/images/2015/02/shodan-logo-white.png)

[![GitHub stars](https://img.shields.io/github/stars/leleobhz/docker-shodan?style=social)](https://github.com/leleobhz/docker-shodan/stargazers) [![GitHub forks](https://img.shields.io/github/forks/leleobhz/docker-shodan?style=social)](https://github.com/leleobhz/docker-shodan/network) [![GitHub issues](https://img.shields.io/github/issues/leleobhz/docker-shodan?style=social)](https://github.com/leleobhz/docker-shodan/issues) 

## What is?

Shodan Cli Docker Image is a container for https://cli.shodan.io/. Docker container is based on [python:slim](https://hub.docker.com/_/python "python:slim") official Docker container.

## Building

This container was deployed with [Podman](https://podman.io/ "Podman") container system so it must be compatible with docker too.

If you using Fedora 31 to build. please change **cgroup_manager** in *~/.config/containers/libpod.conf* as the following:

    cgroup_manager = "systemd"
    

To build with podman, I suggest the following command line:

`podman build -t pqatsi/shodan:latest -f Dockerfile`

## Running

The **shodan** script in this repository is enough to run without issues - built from git or downloaded from Docker Hub. In a nutshell, here is a example:

`podman run --privileged -it -v ~/.shodan:/root/.shodan pqatsi/shodan:latest init <YOUR_API_KEY>`
`podman run --privileged -it -v ~/.shodan:/root/.shodan pqatsi/shodan:latest myip`

This image does have same mechanism from Docker MariaDB official image for arguments: You do not need call shodan on cmd, just the arguments. Entrypoint will take care of everything you need from shodan.

By default, the script mounts the .shodan directory inside you home, to preserve same behaviour of native instalation. Tthe --privileged for podman is needed for R/W allowance of mounted volume, but all permissions is linked to user that runs the script. This volume needs to be preserved since it stores the api_key and temporary queries from shodan.

## Issues and PR

If you found any issues, please fill a Issue in GitHub. This repo accepts PR after admin review.
