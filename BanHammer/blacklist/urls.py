from django.conf.urls.defaults import *

from . import views

urlpatterns = patterns('',
    url(r'^$', views.index, name='index'),
    url(r'^post/$',views.post, name='post'),
    url(r'^delete/$', views.delete, name='delete'),
)
