#! /bin/bash

sudo apt install -y wget vim openjdk-8-jdk openjdk-8-jre

sudo useradd --create-home wildfly
sudo usermod --shell /bin/bash wildfly

sudo su - wildfly -c "wget https://download.jboss.org/wildfly/17.0.0.Final/wildfly-17.0.0.Final.tar.gz"

sudo su - wildfly -c "tar -xf ./wildfly-17.0.0.Final.tar.gz"

sudo mv ./wildfly.service /etc/systemd/system/

sudo systemctl daemon-reload

sudo systemctl start wildfly

sudo systemctl enable wildfly
