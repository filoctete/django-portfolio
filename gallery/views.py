from django.shortcuts import render
from .models import Quadro, Peca

def home(request):
    quadros = Quadro.objects.all().order_by('-data_criacao')
    return render(request, 'gallery/home.html', {'quadros': quadros})

def sobre(request):
    return render(request, 'gallery/sobre.html')

def contacto(request):
    return render(request, 'gallery/contacto.html')

def pecas_view(request):
    pecas = Peca.objects.all().order_by('-data_criacao')
    return render(request, 'gallery/pecas.html', {'pecas': pecas})