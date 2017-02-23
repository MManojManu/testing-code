from utils.utils_search import SphinxResult
from django.shortcuts import render
from .forms import SearchForm
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
import re


def __normalize_keyword(keyword):

    return " ".join(re.findall("[a-zA-Z]+", keyword))


def detailed_view(request, pk):
    obj_sphinx_result = SphinxResult("newsdb")
    form = SearchForm
    template_name = 'search/view.html'
    obj_sphinx_result.set_field_list(["id", "article_title", "resolved_location_name",
                                      "resolved_news_type_name",  "author_name",
                                      "published_date", "source_name", "content", ])
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
    FACET_LIST = ['location', 'news_type', 'source']
    form = SearchForm(request.POST)
    search = request.POST.get('search')
    facet_location_list = request.POST.getlist('location[]')
    obj_sphinx_result.set_location_list(facet_location_list)
    facet_source_list = request.POST.getlist('source[]')
    obj_sphinx_result.set_source_list(facet_source_list)
    facet_newstype_list = request.POST.getlist('newstype[]')
    obj_sphinx_result.set_newstype_list(facet_newstype_list)
    obj_sphinx_result.set_field_list(["id", "content", "article_title", "resolved_news_type_name",
                                      "resolved_location_name", "source_name", "author_name",
                                      "published_date", ])
    obj_sphinx_result.set_query_string(search)

    query_dict = {
        "search": search,
        "facet_dict": {
        "location": facet_location_list,
        "news_type": facet_newstype_list,
        "source": facet_source_list, }
    }
    print (query_dict)
    if search:

        obj_sphinx_result.set_snippet_field_list(["content", "article_title", "resolved_news_type_name",
                                                  "resolved_location_name", "source_name", "author_name",
                                                  "published_date"])
        obj_sphinx_result.set_options("WEIGHT()", limit=40, order="DESC")

        result_dict = obj_sphinx_result.execute(False, True)
        sphinx_details = result_dict['result']
        page = request.GET.get('page', 1)

        meta = result_dict['meta']
        paginator = Paginator(sphinx_details, 20)
        try:
            sphinx_details = paginator.page(page)
        except PageNotAnInteger:
            sphinx_details = paginator.page(1)
        except EmptyPage:
            sphinx_details = paginator.page(paginator.num_pages)

        facet_dict = obj_sphinx_result.get_facet_result(query_dict)
        return render(request, template_name,
                      {'form': form, 'sphinx_details': sphinx_details, 'meta': meta, 'parameters': search,
                       'face_dict': facet_dict, 'facet_location_list': facet_location_list,
                       'facet_source_list': facet_source_list, 'facet_newstype_list': facet_newstype_list})
    else:
        search = ""

        obj_sphinx_result.set_query_string(search)
        obj_sphinx_result.set_snippet_field_list(["content", "article_title", "resolved_news_type_name",
                                                  "resolved_location_name", "source_name", "author_name",
                                                  "published_date", ])
        obj_sphinx_result.set_options("published_date", limit=10, order="DESC")
        result_dict = obj_sphinx_result.execute(False, True)
        sphinx_details = result_dict['result']
        meta = 0
        if facet_location_list or facet_newstype_list or facet_source_list:
            meta = result_dict['meta']

        facet_dict = obj_sphinx_result.get_facet_result(query_dict)

        return render(request, template_name, {'form': form, 'sphinx_details': sphinx_details, 'meta': meta,
                                               'face_dict': facet_dict, 'facet_location_list': facet_location_list,
                                               'facet_source_list': facet_source_list,
                                               'facet_newstype_list': facet_newstype_list})


