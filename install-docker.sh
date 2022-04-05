#!/usr/bin/env bash

if [ -x "$(command -v docker)" ]; then
    echo '[*] Docker is already install!'
    exit 0
fi

echo "[*] Update existing list of packages"

sleep 1
sudo apt update

echo "[*] Install Docker stable"
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"

apt-cache policy docker-ce
sudo apt install docker-ce
sleep 1
sudo systemctl status docker
sudo usermod -aG docker ${USER}
su - ${USER}

echo "[*] Docker has been installed!"
