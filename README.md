<p align="right">
  <a href="#">
      <img src="http://estruyf-github.azurewebsites.net/api/VisitorHit?user=ah5f&repo=github-visitors-badge&countColor=%237B1E7A" />
   </a>
</p>

# AWS AMI for Jenkins

This project can be used to create an AWS AMI for a dockerized version of Jenkins. It uses Packer for creating the AMI using necessary AWS configuration that can be setup.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a Mac.

### Prerequisites

What things you need to install the software and how to install them

Installing Python ...

```shell
brew install python
```

Installing Packer ...

```shell
brew install packer
```

### Setting up and executing the Project

A step by step series of examples that tell you how to get this running.

Setting up the variables required: The below will prompt you for necessary variables that will be used to setup your inputs to run the build for your AWS AMI.

```shell
./setup.py
```

Executing the Build:

```shell
./run.sh
```

## Running output

Here is an output of the AWS AMI creation ...

```packer
Template validated successfully.
amazon-ebs output will be in this color.

2019-04-30T22:26:01-04:00: ==> amazon-ebs: Prevalidating AMI Name: XXXXXXXXXXXXXXXXXXXXX
2019-04-30T22:26:02-04:00:     amazon-ebs: Found Image ID: XXXXXXXXXXXXXXXXXXXXX
2019-04-30T22:26:02-04:00: ==> amazon-ebs: Creating temporary keypair: XXXXXXXXXXXXXXXXXXXXX
2019-04-30T22:26:03-04:00: ==> amazon-ebs: Launching a source AWS instance...
2019-04-30T22:26:03-04:00: ==> amazon-ebs: Adding tags to source instance
2019-04-30T22:26:03-04:00:     amazon-ebs: Adding tag: "Name": "Packer Builder"
2019-04-30T22:26:04-04:00:     amazon-ebs: Instance ID: XXXXXXXXXXXXXXXXXXXXX
2019-04-30T22:26:04-04:00: ==> amazon-ebs: Waiting for instance (XXXXXXXXXXXXXXXXXXXXX) to become ready...
2019-04-30T22:26:35-04:00: ==> amazon-ebs: Using ssh communicator to connect: 99.99.99.99
2019-04-30T22:26:35-04:00: ==> amazon-ebs: Waiting for SSH to become available...
2019-04-30T22:26:45-04:00: ==> amazon-ebs: Connected to SSH!
2019-04-30T22:26:45-04:00: ==> amazon-ebs: Uploading ./conf/daemon.json => /tmp/
daemon.json 21 B / 21 B [===========================================================================================] 100.00% 0s
2019-04-30T22:26:46-04:00: ==> amazon-ebs: Provisioning with shell script: ./scripts/jenkins_ami_build.sh
2019-04-30T22:26:47-04:00:     amazon-ebs: Loaded plugins: extras_suggestions, langpacks, priorities, update-motd
2019-04-30T22:26:50-04:00:     amazon-ebs: Resolving Dependencies
2019-04-30T22:26:50-04:00:     amazon-ebs: --> Running transaction check
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package amazon-linux-extras.noarch 0:1.6.4-1.amzn2 will be updated
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package amazon-linux-extras.noarch 0:1.6.7-1.amzn2 will be an update
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package amazon-linux-extras-yum-plugin.noarch 0:1.6.4-1.amzn2 will be updated
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package amazon-linux-extras-yum-plugin.noarch 0:1.6.7-1.amzn2 will be an update
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package amazon-ssm-agent.x86_64 0:2.3.228.0-1.amzn2 will be updated
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package amazon-ssm-agent.x86_64 0:2.3.372.0-1.amzn2 will be an update
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package aws-cfn-bootstrap.noarch 0:1.4-30.amzn2 will be updated
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package aws-cfn-bootstrap.noarch 0:1.4-31.amzn2 will be an update
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package awscli.noarch 0:1.15.80-1.amzn2.0.1 will be updated
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package awscli.noarch 0:1.16.102-1.amzn2.0.1 will be an update
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package bind-libs.x86_64 32:9.9.4-61.amzn2.1.1 will be updated
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package bind-libs.x86_64 32:9.9.4-73.amzn2.1.2 will be an update
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package bind-libs-lite.x86_64 32:9.9.4-61.amzn2.1.1 will be updated
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package bind-libs-lite.x86_64 32:9.9.4-73.amzn2.1.2 will be an update
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package bind-license.noarch 32:9.9.4-61.amzn2.1.1 will be updated
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package bind-license.noarch 32:9.9.4-73.amzn2.1.2 will be an update
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package bind-utils.x86_64 32:9.9.4-61.amzn2.1.1 will be updated
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package bind-utils.x86_64 32:9.9.4-73.amzn2.1.2 will be an update
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package binutils.x86_64 0:2.29.1-23.amzn2.0.2 will be updated
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package binutils.x86_64 0:2.29.1-27.amzn2.0.2 will be an update
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package chrony.x86_64 0:3.2-1.amzn2.0.3 will be updated
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package chrony.x86_64 0:3.2-1.amzn2.0.5 will be an update
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package cloud-init.noarch 0:18.2-72.amzn2.0.6 will be updated
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package cloud-init.noarch 0:18.2-72.amzn2.0.7 will be an update
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package curl.x86_64 0:7.55.1-12.amzn2.0.6 will be updated
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package curl.x86_64 0:7.61.1-9.amzn2.0.1 will be an update
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package ec2-instance-connect.noarch 0:1.0-3.amzn2 will be updated
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package ec2-instance-connect.noarch 0:1.1-7.amzn2 will be an update
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package filesystem.x86_64 0:3.2-25.amzn2 will be updated
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package filesystem.x86_64 0:3.2-25.amzn2.0.4 will be an update
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package glibc.x86_64 0:2.26-28.amzn2.0.1 will be updated
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package glibc.x86_64 0:2.26-32.amzn2.0.1 will be an update
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package glibc-all-langpacks.x86_64 0:2.26-28.amzn2.0.1 will be updated
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package glibc-all-langpacks.x86_64 0:2.26-32.amzn2.0.1 will be an update
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package glibc-common.x86_64 0:2.26-28.amzn2.0.1 will be updated
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package glibc-common.x86_64 0:2.26-32.amzn2.0.1 will be an update
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package glibc-locale-source.x86_64 0:2.26-28.amzn2.0.1 will be updated
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package glibc-locale-source.x86_64 0:2.26-32.amzn2.0.1 will be an update
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package glibc-minimal-langpack.x86_64 0:2.26-28.amzn2.0.1 will be updated
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package glibc-minimal-langpack.x86_64 0:2.26-32.amzn2.0.1 will be an update
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package kernel.x86_64 0:4.14.109-99.92.amzn2 will be installed
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package kernel-tools.x86_64 0:4.14.77-81.59.amzn2 will be updated
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package kernel-tools.x86_64 0:4.14.109-99.92.amzn2 will be an update
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package krb5-libs.x86_64 0:1.15.1-19.amzn2.0.3 will be updated
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package krb5-libs.x86_64 0:1.15.1-20.amzn2.0.1 will be an update
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package libcrypt.x86_64 0:2.26-28.amzn2.0.1 will be updated
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package libcrypt.x86_64 0:2.26-32.amzn2.0.1 will be an update
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package libcurl.x86_64 0:7.55.1-12.amzn2.0.6 will be updated
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package libcurl.x86_64 0:7.61.1-9.amzn2.0.1 will be an update
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package libicu.x86_64 0:50.1.2-15.amzn2.0.2 will be updated
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package libicu.x86_64 0:50.1.2-17.amzn2 will be an update
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package libjpeg-turbo.x86_64 0:1.2.90-5.amzn2.0.2 will be updated
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package libjpeg-turbo.x86_64 0:1.2.90-5.amzn2.0.3 will be an update
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package libssh2.x86_64 0:1.4.3-10.amzn2.1.2 will be updated
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package libssh2.x86_64 0:1.4.3-12.amzn2.2 will be an update
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package libsss_idmap.x86_64 0:1.16.0-19.amzn2.5 will be updated
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package libsss_idmap.x86_64 0:1.16.2-13.amzn2.0.1 will be an update
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package libsss_nss_idmap.x86_64 0:1.16.0-19.amzn2.5 will be updated
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package libsss_nss_idmap.x86_64 0:1.16.2-13.amzn2.0.1 will be an update
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package mariadb-libs.x86_64 1:5.5.60-1.amzn2 will be updated
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package mariadb-libs.x86_64 1:5.5.62-1.amzn2.0.1 will be an update
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package nss-pem.x86_64 0:1.0.3-4.amzn2.0.2 will be updated
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package nss-pem.x86_64 0:1.0.3-5.amzn2 will be an update
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package openssl.x86_64 1:1.0.2k-16.amzn2.0.1 will be updated
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package openssl.x86_64 1:1.0.2k-16.amzn2.1.1 will be an update
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package openssl-libs.x86_64 1:1.0.2k-16.amzn2.0.1 will be updated
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package openssl-libs.x86_64 1:1.0.2k-16.amzn2.1.1 will be an update
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package perl.x86_64 4:5.16.3-292.amzn2.0.2 will be updated
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package perl.x86_64 4:5.16.3-294.amzn2 will be an update
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package perl-Pod-Escapes.noarch 1:1.04-292.amzn2.0.2 will be updated
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package perl-Pod-Escapes.noarch 1:1.04-294.amzn2 will be an update
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package perl-libs.x86_64 4:5.16.3-292.amzn2.0.2 will be updated
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package perl-libs.x86_64 4:5.16.3-294.amzn2 will be an update
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package perl-macros.x86_64 4:5.16.3-292.amzn2.0.2 will be updated
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package perl-macros.x86_64 4:5.16.3-294.amzn2 will be an update
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package python-urllib3.noarch 0:1.10.2-3.amzn2.0.1 will be updated
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package python-urllib3.noarch 0:1.24.1-1.amzn2.0.1 will be an update
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package python2-botocore.noarch 0:1.10.79-1.amzn2.1.1 will be updated
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package python2-botocore.noarch 0:1.12.92-2.amzn2.0.1 will be an update
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package setup.noarch 0:2.8.71-9.amzn2 will be updated
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package setup.noarch 0:2.8.71-10.amzn2 will be an update
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package sssd-client.x86_64 0:1.16.0-19.amzn2.5 will be updated
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package sssd-client.x86_64 0:1.16.2-13.amzn2.0.1 will be an update
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package system-release.x86_64 1:2-7.amzn2 will be updated
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package system-release.x86_64 1:2-10.amzn2 will be an update
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package systemd.x86_64 0:219-57.amzn2.0.6 will be updated
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package systemd.x86_64 0:219-57.amzn2.0.9 will be an update
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package systemd-libs.x86_64 0:219-57.amzn2.0.6 will be updated
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package systemd-libs.x86_64 0:219-57.amzn2.0.9 will be an update
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package systemd-sysv.x86_64 0:219-57.amzn2.0.6 will be updated
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package systemd-sysv.x86_64 0:219-57.amzn2.0.9 will be an update
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package tzdata.noarch 0:2018e-3.amzn2 will be updated
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package tzdata.noarch 0:2018i-1.amzn2 will be an update
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package wget.x86_64 0:1.14-15.amzn2.1.1 will be updated
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package wget.x86_64 0:1.14-18.amzn2 will be an update
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package xfsprogs.x86_64 0:4.5.0-15.amzn2 will be updated
2019-04-30T22:26:50-04:00:     amazon-ebs: ---> Package xfsprogs.x86_64 0:4.5.0-18.amzn2.0.1 will be an update
2019-04-30T22:26:50-04:00:     amazon-ebs: --> Finished Dependency Resolution
2019-04-30T22:26:50-04:00:     amazon-ebs: Dependencies Resolved
2019-04-30T22:26:50-04:00:     amazon-ebs: ================================================================================
2019-04-30T22:26:50-04:00:     amazon-ebs:  Package                        Arch   Version                 Repository  Size
2019-04-30T22:26:50-04:00:     amazon-ebs: ================================================================================
2019-04-30T22:26:50-04:00:     amazon-ebs: Installing:
2019-04-30T22:26:50-04:00:     amazon-ebs:  kernel                         x86_64 4.14.109-99.92.amzn2    amzn2-core  20 M
2019-04-30T22:26:50-04:00:     amazon-ebs: Updating:
2019-04-30T22:26:50-04:00:     amazon-ebs:  amazon-linux-extras            noarch 1.6.7-1.amzn2           amzn2-core  34 k
2019-04-30T22:26:50-04:00:     amazon-ebs:  amazon-linux-extras-yum-plugin noarch 1.6.7-1.amzn2           amzn2-core 9.3 k
2019-04-30T22:26:50-04:00:     amazon-ebs:  amazon-ssm-agent               x86_64 2.3.372.0-1.amzn2       amzn2-core  15 M
2019-04-30T22:26:50-04:00:     amazon-ebs:  aws-cfn-bootstrap              noarch 1.4-31.amzn2            amzn2-core 651 k
2019-04-30T22:26:50-04:00:     amazon-ebs:  awscli                         noarch 1.16.102-1.amzn2.0.1    amzn2-core 1.2 M
2019-04-30T22:26:50-04:00:     amazon-ebs:  bind-libs                      x86_64 32:9.9.4-73.amzn2.1.2   amzn2-core 1.0 M
2019-04-30T22:26:50-04:00:     amazon-ebs:  bind-libs-lite                 x86_64 32:9.9.4-73.amzn2.1.2   amzn2-core 743 k
2019-04-30T22:26:50-04:00:     amazon-ebs:  bind-license                   noarch 32:9.9.4-73.amzn2.1.2   amzn2-core  87 k
2019-04-30T22:26:50-04:00:     amazon-ebs:  bind-utils                     x86_64 32:9.9.4-73.amzn2.1.2   amzn2-core 207 k
2019-04-30T22:26:50-04:00:     amazon-ebs:  binutils                       x86_64 2.29.1-27.amzn2.0.2     amzn2-core 5.8 M
2019-04-30T22:26:50-04:00:     amazon-ebs:  chrony                         x86_64 3.2-1.amzn2.0.5         amzn2-core 249 k
2019-04-30T22:26:50-04:00:     amazon-ebs:  cloud-init                     noarch 18.2-72.amzn2.0.7       amzn2-core 818 k
2019-04-30T22:26:50-04:00:     amazon-ebs:  curl                           x86_64 7.61.1-9.amzn2.0.1      amzn2-core 342 k
2019-04-30T22:26:50-04:00:     amazon-ebs:  ec2-instance-connect           noarch 1.1-7.amzn2             amzn2-core  17 k
2019-04-30T22:26:50-04:00:     amazon-ebs:  filesystem                     x86_64 3.2-25.amzn2.0.4        amzn2-core 1.0 M
2019-04-30T22:26:50-04:00:     amazon-ebs:  glibc                          x86_64 2.26-32.amzn2.0.1       amzn2-core 3.3 M
2019-04-30T22:26:50-04:00:     amazon-ebs:  glibc-all-langpacks            x86_64 2.26-32.amzn2.0.1       amzn2-core 7.0 M
2019-04-30T22:26:50-04:00:     amazon-ebs:  glibc-common                   x86_64 2.26-32.amzn2.0.1       amzn2-core 737 k
2019-04-30T22:26:50-04:00:     amazon-ebs:  glibc-locale-source            x86_64 2.26-32.amzn2.0.1       amzn2-core 3.2 M
2019-04-30T22:26:50-04:00:     amazon-ebs:  glibc-minimal-langpack         x86_64 2.26-32.amzn2.0.1       amzn2-core  26 k
2019-04-30T22:26:50-04:00:     amazon-ebs:  kernel-tools                   x86_64 4.14.109-99.92.amzn2    amzn2-core 113 k
2019-04-30T22:26:50-04:00:     amazon-ebs:  krb5-libs                      x86_64 1.15.1-20.amzn2.0.1     amzn2-core 768 k
2019-04-30T22:26:50-04:00:     amazon-ebs:  libcrypt                       x86_64 2.26-32.amzn2.0.1       amzn2-core  46 k
2019-04-30T22:26:50-04:00:     amazon-ebs:  libcurl                        x86_64 7.61.1-9.amzn2.0.1      amzn2-core 292 k
2019-04-30T22:26:50-04:00:     amazon-ebs:  libicu                         x86_64 50.1.2-17.amzn2         amzn2-core 6.9 M
2019-04-30T22:26:50-04:00:     amazon-ebs:  libjpeg-turbo                  x86_64 1.2.90-5.amzn2.0.3      amzn2-core 134 k
2019-04-30T22:26:50-04:00:     amazon-ebs:  libssh2                        x86_64 1.4.3-12.amzn2.2        amzn2-core 135 k
2019-04-30T22:26:50-04:00:     amazon-ebs:  libsss_idmap                   x86_64 1.16.2-13.amzn2.0.1     amzn2-core 147 k
2019-04-30T22:26:50-04:00:     amazon-ebs:  libsss_nss_idmap               x86_64 1.16.2-13.amzn2.0.1     amzn2-core 153 k
2019-04-30T22:26:50-04:00:     amazon-ebs:  mariadb-libs                   x86_64 1:5.5.62-1.amzn2.0.1    amzn2-core 771 k
2019-04-30T22:26:50-04:00:     amazon-ebs:  nss-pem                        x86_64 1.0.3-5.amzn2           amzn2-core  74 k
2019-04-30T22:26:50-04:00:     amazon-ebs:  openssl                        x86_64 1:1.0.2k-16.amzn2.1.1   amzn2-core 497 k
2019-04-30T22:26:50-04:00:     amazon-ebs:  openssl-libs                   x86_64 1:1.0.2k-16.amzn2.1.1   amzn2-core 1.2 M
2019-04-30T22:26:50-04:00:     amazon-ebs:  perl                           x86_64 4:5.16.3-294.amzn2      amzn2-core 8.0 M
2019-04-30T22:26:50-04:00:     amazon-ebs:  perl-Pod-Escapes               noarch 1:1.04-294.amzn2        amzn2-core  51 k
2019-04-30T22:26:50-04:00:     amazon-ebs:  perl-libs                      x86_64 4:5.16.3-294.amzn2      amzn2-core 700 k
2019-04-30T22:26:50-04:00:     amazon-ebs:  perl-macros                    x86_64 4:5.16.3-294.amzn2      amzn2-core  44 k
2019-04-30T22:26:50-04:00:     amazon-ebs:  python-urllib3                 noarch 1.24.1-1.amzn2.0.1      amzn2-core 164 k
2019-04-30T22:26:50-04:00:     amazon-ebs:  python2-botocore               noarch 1.12.92-2.amzn2.0.1     amzn2-core 3.6 M
2019-04-30T22:26:50-04:00:     amazon-ebs:  setup                          noarch 2.8.71-10.amzn2         amzn2-core 166 k
2019-04-30T22:26:50-04:00:     amazon-ebs:  sssd-client                    x86_64 1.16.2-13.amzn2.0.1     amzn2-core 202 k
2019-04-30T22:26:50-04:00:     amazon-ebs:  system-release                 x86_64 1:2-10.amzn2            amzn2-core  17 k
2019-04-30T22:26:50-04:00:     amazon-ebs:  systemd                        x86_64 219-57.amzn2.0.9        amzn2-core 5.0 M
2019-04-30T22:26:50-04:00:     amazon-ebs:  systemd-libs                   x86_64 219-57.amzn2.0.9        amzn2-core 396 k
2019-04-30T22:26:50-04:00:     amazon-ebs:  systemd-sysv                   x86_64 219-57.amzn2.0.9        amzn2-core  80 k
2019-04-30T22:26:50-04:00:     amazon-ebs:  tzdata                         noarch 2018i-1.amzn2           amzn2-core 474 k
2019-04-30T22:26:50-04:00:     amazon-ebs:  wget                           x86_64 1.14-18.amzn2           amzn2-core 547 k
2019-04-30T22:26:50-04:00:     amazon-ebs:  xfsprogs                       x86_64 4.5.0-18.amzn2.0.1      amzn2-core 905 k
2019-04-30T22:26:50-04:00:     amazon-ebs: Transaction Summary
2019-04-30T22:26:50-04:00:     amazon-ebs: ================================================================================
2019-04-30T22:26:50-04:00:     amazon-ebs: Install   1 Package
2019-04-30T22:26:50-04:00:     amazon-ebs: Upgrade  48 Packages
2019-04-30T22:26:50-04:00:     amazon-ebs: Total download size: 93 M
2019-04-30T22:26:50-04:00:     amazon-ebs: Downloading packages:
2019-04-30T22:26:50-04:00:     amazon-ebs: Delta RPMs disabled because /usr/bin/applydeltarpm not installed.
2019-04-30T22:26:52-04:00:     amazon-ebs: --------------------------------------------------------------------------------
2019-04-30T22:26:52-04:00:     amazon-ebs: Total                                               50 MB/s |  93 MB  00:01
2019-04-30T22:26:53-04:00:     amazon-ebs: Running transaction check
2019-04-30T22:26:53-04:00:     amazon-ebs: Running transaction test
2019-04-30T22:26:54-04:00:     amazon-ebs: Transaction test succeeded
2019-04-30T22:26:54-04:00:     amazon-ebs: Running transaction
2019-04-30T22:26:54-04:00:     amazon-ebs:   Updating   : 1:system-release-2-10.amzn2.x86_64                          1/97
2019-04-30T22:26:54-04:00:     amazon-ebs:   Updating   : 32:bind-license-9.9.4-73.amzn2.1.2.noarch                   2/97
2019-04-30T22:26:54-04:00:     amazon-ebs:   Updating   : setup-2.8.71-10.amzn2.noarch                                3/97
2019-04-30T22:26:54-04:00:     amazon-ebs: warning: /etc/shadow created as /etc/shadow.rpmnew
2019-04-30T22:26:54-04:00:     amazon-ebs: warning: /etc/shells created as /etc/shells.rpmnew
2019-04-30T22:26:55-04:00:     amazon-ebs:   Updating   : tzdata-2018i-1.amzn2.noarch                                 4/97
2019-04-30T22:26:55-04:00:     amazon-ebs:   Updating   : glibc-minimal-langpack-2.26-32.amzn2.0.1.x86_64             5/97
2019-04-30T22:26:55-04:00:     amazon-ebs:   Updating   : glibc-common-2.26-32.amzn2.0.1.x86_64                       6/97
2019-04-30T22:26:56-04:00:     amazon-ebs:   Updating   : glibc-2.26-32.amzn2.0.1.x86_64                              7/97
2019-04-30T22:26:56-04:00:     amazon-ebs:   Updating   : krb5-libs-1.15.1-20.amzn2.0.1.x86_64                        8/97
2019-04-30T22:26:56-04:00:     amazon-ebs:   Updating   : 1:openssl-libs-1.0.2k-16.amzn2.1.1.x86_64                   9/97
2019-04-30T22:26:56-04:00:     amazon-ebs:   Updating   : libcrypt-2.26-32.amzn2.0.1.x86_64                          10/97
2019-04-30T22:26:56-04:00:     amazon-ebs:   Updating   : 4:perl-libs-5.16.3-294.amzn2.x86_64                        11/97
2019-04-30T22:26:57-04:00:     amazon-ebs:   Updating   : 4:perl-macros-5.16.3-294.amzn2.x86_64                      12/97
2019-04-30T22:26:57-04:00:     amazon-ebs:   Updating   : 4:perl-5.16.3-294.amzn2.x86_64                             13/97
2019-04-30T22:26:57-04:00:     amazon-ebs:   Updating   : 32:bind-libs-9.9.4-73.amzn2.1.2.x86_64                     14/97
2019-04-30T22:26:57-04:00:     amazon-ebs:   Updating   : libssh2-1.4.3-12.amzn2.2.x86_64                            15/97
2019-04-30T22:26:57-04:00:     amazon-ebs:   Updating   : 1:openssl-1.0.2k-16.amzn2.1.1.x86_64                       16/97
2019-04-30T22:26:58-04:00:     amazon-ebs:   Updating   : nss-pem-1.0.3-5.amzn2.x86_64                               17/97
2019-04-30T22:26:58-04:00:     amazon-ebs:   Updating   : libcurl-7.61.1-9.amzn2.0.1.x86_64                          18/97
2019-04-30T22:26:58-04:00:     amazon-ebs:   Updating   : libsss_nss_idmap-1.16.2-13.amzn2.0.1.x86_64                19/97
2019-04-30T22:26:59-04:00:     amazon-ebs:   Updating   : systemd-libs-219-57.amzn2.0.9.x86_64                       20/97
2019-04-30T22:26:59-04:00:     amazon-ebs:   Updating   : systemd-219-57.amzn2.0.9.x86_64                            21/97
2019-04-30T22:26:59-04:00:     amazon-ebs:   Updating   : libsss_idmap-1.16.2-13.amzn2.0.1.x86_64                    22/97
2019-04-30T22:27:00-04:00:     amazon-ebs:   Updating   : python-urllib3-1.24.1-1.amzn2.0.1.noarch                   23/97
2019-04-30T22:27:01-04:00:     amazon-ebs:   Updating   : python2-botocore-1.12.92-2.amzn2.0.1.noarch                24/97
2019-04-30T22:27:01-04:00:     amazon-ebs:   Updating   : awscli-1.16.102-1.amzn2.0.1.noarch                         25/97
2019-04-30T22:27:01-04:00:     amazon-ebs:   Updating   : sssd-client-1.16.2-13.amzn2.0.1.x86_64                     26/97
2019-04-30T22:27:01-04:00:     amazon-ebs:   Updating   : chrony-3.2-1.amzn2.0.5.x86_64                              27/97
2019-04-30T22:27:01-04:00:     amazon-ebs:   Updating   : systemd-sysv-219-57.amzn2.0.9.x86_64                       28/97
2019-04-30T22:27:01-04:00:     amazon-ebs:   Updating   : cloud-init-18.2-72.amzn2.0.7.noarch                        29/97
2019-04-30T22:27:01-04:00:     amazon-ebs: ec2-instance-connect:x:998:996::/home/ec2-instance-connect:/sbin/nologin
2019-04-30T22:27:03-04:00:     amazon-ebs:   Updating   : ec2-instance-connect-1.1-7.amzn2.noarch                    30/97
2019-04-30T22:27:03-04:00:     amazon-ebs:   Updating   : amazon-ssm-agent-2.3.372.0-1.amzn2.x86_64                  31/97
2019-04-30T22:27:04-04:00:     amazon-ebs:   Updating   : curl-7.61.1-9.amzn2.0.1.x86_64                             32/97
2019-04-30T22:27:04-04:00:     amazon-ebs:   Updating   : 32:bind-utils-9.9.4-73.amzn2.1.2.x86_64                    33/97
2019-04-30T22:27:04-04:00:     amazon-ebs:   Updating   : 1:perl-Pod-Escapes-1.04-294.amzn2.noarch                   34/97
2019-04-30T22:27:04-04:00:     amazon-ebs:   Updating   : 1:mariadb-libs-5.5.62-1.amzn2.0.1.x86_64                   35/97
2019-04-30T22:27:04-04:00:     amazon-ebs:   Updating   : wget-1.14-18.amzn2.x86_64                                  36/97
2019-04-30T22:27:04-04:00:     amazon-ebs:   Updating   : 32:bind-libs-lite-9.9.4-73.amzn2.1.2.x86_64                37/97
2019-04-30T22:27:05-04:00:     amazon-ebs:   Updating   : libjpeg-turbo-1.2.90-5.amzn2.0.3.x86_64                    38/97
2019-04-30T22:27:06-04:00:     amazon-ebs:   Updating   : glibc-locale-source-2.26-32.amzn2.0.1.x86_64               39/97
2019-04-30T22:27:06-04:00:     amazon-ebs:   Updating   : binutils-2.29.1-27.amzn2.0.2.x86_64                        40/97
2019-04-30T22:27:07-04:00:     amazon-ebs:   Updating   : xfsprogs-4.5.0-18.amzn2.0.1.x86_64                         41/97
2019-04-30T22:27:09-04:00:     amazon-ebs:   Updating   : libicu-50.1.2-17.amzn2.x86_64                              42/97
2019-04-30T22:27:09-04:00:     amazon-ebs:   Updating   : glibc-all-langpacks-2.26-32.amzn2.0.1.x86_64               43/97
2019-04-30T22:27:09-04:00:     amazon-ebs:   Updating   : kernel-tools-4.14.109-99.92.amzn2.x86_64                   44/97
2019-04-30T22:27:10-04:00:     amazon-ebs:   Updating   : filesystem-3.2-25.amzn2.0.4.x86_64                         45/97
2019-04-30T22:27:13-04:00:     amazon-ebs:   Updating   : amazon-linux-extras-1.6.7-1.amzn2.noarch                   46/97
2019-04-30T22:27:13-04:00:     amazon-ebs:   Installing : kernel-4.14.109-99.92.amzn2.x86_64                         47/97
2019-04-30T22:27:13-04:00:     amazon-ebs:   Updating   : aws-cfn-bootstrap-1.4-31.amzn2.noarch                      48/97
2019-04-30T22:27:13-04:00:     amazon-ebs:   Updating   : amazon-linux-extras-yum-plugin-1.6.7-1.amzn2.noarch        49/97
2019-04-30T22:27:13-04:00:     amazon-ebs:   Cleanup    : glibc-all-langpacks-2.26-28.amzn2.0.1.x86_64               50/97
2019-04-30T22:27:13-04:00:     amazon-ebs:   Cleanup    : glibc-locale-source-2.26-28.amzn2.0.1.x86_64               51/97
2019-04-30T22:27:13-04:00:     amazon-ebs:   Cleanup    : 32:bind-utils-9.9.4-61.amzn2.1.1.x86_64                    52/97
2019-04-30T22:27:13-04:00:     amazon-ebs:   Cleanup    : 32:bind-libs-9.9.4-61.amzn2.1.1.x86_64                     53/97
2019-04-30T22:27:13-04:00:     amazon-ebs:   Cleanup    : 32:bind-libs-lite-9.9.4-61.amzn2.1.1.x86_64                54/97
2019-04-30T22:27:13-04:00:     amazon-ebs:   Cleanup    : curl-7.55.1-12.amzn2.0.6.x86_64                            55/97
2019-04-30T22:27:13-04:00:     amazon-ebs:   Cleanup    : 1:openssl-1.0.2k-16.amzn2.0.1.x86_64                       56/97
2019-04-30T22:27:13-04:00:     amazon-ebs:   Cleanup    : sssd-client-1.16.0-19.amzn2.5.x86_64                       57/97
2019-04-30T22:27:13-04:00:     amazon-ebs:   Cleanup    : wget-1.14-15.amzn2.1.1.x86_64                              58/97
2019-04-30T22:27:13-04:00:     amazon-ebs:   Cleanup    : 1:mariadb-libs-5.5.60-1.amzn2.x86_64                       59/97
2019-04-30T22:27:13-04:00:     amazon-ebs:   Cleanup    : amazon-ssm-agent-2.3.228.0-1.amzn2.x86_64                  60/97
2019-04-30T22:27:13-04:00:     amazon-ebs:   Cleanup    : chrony-3.2-1.amzn2.0.3.x86_64                              61/97
2019-04-30T22:27:13-04:00:     amazon-ebs:   Cleanup    : 1:perl-Pod-Escapes-1.04-292.amzn2.0.2.noarch               62/97
2019-04-30T22:27:13-04:00:     amazon-ebs:   Cleanup    : amazon-linux-extras-1.6.4-1.amzn2.noarch                   63/97
2019-04-30T22:27:13-04:00:     amazon-ebs:   Cleanup    : filesystem-3.2-25.amzn2.x86_64                             64/97
2019-04-30T22:27:13-04:00:     amazon-ebs:   Cleanup    : setup-2.8.71-9.amzn2.noarch                                65/97
2019-04-30T22:27:13-04:00:     amazon-ebs:   Cleanup    : ec2-instance-connect-1.0-3.amzn2.noarch                    66/97
2019-04-30T22:27:14-04:00:     amazon-ebs:   Cleanup    : cloud-init-18.2-72.amzn2.0.6.noarch                        67/97
2019-04-30T22:27:14-04:00:     amazon-ebs:   Cleanup    : systemd-sysv-219-57.amzn2.0.6.x86_64                       68/97
2019-04-30T22:27:14-04:00:     amazon-ebs:   Cleanup    : awscli-1.15.80-1.amzn2.0.1.noarch                          69/97
2019-04-30T22:27:14-04:00:     amazon-ebs:   Cleanup    : systemd-219-57.amzn2.0.6.x86_64                            70/97
2019-04-30T22:27:14-04:00:     amazon-ebs:   Cleanup    : libcurl-7.55.1-12.amzn2.0.6.x86_64                         71/97
2019-04-30T22:27:14-04:00:     amazon-ebs:   Cleanup    : 4:perl-macros-5.16.3-292.amzn2.0.2.x86_64                  72/97
2019-04-30T22:27:14-04:00:     amazon-ebs:   Cleanup    : 4:perl-5.16.3-292.amzn2.0.2.x86_64                         73/97
2019-04-30T22:27:14-04:00:     amazon-ebs:   Cleanup    : 4:perl-libs-5.16.3-292.amzn2.0.2.x86_64                    74/97
2019-04-30T22:27:14-04:00:     amazon-ebs:   Cleanup    : libssh2-1.4.3-10.amzn2.1.2.x86_64                          75/97
2019-04-30T22:27:14-04:00:     amazon-ebs:   Cleanup    : krb5-libs-1.15.1-19.amzn2.0.3.x86_64                       76/97
2019-04-30T22:27:14-04:00:     amazon-ebs:   Cleanup    : 1:openssl-libs-1.0.2k-16.amzn2.0.1.x86_64                  77/97
2019-04-30T22:27:14-04:00:     amazon-ebs:   Cleanup    : libcrypt-2.26-28.amzn2.0.1.x86_64                          78/97
2019-04-30T22:27:14-04:00:     amazon-ebs:   Cleanup    : nss-pem-1.0.3-4.amzn2.0.2.x86_64                           79/97
2019-04-30T22:27:14-04:00:     amazon-ebs:   Cleanup    : systemd-libs-219-57.amzn2.0.6.x86_64                       80/97
2019-04-30T22:27:14-04:00:     amazon-ebs:   Cleanup    : libsss_idmap-1.16.0-19.amzn2.5.x86_64                      81/97
2019-04-30T22:27:14-04:00:     amazon-ebs:   Cleanup    : libsss_nss_idmap-1.16.0-19.amzn2.5.x86_64                  82/97
2019-04-30T22:27:14-04:00:     amazon-ebs:   Cleanup    : kernel-tools-4.14.77-81.59.amzn2.x86_64                    83/97
2019-04-30T22:27:14-04:00:     amazon-ebs:   Cleanup    : libicu-50.1.2-15.amzn2.0.2.x86_64                          84/97
2019-04-30T22:27:14-04:00:     amazon-ebs:   Cleanup    : xfsprogs-4.5.0-15.amzn2.x86_64                             85/97
2019-04-30T22:27:14-04:00:     amazon-ebs:   Cleanup    : binutils-2.29.1-23.amzn2.0.2.x86_64                        86/97
2019-04-30T22:27:14-04:00:     amazon-ebs:   Cleanup    : libjpeg-turbo-1.2.90-5.amzn2.0.2.x86_64                    87/97
2019-04-30T22:27:14-04:00:     amazon-ebs:   Cleanup    : 1:system-release-2-7.amzn2.x86_64                          88/97
2019-04-30T22:27:14-04:00:     amazon-ebs:   Cleanup    : python2-botocore-1.10.79-1.amzn2.1.1.noarch                89/97
2019-04-30T22:27:14-04:00:     amazon-ebs:   Cleanup    : 32:bind-license-9.9.4-61.amzn2.1.1.noarch                  90/97
2019-04-30T22:27:14-04:00:     amazon-ebs:   Cleanup    : python-urllib3-1.10.2-3.amzn2.0.1.noarch                   91/97
2019-04-30T22:27:14-04:00:     amazon-ebs:   Cleanup    : aws-cfn-bootstrap-1.4-30.amzn2.noarch                      92/97
2019-04-30T22:27:14-04:00:     amazon-ebs:   Cleanup    : amazon-linux-extras-yum-plugin-1.6.4-1.amzn2.noarch        93/97
2019-04-30T22:27:14-04:00:     amazon-ebs:   Cleanup    : glibc-common-2.26-28.amzn2.0.1.x86_64                      94/97
2019-04-30T22:27:14-04:00:     amazon-ebs:   Cleanup    : glibc-minimal-langpack-2.26-28.amzn2.0.1.x86_64            95/97
2019-04-30T22:27:14-04:00:     amazon-ebs:   Cleanup    : glibc-2.26-28.amzn2.0.1.x86_64                             96/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Cleanup    : tzdata-2018e-3.amzn2.noarch                                97/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : libjpeg-turbo-1.2.90-5.amzn2.0.3.x86_64                     1/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : chrony-3.2-1.amzn2.0.5.x86_64                               2/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : glibc-locale-source-2.26-32.amzn2.0.1.x86_64                3/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : glibc-2.26-32.amzn2.0.1.x86_64                              4/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : libcurl-7.61.1-9.amzn2.0.1.x86_64                           5/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : 32:bind-license-9.9.4-73.amzn2.1.2.noarch                   6/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : awscli-1.16.102-1.amzn2.0.1.noarch                          7/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : systemd-sysv-219-57.amzn2.0.9.x86_64                        8/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : cloud-init-18.2-72.amzn2.0.7.noarch                         9/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : nss-pem-1.0.3-5.amzn2.x86_64                               10/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : libcrypt-2.26-32.amzn2.0.1.x86_64                          11/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : 1:mariadb-libs-5.5.62-1.amzn2.0.1.x86_64                   12/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : binutils-2.29.1-27.amzn2.0.2.x86_64                        13/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : 32:bind-libs-9.9.4-73.amzn2.1.2.x86_64                     14/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : amazon-linux-extras-yum-plugin-1.6.7-1.amzn2.noarch        15/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : 4:perl-libs-5.16.3-294.amzn2.x86_64                        16/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : libssh2-1.4.3-12.amzn2.2.x86_64                            17/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : xfsprogs-4.5.0-18.amzn2.0.1.x86_64                         18/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : sssd-client-1.16.2-13.amzn2.0.1.x86_64                     19/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : setup-2.8.71-10.amzn2.noarch                               20/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : libicu-50.1.2-17.amzn2.x86_64                              21/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : ec2-instance-connect-1.1-7.amzn2.noarch                    22/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : amazon-ssm-agent-2.3.372.0-1.amzn2.x86_64                  23/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : aws-cfn-bootstrap-1.4-31.amzn2.noarch                      24/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : glibc-minimal-langpack-2.26-32.amzn2.0.1.x86_64            25/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : glibc-all-langpacks-2.26-32.amzn2.0.1.x86_64               26/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : 4:perl-5.16.3-294.amzn2.x86_64                             27/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : filesystem-3.2-25.amzn2.0.4.x86_64                         28/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : krb5-libs-1.15.1-20.amzn2.0.1.x86_64                       29/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : libsss_nss_idmap-1.16.2-13.amzn2.0.1.x86_64                30/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : python-urllib3-1.24.1-1.amzn2.0.1.noarch                   31/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : kernel-tools-4.14.109-99.92.amzn2.x86_64                   32/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : 1:openssl-1.0.2k-16.amzn2.1.1.x86_64                       33/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : 4:perl-macros-5.16.3-294.amzn2.x86_64                      34/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : systemd-libs-219-57.amzn2.0.9.x86_64                       35/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : systemd-219-57.amzn2.0.9.x86_64                            36/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : tzdata-2018i-1.amzn2.noarch                                37/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : 1:openssl-libs-1.0.2k-16.amzn2.1.1.x86_64                  38/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : glibc-common-2.26-32.amzn2.0.1.x86_64                      39/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : python2-botocore-1.12.92-2.amzn2.0.1.noarch                40/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : libsss_idmap-1.16.2-13.amzn2.0.1.x86_64                    41/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : kernel-4.14.109-99.92.amzn2.x86_64                         42/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : wget-1.14-18.amzn2.x86_64                                  43/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : amazon-linux-extras-1.6.7-1.amzn2.noarch                   44/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : curl-7.61.1-9.amzn2.0.1.x86_64                             45/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : 32:bind-utils-9.9.4-73.amzn2.1.2.x86_64                    46/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : 32:bind-libs-lite-9.9.4-73.amzn2.1.2.x86_64                47/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : 1:system-release-2-10.amzn2.x86_64                         48/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : 1:perl-Pod-Escapes-1.04-294.amzn2.noarch                   49/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : 1:openssl-1.0.2k-16.amzn2.0.1.x86_64                       50/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : 32:bind-license-9.9.4-61.amzn2.1.1.noarch                  51/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : systemd-libs-219-57.amzn2.0.6.x86_64                       52/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : glibc-minimal-langpack-2.26-28.amzn2.0.1.x86_64            53/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : 4:perl-libs-5.16.3-292.amzn2.0.2.x86_64                    54/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : curl-7.55.1-12.amzn2.0.6.x86_64                            55/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : systemd-219-57.amzn2.0.6.x86_64                            56/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : krb5-libs-1.15.1-19.amzn2.0.3.x86_64                       57/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : 32:bind-libs-lite-9.9.4-61.amzn2.1.1.x86_64                58/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : 32:bind-utils-9.9.4-61.amzn2.1.1.x86_64                    59/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : systemd-sysv-219-57.amzn2.0.6.x86_64                       60/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : binutils-2.29.1-23.amzn2.0.2.x86_64                        61/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : python2-botocore-1.10.79-1.amzn2.1.1.noarch                62/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : 4:perl-macros-5.16.3-292.amzn2.0.2.x86_64                  63/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : libsss_nss_idmap-1.16.0-19.amzn2.5.x86_64                  64/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : cloud-init-18.2-72.amzn2.0.6.noarch                        65/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : 1:openssl-libs-1.0.2k-16.amzn2.0.1.x86_64                  66/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : kernel-tools-4.14.77-81.59.amzn2.x86_64                    67/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : glibc-all-langpacks-2.26-28.amzn2.0.1.x86_64               68/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : 4:perl-5.16.3-292.amzn2.0.2.x86_64                         69/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : libssh2-1.4.3-10.amzn2.1.2.x86_64                          70/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : ec2-instance-connect-1.0-3.amzn2.noarch                    71/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : 32:bind-libs-9.9.4-61.amzn2.1.1.x86_64                     72/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : libcurl-7.55.1-12.amzn2.0.6.x86_64                         73/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : 1:perl-Pod-Escapes-1.04-292.amzn2.0.2.noarch               74/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : libjpeg-turbo-1.2.90-5.amzn2.0.2.x86_64                    75/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : amazon-linux-extras-1.6.4-1.amzn2.noarch                   76/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : aws-cfn-bootstrap-1.4-30.amzn2.noarch                      77/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : 1:system-release-2-7.amzn2.x86_64                          78/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : glibc-2.26-28.amzn2.0.1.x86_64                             79/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : libicu-50.1.2-15.amzn2.0.2.x86_64                          80/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : glibc-locale-source-2.26-28.amzn2.0.1.x86_64               81/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : tzdata-2018e-3.amzn2.noarch                                82/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : glibc-common-2.26-28.amzn2.0.1.x86_64                      83/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : nss-pem-1.0.3-4.amzn2.0.2.x86_64                           84/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : libcrypt-2.26-28.amzn2.0.1.x86_64                          85/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : xfsprogs-4.5.0-15.amzn2.x86_64                             86/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : sssd-client-1.16.0-19.amzn2.5.x86_64                       87/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : awscli-1.15.80-1.amzn2.0.1.noarch                          88/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : libsss_idmap-1.16.0-19.amzn2.5.x86_64                      89/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : chrony-3.2-1.amzn2.0.3.x86_64                              90/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : wget-1.14-15.amzn2.1.1.x86_64                              91/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : filesystem-3.2-25.amzn2.x86_64                             92/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : amazon-linux-extras-yum-plugin-1.6.4-1.amzn2.noarch        93/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : setup-2.8.71-9.amzn2.noarch                                94/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : 1:mariadb-libs-5.5.60-1.amzn2.x86_64                       95/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : amazon-ssm-agent-2.3.228.0-1.amzn2.x86_64                  96/97
2019-04-30T22:27:31-04:00:     amazon-ebs:   Verifying  : python-urllib3-1.10.2-3.amzn2.0.1.noarch                   97/97
2019-04-30T22:27:31-04:00:     amazon-ebs: Installed:
2019-04-30T22:27:31-04:00:     amazon-ebs:   kernel.x86_64 0:4.14.109-99.92.amzn2
2019-04-30T22:27:31-04:00:     amazon-ebs: Updated:
2019-04-30T22:27:31-04:00:     amazon-ebs:   amazon-linux-extras.noarch 0:1.6.7-1.amzn2
2019-04-30T22:27:31-04:00:     amazon-ebs:   amazon-linux-extras-yum-plugin.noarch 0:1.6.7-1.amzn2
2019-04-30T22:27:31-04:00:     amazon-ebs:   amazon-ssm-agent.x86_64 0:2.3.372.0-1.amzn2
2019-04-30T22:27:31-04:00:     amazon-ebs:   aws-cfn-bootstrap.noarch 0:1.4-31.amzn2
2019-04-30T22:27:31-04:00:     amazon-ebs:   awscli.noarch 0:1.16.102-1.amzn2.0.1
2019-04-30T22:27:31-04:00:     amazon-ebs:   bind-libs.x86_64 32:9.9.4-73.amzn2.1.2
2019-04-30T22:27:31-04:00:     amazon-ebs:   bind-libs-lite.x86_64 32:9.9.4-73.amzn2.1.2
2019-04-30T22:27:31-04:00:     amazon-ebs:   bind-license.noarch 32:9.9.4-73.amzn2.1.2
2019-04-30T22:27:31-04:00:     amazon-ebs:   bind-utils.x86_64 32:9.9.4-73.amzn2.1.2
2019-04-30T22:27:31-04:00:     amazon-ebs:   binutils.x86_64 0:2.29.1-27.amzn2.0.2
2019-04-30T22:27:31-04:00:     amazon-ebs:   chrony.x86_64 0:3.2-1.amzn2.0.5
2019-04-30T22:27:31-04:00:     amazon-ebs:   cloud-init.noarch 0:18.2-72.amzn2.0.7
2019-04-30T22:27:31-04:00:     amazon-ebs:   curl.x86_64 0:7.61.1-9.amzn2.0.1
2019-04-30T22:27:31-04:00:     amazon-ebs:   ec2-instance-connect.noarch 0:1.1-7.amzn2
2019-04-30T22:27:31-04:00:     amazon-ebs:   filesystem.x86_64 0:3.2-25.amzn2.0.4
2019-04-30T22:27:31-04:00:     amazon-ebs:   glibc.x86_64 0:2.26-32.amzn2.0.1
2019-04-30T22:27:31-04:00:     amazon-ebs:   glibc-all-langpacks.x86_64 0:2.26-32.amzn2.0.1
2019-04-30T22:27:31-04:00:     amazon-ebs:   glibc-common.x86_64 0:2.26-32.amzn2.0.1
2019-04-30T22:27:31-04:00:     amazon-ebs:   glibc-locale-source.x86_64 0:2.26-32.amzn2.0.1
2019-04-30T22:27:31-04:00:     amazon-ebs:   glibc-minimal-langpack.x86_64 0:2.26-32.amzn2.0.1
2019-04-30T22:27:31-04:00:     amazon-ebs:   kernel-tools.x86_64 0:4.14.109-99.92.amzn2
2019-04-30T22:27:31-04:00:     amazon-ebs:   krb5-libs.x86_64 0:1.15.1-20.amzn2.0.1
2019-04-30T22:27:31-04:00:     amazon-ebs:   libcrypt.x86_64 0:2.26-32.amzn2.0.1
2019-04-30T22:27:31-04:00:     amazon-ebs:   libcurl.x86_64 0:7.61.1-9.amzn2.0.1
2019-04-30T22:27:31-04:00:     amazon-ebs:   libicu.x86_64 0:50.1.2-17.amzn2
2019-04-30T22:27:31-04:00:     amazon-ebs:   libjpeg-turbo.x86_64 0:1.2.90-5.amzn2.0.3
2019-04-30T22:27:31-04:00:     amazon-ebs:   libssh2.x86_64 0:1.4.3-12.amzn2.2
2019-04-30T22:27:31-04:00:     amazon-ebs:   libsss_idmap.x86_64 0:1.16.2-13.amzn2.0.1
2019-04-30T22:27:31-04:00:     amazon-ebs:   libsss_nss_idmap.x86_64 0:1.16.2-13.amzn2.0.1
2019-04-30T22:27:31-04:00:     amazon-ebs:   mariadb-libs.x86_64 1:5.5.62-1.amzn2.0.1
2019-04-30T22:27:31-04:00:     amazon-ebs:   nss-pem.x86_64 0:1.0.3-5.amzn2
2019-04-30T22:27:31-04:00:     amazon-ebs:   openssl.x86_64 1:1.0.2k-16.amzn2.1.1
2019-04-30T22:27:31-04:00:     amazon-ebs:   openssl-libs.x86_64 1:1.0.2k-16.amzn2.1.1
2019-04-30T22:27:31-04:00:     amazon-ebs:   perl.x86_64 4:5.16.3-294.amzn2
2019-04-30T22:27:31-04:00:     amazon-ebs:   perl-Pod-Escapes.noarch 1:1.04-294.amzn2
2019-04-30T22:27:31-04:00:     amazon-ebs:   perl-libs.x86_64 4:5.16.3-294.amzn2
2019-04-30T22:27:31-04:00:     amazon-ebs:   perl-macros.x86_64 4:5.16.3-294.amzn2
2019-04-30T22:27:31-04:00:     amazon-ebs:   python-urllib3.noarch 0:1.24.1-1.amzn2.0.1
2019-04-30T22:27:31-04:00:     amazon-ebs:   python2-botocore.noarch 0:1.12.92-2.amzn2.0.1
2019-04-30T22:27:31-04:00:     amazon-ebs:   setup.noarch 0:2.8.71-10.amzn2
2019-04-30T22:27:31-04:00:     amazon-ebs:   sssd-client.x86_64 0:1.16.2-13.amzn2.0.1
2019-04-30T22:27:31-04:00:     amazon-ebs:   system-release.x86_64 1:2-10.amzn2
2019-04-30T22:27:31-04:00:     amazon-ebs:   systemd.x86_64 0:219-57.amzn2.0.9
2019-04-30T22:27:31-04:00:     amazon-ebs:   systemd-libs.x86_64 0:219-57.amzn2.0.9
2019-04-30T22:27:31-04:00:     amazon-ebs:   systemd-sysv.x86_64 0:219-57.amzn2.0.9
2019-04-30T22:27:31-04:00:     amazon-ebs:   tzdata.noarch 0:2018i-1.amzn2
2019-04-30T22:27:31-04:00:     amazon-ebs:   wget.x86_64 0:1.14-18.amzn2
2019-04-30T22:27:31-04:00:     amazon-ebs:   xfsprogs.x86_64 0:4.5.0-18.amzn2.0.1
2019-04-30T22:27:31-04:00:     amazon-ebs: Complete!
2019-04-30T22:27:33-04:00:     amazon-ebs: Loaded plugins: extras_suggestions, langpacks, priorities, update-motd
2019-04-30T22:27:33-04:00:     amazon-ebs: Cleaning repos: amzn2-core amzn2extra-docker
2019-04-30T22:27:33-04:00:     amazon-ebs: 7 metadata files removed
2019-04-30T22:27:33-04:00:     amazon-ebs: 2 sqlite files removed
2019-04-30T22:27:33-04:00:     amazon-ebs: 0 metadata files removed
2019-04-30T22:27:34-04:00:     amazon-ebs: Loaded plugins: extras_suggestions, langpacks, priorities, update-motd
2019-04-30T22:27:36-04:00:     amazon-ebs: Resolving Dependencies
2019-04-30T22:27:36-04:00:     amazon-ebs: --> Running transaction check
2019-04-30T22:27:36-04:00:     amazon-ebs: ---> Package docker.x86_64 0:18.06.1ce-8.amzn2 will be installed
2019-04-30T22:27:36-04:00:     amazon-ebs: --> Processing Dependency: pigz for package: docker-18.06.1ce-8.amzn2.x86_64
2019-04-30T22:27:36-04:00:     amazon-ebs: --> Processing Dependency: libcgroup for package: docker-18.06.1ce-8.amzn2.x86_64
2019-04-30T22:27:36-04:00:     amazon-ebs: --> Processing Dependency: libltdl.so.7()(64bit) for package: docker-18.06.1ce-8.amzn2.x86_64
2019-04-30T22:27:36-04:00:     amazon-ebs: --> Running transaction check
2019-04-30T22:27:36-04:00:     amazon-ebs: ---> Package libcgroup.x86_64 0:0.41-15.amzn2 will be installed
2019-04-30T22:27:36-04:00:     amazon-ebs: ---> Package libtool-ltdl.x86_64 0:2.4.2-22.2.amzn2.0.2 will be installed
2019-04-30T22:27:36-04:00:     amazon-ebs: ---> Package pigz.x86_64 0:2.3.4-1.amzn2.0.1 will be installed
2019-04-30T22:27:36-04:00:     amazon-ebs: --> Finished Dependency Resolution
2019-04-30T22:27:36-04:00:     amazon-ebs: Dependencies Resolved
2019-04-30T22:27:36-04:00:     amazon-ebs: ================================================================================
2019-04-30T22:27:36-04:00:     amazon-ebs:  Package         Arch      Version                   Repository            Size
2019-04-30T22:27:36-04:00:     amazon-ebs: ================================================================================
2019-04-30T22:27:36-04:00:     amazon-ebs: Installing:
2019-04-30T22:27:36-04:00:     amazon-ebs:  docker          x86_64    18.06.1ce-8.amzn2         amzn2extra-docker     37 M
2019-04-30T22:27:36-04:00:     amazon-ebs: Installing for dependencies:
2019-04-30T22:27:36-04:00:     amazon-ebs:  libcgroup       x86_64    0.41-15.amzn2             amzn2-core            65 k
2019-04-30T22:27:36-04:00:     amazon-ebs:  libtool-ltdl    x86_64    2.4.2-22.2.amzn2.0.2      amzn2-core            49 k
2019-04-30T22:27:36-04:00:     amazon-ebs:  pigz            x86_64    2.3.4-1.amzn2.0.1         amzn2-core            81 k
2019-04-30T22:27:36-04:00:     amazon-ebs: Transaction Summary
2019-04-30T22:27:36-04:00:     amazon-ebs: ================================================================================
2019-04-30T22:27:36-04:00:     amazon-ebs: Install  1 Package (+3 Dependent packages)
2019-04-30T22:27:36-04:00:     amazon-ebs: Total download size: 37 M
2019-04-30T22:27:36-04:00:     amazon-ebs: Installed size: 151 M
2019-04-30T22:27:36-04:00:     amazon-ebs: Downloading packages:
2019-04-30T22:27:37-04:00:     amazon-ebs: --------------------------------------------------------------------------------
2019-04-30T22:27:37-04:00:     amazon-ebs: Total                                               42 MB/s |  37 MB  00:00
2019-04-30T22:27:37-04:00:     amazon-ebs: Running transaction check
2019-04-30T22:27:37-04:00:     amazon-ebs: Running transaction test
2019-04-30T22:27:37-04:00:     amazon-ebs: Transaction test succeeded
2019-04-30T22:27:37-04:00:     amazon-ebs: Running transaction
2019-04-30T22:27:37-04:00:     amazon-ebs:   Installing : libtool-ltdl-2.4.2-22.2.amzn2.0.2.x86_64                     1/4
2019-04-30T22:27:37-04:00:     amazon-ebs:   Installing : pigz-2.3.4-1.amzn2.0.1.x86_64                                2/4
2019-04-30T22:27:43-04:00:     amazon-ebs:   Installing : libcgroup-0.41-15.amzn2.x86_64                               3/4
2019-04-30T22:27:43-04:00:     amazon-ebs:   Installing : docker-18.06.1ce-8.amzn2.x86_64                              4/4
2019-04-30T22:27:43-04:00:     amazon-ebs:   Verifying  : libcgroup-0.41-15.amzn2.x86_64                               1/4
2019-04-30T22:27:43-04:00:     amazon-ebs:   Verifying  : pigz-2.3.4-1.amzn2.0.1.x86_64                                2/4
2019-04-30T22:27:43-04:00:     amazon-ebs:   Verifying  : libtool-ltdl-2.4.2-22.2.amzn2.0.2.x86_64                     3/4
2019-04-30T22:27:43-04:00:     amazon-ebs:   Verifying  : docker-18.06.1ce-8.amzn2.x86_64                              4/4
2019-04-30T22:27:43-04:00:     amazon-ebs: Installed:
2019-04-30T22:27:43-04:00:     amazon-ebs:   docker.x86_64 0:18.06.1ce-8.amzn2
2019-04-30T22:27:43-04:00:     amazon-ebs: Dependency Installed:
2019-04-30T22:27:43-04:00:     amazon-ebs:   libcgroup.x86_64 0:0.41-15.amzn2  libtool-ltdl.x86_64 0:2.4.2-22.2.amzn2.0.2
2019-04-30T22:27:43-04:00:     amazon-ebs:   pigz.x86_64 0:2.3.4-1.amzn2.0.1
2019-04-30T22:27:43-04:00:     amazon-ebs: Complete!
2019-04-30T22:27:43-04:00:     amazon-ebs: Installing docker
2019-04-30T22:27:43-04:00:     amazon-ebs:   0  ansible2                 available    [ =2.4.2  =2.4.6 ]
2019-04-30T22:27:43-04:00:     amazon-ebs:   2  httpd_modules            available    [ =1.0 ]
2019-04-30T22:27:43-04:00:     amazon-ebs:   3  memcached1.5             available    [ =1.5.1 ]
2019-04-30T22:27:43-04:00:     amazon-ebs:   4  nginx1.12                available    [ =1.12.2 ]
2019-04-30T22:27:43-04:00:     amazon-ebs:   5  postgresql9.6            available    [ =9.6.6  =9.6.8 ]
2019-04-30T22:27:43-04:00:     amazon-ebs:   6  postgresql10             available    [ =10 ]
2019-04-30T22:27:43-04:00:     amazon-ebs:   8  redis4.0                 available    [ =4.0.5  =4.0.10 ]
2019-04-30T22:27:43-04:00:     amazon-ebs:   9  R3.4                     available    [ =3.4.3 ]
2019-04-30T22:27:43-04:00:     amazon-ebs:  10  rust1                    available    \
2019-04-30T22:27:43-04:00:     amazon-ebs:         [ =1.22.1  =1.26.0  =1.26.1  =1.27.2  =1.31.0 ]
2019-04-30T22:27:43-04:00:     amazon-ebs:  11  vim                      available    [ =8.0 ]
2019-04-30T22:27:43-04:00:     amazon-ebs:  13  ruby2.4                  available    [ =2.4.2  =2.4.4 ]
2019-04-30T22:27:43-04:00:     amazon-ebs:  15  php7.2                   available    \
2019-04-30T22:27:43-04:00:     amazon-ebs:         [ =7.2.0  =7.2.4  =7.2.5  =7.2.8  =7.2.11  =7.2.13  =7.2.14
2019-04-30T22:27:43-04:00:     amazon-ebs:           =7.2.16 ]
2019-04-30T22:27:43-04:00:     amazon-ebs:  16  php7.1                   available    \
2019-04-30T22:27:43-04:00:     amazon-ebs:         [ =7.1.22  =7.1.25  =7.1.27 ]
2019-04-30T22:27:43-04:00:     amazon-ebs:  17  lamp-mariadb10.2-php7.2  available    \
2019-04-30T22:27:43-04:00:     amazon-ebs:         [ =10.2.10_7.2.0  =10.2.10_7.2.4  =10.2.10_7.2.5
2019-04-30T22:27:43-04:00:     amazon-ebs:           =10.2.10_7.2.8  =10.2.10_7.2.11  =10.2.10_7.2.13
2019-04-30T22:27:43-04:00:     amazon-ebs:           =10.2.10_7.2.14  =10.2.10_7.2.16 ]
2019-04-30T22:27:43-04:00:     amazon-ebs:  18  libreoffice              available    [ =5.0.6.2_15  =5.3.6.1 ]
2019-04-30T22:27:43-04:00:     amazon-ebs:  19  gimp                     available    [ =2.8.22 ]
2019-04-30T22:27:43-04:00:     amazon-ebs:  20  docker=latest            enabled      \
2019-04-30T22:27:43-04:00:     amazon-ebs:         [ =17.12.1  =18.03.1  =18.06.1 ]
2019-04-30T22:27:43-04:00:     amazon-ebs:  21  mate-desktop1.x          available    [ =1.19.0  =1.20.0 ]
2019-04-30T22:27:43-04:00:     amazon-ebs:  22  GraphicsMagick1.3        available    [ =1.3.29 ]
2019-04-30T22:27:43-04:00:     amazon-ebs:  23  tomcat8.5                available    \
2019-04-30T22:27:43-04:00:     amazon-ebs:         [ =8.5.31  =8.5.32  =8.5.38 ]
2019-04-30T22:27:43-04:00:     amazon-ebs:  24  epel                     available    [ =7.11 ]
2019-04-30T22:27:43-04:00:     amazon-ebs:  25  testing                  available    [ =1.0 ]
2019-04-30T22:27:43-04:00:     amazon-ebs:  26  ecs                      available    [ =stable ]
2019-04-30T22:27:43-04:00:     amazon-ebs:  27  corretto8                available    [ =1.8.0_192  =1.8.0_202 ]
2019-04-30T22:27:43-04:00:     amazon-ebs:  28  firecracker              available    [ =0.11 ]
2019-04-30T22:27:43-04:00:     amazon-ebs:  29  golang1.11               available    [ =1.11.3 ]
2019-04-30T22:27:43-04:00:     amazon-ebs:  30  squid4                   available    [ =4 ]
2019-04-30T22:27:43-04:00:     amazon-ebs:  31  php7.3                   available    [ =7.3.2  =7.3.3 ]
2019-04-30T22:27:43-04:00:     amazon-ebs:  32  lustre2.10               available    [ =2.10.5 ]
2019-04-30T22:27:43-04:00:     amazon-ebs:  33  java-openjdk11           available    [ =11 ]
2019-04-30T22:27:43-04:00:     amazon-ebs:  34  lynis                    available    [ =stable ]
2019-04-30T22:27:43-04:00: ==> amazon-ebs: Redirecting to /bin/systemctl start docker.service
2019-04-30T22:27:44-04:00: ==> amazon-ebs: Created symlink from /etc/systemd/system/multi-user.target.wants/docker.service to /usr/lib/systemd/system/docker.service.
2019-04-30T22:27:45-04:00:     amazon-ebs: lts: Pulling from jenkins/jenkins
2019-04-30T22:27:45-04:00:     amazon-ebs: e79bb959ec00: Pulling fs layer
2019-04-30T22:27:45-04:00:     amazon-ebs: d4b7902036fe: Pulling fs layer
2019-04-30T22:27:45-04:00:     amazon-ebs: 1b2a72d4e030: Pulling fs layer
2019-04-30T22:27:45-04:00:     amazon-ebs: d54db43011fd: Pulling fs layer
2019-04-30T22:27:45-04:00:     amazon-ebs: 1a97c78dad71: Pulling fs layer
2019-04-30T22:27:45-04:00:     amazon-ebs: 6dcb79eeeda4: Pulling fs layer
2019-04-30T22:27:45-04:00:     amazon-ebs: bd56246cf4fd: Pulling fs layer
2019-04-30T22:27:45-04:00:     amazon-ebs: 88cea60f56c5: Pulling fs layer
2019-04-30T22:27:45-04:00:     amazon-ebs: 7218d20bc740: Pulling fs layer
2019-04-30T22:27:45-04:00:     amazon-ebs: b44478184281: Pulling fs layer
2019-04-30T22:27:45-04:00:     amazon-ebs: 8d426ac9b534: Pulling fs layer
2019-04-30T22:27:45-04:00:     amazon-ebs: f48d707166a1: Pulling fs layer
2019-04-30T22:27:45-04:00:     amazon-ebs: 98693d9cc3b7: Pulling fs layer
2019-04-30T22:27:45-04:00:     amazon-ebs: 271ed73ea668: Pulling fs layer
2019-04-30T22:27:45-04:00:     amazon-ebs: a3b1f7f2b09b: Pulling fs layer
2019-04-30T22:27:45-04:00:     amazon-ebs: b2b5910ccbec: Pulling fs layer
2019-04-30T22:27:45-04:00:     amazon-ebs: 3527726ea75b: Pulling fs layer
2019-04-30T22:27:45-04:00:     amazon-ebs: abfed579cef8: Pulling fs layer
2019-04-30T22:27:45-04:00:     amazon-ebs: 0c51c4c2e95a: Pulling fs layer
2019-04-30T22:27:45-04:00:     amazon-ebs: d54db43011fd: Waiting
2019-04-30T22:27:45-04:00:     amazon-ebs: 1a97c78dad71: Waiting
2019-04-30T22:27:45-04:00:     amazon-ebs: 6dcb79eeeda4: Waiting
2019-04-30T22:27:45-04:00:     amazon-ebs: bd56246cf4fd: Waiting
2019-04-30T22:27:45-04:00:     amazon-ebs: 88cea60f56c5: Waiting
2019-04-30T22:27:45-04:00:     amazon-ebs: 7218d20bc740: Waiting
2019-04-30T22:27:45-04:00:     amazon-ebs: b44478184281: Waiting
2019-04-30T22:27:45-04:00:     amazon-ebs: 8d426ac9b534: Waiting
2019-04-30T22:27:45-04:00:     amazon-ebs: f48d707166a1: Waiting
2019-04-30T22:27:45-04:00:     amazon-ebs: 98693d9cc3b7: Waiting
2019-04-30T22:27:45-04:00:     amazon-ebs: 271ed73ea668: Waiting
2019-04-30T22:27:45-04:00:     amazon-ebs: a3b1f7f2b09b: Waiting
2019-04-30T22:27:45-04:00:     amazon-ebs: b2b5910ccbec: Waiting
2019-04-30T22:27:45-04:00:     amazon-ebs: 3527726ea75b: Waiting
2019-04-30T22:27:45-04:00:     amazon-ebs: abfed579cef8: Waiting
2019-04-30T22:27:45-04:00:     amazon-ebs: 0c51c4c2e95a: Waiting
2019-04-30T22:27:45-04:00:     amazon-ebs: 1b2a72d4e030: Verifying Checksum
2019-04-30T22:27:45-04:00:     amazon-ebs: 1b2a72d4e030: Download complete
2019-04-30T22:27:45-04:00:     amazon-ebs: d4b7902036fe: Verifying Checksum
2019-04-30T22:27:45-04:00:     amazon-ebs: d4b7902036fe: Download complete
2019-04-30T22:27:46-04:00:     amazon-ebs: e79bb959ec00: Verifying Checksum
2019-04-30T22:27:46-04:00:     amazon-ebs: e79bb959ec00: Download complete
2019-04-30T22:27:46-04:00:     amazon-ebs: 1a97c78dad71: Verifying Checksum
2019-04-30T22:27:46-04:00:     amazon-ebs: 1a97c78dad71: Download complete
2019-04-30T22:27:47-04:00:     amazon-ebs: 6dcb79eeeda4: Verifying Checksum
2019-04-30T22:27:47-04:00:     amazon-ebs: 6dcb79eeeda4: Download complete
2019-04-30T22:27:47-04:00:     amazon-ebs: bd56246cf4fd: Verifying Checksum
2019-04-30T22:27:47-04:00:     amazon-ebs: bd56246cf4fd: Download complete
2019-04-30T22:27:47-04:00:     amazon-ebs: 7218d20bc740: Verifying Checksum
2019-04-30T22:27:47-04:00:     amazon-ebs: 7218d20bc740: Download complete
2019-04-30T22:27:48-04:00:     amazon-ebs: b44478184281: Verifying Checksum
2019-04-30T22:27:48-04:00:     amazon-ebs: b44478184281: Download complete
2019-04-30T22:27:49-04:00:     amazon-ebs: d54db43011fd: Verifying Checksum
2019-04-30T22:27:49-04:00:     amazon-ebs: d54db43011fd: Download complete
2019-04-30T22:27:49-04:00:     amazon-ebs: 8d426ac9b534: Verifying Checksum
2019-04-30T22:27:49-04:00:     amazon-ebs: 8d426ac9b534: Download complete
2019-04-30T22:27:50-04:00:     amazon-ebs: f48d707166a1: Verifying Checksum
2019-04-30T22:27:50-04:00:     amazon-ebs: f48d707166a1: Download complete
2019-04-30T22:27:51-04:00:     amazon-ebs: 271ed73ea668: Verifying Checksum
2019-04-30T22:27:51-04:00:     amazon-ebs: 271ed73ea668: Download complete
2019-04-30T22:27:51-04:00:     amazon-ebs: 88cea60f56c5: Verifying Checksum
2019-04-30T22:27:51-04:00:     amazon-ebs: 88cea60f56c5: Download complete
2019-04-30T22:27:52-04:00:     amazon-ebs: a3b1f7f2b09b: Verifying Checksum
2019-04-30T22:27:52-04:00:     amazon-ebs: a3b1f7f2b09b: Download complete
2019-04-30T22:27:52-04:00:     amazon-ebs: b2b5910ccbec: Verifying Checksum
2019-04-30T22:27:52-04:00:     amazon-ebs: b2b5910ccbec: Download complete
2019-04-30T22:27:52-04:00:     amazon-ebs: 98693d9cc3b7: Verifying Checksum
2019-04-30T22:27:52-04:00:     amazon-ebs: 98693d9cc3b7: Download complete
2019-04-30T22:27:52-04:00:     amazon-ebs: 3527726ea75b: Verifying Checksum
2019-04-30T22:27:52-04:00:     amazon-ebs: 3527726ea75b: Download complete
2019-04-30T22:27:52-04:00:     amazon-ebs: abfed579cef8: Verifying Checksum
2019-04-30T22:27:52-04:00:     amazon-ebs: abfed579cef8: Download complete
2019-04-30T22:27:52-04:00:     amazon-ebs: 0c51c4c2e95a: Verifying Checksum
2019-04-30T22:27:52-04:00:     amazon-ebs: 0c51c4c2e95a: Download complete
2019-04-30T22:27:54-04:00:     amazon-ebs: e79bb959ec00: Pull complete
2019-04-30T22:27:55-04:00:     amazon-ebs: d4b7902036fe: Pull complete
2019-04-30T22:27:55-04:00:     amazon-ebs: 1b2a72d4e030: Pull complete
2019-04-30T22:27:58-04:00:     amazon-ebs: d54db43011fd: Pull complete
2019-04-30T22:27:58-04:00:     amazon-ebs: 1a97c78dad71: Pull complete
2019-04-30T22:27:58-04:00:     amazon-ebs: 6dcb79eeeda4: Pull complete
2019-04-30T22:27:58-04:00:     amazon-ebs: bd56246cf4fd: Pull complete
2019-04-30T22:28:05-04:00:     amazon-ebs: 88cea60f56c5: Pull complete
2019-04-30T22:28:05-04:00:     amazon-ebs: 7218d20bc740: Pull complete
2019-04-30T22:28:05-04:00:     amazon-ebs: b44478184281: Pull complete
2019-04-30T22:28:06-04:00:     amazon-ebs: 8d426ac9b534: Pull complete
2019-04-30T22:28:06-04:00:     amazon-ebs: f48d707166a1: Pull complete
2019-04-30T22:28:06-04:00:     amazon-ebs: 98693d9cc3b7: Pull complete
2019-04-30T22:28:06-04:00:     amazon-ebs: 271ed73ea668: Pull complete
2019-04-30T22:28:06-04:00:     amazon-ebs: a3b1f7f2b09b: Pull complete
2019-04-30T22:28:06-04:00:     amazon-ebs: b2b5910ccbec: Pull complete
2019-04-30T22:28:07-04:00:     amazon-ebs: 3527726ea75b: Pull complete
2019-04-30T22:28:07-04:00:     amazon-ebs: abfed579cef8: Pull complete
2019-04-30T22:28:07-04:00:     amazon-ebs: 0c51c4c2e95a: Pull complete
2019-04-30T22:28:07-04:00:     amazon-ebs: Digest: sha256:534e376f4387f5ec19b6dbe835afa2850adfdfd505da3f0be95d0bb86b925b3c
2019-04-30T22:28:07-04:00:     amazon-ebs: Status: Downloaded newer image for jenkins/jenkins:lts
2019-04-30T22:28:07-04:00:     amazon-ebs: ad65d9d4a48e92a0bb34216218b8f9c9d7936e0812d709b558e6e920bfc90e2e
2019-04-30T22:28:07-04:00: ==> amazon-ebs: Stopping the source instance...
2019-04-30T22:28:07-04:00:     amazon-ebs: Stopping instance
2019-04-30T22:28:08-04:00: ==> amazon-ebs: Waiting for the instance to stop...
2019-04-30T22:28:39-04:00: ==> amazon-ebs: Creating AMI jenkins-1556677560 from instance XXXXXXXXXXXXXXXXXXXXX
2019-04-30T22:28:39-04:00:     amazon-ebs: AMI: XXXXXXXXXXXXXXXXXXXXX
2019-04-30T22:28:39-04:00: ==> amazon-ebs: Waiting for AMI to become ready...
2019-04-30T22:31:28-04:00: ==> amazon-ebs: Terminating the source AWS instance...
2019-04-30T22:31:44-04:00: ==> amazon-ebs: Cleaning up any extra volumes...
2019-04-30T22:31:44-04:00: ==> amazon-ebs: No volumes to clean up, skipping
2019-04-30T22:31:44-04:00: ==> amazon-ebs: Deleting temporary keypair...
2019-04-30T22:31:44-04:00: Build 'amazon-ebs' finished.

==> Builds finished. The artifacts of successful builds are:
--> amazon-ebs: AMIs were created:
us-east-2: ami-XXXXXXXXXXXXXXXXXXXXX
```

## Built With

* [Homebrew](https://brew.sh/) - Used to install Packer
* [Packer](https://www.packer.io/) - Used as the tooling to build the AWS AMI
* [Python](https://www.python.org/) - Setup Wizard to create the necessary variables for the packer template
* [Bash](https://www.gnu.org/software/bash/) - Used for executing Packer commands

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/ah5/jenkins-ami/tags).

## Authors

* **Aneesh Hamza** - *Initial work and documentation*

## License

This project is licensed under the Mozilla Public License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

* This came to me as an interview exercise.
