from django.urls import path
from django.urls.resolvers import URLPattern
from . import views

urlpatterns = [
    path('',views.indexView, name="home"),
    path('dashboard/',views.dashboardView, name="dashboard"),
    path('login/',views.loginView, name="login"),
    path('register/',views.registerView, name="register"),
    path('logout/',views.logoutView, name="logout"),
    path('article/',views.articleView, name="article"),
    path('myarticles/',views.myarticlesView, name="myarticles"),
    path('edit/',views.editView, name="edit"),
    path('explore/',views.exploreView, name="explore"),
    path('user/',views.userView, name="user"),
    path('post/',views.postView, name="post"),
    path('test/',views.testView, name="test"),
]