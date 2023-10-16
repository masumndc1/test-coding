#!/usr/bin/env python3


import json


def get_var():
    with open('py-json.json') as fl:
        return json.load(fl)


def main():
    var = get_var()
    print(var['sys'], var['name'], var['car'])
    print(var['lang']['0'])
    print(var['game'])


if __name__ == "__main__":
    main()
