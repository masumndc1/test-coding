#!/usr/bin/env python3

from collections import namedtuple


def amazing():
    '''
    This is the amazing function.
    Want to see it again?
    '''

    print('This function is named:', amazing.__name__)
    print('And its docstring is:', amazing.__doc__)

    # example of namedtuple
    Duck = namedtuple('Duck', 'head tail')
    duck = Duck("red", "black")
    # print(duck)
    print(duck.head)
    print(duck.tail)


def main():
    amazing()


if __name__ == "__main__":
    main()
