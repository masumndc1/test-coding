#!/usr/bin/env python3

from __future__ import annotations

import functools


def return_2(func):
    def decorator():
        print("return 2")
        func()
        return decorator

    return return_2


@return_2
def return_3():
    print("something")


# return_3()
# return_2(return_3())

# print(return_3())
