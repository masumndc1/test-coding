#!/user/bin/env python3


import shutil

path = "/usr/bin"

if __name__ == "__main__":
    # shutil.disk_usage("$HOME")
    x = shutil.disk_usage(path) or {}
    print(x)
    y, z = shutil.get_terminal_size()
    print(y, z)
