#!/bin/sh

# Install necessary Packages
yum update -y
yum install awslogs -y
amazon-linux-extras install docker -y

# Setup Docker
cp /tmp/daemon.json /etc/docker/
service docker start
systemctl enable docker

# Setup CloudWatch logs
echo "[default]" >> /tmp/awscli.conf
echo "region = ${AWS_REGION}" >> /tmp/awscli.conf
cp /tmp/awslogs.conf /etc/awslogs/awslogs.conf
cp /tmp/awscli.conf /etc/awslogs/awscli.conf
service awslogsd start
chkconfig awslogsd on
service awslogsd restart
systemctl enable awslogsd.service

# Setup Jenkins Instance
docker pull jenkins/jenkins:lts
mkdir -p /var/jenkins_home && sudo chown 1000:1000 /var/jenkins_home
docker run --restart=always -d \
    -v /var/jenkins_home:/var/jenkins_home:z \
    --log-driver=awslogs \
    --log-opt awslogs-create-group=true \
    --log-opt awslogs-group="jenkins-ami-logs" \
    -p 8080:8080 \
    --name jenkins jenkins/jenkins:lts

#Cleanup
yum clean all
rm -rf /tmp/daemon.json /tmp/aws*.conf