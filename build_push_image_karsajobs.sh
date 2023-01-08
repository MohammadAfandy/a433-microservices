#! /bin/bash

# build image
docker build -t karsajobs:latest .

# change image name to container registry
docker tag karsajobs:latest ghcr.io/mohammadafandy/karsajobs:latest

# login to docker github packages
echo $PAT | docker login ghcr.io --username mohammadafandy --password-stdin

# push / upload image to container registry
docker push ghcr.io/mohammadafandy/karsajobs:latest
