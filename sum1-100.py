#!/usr/bin/python
# *-* coding:utf-8 *-*
# This program aims to sum 1 to n.
i = 1
a = 0
n = int(input('Please input a number:'))
while i<= n:
    a += i
    i += 1
print('Sum = '+str(a))
