#!/bin/bash

echo "docker build"
docker build -t sshd:dockerfile .

echo "docker run"
docker run --rm -d -p 10184:22 sshd:dockerfile  
