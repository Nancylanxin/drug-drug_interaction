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
    if page == None:
        page = 1
    interactionAll = Interaction.objects.all()
    p = Paginator(interactionAll, 10)
    cuPage = p.page(int(page))
    tmp = int(page)
    if tmp < 5:
        tmp = 5
    if tmp + 5 > len(interactionAll) // 10:
        tmp = len(interactionAll) // 10 - 5
    allPage = [i for i in range(tmp-4, tmp+5)]
    return render(request, 'index.html', locals())


def detail(request):
    name = request.GET.get('name')
    detai = Detail.objects.filter(name=name)
    return render(request, 'drug.html', locals())


