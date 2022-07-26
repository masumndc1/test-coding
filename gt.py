#!/usr/bin/env python3
# this is a simple python script to automate
# git pull, commit and push to github.

import sys
import subprocess


class GitOperation():

  '''
  gt.py "commit_msg" branch_name
  '''

  def __init__(self, msg: str, branch: str):

     # various color codes
     self._megenda = "\033[0m 1;35;40m]"
     self._red = '\27[31m'
     self._green = '\27[32m'
     self._blue = '\27[34m'
     #self._bold = '\033[1m'
     #self._italics = '\033[3m'
     #self._underline = '\033[4m'
     self._end = '\033[0m'

     self.msg = sys.argv[1]
     self.branch = sys.argv[2]
     self._add_new_files()

  def _add_new_files(self):
     print(self._megenda)
     retcode=subprocess.check_call("git add .",shell=True)
     self._commit() if not retcode else sys.exit("could not add files")
     print(self._end)

  def _commit(self):
     print(self._green)
     retcode=subprocess.call('git commit -m "%s"' % self.msg, shell=True)
     print("-"*70)
     self._push() if not retcode else sys.exit("could not commit")
     print(self._end)

  def _push(self):
     print(self._blue)
     retcode=subprocess.call('git push origin "%s"' % self.branch, shell=True)
     print("-"*70)
     print(f"Pushed to {self.branch} branch") if not retcode else sys.exit("could not push")
     print(self._end)


if __name__ == "__main__":
   if len(sys.argv) == 3:
       GitOperation(sys.argv[1], sys.argv[2])
   else:
       print(GitOperation.__doc__)
