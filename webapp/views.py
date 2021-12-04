from django.http.response import HttpResponseRedirect
from django.shortcuts import render,redirect
from .models import User
from .models import Articles
from .models import Comments
from django.db.models import F
from django.contrib import messages
from django.core.paginator import EmptyPage, Paginator
from datetime import datetime
# Create your views here.

def error_500(request):
    return render(request,'500.html')

def error_404(request,exception):
    return render(request,'404.html')

def error_403(request,exception):
    return render(request,'403.html')


def indexView(request):
    return render(request,'index.html')

def loginView(request):
    try:
        if request.session['user_token']:
            messages.info(request,"You're Already Logged In!")
            return redirect('dashboard')
    except:
        user_data = User.objects.all()
        user_var=[]
        password_var=[]
        for i in user_data:
            user_var.append(i.user)
            password_var.append(i.password)
        if request.method == 'POST':
            user = request.POST.get('user')
            password = request.POST.get('password')
            k=0
            while k < len(user_var):
                if user==user_var[k] and password==password_var[k]:
                    request.session['user_token']=user
                    request.session['pass_token']=password
                    return redirect('dashboard')
                    break
                k+=1
            else:
                messages.info(request,"Incorrect Username or Password!!")
                return redirect('login')
        return render(request,'login.html')
    
def registerView(request):
    try:
        if request.session['user_token']:
            messages.info(request,"You Must Logout First!")
            return redirect('dashboard')
    except:
        user_data = User.objects.all()
        user_var=[]
        email_var=[]
        for i in user_data:
            user_var.append(i.user)
            email_var.append(i.email)
        if request.method == 'POST':
            user = User()
            user.name = request.POST.get('name')
            user.email = request.POST.get('email')
            user.user = request.POST.get('user')
            user.password = request.POST.get('password')
            k=0
            while k<len(user_var):
                if user.user==user_var[k]:
                    messages.info(request,"Username Already Exists, Choose Another!")
                    return redirect('register')
                    break
                elif user.email==email_var[k]:
                    messages.info(request,"Email Already Exists, SignIn Instead!")
                    return redirect('register')
                    break
                k+=1
            else:
                user.save()
                messages.info(request,"Registered Successfully!")
        return render(request,'register.html')

def dashboardView(request):
    user = request.session['user_token']
    password = request.session['pass_token']
    data = User.objects.get(user=user)
    name = data.name
    if request.method == "GET":
        image = User.objects.filter(user=user)
    if request.method == 'POST':
        if 'picchange' in request.POST:
            if len(request.FILES)!=0:
                file = User.objects.get(user=user)
                file.profile_pic = request.FILES['picture']
                file.save()
                Articles.objects.filter(user=user).update(profile_pic=file.profile_pic)
                messages.info(request,"Profile Picture Changed!")
            else:
                messages.info(request,"Picture Not Chosen")
            return HttpResponseRedirect("/dashboard")
        if 'passchange' in request.POST:
            oldpass = request.POST.get('currentpassword')
            newpass = request.POST.get('newpassword')
            if newpass !="":
                if password == oldpass:
                    User.objects.filter(user=user).update(password=newpass)
                    request.session['pass_token']=newpass
                    messages.info(request,"Password Changed!!")
                    return HttpResponseRedirect("/dashboard")
                else:
                    messages.info(request,"Incorrect Password!!")
                    return HttpResponseRedirect("/dashboard")
            else:
                messages.info(request,"Password Cannot Be Empty!")
                return HttpResponseRedirect("/dashboard")
    return render(request,'dashboard.html',{'name':name,'image':image})

def articleView(request):
    username = request.session['user_token']
    titles=[]
    art = Articles.objects.filter(user=username)
    for i in art:
        titles.append(i.title)
    if request.method == 'POST':
        k=0
        while k < len(titles):
            if request.POST.get('title')==titles[k]:
                messages.info(request,"Article With Same Title Already Exists!")
                break
            k+=1
        else:
            article = Articles()
            article.user = username
            article.title = request.POST.get('title')
            article.body = request.POST.get('body')
            if len(request.FILES)!=0:
                article.image = request.FILES['image']
            article.save()
            file = User.objects.get(user=username)
            Articles.objects.filter(user=username).update(profile_pic=file.profile_pic)
            messages.info(request,"Article Published. Check in My Articles")
            return HttpResponseRedirect("/article")
    return render(request,'article.html')

