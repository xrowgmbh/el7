#!/usr/bin/env bash

yum -y update
yum -y groupinstall Base

#Why official broke?
#yum -y install http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-2.noarch.rpm
yum -y install https://anorien.csc.warwick.ac.uk/mirrors/epel/7/x86_64/e/epel-release-7-2.noarch.rpm
yum -y install ansible
cp /etc/ansible/hosts /etc/ansible/hosts.dist

cat <<EOL > /etc/ansible/hosts
localhost

[webservers]
localhost
EOL