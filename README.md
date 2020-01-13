# Spruce Swarm Tools compose setup

A simple setup to deploy Portainer using `docker-compose` or `docker stack deploy` (Swarm).

## Requirements

1. Install [Docker](http://docker.io).
2. (optional) Install [Docker-compose](http://docs.docker.com/compose/install/).
3. Clone this repository

## Usage

### Compose

See `nginx-proxy/` or `traefik/` for Compose deployments.

### Swarm

Deploy this stack on a manager node inside your Swarm cluster:

```
make run
```

You can then access Portainer by using the IP address of any node in your Swarm cluster over port 9000 with a web browser.

[Visit Portainer Locally](http://localhost:9000)

When you want to take down your stack run
```
make stop
```