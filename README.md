# ChKit

## Overview
`chkit` is a toolkit designed to be used within a Docker container. It includes a variety of useful command-line tools and utilities for system administration, network troubleshooting, and development.

## Docker Image
The Docker image is based on `ubuntu:22.04` and includes the following tools:
- ca-certificates
- curl
- dnsutils
- git
- htop
- iproute2
- iputils-ping
- lsof
- ncdu
- net-tools
- nmap
- psmisc
- sudo
- tar
- tcpdump
- tmux
- traceroute
- unzip
- vim
- wget
- zip

Additionally, it installs and configures `zsh` with the `spaceship-prompt` and several useful plugins:
- zsh-autosuggestions
- zsh-completions
- zsh-syntax-highlighting

The image also includes an enhanced `vim` configuration from the [amix/vimrc](https://github.com/amix/vimrc) repository.

## Usage
To run the Docker container with `chkit`, use the following command:

```sh
docker run -it --rm cyfeng/chkit:latest
```

This will start a container with `zsh` as the default shell.

## Building the Docker Image
To build the Docker image, use the following command:

```sh
docker build -t chkit .
```

Replace `chkit` with the desired name for your Docker image.

## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
