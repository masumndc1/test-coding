#!/usr/bin/env python3

import paramiko
import time


cmds = ('ls', 'lsb_release -a')
Channel = paramiko.SSHClient()
Channel.set_missing_host_key_policy(paramiko.AutoAddPolicy())
Channel.connect(hostname="nvim",
                username='ubuntu',
                look_for_keys=True,
                allow_agent=True)

for cmd in cmds:
    stdin, stdout, stderr = Channel.exec_command(cmd)
    for line in stdout.read().splitlines():
        print(line)

time.sleep(2)
Channel.close()
