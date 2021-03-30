from django.contrib import auth, messages
from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import User
from django.core.files.storage import FileSystemStorage
from django.http import HttpResponse
from django.shortcuts import render, redirect

from allusers.forms import UserRegistrationForm, UserRegisterForm
from allusers.models import Account
from products.models import Product
from reviews.models import Review


# def show_login(request):
#     if request.method == 'POST':
#         un = request.POST['un']
#         pw = request.POST['pw']
#         user = auth.authenticate(username=un, password=pw)
#         if user is not None:
#             auth.login(request, user)
#             return redirect('../')
#
#     return render(request, 'login.html')


def show_login(request):
    if request.method == 'POST':
        un = request.POST['un']
        pw = request.POST['pw']
        acc = Account.objects.filter(username=un).filter(password=pw)
        if acc:
            request.session['username'] = un
            return redirect('../../')
        else:
            return HttpResponse('Wrong Credentials')

    return render(request, 'login.html')


def show_register(request):
    if request.method == 'POST':
        fn = request.POST['fn']
        ln = request.POST['ln']
        em = request.POST['em']
        un = request.POST['un']
        pw = request.POST['pw']
        user = User.objects.create_user(first_name=fn, last_name=ln, email=em, username=un, password=pw)
        user.save()

    return render(request, 'registration.html')


def do_register(request):
    if request.method == 'POST':
        form = UserRegisterForm(request.POST)
        if form.is_valid():
            form.save()
            messages.success(request, 'User Registered !!!')
            return redirect('/users/login')
    else:
        form = UserRegisterForm()
    return render(request, 'register.html', {'form': form})


@login_required
def show_dashboard(request):
    if request.method == 'POST':
        user = request.user
        product = request.POST['product']
        p = Product.objects.get(id=product)
        comments = request.POST['comments']
        ratings = request.POST['ratings']
        image = request.FILES['image']
        fs = FileSystemStorage()
        fs.save(image.name, image)
        review = Review(user=user, product=p, comments=comments, ratings= ratings, image=image.name)
        review.save()

    reviews = Review.objects.all()
    products = Product.objects.all()
    return render(request, 'dashboard.html', {'products': products, 'reviews': reviews})


# def do_logout(request):
#     auth.logout(request)
#     return redirect('../login')


def do_logout(request):
    try:
        del request.session['username']
    except:
        pass
    return HttpResponse('You are logged out')


