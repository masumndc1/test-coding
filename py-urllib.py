#!/usr/bin/env python3

import urllib.request

URL = "https://raw.githubusercontent.com/masumndc1/zim/master/aaa/freeradius.office.txt"

with urllib.request.urlopen(URL) as fl:
    # opening file for the bytes
    with open("output.txt", "wb") as fp:
        fp.write(fl.read())

print(fl.status)
print(fl.reason)
