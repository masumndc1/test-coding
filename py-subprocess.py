#!/usr/bin/env python3

import sys
import subprocess


def run_cmd(cmd):
    try:
        retcode = subprocess.call(cmd, timeout=10, shell=True)
        if retcode == 0:
            print("return code", retcode, file=sys.stderr)
        else:
            print("Child returned", retcode, file=sys.stderr)
    except OSError as e:
        print("Execution failed:", e, file=sys.stderr)


def main():
    '''
    if len(sys.argv) == 2:
        cmd = sys.argv[1]
    else:
        cmd = 'ls'
    '''
    cmd = sys.argv[1] if len(sys.argv) == 2 else 'ls'
    run_cmd(cmd)


if __name__ == "__main__":
    main()
