from utils.utils_search import SphinxResult
from django.shortcuts import render
from .forms import SearchForm
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
import re


def normalize_keyword(input):

    return " ".join(re.findall("[a-zA-Z]+", input))


def detailed_view(request, pk):
    obj_sphinx_result = SphinxResult("newsdb")
    form = SearchForm
    template_name = 'search/view.html'
    obj_sphinx_result.set_field_list("*")
    obj_sphinx_result.get_exact_query(pk)
    content = ""
    search = ""
    obj_sphinx_result.get_snippet(content, search, 100)
    obj_sphinx_result.set_options("", limit="", order="")
    obj_sphinx_result.get_final_query()
    result_dict = obj_sphinx_result.execute(True, False)
    sphinx_details = result_dict['result']
    return render(request, template_name, {'form': form, 'sphinx_details': sphinx_details})


def get_search(request):
    template_name = 'search/form.html'
    obj_sphinx_result = SphinxResult("newsdb")
    form = SearchForm(request.GET)
    search = request.GET.get('search')
    obj_sphinx_result.set_field_list("*")

    if search:
        search = normalize_keyword(search)
        obj_sphinx_result.get_snippet("content", search, 100)
        obj_sphinx_result.get_match_query(search)
        obj_sphinx_result.set_options("WEIGHT()", limit=20, order="DESC")
        print (search)
        obj_sphinx_result.get_final_query()
        result_dict = obj_sphinx_result.execute(False)

        sphinx_details = result_dict['result']
        page = request.GET.get('page', 1)

        meta = result_dict['meta']
        paginator = Paginator(sphinx_details, 5)
        try:
            sphinx_details = paginator.page(page)
        except PageNotAnInteger:
            sphinx_details = paginator.page(1)
        except EmptyPage:
            sphinx_details = paginator.page(paginator.num_pages)

        return render(request, template_name,
                      {'form': form, 'sphinx_details': sphinx_details, 'meta': meta, 'parameters': search})
    else:
        search = ""
        obj_sphinx_result.get_snippet("content", search, 100)
        obj_sphinx_result.get_match_query(search)
        obj_sphinx_result.set_options("published_date", limit=10, order="DESC")
        obj_sphinx_result.get_final_query()
        result_dict = obj_sphinx_result.execute(False, False)
        sphinx_details = result_dict['result']

        return render(request, template_name, {'form': form, 'sphinx_details': sphinx_details})
