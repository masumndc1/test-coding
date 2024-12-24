#!/usr/bin/env python3

"""
output
['test.yaml', 'test_test.py', 'py-testgenerator.py', 'test.pp',
'test.py', 'pytest.py', 'py-test.py', 'rb-testStringClass.rb']
"""

import os

dir = [x for x in os.listdir() if "test" in x]
print(dir)
