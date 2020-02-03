from datetime import datetime

from django.http import HttpResponse
from django.shortcuts import render, redirect

from cart.models import Cart
from products.models import Product


def show_products(request):
    if request.method == 'POST':
        qty = request.POST['qty']
        pid = request.POST['pid']
        p = Product.objects.get(id=pid)
        aqty = int(p.qty)
        if qty != '':
            oqty = int(qty)
            if oqty > aqty:
                return HttpResponse('stock not available')
            else:
                user = request.user
                product = Product.objects.get(id=pid)
                date = datetime.now()
                qty = qty
                b = Cart(user=user, product=product, date=date, qty=qty)
                b.save()
                product.qty = product.qty - int(qty)
                product.save()
                return HttpResponse('<script>alert("Added to cart")</script>')
                # return redirect(f'../book/{pid}/{qty}')
        else:
            return HttpResponse('enter quantity')

    products = Product.objects.all()
    return render(request, 'products.html', {'products': products})


def show_new(request):
    return render(request, 'newproducts.html')


def show_update(request, pid):
    p = Product.objects.get(id=pid)
    if request.method == 'POST':
        p.name = request.POST['name']
        p.brand = request.POST['brand']
        p.features = request.POST['features']
        p.qty = request.POST['qty']
        p.price = request.POST['price']
        p.save()
        return HttpResponse('<script>alert("Product Updated")</script>')
    return render(request, 'productform.html', {'product': p})