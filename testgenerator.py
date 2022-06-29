#!/usr/bin/env python3

import unittest
from generator import generator_practise

class generatorExample(unittest.TestCase):

	def test_num(self):
		b = [1,4,9,16,25]
		my_nums = generator_practise([1,2,3,4,5])
		for num in my_nums:
			self.assertIn(num, b)