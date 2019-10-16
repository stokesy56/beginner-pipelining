#!/bin/bash
sudo apt-get update -y
# Installing nginx
sudo apt-get install nginx -y
sudo systemctl start nginx

# installing java
sudo apt update -y
sudo apt install openjdk-8-jdk -y

# installing nodejs
sudo apt-get install curl -y
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install nodejs -y

# installing jenkins
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt update -y
sudo apt install jenkins -y
systemctl status jenkins

#opening port
sudo ufw allow OpenSSH
sudo ufw enable
sudo ufw allow 8080

sudo npm i -g ngrok --unsafe-perm=true --allow-root
