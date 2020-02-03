import os
from django.core.files.storage import FileSystemStorage
from django.db.models import Q
from django.http import HttpResponse
from django.shortcuts import render

from crud.models import Post


def add_post(request):
    if request.method == 'POST': #adding post
        if request.POST.get("add_post"):
            title = request.POST['title']
            post = request.POST['post']
            image = request.FILES['image']
            file, extension = os.path.splitext(image.name)
            if image.size > 1048576:
                return HttpResponse('File is too large')
            elif extension.upper() != ".JPG" and extension.upper() != ".PNG" and extension.upper() != ".GIF":
                return HttpResponse('File format mismatch')
            else:
                fs = FileSystemStorage()
                fs.save(image.name, image)
                post = Post(title=title, post=post, image=image.name, user=request.user)
                post.save()
        elif request.POST.get("search_post"): #searching post
            key = request.POST['search']
            # return HttpResponse(key)
            posts = Post.objects.filter(Q(title__icontains=key) | Q(post__icontains=key))
            return render(request, 'posts.html', {'posts': posts})
        else: #updating post
            id = request.POST['id']
            title = request.POST['title']
            post = request.POST['post']
            p = Post.objects.get(id=id)
            p.title = title
            p.post = post
            if len(request.FILES) != 0:
                img = request.FILES['image']
                p.img_delete()
                p.image = img.name
                fs = FileSystemStorage()
                fs.save(img.name, img)
            p.save()
            return HttpResponse("Updated")
    posts = Post.objects.all()
    return render(request, 'posts.html', {'posts': posts})


def delete_post(request, id):
    post = Post.objects.get(id=id)
    post.delete()
    return HttpResponse('deleted')
