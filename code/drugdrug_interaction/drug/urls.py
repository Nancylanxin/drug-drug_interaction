# -*- coding: utf-8 -*-
from django.urls import path

from . import views

urlpatterns = [
    path('', views.index, name='index'),
    path('drugDetail', views.detail, name='detail'),
    path('interaction', views.interaction, name='interaction'),
]