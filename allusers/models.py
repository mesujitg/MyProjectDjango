from django.db import models


class Account(models.Model):
    name = models.CharField(max_length=256)
    gender = models.CharField(max_length=256,
                              choices=[('Male', 'Male'), ('Female', 'Female'), ('Other', 'Other')], default='Male')
    dob = models.DateField()
    address = models.CharField(max_length=256)
    email = models.CharField(max_length=256)
    phone = models.CharField(max_length=256)
    username = models.CharField(max_length=256)
    password = models.CharField(max_length=256)
    type = models.CharField(max_length=256,
                            choices=[('Admin', 'Admin'), ('Client', 'Client'), ('User', 'User')], default='User')
    is_active = models.BooleanField(default=True)

    def __str__(self):
        return self.username

