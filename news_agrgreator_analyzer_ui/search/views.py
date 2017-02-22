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
    obj_sphinx_result.set_field_list(["*", ])
    obj_sphinx_result.get_exact_query(pk)
    content = ""
    search = ""

    obj_sphinx_result.set_query_string(search)
    obj_sphinx_result.set_snippet_field_list([content])
    obj_sphinx_result.set_options("", limit="", order="")
    result_dict = obj_sphinx_result.execute(True, False)
    sphinx_details = result_dict['result']
    return render(request, template_name, {'form': form, 'sphinx_details': sphinx_details})


def get_search(request):
    template_name = 'search/form.html'
    obj_sphinx_result = SphinxResult("newsdb")
    form = SearchForm(request.GET)
    search = request.GET.get('search')
    facet_key_list = request.GET.getlist('location[]')
    obj_sphinx_result.set_facet_list(facet_key_list)

    print (facet_key_list)
    obj_sphinx_result.set_field_list(["*"])

    if search:
        search = normalize_keyword(search)
        obj_sphinx_result.set_query_string(search)
        obj_sphinx_result.set_snippet_field_list(["content", "article_title", "resolved_news_type_name",
                                                  "resolved_location_name", "source_name", "author_name",
                                                  "published_date"])
        obj_sphinx_result.set_options("WEIGHT()", limit=40, order="DESC")

        result_dict = obj_sphinx_result.execute(False, True)
        sphinx_details = result_dict['result']
        page = request.GET.get('page', 1)

        meta = result_dict['meta']
        paginator = Paginator(sphinx_details, 10)
        try:
            sphinx_details = paginator.page(page)
        except PageNotAnInteger:
            sphinx_details = paginator.page(1)
        except EmptyPage:
            sphinx_details = paginator.page(paginator.num_pages)

        face_dict = obj_sphinx_result.get_facet_record()
        return render(request, template_name,
                      {'form': form, 'sphinx_details': sphinx_details, 'meta': meta, 'parameters': search,
                       'face_dict': face_dict, 'facet_key_list': facet_key_list})
    else:
        search = ""

        obj_sphinx_result.set_query_string(search)
        obj_sphinx_result.set_snippet_field_list(["content", "article_title", "resolved_news_type_name",
                                                  "resolved_location_name", "source_name", "author_name",
                                                  "published_date", ])
        obj_sphinx_result.set_options("published_date", limit=10, order="DESC")
        result_dict = obj_sphinx_result.execute(False, True)
        sphinx_details = result_dict['result']
        meta = result_dict['meta']
        face_dict = obj_sphinx_result.get_facet_record()
        return render(request, template_name, {'form': form, 'sphinx_details': sphinx_details, 'meta': meta,
                                               'face_dict': face_dict, 'facet_key_list': facet_key_list})


