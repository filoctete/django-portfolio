from django.contrib.sitemaps import Sitemap
from django.urls import reverse

class StaticViewSitemap(Sitemap):
    priority = 0.9 # Dá prioridade alta a estas páginas
    changefreq = 'weekly' # Diz ao Google que adicionas obras com frequência

    def items(self):
        # Os nomes internos das tuas rotas
        return ['home', 'pecas', 'sobre', 'contacto']

    def location(self, item):
        return reverse(item)