#!/usr/bin/python
#-*- coding:utf-8 -*-

import random,string

maybe='0123456789'\
   'abcdefghijklmnopqrstuvwxyz'\
   'ABCDEFGHIJKLMNOPQRSTUVWXYZ'\
   '~!@#$%^&*()_+'

maybesize=len(maybe)

def rbit(p): return maybe[random.randint(0,maybesize-1)]
def rpwd(l): return ''.join(map(rbit,xrange(l)))

def tester():
   for i in xrange(10):
       print rpwd(32)

if __name__ == '__main__':
    tester()
