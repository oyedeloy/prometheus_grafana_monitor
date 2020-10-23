#!/bin/bash 
sudo apt update -y
sudo apt  install docker.io
sudo usermod -aG docker ubuntu
sudo service docker start
sudo systemctl enable docker
sudo docker run -d  --name grafana  -p 3000:3000  grafana/grafana