#!/bin/sh

# Install
apt-get update
apt-get install -y python python-openstackclient

# Install tools
wget https://raw.githubusercontent.com/gbraad/openstack-tools/master/stack -P /sbin/
chmod u+x /sbin/stack

# Cleanup
apt-get clean
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /root/.cache
