
# -*- coding: UTF-8 -*-
import time
import urllib2
import ssl
import os
import json
import baseFunc

ssl._create_default_https_context = ssl._create_unverified_context

# 九价
pid = '1' 
# 4价
# pid = '2' 

ua_headers = {
            'Host': 'wechat.zhifeishengwu.com',
            'Content-Type': 'application/json',
            'zftsl': 'b509c7b79771594d42de3502011c209a',
            'Accept': '*/*',
            'Connection': 'keep-alive',
            'Cookie': 'ASP.NET_SessionId=lk5uorsmlspvco1i3rvz0100',
            'User-Agent': 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 MicroMessenger/7.0.12(0x17000c30) NetType/4G Language/zh_CN',
            'Referer': 'https://servicewechat.com/wx2c7f0f3c30d99445/59/page-frame.html',
            'Accept-Language': 'zh-cn',
            'Accept-Encoding': 'gzip, deflate, br'
            }


def request(url):
    print '请求url：'
    print url
    time.sleep(0.5)
    request = urllib2.Request(url,headers=ua_headers)
    response = urllib2.urlopen(request)
    return response.read()

def requestJson(url):
    html = request(url)
    return json.loads(s=html)

def findHospital(i):
    hosInfoUrl = 'https://wechat.zhifeishengwu.com/sc/wx/HandlerSubscribe.ashx?act=CustomerProduct&id='+str(i)+'&lat=22.5235538482666&lng=113.93489074707031'
    hosInfoDic = requestJson(hosInfoUrl);
    if 'cname' in hosInfoDic:
        hosName =  hosInfoDic['cname'].encode('utf-8')
        print '查到 id = ' + str(i) + ',医院 = ' + hosName;
        return hosName
    else:
        print '查不到id = ' + str(i) + ' 的医院'
    return 'null'

def requestTimeList(key):
    key = str(key)
    timeLisUrl = 'https://wechat.zhifeishengwu.com/sc/wx/HandlerSubscribe.ashx?act=GetCustSubscribeDateAll&pid='+pid+'&id='+key+'&month=202007'
    print '查日历,key = ' + key + '，url = ' + timeLisUrl
    timeListDic = requestJson(timeLisUrl)
    timeList = timeListDic['list']
    print '预约日历👇'
    print timeList
    return timeList;

def requestExactTimeList(key, enableDate):
    timeRequestUrl = 'https://wechat.zhifeishengwu.com/sc/wx/HandlerSubscribe.ashx?act=GetCustSubscribeDateDetail&pid='+pid+'&id='+str(key)+'&scdate='+enableDate
    timeResonseDic = requestJson(timeRequestUrl)
    exactTimeList = timeResonseDic['list']
    print '具体时间为👇'
    print exactTimeList
    return exactTimeList

def order(mxid,enableDate):
    orderUrl = 'https://wechat.zhifeishengwu.com/sc/wx/HandlerSubscribe.ashx?act=Save20&birthday=1994-04-22&tel=18374890510&sex=2&cname=%E4%BD%99%E6%87%BF&idcard=430124199404220024&mxid='+str(mxid)+'&date='+enableDate+'&pid='+pid+'&Ftime=1'
    print '下单链接 : '
    print orderUrl
    for i in range(0,3):
        try:
            print request(orderUrl);
        except BaseException, error:
            print '下单请求出错👇'
            print error

def fetchIdsList(cityUrl):
    cityDic = requestJson(cityUrl)
    cityDic['list']

def requestOrderList():
    print '预定列表:'
    orderlist = requestJson('https://wechat.zhifeishengwu.com/sc/wx/HandlerSubscribe.ashx?act=UserSubcribeList')
    print orderlist

def loopRequest(idsList):
    while True:
        requestOrderList()
        for key in idsList:
            hosName = findHospital(key)
            timeList = requestTimeList(key)
            timeList.reverse()
            hasHPV = False
            for dataEnabelDic in timeList :
                if dataEnabelDic['enable'] == True :
                    hasHPV = True
                    print '有HPV了！！在' + hosName
                    print '有HPV了！！在' + hosName
                    print '有HPV了！！在' + hosName
                    print '有HPV了！！在' + hosName
                    print '有HPV了！！在' + hosName
                    print '有HPV了！！在' + hosName
                    print '有HPV了！！在' + hosName
                    # os.system('say "HPV"')
                    enableDate = dataEnabelDic['date']
                    exactTimeList = requestExactTimeList(key,enableDate)
                    for exactTimeInfo in exactTimeList:
                        print '疫苗数量 = ' + str(exactTimeInfo['qty'])
                        if exactTimeInfo['qty'] > 0 :
                            mxid = exactTimeInfo['mxid']
                            order(mxid,enableDate)
                            # time.sleep(1)
            if not hasHPV:
                print hosName + '没有HPV了😢'
            # time.sleep(0.5)