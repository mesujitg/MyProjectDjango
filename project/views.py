from django.shortcuts import render

from crud.models import Post
from products.models import Product


def show_home(request):
    products = Product.objects.all().order_by('-id')[:4]
    products = Product.objects.raw("SELECT * FROM products_product ORDER BY id DESC LIMIT 0,4")
    posts = Post.objects.all().order_by('-id')[:3]
    return render(request, 'home.html', {'products': products, 'posts': posts})

