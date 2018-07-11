#!/bin/sh
#Crouton Post Flight Goodies
#Works on Xenial

#Setup your pip & virtualenv
sudo apt-get install python3-pip
sudo apt-get install firefox
sudo pip3 install virtualenv
pip install --upgrade pip
mkdir ~/.virtualenv
virtualenv ~/.virtualenv/astapor
source ~/.virtualenv/astapor/bin/activate

#Install git & more dev 
sudo apt-get install curl dnsutils git vim wget whois -y
sudo apt-get update
sudo apt-get upgrade

#Install Ansible
git clone https://github.com/ansible/ansible.git
source ansible/hacking/env-setup
easy_install jinja2
easy_install yaml
easy_install cryptography
sudo apt-get install gcc
sudo apt-get install ruby-dev
#easy_install ffi
sudo gem install ffi
ansible --version

