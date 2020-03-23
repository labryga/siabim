from django.views.generic import TemplateView, ListView
from . models import HomepageModel


class SiaBimHomepage(ListView):
    template_name = "SiaBimHomepage.pug"
    model = HomepageModel


class SiaBimTestpage(TemplateView):
    template_name = "SiaBimTestpage.pug"
