#!/usr/bin/env python3

import yaml
import logging
from jinja2 import Template

template = Template(
    """
    platform {{ platform }}
    version {{ version }}
    os {{ os }}
    """
)

logging.basicConfig(level=logging.DEBUG)

with open("py-yaml.yml", "r") as file:
    vars = yaml.safe_load(file)
    logging.info(vars.keys())

for item in vars.items():
    logging.info(template.render(vars[item]))
