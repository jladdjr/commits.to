from django.db import models

class User(models.Model):
    name = models.CharField(max_length=60)

class Promise(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    action = models.CharField(max_length=255)
    created = models.DateTimeField()
    due = models.DateTimeField()

