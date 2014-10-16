el7
===

Setup required

sh bootstrap.sh

Deploy Local Webserver

ansible-playbook -i hosts site.yml --connection=local

Deploy a build server

This server creates RPMS and machine images

ansible-playbook -i hosts build.yml --connection=local