def myarticlesView(request):
    usrname = request.session['user_token']
    image = User.objects.filter(user=usrname)
    info = Articles.objects.filter(user=usrname).order_by('-id')
    page_num = request.GET.get('page',1)
    page = Paginator(info, 5)
    try:
        data = page.page(page_num)
    except EmptyPage:
        data = page.page(1)
    return render(request, "myarticles.html",{'data':data,'image':image})

def editView(request):
    user = request.session['user_token']
    articlename = request.GET.get("title")
    data1= Articles.objects.filter(user=user,title=articlename)
    if request.method == 'POST':
        if 'update' in request.POST:
            title = request.POST.get('title')
            body = request.POST.get('body')
            Articles.objects.filter(user=user,title=articlename).update(title=title,body=body)
            file = Articles.objects.get(user=user,title=title)
            if len(request.FILES)!=0:
                file.image = request.FILES['image']
            file.save()
            messages.info(request,"Article Updated")
            return HttpResponseRedirect("/myarticles")
        elif 'delete' in request.POST:
            Articles.objects.filter(user=user, title=articlename).delete()
            messages.info(request,"Article Deleted")
            return HttpResponseRedirect("/myarticles")
    return render(request,"edit.html",{'data1':data1})

def exploreView(request):
    auth = request.session['user_token']
    if request.method == "GET":
        info = Articles.objects.all().order_by('-id')
        comments = Comments.objects.all()
        page_num = request.GET.get('page',1)
        page = Paginator(info, 5)
        try:
            data = page.page(page_num)
        except EmptyPage:
            data = page.page(1)
    return render(request, "explore.html",{'data':data,'comments':comments,'current':auth})

def logoutView(request):
    del request.session['user_token']
    del request.session['pass_token']
    return redirect('login')

def userView(request):
    auth = request.session['user_token']
    searchuser = request.GET.get("name")
    current = User.objects.get(user=auth)
    comments = Comments.objects.filter(user=searchuser)
    if auth == searchuser:
        return redirect('myarticles')
    else:
        image = User.objects.filter(user=searchuser)
        info = Articles.objects.filter(user=searchuser).order_by('-id')
        page_num = request.GET.get('page',1)
        page = Paginator(info, 5)
        try:
            data = page.page(page_num)
        except EmptyPage:
            data = page.page(1)
        
    return render(request, "user.html",{'data':data,'name':searchuser,'image':image,'comment':comments,'current':current})

def postView(request):
    user = request.session['user_token']
    title = request.GET.get("title")
    name = request.GET.get("name")
    article = Articles.objects.get(user=name,title=title)
    comments = Comments.objects.filter(user=name,title=title).order_by('publish_time')
    current = User.objects.get(user=user)
    if request.method == 'POST':
        if 'post' in request.POST:
            if request.POST.get('body') == "":
                messages.info(request,"Comment is Empty!! Try Again")
            else:
                comment = Comments()
                comment.user = name
                comment.title = title
                comment.com_user = user
                comment.body = request.POST.get('body')
                comment.save()
                Articles.objects.filter(user=name,title=title).update(com_no=F('com_no')+1)
                Comments.objects.filter(com_user=user).update(profile_pic=current.profile_pic)
                messages.info(request,"Comment Posted!")
        elif 'delete' in request.POST:
            value = request.POST.get("value")
            Articles.objects.filter(user=name,title=title).update(com_no=F('com_no')-1)
            Comments.objects.filter(id=value).delete()
            messages.info(request,"Comment Deleted")
    return render(request, "post.html",{'articles':article,'comment':comments,'current':current})

def testView(request):
    user = request.session['user_token']
    if request.method == "GET":
        image = User.objects.filter(user=user)
    return render(request, "test.html",{'image':image})

