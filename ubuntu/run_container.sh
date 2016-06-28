#!/bin/sh

# Install
apt-get update
apt-get install -y \
    python \
    curl \
    ansible

# Deploy openstackclient
curl -sSL https://raw.githubusercontent.com/gbraad/ansible-playbooks/master/playbooks/install-openstack-client.yml -o /tmp/install-openstack-client.yml
ansible-playbook /tmp/install-openstack-client.yml

# Cleanup
apt-get remove -y --auto-remove \
    curl \
    ansible 
apt-get clean
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /root/.cache
