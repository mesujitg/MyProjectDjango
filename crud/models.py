from django.conf import settings
from django.db import models


class Post(models.Model):
    title = models.CharField(max_length=100)
    post = models.TextField()
    image = models.FileField()
    # image = models.CharField(max_length=100)
    user = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE)

    def delete(self, *args, **kwargs):
        self.image.delete()
        super().delete(*args, **kwargs)

    def img_delete(self):
        self.image.delete()


class Comments(models.Model):
    comment = models.TextField()
    post = models.ForeignKey(Post, on_delete=models.CASCADE)
    user = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE)

