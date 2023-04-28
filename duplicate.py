#!/usr/bin/env python3
# duplicate.py

def duplicate(str):

    blank_line = 0
    duplicate_chars = set()

    for i in range(len(str)):
        if " " in str[i]:
            blank_line = blank_line + 1

    for j in range(len(str)):
        if (str.count(str[j]) > 1 and 
            " " not in str[j]):
            duplicate_chars.add(str[j])
        else:
            continue

    return str, blank_line, len(duplicate_chars), duplicate_chars

def main():
    s, b, l, dw = duplicate('what is this')
    print("the whole line is: ", s)
    print("number of spaces: ", b)
    print("number of duplicate char: ", l)
    print("duplicate_chars are: ", dw)


if __name__ == "__main__":
    main()
