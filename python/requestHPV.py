# -*- coding: UTF-8 -*-
import time
import urllib2
import ssl
import os
import json
import baseFunc
import random


idsList = [
                    '4849',
                    '5172',
                    '1756',
                    '4850',
                    '4460',
                    '4475',
                    # '4796' #4价测试用医院
                ]

while True:
    try:
        baseFunc.loopRequest(idsList)
    except KeyboardInterrupt,error:
        print '用户中断'
        exit()
    except BaseException,error:
        print '网络错误:'
        print error
        time.sleep(2)



