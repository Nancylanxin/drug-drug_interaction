from django.shortcuts import render
from django.core.paginator import Paginator, PageNotAnInteger, EmptyPage
from .models import *

# Create your views here.


def index(request):
    if request.method == 'POST':
        medicineA = request.POST['medicine-a']
        medicineB = request.POST['medicine-b']
        interaction = Interaction.objects.filter(drug1=medicineA, drug2=medicineB).all()
        if len(interaction) == 0:
            interaction = Interaction.objects.filter(drug1=medicineB, drug2=medicineA).all()
    page = request.GET.get('page')
    cuPage, allPage = get_page(page)
    return render(request, 'index.html', locals())


def get_page(page):
    if page is None or page == '':
        page = 1
    page = int(page)
    #  获取所有信息
    interactionAll = Interaction.objects.all()
    #  分页，每页十五条
    p = Paginator(interactionAll, 15)
    if page < 1:
        page = 1
    #  当前页面
    cuPage = p.page(page)
    #  从当前页面开始，获取相邻8条信息
    tmp = page
    if tmp < 5:
        tmp = 5
    if tmp + 5 > len(interactionAll) // 10:
        tmp = len(interactionAll) // 10 - 5
    allPage = [i for i in range(tmp-4, tmp+5)]
    return cuPage, allPage


def detail(request):
    if request.method == 'POST':
        name = request.POST['name']
    else:
        name = request.GET.get('name')
    detai = Detail.objects.filter(name=name)
    relations = Interaction.objects.filter(drug1=name)
    if len(relations) == 0:
        relations = Interaction.objects.filter(drug2=name)

    return render(request, 'drug.html', locals())
