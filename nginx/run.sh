#!/bin/bash

docker run --name nginx-container -p 18080:80 -d my-nginx:1.0.0
