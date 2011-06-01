#!/usr/bin/env python
#-*- coding:utf-8 -*-

def sklej(n):
  if n == 1:
    return 1
  elif n % 2 == 0:
    return n - 1 + 2*sklej(n/2)
  else:
    return n - 1 + sklej((n-1)/2) + sklej((n+1)/2)

def sklej_gen(n):
  tab = [1,1]
  for i in range(2,n):
    if i % 2 == 0:
      tab.append(i - 1 + 2*tab[i/2])
    else:
      tab.append(i - 1 + tab[(i+1)/2] + tab[(i-1)/2])
  return tab

for i in sklej_gen(10000):
  print i

