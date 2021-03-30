from django.db.models import Q
from django.shortcuts import render

from products.models import Product
from reviews.models import Review
from testmodule.models import TestModule


def show(request):
    tm = TestModule.objects.filter(user=request.user)
    return render(request, 'mytestmodule.html', {'tm': tm})


def search(request):
    if request.method == 'POST':
        key = request.POST['key']
        products = Product.objects.filter(Q(name__icontains=key) | Q(brand__icontains=key))
        return render(request, 'products.html', {'products': products})
