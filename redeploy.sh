#/bin/bash

docker stop anglersproshop
docker rm anglersproshop
docker build -t anglersproshop:latest .
docker run --name anglersproshop --hostname anglersproshop -v $PWD:/data --network web -d --restart unless-stopped anglersproshop:latest
