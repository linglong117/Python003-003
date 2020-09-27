# from django.db import models

# Create your models here.

# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey has `on_delete` set to the desired behavior.
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class Moviereviews(models.Model):
    id = models.BigAutoField(primary_key=True)
    movieid = models.CharField(max_length=50)
    username = models.CharField(max_length=50)
    avatorimgurl = models.CharField(max_length=100, blank=True, null=True)
    createdon = models.CharField(max_length=100)
    starlevel = models.CharField(max_length=10, blank=True, null=True)
    reviewtitle = models.CharField(max_length=100)
    reviewshort = models.CharField(max_length=400)
    spoilertip = models.CharField(max_length=100, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'moviereviews'