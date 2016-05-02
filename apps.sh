#!/usr/bin/env bash   
echo "Installing RVM and Ruby"
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -sSL https://get.rvm.io | bash -s stable
source /home/vagrant/.rvm/scripts/rvm
rvm install ruby-2.0
echo "Installing Apps"
git clone https://github.com/alpheios-project/arethusa
cd arethusa
rvm use 2.0
npm install
grunt install
grunt minify:all

