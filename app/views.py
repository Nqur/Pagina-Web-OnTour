from unittest import skip
from urllib import response
import requests
from django.db.models import Sum,Count
from django.shortcuts import render,redirect
from django.contrib import messages
from django.contrib.auth import authenticate, login
from django.contrib.auth.decorators import login_required, permission_required,user_passes_test
from django.contrib.auth.models import User, Group
from django.db.models.signals import post_save
from django.dispatch import receiver
from .models import *
from .forms import *

# Create your views here.

@receiver(post_save, sender=User) 
def create_user_profile(sender, instance, created, **kwargs):     
    if created:
        instance.groups.add(Group.objects.get(name='apoderado'))

def must_be_supervisor(user):
    return user.groups.filter(name='ejecutivo').count()

def placa(request):
    return render(request,'patron.html')

def inicio(request):
    current_user = request.user
    userid=current_user.id
    datos ={
        'userid':userid,
        'current_user':current_user
    }
        
    return render(request,'index.html',datos)

@login_required
def pagApoderado(request):
    current_user = request.user
    userid=current_user.id
    apes = Apoderado.objects.filter(idusuario=current_user.id)
    cursos = Curso.objects.all()
    datos = {
        'current_user':current_user,
        'userid':userid,
        'apes':apes,
        'cursos':cursos
    }
    return render(request,'pag_apoderado.html', datos)

@login_required
@user_passes_test(must_be_supervisor)
def pagEjecutivo(request):
    cursos = Curso.objects.all()
    total = Apoderado.objects.raw('SELECT id, SUM(aporte) AS totalv FROM `app_apoderado`')
    datos ={
        'cursos':cursos,
        'total':total
    }

    return render(request, 'pag_ejecutivo.html', datos)