#!/bin/bash

# Update the system
apt update -y && \
apt upgrade -y && \
# Update Timezone manually to help streamline automated install for openjdk
ln -fs /usr/share/zoneinfo/America/New_York /etc/localtime && \
export DEBIAN_FRONTEND=noninteractive && \
apt-get install -y tzdata && \
dpkg-reconfigure --frontend noninteractive tzdata && \
# Install packages
apt install -y wget openjdk-11-jre && \
# Download nifi
#wget https://dlcdn.apache.org/nifi/1.15.2/nifi-1.15.2-bin.tar.gz && \
wget http://172.16.100.254:7777/nifi-1.15.2-bin.tar.gz && \
# untar nifi
tar -xvf nifi-1.15.2-bin.tar.gz -C /opt/ && \
cd /opt/ && \
ln -s /opt/nifi-1.15.2 nifi && \
# Cleanup
rm /nifi-1.15.2-bin.tar.gz