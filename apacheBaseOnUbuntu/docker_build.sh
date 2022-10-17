#!/bin/bash

echo "docker build start"
docker build -t apache:ubuntu .

echo "run docker"
#docker run --rm -d -P --name apache_ubuntu apache:ubuntu

docker run -i --rm -d -p 80:80 -p 10113:22 -e APACHE_SERVERNAME=test apache:ubuntu
