#!/usr/bin/env python3

from __future__ import annotations
import os
import platform
import re
import sys
import subprocess


def main(pkg: "str"):
    if 'darwin' in platform.version().lower():
        path = "/usr/local/bin/{}".format(pkg)
    else:
        path = "/usr/bin/{}".format(pkg)

    if not os.path.exists(path):
        print("this package is not installed. installing it")
        res = input("want to install it? press [Yy], [Nn] to No ")
        if re.match('Y|y', res):
            if 'darwin' in platform.version().lower():
                subprocess.Popen("brew install {}".format(pkg),
                                 shell=True)
            elif 'ubuntu' in platform.version().lower():
                subprocess.Popen("apt-get install -y {}".format(pkg),
                                 shell=True)
            elif 'centos' in platform.version().lower():
                subprocess.Popen("yum install -y {}".format(pkg),
                                 shell=True)
            else:
                print("atm this os is not supported")
    else:
        print("package is installed")


if __name__ == "__main__":
    if len(sys.argv) <= 1 or len(sys.argv) > 3:
        print("./usage: sys.argv[0] package_name")
    else:
        pkg = sys.argv[1]
        main(pkg)
