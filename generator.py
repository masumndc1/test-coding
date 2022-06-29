#!/usr/bin/env python3

def generator_practise(nums):
	"""generator practise"""

	for i in nums:
		yield (i*i)

my_nums = generator_practise([1,2,3,4,5])

for num in my_nums:
	print(num)