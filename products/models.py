from django.db import models


class Product(models.Model):
    name = models.CharField(max_length=100)
    brand = models.CharField(max_length=100)
    features = models.TextField()
    price = models.FloatField()
    qty = models.IntegerField(default=0)

    def __str__(self):
        return self.name



