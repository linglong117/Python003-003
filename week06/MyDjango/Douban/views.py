from django.shortcuts import render

from .models import Moviereviews
from django.db.models import Avg,Q

# Create your views here.

def movies_short(request):
    movie_name = "何以为家"
    ###  从models取数据传给template  ###
    shorts = Moviereviews.objects.all()

    return render(request, 'result.html', locals())

def search(request):
    print("===========search=================")
    q = request.GET.get('q')
    error_msg = ''

    if not q:
        error_msg = '请输入关键词'
        shorts = Moviereviews.objects.all()
        return render(request, 'result.html', locals())
    # shorts = Moviereviews.objects.filter(reviewshort__contains=q | reviewtitle__contains=q | username__contains=q)
    shorts = Moviereviews.objects.filter(reviewshort__contains=q) |  Moviereviews.objects.filter(reviewtitle__contains=q) | Moviereviews.objects.filter(username__contains=q)

    return render(request, 'result.html', locals())