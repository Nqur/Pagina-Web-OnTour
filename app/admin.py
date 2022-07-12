from django.contrib import admin
from .models import *

class ApoderadoAdmin(admin.ModelAdmin):
    list_display = ('id', 'idusuario', 'nombre', 'aporte', 'idcurso')

class CursoAdmin(admin.ModelAdmin):
    list_display = ('id', 'nombrecurso', 'metacurso')

admin.site.register(Apoderado, ApoderadoAdmin)
admin.site.register(Curso, CursoAdmin)