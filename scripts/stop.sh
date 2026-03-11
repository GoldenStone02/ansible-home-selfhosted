#!/bin/bash
containers=$(docker ps --format '{{.Names}}')

echo $containers

for container in $containers
do
    echo "Stopping $container"
    docker stop $container
done
