#!/usr/bin/env

import yaml
import os
from pprint import pprint

with open('py-yaml.yml', 'r') as file:
    yaml_file = yaml.safe_load(file)
    pprint(yaml_file['hosts']['asus']['os'])

with open("py-yaml.yml", "r") as dir:
    yal = yaml.safe_load(dir)

home_dir = os.path.exists("~")
