from django.contrib import admin
from . models import HomepageModel


class HomepageModelAdmin(admin.ModelAdmin):
    pass

admin.site.register(HomepageModel, HomepageModelAdmin)
