#!/usr/bin/env python3

import unittest
from xml.dom import NotFoundErr
from generator import GeneratorPractise
#import generator

class generatorExample(unittest.TestCase):

    def test_num(self):
        out = [1,4,9,16,25]
        my_nums = GeneratorPractise([1,2,3,4,5])
        for num in my_nums.generator_list():
            self.assertIn(num, out)
    
    def test_exist(self):
        out = [1,4,9,16,25]
        self.assertIn(7, out)

    def test_1_cannot_add_int_and_str(self):
        with self.assertRaises(TypeError):
            1 + 1


if __name__ == "__main__":
    unittest.main(verbosity=2)