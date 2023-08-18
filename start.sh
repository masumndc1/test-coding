#!/bin/bash

echo -e ""
echo -e "\tthis scripts need virtualbox and unzip,ruby installed in the system"
echo -e "\tinstalling packer and upzip and ruby"
echo -e ""
apt-get install -y unzip ruby
curl -L https://releases.hashicorp.com/packer/1.3.3/packer_1.3.3_linux_amd64.zip -o packer_1.3.3.zip
unzip packer_1.3.3.zip
cp packer /usr/bin/packer
echo -e ""
echo -e "\tpacker installation done"

echo -e ""
echo -e "\tdownloading packer-build for automated os creation"
git clone https://github.com/tylert/packer-build.git
echo -e ""
cd ./packer-build/ && bash script/generate_templates.sh
cd ..
echo -e ""
echo -e "\tusing custom base.json for os creation"
curl -L https://raw.githubusercontent.com/masumndc1/test/master/base.json -o base.json
echo -e ""
echo -e "\trunning packer to automate os creation"
cp base.json ./packer-build/template/ubuntu/16.04_xenial/base.json

cd ./packer-build/ && bash script/vbox.sh template/ubuntu/16.04_xenial/base.json

echo -e "there are two webservers is running"
echo -e "one is nginx, running on interface:8081"
echo -e "another is apache2, running on interface:8080"
echo -e "Done"
