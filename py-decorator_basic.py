#!/usr/bin/env python3

from functools import wraps


def return_2(func):
    @wraps(func)
    def decorator():
        print("return 2")
        func()
    return decorator


@return_2
def return_3():
    print("something")


def main():
    return_3()


if __name__ == "__main__":
    main()
