#! /bin/bash

# build image
docker build -t item-app:v1 .

# list docker images
docker images

# change image name to container registry
docker tag item-app:v1 ghcr.io/mohammadafandy/item-app:v1

# login to docker github packages
echo $PAT | docker login ghcr.io --username mohammadafandy --password-stdin

# push / upload image to container registry
docker push ghcr.io/mohammadafandy/item-app:v1
