#!/usr/bin/env python3

class Immutable:

    # Replace the instance dictionary
    __slots__ = ('_dept', '_name')

    def __init__(self, dept, name):
        # Store to private attribute
        self._dept = dept
        self._name = name

    @classmethod
    def something(cls):
        print("hi im a class-method")

    @property
    # Read-only descriptor
    def dept(self):
        return self._dept

    @property
    # Read-only descriptor
    def name(self):
        return self._name

    # setting attribute
    @dept.setter
    def dept(self, value):
        # return self.dept
        self._dept = value


mark = Immutable('Botany', 'Mark Watney')
print(mark.dept)
print(mark.name)
mark.dept = 'Space Pirate'
print(mark.dept)
print(mark.something)
print(Immutable.something())
