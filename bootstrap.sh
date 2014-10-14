#!/usr/bin/env bash

yum -y update
yum -y groupinstall Base
yum -y install http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-2.noarch.rpm
#yum -y install ansible