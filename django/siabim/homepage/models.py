from django.db import models
from ckeditor.fields import RichTextField


class HomepageModel(models.Model):
    title = models.CharField(max_length=200, blank=True, null=True)
    text = RichTextField(blank=True, null=True)

    def __str__(self):
        return self.title
