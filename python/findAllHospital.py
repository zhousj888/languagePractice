# -*- coding: UTF-8 -*-

import baseFunc
import urllib2

for id in range(1000,9999):
    find = False;
    while not find:
        try:
            baseFunc.findHospital(id)
            find = True
        except urllib2.HTTPError,error:
            print error
        