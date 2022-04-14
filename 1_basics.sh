#!bin/bash
sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get -y install libssl-dev openssl git binutils gcc g++ make htop tmux mc zlib1g zlib1g-dev
sudo apt-get install libffi-dev
sudo apt-get install libsqlite3-dev

cd
mkdir bootstrap
cd bootstrap

# Python installation
wget https://www.python.org/ftp/python/3.7.13/Python-3.7.13.tgz
tar xf Python-3.7.13.tgz 
cd Python-3.7.13/
sudo apt-get -y install 
./configure
make
sudo make install

sudo apt-get install -y python3-venv