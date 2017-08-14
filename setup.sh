#!/usr/bin/env bash

timeout 180 /bin/bash -c 'until stat /var/lib/cloud/instance/boot-finished 2>/dev/null; do echo waiting ...; sleep 1; done'

sudo apt-get update
sleep 2
sudo apt-get -y upgrade
sleep 2
sudo apt-get update
sleep 2
sudo apt-get -y install make python-pip python-dev libffi-dev libssl-dev libxml2-dev libxslt1-dev libjpeg8-dev zlib1g-dev
sudo pip install --upgrade pip
sudo pip install ansible
