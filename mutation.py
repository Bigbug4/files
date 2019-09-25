#!/usr/bin/python
# -*- coding: utf-8 -*-
# This program aims to list all 172 mutational peptides.

f = open('172-9peptides.txt','w')
amino = list("CDEFGHIKLMNPQRSTVWYA")
A = list("AAAAAAAAA")
print(''.join(A))
f.write(''.join(A)+"\n")
i = 0
while i < 9:
    j = 0
    while j < 19:
        A[i] = amino[j]
        print(''.join(A))
        f.write(''.join(A)+"\n")
        j +=1
    i +=1
    print("\n")
    f.write("\n")
    A = list("AAAAAAAAA")
f.close()
