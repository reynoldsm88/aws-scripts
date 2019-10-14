#!/bin/bash


# ssh-keygen -t rsa -b 4096 -C "michael.reynolds@twosixlabs.com"

yum -y install amazon-linux-extras && \
sudo yum update -y && \
sudo yum install -y python3 && \
sudo yum install -y git

# Elasticsearch`
sudo sysctl -w vm.max_map_count=262144 && \
sudo sysctl --system


# Docker
sudo yum remove docker \
                  docker-client \
                  docker-client-latest \
                  docker-common \
                  docker-latest \
                  docker-latest-logrotate \
                  docker-logrotate \
                  docker-engine

sudo yum install -y yum-utls && \
sudo yum install -y device-mapper-persistent-data && \
sudo yum install -y lvm2

sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum install -y http://mirror.centos.org/centos/7/extras/x86_64/Packages/container-selinux-2.55-1.el7.noarch.rpm



sudo yum install -y docker-ce docker-ce-cli containerd.io
