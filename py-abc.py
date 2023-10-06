#!/usr/bin/env python3
# you cant use JSONtoNaruto until you define
# method convert in it.

import abc


class NarutoConverter(abc.ABC):

    @abc.abstractmethod
    def convert(self): pass


class JSONtoNaruto(NarutoConverter):
    def __init__(self, input_file):
        self.__input = input_file

    def convert(self):
        return self.__input


a1 = JSONtoNaruto('two')
print(a1.convert())
