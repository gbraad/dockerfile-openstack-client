#!/bin/sh

# Install dependencies
dnf install -y \
    curl \
    python2-dnf \
    ansible

# Deploy openstackclient
curl -sSL https://raw.githubusercontent.com/gbraad/ansible-playbooks/master/playbooks/install-openstack-client.yml -o /tmp/install-openstack-client.yml
ansible-playbook /tmp/install-openstack-client.yml

# Cleanup
dnf clean all
dnf remove -y \
    curl \
    ansible
