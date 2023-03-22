#!/bin/bash

sleep 30

sudo yum update -y
sudo yum install httpd -y
echo "hello world" > iman