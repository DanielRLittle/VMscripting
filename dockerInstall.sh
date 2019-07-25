#! /bin/bash

curl https://get.docker.com | sudo bash
sudo usermod -aG docker $(whoami)
sudo newgrp docker
