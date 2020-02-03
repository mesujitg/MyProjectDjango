from django.urls import path
from allusers import views

urlpatterns = [
    path('register/', views.show_register),
    path('login/', views.show_login),
    path('', views.show_dashboard),
    path('logout/', views.do_logout)
]

# if settings.DEBUG:
#         urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)

