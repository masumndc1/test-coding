#!/bin/bash

echo -e ""
echo -e "\tsetting up infra using ansible"
echo -e ""
ansible-playbook test.yaml -c local
 
echo -e "\tthere are two webservers is running"
echo -e "\tone is nginx, running on interface:8081"
echo -e "\tanother is apache2, running on interface:8080"
echo -e ""
