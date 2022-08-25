# docker-demo

# Docker Compose local HTTPS

> Examples of local HTTPS with docker-compose + mkcert

## Prerequisites
- [local-https](https://github.com/HugoDF/docker-compose-local-https)
- [mkcert](https://github.com/FiloSottile/mkcert)
- [Docker Desktop](https://www.docker.com/products/docker-desktop)
## Installation

For mac install mkcert in your local
command `brew install mkcert`

Run Docker Desktop

Run `mkcert -install`

Run `./init.sh` (creates local certificates)

Update your hosts file and add this below
`127.0.0.1 web.example.com`
`127.0.0.1 api.example.com`

For mac m1 host file location `/etc/hosts`

Start docker compose 
 RUN command `docker-compose up` or `docker-compose up -d`  for background process
Stop docker container
 RUN command  `docker-compose down`

Check web and api in the browser in https mode
`https://web.example.com`
`https://api.example.com`

