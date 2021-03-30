from django.conf import settings
from django.db import models


class TestModule(models.Model):
    user = models.ForeignKey(settings.AUTH_USER_MODEL, default=1, on_delete=models.CASCADE)
    title = models.CharField(max_length=100)
    detail = models.TextField()
    file = models.FileField()

    def getUser(self):
        return self.title
