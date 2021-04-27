from django.http import HttpResponse

def index(request):
    return HttpResponse("First view for idonethis. Howdy!")
