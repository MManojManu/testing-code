from django.shortcuts import render_to_response


def IndexView(request):
   paginate_by = 1
   return render_to_response('interface/result.html')