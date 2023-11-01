from django.shortcuts import render


def index(request):
    return render(request, 'drug/index.html', context={
        'title': '我的博客首页',
        'welcome': '欢迎访问我的博客首页'
    })


def interaction(request):
    from code.drugdrug_interaction.drug.models import Interaction
    drug_list = Interaction.objects.all()

    return render(request, 'drug/index.html', context={
        'drug_list': drug_list,
    })


def detail(request):
    return render(request, 'drug/drug.html', context={
    })
