from datetime import datetime

from django.http import HttpResponse
from django.shortcuts import render, redirect

from cart.models import Cart
from products.models import Product


def book_products(request, pid, qty):
    user = request.user
    product = Product.objects.get(id=pid)
    date = datetime.now()
    qty = qty
    b = Cart(user=user, product=product, date=date, qty=qty)
    b.save()
    product.qty = product.qty - int(qty)
    product.save()
    return HttpResponse('Added to cart')
