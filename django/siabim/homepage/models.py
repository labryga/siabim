from django.db import models
from ckeditor.fields import RichTextField


class HomepageModel(models.Model):
    text = RichTextField(blank=True, null=True)
