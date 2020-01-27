from django.contrib import admin
from django.urls import path
from homepage.views import SiaBimHomepage

urlpatterns = [
    path("", SiaBimHomepage.as_view()),
    path("admin/", admin.site.urls),
]
