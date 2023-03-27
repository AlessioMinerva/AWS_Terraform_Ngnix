#!/bin/bash
sudo apt-get update 
sudo apt install nginx -y
sudo systemctl enable nginx
sudo wget -O /var/www/html/index.nginx-debian.html https://raw.githubusercontent.com/AlessioMinerva/AWS_Terraform_Ngnix/main/webpage.html
