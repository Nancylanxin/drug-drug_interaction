from filecmp import cmp

# Create your views here.
from django.shortcuts import render
import sqlite3
from pypinyin import pinyin, Style


# 自定义排序规则函数
def chinese_pinyin_collation(s1, s2):
    pinyin1 = pinyin(s1, style=Style.NORMAL)
    pinyin2 = pinyin(s2, style=Style.NORMAL)
    return cmp(pinyin1, pinyin2)  # 比较拼音


# 连接到 SQLite 数据库
conn = sqlite3.connect('E:\pycharm_project\final_drug\code\drugdrug_interaction\db.sqlite')

# 注册自定义排序规则
conn.create_collation('chinese_pinyin', chinese_pinyin_collation)

# 执行查询并使用自定义排序规则
cursor = conn.cursor()
cursor.execute('SELECT * FROM detail ORDER BY name COLLATE chinese_pinyin')
result = cursor.fetchall()


def index(request):
    # drug_list = Introduction.objects.all()
    return render(request, 'drug/index.html', context={
        'title': '药药相互',
        'welcome': '欢迎访问我的drug首页',
        # 'drug_list': drug_list
    })


def detail(request):
    return render(request, 'drug/detail.html', context={
        'title': '药药相互',
        'welcome': '欢迎访问我的drug首页'
    })


# 前端发的axios
def interaction(request):
    return render(request, 'drug/detail.html', context={
        'title': '药药相互',
        'welcome': '欢迎访问我的drug首页'
    })
