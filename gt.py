#!/usr/bin/env python3
# this is a simple python script to automate
# git pull, commit and push to github.

import os
import shutil
import sys
import subprocess


class Color():
    """will give color"""

    def __init__(self):
        self.black = '\033[30m'
        self.red = '\033[31m'
        self.green = '\033[32m'
        self.yellow = '\033[33m'
        self.blue = '\033[34m'
        self.megenta = '\033[35m'
        self.cyan = '\033[36m'
        self.white = '\033[37m'
        self.underline = '\033[4m'
        self.reset = '\033[0m'

    def color(self, color):
        if color == 'black':
            return self.black
        elif color == 'red':
            return self.red
        elif color == 'green':
            return self.green
        elif color == 'yellow':
            return self.yellow
        elif color == 'blue':
            return self.blue
        elif color == 'magenta':
            return self.magenta
        elif color == 'cyan':
            return self.cyan
        elif color == 'white':
            return self.white
        elif color == 'underline':
            return self.underline
        elif color == 'reset':
            return self.reset
        else: 
            print("unknown color")


class GitOperation(Color):

    '''
    gt.py "commit_msg" branch_name(optional) default_branch: master
    '''

    def __init__(self):
        super().__init__()
        self.msg = sys.argv[1]
        self.branch = sys.argv[2] if len(sys.argv) == 3 else "master"
        self._add_new_files()

    def _term_size(self, color):
        col, _ = shutil.get_terminal_size()
        print(color + "-" * col + self.reset)
 
    def _add_new_files(self):
        self._term_size(self.yellow)
        retcode = subprocess.call("git add .", shell=True)
        self._commit() if not retcode else sys.exit("could not add files")

    def _commit(self):
        retcode = subprocess.call(
            'git commit -m "%s"' % self.msg, shell=True)
        self._push() if not retcode else sys.exit("could not commit")

    def _push(self):
        retcode = subprocess.call(
            'git push origin "%s"' % self.branch, shell=True)
        if not retcode:
            print(f"Pushed to {self.branch} branch")
            self._term_size(self.cyan)
        else:
            sys.exit("could not push")


if __name__ == "__main__":
    if len(sys.argv) >= 2:
        GitOperation()
    else:
        print(GitOperation.__doc__)
