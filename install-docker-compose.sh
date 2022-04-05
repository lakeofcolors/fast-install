#!/usr/bin/env bash

if ! [ -x "$(command -v docker)" ]; then
    echo '[*] Docker is not install!'
fi

if [ -x "$(command -v docker-compose)" ]; then
    echo '[*] docker-compose is already install!'
    exit 1

fi

sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose


echo "[*] docker-compose has been installed!"
