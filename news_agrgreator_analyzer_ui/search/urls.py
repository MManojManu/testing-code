from django.conf.urls import url

from . import views

app_name = 'search'
urlpatterns = [
    url(r'^$', views.IndexView.as_view(), name='index'),
    url(r'^search/(?P<search>[0-9]+)/$', views.index_view, name='get_search'),
    url(r'^detail/(?P<pk>[0-9]+)/$', views.detailed_view, name='get_detailed_view'),
    url(r'^detail/(?P<pk>[0-9]+)/$', views.get_name, name='get_name'),
]
