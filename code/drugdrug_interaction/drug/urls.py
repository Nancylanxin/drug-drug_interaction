# -*- coding: utf-8 -*-
from django.urls import path

from . import views

urlpatterns = [
    path('', views.index, name='index'),
    path('', views.interaction, name='interaction'),
    path('drug.html', views.detail, name='drug')
]