#!/bin/bash

docker run -it --rm --name my-achache-app -p 80:80 -v "$PWD":/usr/local/apache2/htdocs/ apache2-image
