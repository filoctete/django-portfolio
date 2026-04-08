from django.db import models

class Quadro(models.Model): # <-- A correção está aqui (models.Model)!
    titulo = models.CharField(max_length=200)
    descricao = models.TextField()
    imagem = models.ImageField(upload_to='quadros/')
    preco = models.DecimalField(max_digits=10, decimal_places=2, help_text="Ex: 1500.00")
    data_criacao = models.DateField()

    def __str__(self):
        return self.titulo