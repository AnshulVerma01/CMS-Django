# Generated by Django 3.2.5 on 2021-08-08 10:09

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('webapp', '0002_alter_user_profile_pic'),
    ]

    operations = [
        migrations.AddField(
            model_name='articles',
            name='profile_pic',
            field=models.ImageField(default='profile/default.jpg', upload_to='profile/'),
        ),
    ]
