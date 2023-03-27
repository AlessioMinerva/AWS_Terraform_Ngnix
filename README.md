# AWS_Terraform_Ngnix
An automated way to deploy an AWS instance (free tier) that is running Nginx (port 80) webservice. 




## Terraform Resources


### ec2.tf

- **provider "aws"** specifies the AWS provider and sets the region to "eu-west-2".
- **resource "aws_default_vpc"** creates a default VPC with a tag "Name" set to "Website vpc".
- **data "aws_availability_zones"** retrieves all available availability zones in the specified region.
- **resource "aws_default_subnet"** creates a default subnet in the first available availability zone with a tag "Name" set to "Website Subnet".
- **resource "aws_security_group"** creates a security group with a name "ec2 security group" and allows inbound traffic on ports 80 (HTTP) and 22 (SSH) from anywhere, and allows outbound traffic to anywhere.
- **data "aws_ami"** retrieves the latest Ubuntu Server Amazon Machine Image (AMI) with the owner set to Canonical.
- **resource "aws_instance"** launches an EC2 instance with the specified AMI, instance type, subnet, security group, key name, and user data script(the InstaalWebsite.sh file). A tag "Name" is also set to "Website Server".
- **output "public_ipv4_address"** prints the public IP address of the EC2 instance.


### InstallWebsite.sh 

The script starts with the command **#!/bin/bash** which is called a shebang. It tells the system to run the script using the Bash shell.

The next command sudo **apt-get update** updates the package list on the system to ensure that the latest version of packages are available for installation.

The command **sudo apt install nginx -y** installs the Nginx web server on the system. The -y flag is used to automatically confirm the installation without requiring user confirmation.

The next command **sudo systemctl enable nginx** starts and enables the Nginx service so that it automatically starts up whenever the system boots.

The final command sudo **wget -O /var/www/html/index.nginx-debian.html https://raw.githubusercontent.com/AlessioMinerva/AWS_Terraform_Ngnix/main/webpage.html** downloads a webpage and saves it as the default Nginx index page in the /var/www/html directory.




## HTML Webpage


### webpage.html 

This code is an HTML file that simulates a hacker typing on a console. It includes some JavaScript and CSS styling. The JavaScript code defines an object called "Typer" that is used to control the text that is being "typed" on the console. The contents of the challenge.txt file have been read and retrieved as typed text.


### challenge.txt

The code is HTML markup whit the text of the page.





