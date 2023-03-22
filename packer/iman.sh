#!/bin/bash

sleep 30

curl http://169.254.169.254/latest/meta-data/

sudo yum update -y
sudo yum install httpd -y
echo "hello world" > iman