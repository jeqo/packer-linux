#!/bin/bash -eux

# Install EPEL repository.
rpm -ivh $EPEL_REPO

# Configure sudo
yum -y install sudo
sed -i -e "s/Defaults    requiretty.*/ #Defaults    requiretty/g" /etc/sudoers 

# Install Ansible.
# yum -y install ansible
yum install -y openssl-devel python-devel python-setuptools gcc
easy_install pip
pip install paramiko PyYAML Jinja2 httplib2 six
pip install ansible
