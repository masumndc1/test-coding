#!/usr/bin/env python3


import re
import subprocess


ips = subprocess.getoutput('ifconfig')
# ip_compile = re.compile(192.168.\d+.\d+)
ip = re.findall('192.168.\d+.\d+', ips)


print(ip) if ip else print('no match')

for ip in ip:
    if ip.endswith('2'):
        print(ip)
