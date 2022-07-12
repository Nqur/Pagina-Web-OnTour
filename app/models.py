from django.db import models

# Create your models here.

class Curso(models.Model):
    nombrecurso = models.CharField(max_length=200)
    metacurso = models.IntegerField(default=0)

class Apoderado(models.Model):
    idusuario = models.IntegerField(default=0)
    nombre = models.CharField(max_length=200)
    aporte = models.IntegerField(default=0)
    idcurso = models.IntegerField(default=0)