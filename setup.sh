#!/bin/sh
#Crouton Post Flight Goodies
#Works on Xenial

#Foundation
sudo apt-get install curl firefox dnsutils gcc git python3-pip python ruby-dev vim wget whois -y
sudo apt-get update
sudo apt-get upgrade

#Pythonic
sudo pip3 install virtualenv
pip install --upgrade pip
mkdir ~/.virtualenv
virtualenv ~/.virtualenv/astapor
source ~/.virtualenv/astapor/bin/activate

#Install Ansible
git clone https://github.com/ansible/ansible.git
source ansible/hacking/env-setup
easy_install jinja2
easy_install yaml
easy_install cryptography
sudo apt-get install ruby-dev
sudo gem install ffi
ansible --version

