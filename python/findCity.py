# -*- coding: UTF-8 -*-

import requestHPV
import urllib2

guangdongUrl = 'https://wechat.zhifeishengwu.com/sc/wx/HandlerSubscribe.ashx?act=CustomerList&city=%5B%22%E5%B9%BF%E4%B8%9C%E7%9C%81%22%2C%22%22%2C%22%22%5D&lat=22.523359298706055&lng=113.93478393554688&id=0&cityCode=440000&product=1'
cityDic = requestHPV.requestJson(cityUrl);
print cityDic