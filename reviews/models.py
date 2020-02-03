from django.conf import settings
from django.db import models
from products.models import Product


class Review(models.Model):
    user = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE)
    product = models.ForeignKey(Product, on_delete=models.CASCADE)
    comments = models.TextField()
    ratings = models.IntegerField()
    image = models.CharField(max_length=500)


