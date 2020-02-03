from django.urls import path
from cart import views

urlpatterns = [
    path('<pid>/<qty>', views.book_products)
]