from django.db import models

# Create your models here.


class Interaction(models.Model):
    id = models.IntegerField(primary_key=True)
    drug1 = models.CharField(max_length=100)
    drug2 = models.CharField(max_length=100)
    interaction = models.CharField(max_length=200)


class Detail(models.Model):
    id = models.IntegerField(primary_key=True)
    name = models.CharField(max_length=100)
    details = models.CharField(max_length=100)

