#!/usr/bin/env bash   
echo "installing base packages"
sudo apt-get update
curl -sL https://deb.nodesource.com/setup | sudo bash -
sudo apt-get install -y nodejs
sudo apt-get install -y git
sudo apt-get install -y apache2
sudo npm install grunt-cli -g
sudo npm install bower -g
echo "setup apache links"
cd /var/www/html
sudo ln -s /arethusa-example-data
sudo ln -s /arethusa-configs
sudo ln -s /home/vagrant/arethusa 

