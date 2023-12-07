from django.urls import path
from django.views.generic.base import TemplateView


app_name = 'sample'

urlpatterns = [
    path('', TemplateView.as_view(template_name='sample/example.html'), name='example'),
]