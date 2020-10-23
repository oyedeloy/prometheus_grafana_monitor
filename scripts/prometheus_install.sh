#!/bin/bash

sudo apt update -y
sudo apt  install docker.io
sudo usermod -aG docker ubuntu
sudo service docker start
sudo systemctl enable docker
sudo docker run -d -it -p 9090:9090 --name prometheus prom/prometheus