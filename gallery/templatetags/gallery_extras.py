import re
from django import template
from django.utils.safestring import mark_safe

register = template.Library()

@register.filter
def style_title(value):
    # Procura o que está entre parênteses
    match = re.search(r'\((.*?)\)', value)
    if match:
        original_bracket = match.group(0) # Ex: (NR 581)
        # Transforma em lowercase e coloca dentro de um span pequeno
        content = original_bracket.lower()
        styled_bracket = f'<span style="font-size: 0.6em; opacity: 0.8; margin-left: 5px; text-transform: lowercase;">{content}</span>'
        return mark_safe(value.replace(original_bracket, styled_bracket))
    return value