#! /bin/bash

sudo docker pull danielrlittle/api
sudo docker pull danielrlittle/ui

sudo docker network create pool-app

sudo docker run -d --network pool-app --name mongo mongo
sudo docker run -d --network pool-app --name api danielrlittle/api
sudo docker run -d -p 80:80 --network pool-app --name ui danielrlittle/ui
