#!/bin/sh

# Install necessary Packages
yum update -y
amazon-linux-extras install docker -y

# Setup Docker
cp /tmp/daemon.json /etc/docker/
service docker start
systemctl enable docker

# Setup Jenkins Instance
docker pull jenkins/jenkins:lts
mkdir -p /var/jenkins_home && sudo chown 1000:1000 /var/jenkins_home
docker run --restart=always -d \
    -v /var/jenkins_home:/var/jenkins_home:z \
    -p 8080:8080 \
    --name jenkins jenkins/jenkins:lts
