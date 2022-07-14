# -*- coding: UTF-8 -*-
import re


classmates = ['Michael', 'Bob', 'Tracy']
classmates[0]
len(classmates)
classmates.pop()
classmates.append('Adam')

classmates = ('Michael', 'Bob', 'Tracy')#不可变数组

d = {'Michael': 95, 'Bob': 75, 'Tracy': 85}
print d['Michael']

s = set(['asdf','asdf',1, 1, 2, 2, 3, 3])
print s;

if 1>2:
    pass
elif 1 < 2:
    pass
else:
    pass

n = 10
while n > 0:
    n -= 1
    pass

for i in range(0, 10):
    pass


def method1():
    for i in range(50, 100):#居然是左闭右开的。。。你肯定是在逗我
        pass


class Student:
    school = 'nenu'#成员变量
    def __init__(self, name, age):
        self.name = name
        self.age = age
        self.__pri = '_private'

    def get_private_name(self):
        return self.name + self.__pri
        pass


zsj = Student('zsj', 20)
print zsj.name
print zsj.age
print zsj._Student__pri;
print zsj.get_private_name()


class Animal:
    def __init__(self, name):
        self.name = name


    def run(self):
        print 'animal'+self.name + 'run'


class Dog(Animal):

    def run(self):
        print 'dog'+ self.name + 'run'


animal = Animal('小白');
dog = Dog('旺财');
animal.run();
dog.run();

'''
牛B的正则表达式开始啦,
\d可以匹配一个数字，
\w可以匹配一个字母或数字
.可以匹配任意字符
*表示任意个字符（包括0个），
用+表示至少一个字符，
用?表示0个或1个字符，
用{n}表示n个字符，
用{n,m}表示n-m个字符：
\s可以匹配一个空格
[0-9a-zA-Z\_]可以匹配一个数字、字母或者下划线；
A|B可以匹配A或B
^表示行的开头，^\d表示必须以数字开头。
$表示行的结束，\d$表示必须以数字结束。
匹配邮箱
假设邮箱规则：
1、必须以字母开头
2、用户名长度不小于6个字符
3、@之后是域名
4、域名必须是.com.cn.net
'''
matchPatterm = r'^[a-zA-Z]\w{5,}@\w+((\.com)|(\.net)|(\.cn))$'

email = 'u1234545345@qq.cn'

if re.match(matchPatterm, email):
    print 'match!!!'
else:
    print 'oh,no match...'




aaa='nimabi'
bbb='heihei'
#print '小红说：{aaa}小黄说{bbb}'.format(aaa='nimabi',bbb='heihei');

import string
s = string.Template('小红说：$aaa b小黄说$bbb')
print s.substitute(vars())

