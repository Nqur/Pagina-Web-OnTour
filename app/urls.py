from django.urls import path
from .views import *

urlpatterns = [
    path('',inicio,name='index'),
    path('placa/',placa,name='placa'),
    path('pag_apoderado/',pagApoderado,name='pag_apoderado'),
    path('pag_ejecutivo/',pagEjecutivo, name='pag_ejecutivo')
    ]