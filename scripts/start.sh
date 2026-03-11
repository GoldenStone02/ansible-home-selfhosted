#!/bin/bash
# containers="homer pihole-unbound "$(docker ps --format '{{.Names}}' | grep -v -E $(docker ps --format '{{.Names}}' -f='name=homer' -f='name=pihole-unbound' | paste -sd '|' -))
containers="homer pihole-unbound redlib openbooks jellyfin vaultwarden portainer watchtower nginxproxymanager"

echo $containers

for container in $containers
do
    echo "Starting $container"
    docker container start $container
done