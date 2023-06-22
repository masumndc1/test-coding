#!/usr/bin/env python3


def make_pretty(func):

    def inner():
        print("I got decorated")
        func()
    return inner


@make_pretty
def ordinary():
    print("I am ordinary")


@make_pretty
def extraordinary():
    print("I am extra-ordinary")


ordinary()
extraordinary()
