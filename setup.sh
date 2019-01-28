#!/bin/bash

echo -e ""
echo -e "setting up infra using ansible"
echo -e ""
ansible-playbook test.yaml -c local
 
echo -e "there are two webservers is running"
echo -e "one is nginx, running on 8081"
echo -e "another is apache2, running on 8080"
echo -e ""
