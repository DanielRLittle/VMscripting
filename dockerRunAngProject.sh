#! /bin/bash

docker pull danielrlittle/api
docker pull danielrlittle/ui

docker network create pool-app

docker run -d --network pool-app --name mongo mongo
docker run -d --network pool-app --name api danielrlittle/api
docker run -d --network pool-app --name ui danielrlittle/ui
