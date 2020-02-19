from django.urls import path
from . import views


urlpatterns = [
    path("", views.SiaBimHomepage.as_view()),
    path("test", views.SiaBimTestpage.as_view())
]
