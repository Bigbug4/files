#!/usr/bin/env python
# *-* coding:utf-8 *-*

from time import clock
#xiaorui.cc
def check(num):
    a = list(str(num))
    b = a[::-1]
    if a == b:
        return True
    return False

def main():
    all = range(1,10**7)
    for i in all:
        if check(i):
            if check(i**2):
                print(i,i**2)

if __name__ == '__main__':
    start = clock()
    main()
