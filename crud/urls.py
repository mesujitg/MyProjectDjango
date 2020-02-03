from django.urls import path
from crud import views

urlpatterns = [
    path('add', views.add_post),
    # path('update/<id>', views.update_post),
    path('delete/<id>', views.delete_post),
    # path('delete/<id>', views.show_post),
    # path('delete/<id>', views.search_post),
    ]