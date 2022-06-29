#!/usr/bin/env python3
"""
A simple decorator practise
"""

import logging
import time
from functools import wraps

def my_logger(orig_func):
    """
    my_logger decorator
    """
    logging.basicConfig(filename='{}.log'.format(orig_func.__name__), level=logging.INFO)

    @wraps(orig_func)
    def wrapper(*args, **kwargs):
        logging.info(
            "Ran with args: %s and kwargs: %s", args, kwargs)
        return orig_func(*args, **kwargs)
    return wrapper

def my_timer(orig_func):

    """
    my_timer decorator
    """

    @wraps(orig_func)
    def wrapper(*args, **kwargs):
        t_1 = time.time()
        result = orig_func(*args, **kwargs)
        t_2 = time.time() - t_1
        print('{} ran in : {} sec'.format(orig_func.__name__, t_2))
        return result

    return wrapper

@my_logger
@my_timer
def display_info(name: str, age: int):
    """display_info"""

    print("display_info ran with arguments {} {}". format(name, age))

display_info('hanks', 60)
