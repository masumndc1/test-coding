#!/usr/bin/env python3
# example of
# classmethod, staticmethod, property,
# setter, isinstance, hasattr.

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

    @staticmethod
    def staticthing():
        print("hi im a static-method")

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


print(Immutable.something())
print(Immutable.staticthing())
mark = Immutable('Botany', 'Mark Watney')
print(dir(mark))
print(mark.name)
print(mark.dept)


if isinstance("dept", str):
    print("string class")
else:
    print("cant determine")

if hasattr(mark, "dept"):
    try:
        delattr(mark, "dept")
    except AttributeError as e:
        print(e)
else:
    print('false')

print(mark.dept)
print(type("dept"))
