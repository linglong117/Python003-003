from django.urls import path
from . import views


urlpatterns = [
    path('index', views.movies_short),
    # path(r'^search/$', views.search, name='search'),
    path('search/', views.search, name='search')

]
