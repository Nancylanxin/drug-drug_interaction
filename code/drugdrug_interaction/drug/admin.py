from django.contrib import admin

# Register your models here.
from django.contrib import admin
from .models import Introduction,Interaction,Detail

admin.site.register(Interaction)
admin.site.register(Introduction)
admin.site.register(Detail)

