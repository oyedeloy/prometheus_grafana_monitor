#!/bin/bash 
sudo apt update -y
sudo apt-get install -y docker
sudo usermod -aG docker ec2-user
sudo service docker start
sudo chkconfig docker on
sudo docker run -d  --name grafana  -p 3000:3000  grafana/grafana