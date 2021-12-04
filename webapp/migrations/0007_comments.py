# Generated by Django 3.2.5 on 2021-08-11 16:57

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('webapp', '0006_auto_20210811_1649'),
    ]

    operations = [
        migrations.CreateModel(
            name='Comments',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('user', models.CharField(max_length=30)),
                ('body', models.TextField()),
                ('profile_pic', models.ImageField(upload_to='')),
                ('publish_time', models.DateTimeField(auto_now_add=True)),
            ],
        ),
    ]
