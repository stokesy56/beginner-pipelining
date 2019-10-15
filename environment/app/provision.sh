#!/bin/bash

# Update the sources list
sudo apt-get update -y

# upgrade any packages available
sudo apt-get upgrade -y

# install nginx
sudo apt-get install nginx -y

# install git
sudo apt-get install git -y

# install nodejs
sudo apt-get install python-software-properties
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install nodejs -y

# install pm2
sudo npm install pm2 -g

# set up nginx reverse proxy
sudo ln -s /home/ubuntu/environment/nodeapp.conf /etc/nginx/conf.d/nodeapp.conf
sudo nginx -s reload

# installing java
sudo apt update -y
sudo apt install openjdk-8-jdk -y

# installing jenkins
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt update
sudo apt install jenkins -y
systemctl status jenkins

#opening port
sudo ufw allow OpenSSH
sudo ufw enable
sudo ufw allow 8080

sudo npm i -g ngrok --unsafe-perm=true --allow-root
