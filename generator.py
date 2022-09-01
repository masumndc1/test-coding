#!/usr/bin/env python3


import os
import sys

if sys.argv < 1:
    print("your must provide args")

# something to add here


class GeneratorPractise:

    """generator practise"""

    def __init__(self, num):
        self.num = num

    def generator_list(self, etc):
        """this is something"""
        my_list = [] or etc
        # comment line
        for i in self.num:
            my_list.append(i*i)
        return my_list


if condition:
    pass
