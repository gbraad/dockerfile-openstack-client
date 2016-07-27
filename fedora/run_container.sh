#!/bin/sh

# Install dependencies
dnf install -y \
    curl \
    ansible

# Deploy openstackclient
curl -sSL https://raw.githubusercontent.com/gbraad/ansible-playbooks/master/playbooks/install-openstack-client.yml -o /tmp/install-openstack-client.yml
ansible-playbook /tmp/install-openstack-client.yml

# Cleanup
dnf remove -y \
    curl \
    ansible
dnf clean all
