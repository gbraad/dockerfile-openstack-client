#!/bin/sh

# Install dependencies
yum install -y epel-release
yum install -y \
    curl \
    ansible

# Deploy openstackclient
curl -sSL https://raw.githubusercontent.com/gbraad/ansible-playbooks/master/playbooks/install-openstack-client.yml -o /tmp/install-openstack-client.yml
ansible-playbook /tmp/install-openstack-client.yml

# Cleanup
yum remove -y \
    curl \
    ansible
yum clean all
