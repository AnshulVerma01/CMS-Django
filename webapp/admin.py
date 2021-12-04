from django.contrib import admin

# Register your models here.
from .models import User
from .models import Articles
from .models import Comments

admin.site.register(User)
admin.site.register(Articles)
admin.site.register(Comments)