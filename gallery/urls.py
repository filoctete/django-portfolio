from django.urls import path
from . import views

urlpatterns = [
    path('', views.home, name='home'),
    path('sobre/', views.sobre, name='sobre'),
    path('pecas/', views.pecas_view, name='pecas'),
    path('contacto/', views.contacto, name='contacto'),
]