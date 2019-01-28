#!/bin/bash

echo -e ""
echo -e "\tthis scripts need virtualbox and unzip,ruby installed in the system"
echo -e "\tinstalling packer and upzip"
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
curl -L https://raw.githubusercontent.com/masumndc1/test/master/base.json -o base.json
cp base.json ./packer-build/template/ubuntu/16.04_xenial/base.json

cd ./packer-build/ && bash script/vbox.sh template/ubuntu/16.04_xenial/base.json
