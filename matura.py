#!/usr/bin/env python
#-*- coding:utf-8 -*-

from math import ceil, floor

def sklej(n):
  if n == 1:
    return 1
  elif n % 2 == 0:
    return n - 1 + 2*sklej(n/2)
  else:
    return n - 1 + sklej((n-1)/2) + sklej((n+1)/2)

def sklej_gen(n):
  tab = [1,1]
  for i in range(2, n + 1):
# I need to use some ugly hacks to make it usable with Python 2 and 3
    tab.append(i - 1 + tab[int(ceil(i/2.0))] + tab[int(floor(i/2.0))])
  return tab

for i in sklej_gen(10000):
  print(i)

