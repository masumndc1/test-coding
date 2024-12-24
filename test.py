#!/usr/bin/env python3

from __future__ import annotations

import sys
import re
import logging


def something():
    pass


def url_extract(url: str) -> None:
    for part in url.split("."):
        if match(part):
            print(part)


def match(part: str) -> bool:
    dont_match = ["https://www", "http://www", "com", "org"]
    return not any(re.search(dm, part, re.IGNORECASE) for dm in dont_match)


def main():
    logging.basicConfig(
        filename="logs.log",
        level=logging.DEBUG,
        format="%(asctime)s:%(levelname)s: %(message)s",
    )
    if len(sys.argv) == 2:
        url = sys.argv[1]
        url_extract(url)
    else:
        print("pass an url")


if __name__ == "__main__":
    main()
