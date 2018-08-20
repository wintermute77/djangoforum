from django.urls import include, path
from . import views as core_views

urlpatterns = [
    path('signup/', core_views.signup, name='signup'),
    path('testing/', core_views.testing, name='testing'),
]