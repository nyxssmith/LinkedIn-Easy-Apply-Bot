#!/bin/bash

docker-compose build #--no-cache
docker-compose up    #--abort-on-container-exit
#docker-compose up --abort-on-container-exit
