#!/usr/bin/env bash   
echo "Installing Apps"
git clone https://github.com/alpheios-project/arethusa
git clone https://github.com/alpheios-project/arethusa-configs
git clone https://github.com/alpheios-project/arethusa-example-data.git data/example
cd arethusa
npm install
grunt install

