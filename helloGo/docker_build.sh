#!/bin/bash

echo "docker build"
docker build -t go_test:1.0.0 .

#echo "docker run"
#docker run -d go_test:1.0.0
