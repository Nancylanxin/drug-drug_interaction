from django.db import models


# Create your models here.


class Detail(models.Model):
    name2 = models.CharField(max_length=30)
    detail = models.CharField(max_length=200)

    def __str__(self):
        return self.name2


class Interaction(models.Model):
    drug1 = models.ForeignKey(Detail, on_delete=models.CASCADE, related_name='interactions_as_drug1')
    drug2 = models.ForeignKey(Detail, on_delete=models.CASCADE, related_name='interactions_as_drug2')
    interaction = models.CharField(max_length=200)

    def __str__(self):
        return self.interaction
