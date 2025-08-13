from django.db import models
from django.contrib.auth.models import AbstractUser


class PersonalInfo(models.Model):
    fullname = models.CharField(max_length=50)
    email = models.EmailField(max_length=50,unique=True)
    phone_number = models.CharField(max_length=50)
    governmentId = models.CharField(max_length=50)
    def __str__(self):
        return f'{self.fullname} {self.email}'

# Create your models here.
