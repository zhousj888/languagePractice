# -*- coding: UTF-8 -*-
import time
import urllib2
import ssl
import os

ssl._create_default_https_context = ssl._create_unverified_context
a = 0;
while True:
    
    # User-Agent是爬虫与反爬虫的第一步
    ua_headers = {
'Host': 'wechat.zhifeishengwu.com',
'Content-Type': 'application/json',
'zftsl': '7c08616508f6009027253fba9fe5c65b',
'Accept': '*/*',
'Connection': 'keep-alive',
'Cookie': 'ASP.NET_SessionId=nai2wnraii5gmfe0akjhfwvt',
'User-Agent': 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 MicroMessenger/7.0.12(0x17000c30) NetType/4G Language/zh_CN',
'Referer': 'https://servicewechat.com/wx2c7f0f3c30d99445/59/page-frame.html',
'Accept-Language': 'zh-cn',
'Accept-Encoding': 'gzip, deflate, br'
        }
    
    url = 'https://wechat.zhifeishengwu.com/sc/wx/HandlerSubscribe.ashx?act=auth&code=071r0H8z1nOFYc0WeY6z10eU8z1r0H8O'
    # 通过urllib2.Request()方法构造一个请求对象
    request = urllib2.Request(url,headers=ua_headers)
    
    #向指定的url地址发送请求，并返回服务器响应的类文件对象
    response = urllib2.urlopen(request)
    
    # 服务器返回的类文件对象支持python文件对象的操作方法
    # read()方法就是读取文件里的全部内容，返回字符串
    html = response.read()
    print html
    a = a + 1
    print a

    time.sleep(0.5)
