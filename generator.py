#!/usr/bin/env python3

class GeneratorPractise:

    """generator practise"""

    def __init__(self, num):
        self.num = num

    def generator_list(self):
        my_list = []
        
        for i in self.num:
            my_list.append(i*i)
        return my_list