from django.shortcuts import render

# Create your views here.
from django.shortcuts import render

from .models import Introduction


def index(request):
    drug_list = Introduction.objects.all()
    return render(request, 'drug/index.html', context={
        'title': '药药相互',
        'welcome': '欢迎访问我的drug首页',
        'drug_list': drug_list
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

