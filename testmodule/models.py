from django.db import models


class TestModule(models.Model):
    title = models.CharField(max_length=100)
    detail = models.TextField()
    file = models.FileField()
