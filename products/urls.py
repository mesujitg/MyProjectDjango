from django.urls import path
from products import views

urlpatterns = [
    path('', views.show_products),
    path('new', views.show_new),
    path('update/<pid>', views.show_update),
]

