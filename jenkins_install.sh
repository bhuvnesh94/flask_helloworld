#!/bin/bash

sudo apt update
sudo apt upgrade -y

# install java for jenkins
sudo apt install openjdk-8-jdk -y
export JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64/bin"
source /etc/environment
# print java version
java -version
# install jenkins
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt update
sudo apt install jenkins -y
# start and enable jenkins service
sudo systemctl start jenkins
sudo systemctl enable jenkins

# jenkins default password
echo "Jenkins default password"
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
echo "enter above password in jenkins url: http://i-p:8080"

