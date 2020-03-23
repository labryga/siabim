from django.views.generic import TemplateView
from django.db import models
from ckeditor.fields import RichTextField


class SiaBimHomepage(TemplateView):
    template_name = "SiaBimHomepage.pug"


class SiaBimTestpage(TemplateView):
    template_name = "SiaBimTestpage.pug"
