from django.http import HttpResponse

def index(request):
    return HttpResponse("Babe! Want to see what this is all <a href='/rango/about'>About</a>")

def about(request):
    return HttpResponse("This page is about <br/> Back to <a href='/rango/'>Start</a>")