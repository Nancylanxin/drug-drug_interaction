from django.db import models

# Create your models here.
from django.db import models


class Detail(models.Model):
    name = models.CharField(max_length=100)
    details = models.CharField(max_length=200)

    def __str__(self):
        return self.name


class Introduction(models.Model):
    name = models.CharField(max_length=100)
    ingredient = models.CharField(max_length=100)
    interdrug = models.CharField(max_length=100)

    def __str__(self):
        return self.name


class Interaction(models.Model):
    drug1 = models.ForeignKey(Detail, on_delete=models.CASCADE, related_name='interactions')
    drug2 = models.ForeignKey(Detail, on_delete=models.CASCADE)
    interaction_type = models.CharField(max_length=100)

    def __str__(self):
        return f"{self.drug1} - {self.drug2}".CharField(max_length=150)