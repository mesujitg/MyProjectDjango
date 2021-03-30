from django.urls import path
from testmodule import views

urlpatterns = [
    path('my', views.show),
    path('search', views.search),
    ]