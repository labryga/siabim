from django.views.generic import TemplateView


class SiaBimHomepage(TemplateView):
    template_name = "SiaBimHomepage.pug"


class SiaBimTestpage(TemplateView);
    template_name = "SiaBimTestpage.pug"
