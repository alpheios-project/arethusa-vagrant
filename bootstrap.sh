#!/usr/bin/env bash   
echo "installing base packages"
sudo apt-get update
curl -sL https://deb.nodesource.com/setup | sudo bash -
sudo apt-get install -y nodejs
sudo apt-get install -y ruby
sudo apt-get install -y git
sudo npm install grunt-cli -g
sudo npm install bower -g
