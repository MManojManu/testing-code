from django.core.paginator import Paginator

from django.views.generic import ListView, TemplateView
from utils.utils_search import SphinxRecord, QueryConstructor
from django.shortcuts import render
from .forms import SearchForm
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger


def detailed_view(request, pk):

    obj_query = QueryConstructor()
    obj_search = SphinxRecord()
    form = SearchForm
    template_name = 'search/view.html'
    final_query = "SELECT * FROM newsdb where id=%s" % pk
    sphinx_details = obj_search.get_sphinx_record(final_query)
    return render(request, template_name, {'form': form, 'sphinx_details': sphinx_details})


def get_search(request):
    template_name = 'search/form.html'
    obj_query_constructor = QueryConstructor()

    obj_search = SphinxRecord()
    form = SearchForm(request.GET)
    search = request.GET.get('search')
    if search:
        print (search)
        obj_query_constructor.set_index("newsdb")
        obj_query_constructor.set_query_list("*")
        obj_query_constructor.get_construct_query(search)
        #final_query = obj_query_constructor.get_final_query(search)
        #sphinx_details = obj_search.get_sphinx_record(final_query)
        sphinx_details = obj_query_constructor.execute()
        page = request.GET.get('page', 1)

        paginator = Paginator(sphinx_details, 5)
        try:
            sphinx_details = paginator.page(page)
        except PageNotAnInteger:
            sphinx_details = paginator.page(1)
        except EmptyPage:
            sphinx_details = paginator.page(paginator.num_pages)

        return render(request, template_name,
                      {'form': form, 'sphinx_details': sphinx_details, 'parameters': search})
    else:
        final_query = "select * from newsdb order by published_date desc limit 5"
        sphinx_details = obj_search.get_sphinx_record(final_query)
        page = request.GET.get('page', 1)
        paginator = Paginator(sphinx_details, 5)
        try:
            sphinx_details = paginator.page(page)
        except PageNotAnInteger:
            sphinx_details = paginator.page(1)
        except EmptyPage:
            sphinx_details = paginator.page(paginator.num_pages)
        return render(request, template_name, {'form': form, 'sphinx_details': sphinx_details})