#!/bin/bash

sudo apt-get update
sudo apt-get update -y --fix-missing
sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get full-upgrade
sudo apt-get -y install -f
sudo apt-get -y autoremove
sudo apt-get -y autoclean
sudo flatpak upgrade -y
sudo flatpak uninstall --unused -y
echo "Done"