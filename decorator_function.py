
from base64 import decode


def outer_fuction():
    message = 'Hi'
#!/usr/bin/env python3


def decorated_function(original_function):
    def wrapper_function(*args, **kwargs):
        print("wrapper executed this before {} function".format(original_function.__name__))
        return original_function(*args, **kwargs)
    return wrapper_function

@decorated_function
def display():
    print("display function run")

@decorated_function
def display_info(name: str, age: int):
    print("display_info ran with arguments {} {}". format(name, age))

display()
display_info('John', 25)
