#!/usr/bin/env python3

import logging
import os

logging.debug("debugging information")
logging.info("informational message")

if not os.path.exists("./server.config"):
    logging.warning("config file: %s was not found", 'server.config')
    print("Do you want to create the file?")
    c, _ = os.get_terminal_size()
    print("*" * c)
