from django.conf.urls import url

from . import views

app_name = 'search'
urlpatterns = [
    url(r'^detail/(?P<pk>[0-9]+)/$', views.detailed_view, name='get_detailed_view'),
    url(r'^$', views.get_search, name='get_search'),
]
