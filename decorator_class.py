#!/usr/bin/env python3


class decorator_class(object):
    
    def __init__(self, original_function):
        self.original_function = original_function

    def __call__(self, *args: any, **kwargs: any):
        print("call methods executed this before {} ".format(self.original_function.__name__))
        return self.original_function(*args, **kwargs)

@decorator_class
def display():
    print("display function run")

@decorator_class
def display_info(name: str, age: int):
    print("display_info ran with arguments {} {}". format(name, age))

display()
display_info('John', 25)
