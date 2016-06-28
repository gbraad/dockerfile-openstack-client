#!/bin/sh

# Install dependencies
yum install -y epel-release
yum install -y \
    curl \
    ansible

# Deploy openstackclient
curl -sSL https://raw.githubusercontent.com/gbraad/ansible-playbooks/master/playbooks/install-openstack-client.yml -o /tmp/install-openstack-client.yml
ansible-playbook /tmp/install-openstack-client.yml

# Install tools
curl -sSL https://raw.githubusercontent.com/gbraad/openstack-tools/master/stack -o /sbin/stack
chmod u+x /sbin/stack

# Cleanup
yum clean all