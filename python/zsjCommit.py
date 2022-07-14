# -*- coding: UTF-8 -*-
import sys, tempfile, os
from subprocess import call

TYPE_NEED = 1
TYPE_BUG_FIX = 2
TYPE_REFACTOR = 3
TYPE_STYLE = 4

def zsj_get_input(prompt = ""):
    if len(prompt) != 0:
        print prompt,
    str = os.popen('read -e line;echo -n "$line"').read()
    array = str.split()
    content = ""
    if len(array) > 1:
        for x in range(1,len(array)):
            content += array[x]
            content += " "
            pass
        content = content[0:len(content) - 1]
    return content


def run_git_commit(commit_log):
    git_command = 'git commit -m "' + commit_log + '"'
    os.system(git_command)
    pass

def log_factory(type,scope,title,content,extra):
    if len(title) == 0:
        exit()
    log = type
    if len(scope) != 0:
        log = log + "("+scope+")"
    log = log + ": " + title
    if len(content) != 0:
        log = log + "\n\n" + content
    if len(extra) != 0:
        log = log + "\n\n" + extra
    #print "\n\nlog=\n" + log
    return log

def get_title():
    title = zsj_get_input("输入简要概括(必填)\n")
    if len(title) == 0:
        print "简要概括一定要哦"
        exit()
    return title

def get_content():
    print "输入详细描述，如果想要输入多行，可以输入“1”打开vim编辑"
    content = ""
    line = zsj_get_input()
    commandInt = -1
    try:
        commandInt = int(line)
        pass
    except:
        pass
    if commandInt == 1:
        EDITOR = os.environ.get('EDITOR','vim') #that easy!
        with tempfile.NamedTemporaryFile(suffix=".tmp") as tf:
            call([EDITOR,'+set backupcopy=yes', tf.name])
            content = tf.read()
    else:
        content = line
        pass
    return content


def normal_commit(type):
    title = get_title()
    content = get_content()
    scope = zsj_get_input("影响范围是啥？\n")
    commit_log = log_factory(type,scope,title,content,"")
    run_git_commit(commit_log)

def bug_fix_commit():
    title = get_title()
    content = get_content()
    bug_id = zsj_get_input("请输入bug_id\n")
    if len(bug_id) == 0:
        extra = ""
    else:
        extra = "bugID=" + bug_id
    scope = zsj_get_input("影响范围是啥？\n")
    commit_log = log_factory("fix",scope,title,content,extra)
    run_git_commit(commit_log)

def need_commitnee():
    normal_commit("feat")

def refactor_commit():
    normal_commit("refactor")

def style_commit():
    normal_commit("style")


type = zsj_get_input("这提交类型是啥？\n1、需求feat\n2、bug fix\n3、重构refactor \n4、style修改\n")
type_int = -1
try:
    type_int = int(type)
except:
    pass

if type_int == TYPE_NEED:
    need_commitnee()
    pass
elif type_int == TYPE_BUG_FIX:
    bug_fix_commit()
    pass
elif type_int == TYPE_REFACTOR:
    refactor_commit()
    pass
elif type_int == TYPE_STYLE:
    style_commit()
    pass
else:
    print "必须输入类型哦"
    pass
