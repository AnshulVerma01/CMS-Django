from django.db import models
# Create your models here.

class User(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=30)
    user = models.CharField(max_length=30)    
    profile_pic = models.ImageField(upload_to="profile/",default="profile/default.jpg")
    email = models.CharField(max_length=100)
    password = models.CharField(max_length=30)
    
class Articles(models.Model):
    id = models.AutoField(primary_key=True)
    user = models.CharField(max_length=30)
    title = models.CharField(max_length=200)
    body = models.TextField()
    image = models.ImageField(upload_to="images/")
    profile_pic = models.ImageField()
    publish_time = models.DateTimeField(auto_now_add=True)
    update_time = models.DateTimeField(auto_now=True)
    com_no = models.IntegerField(default=0)
    likes = models.IntegerField(default=0)
    
class Comments(models.Model):
    user = models.CharField(max_length=30)
    title = models.CharField(max_length=200)
    com_user = models.CharField(max_length=30)
    body = models.TextField()
    profile_pic = models.ImageField()
    publish_time = models.DateTimeField(auto_now_add=True)