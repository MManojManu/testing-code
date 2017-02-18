from utils.utils_search import QueryConstructor
from django.shortcuts import render
from .forms import SearchForm
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger


def detailed_view(request, pk):
    obj_query_constructor = QueryConstructor()
    form = SearchForm
    template_name = 'search/view.html'
    obj_query_constructor.set_index("newsdb")
    obj_query_constructor.set_query_list("*")
    obj_query_constructor.get_construct_query(pk)
    options = ""
    obj_query_constructor.get_result(options)
    sphinx_details = obj_query_constructor.execute()
    return render(request, template_name, {'form': form, 'sphinx_details': sphinx_details})


def get_search(request):
    template_name = 'search/form.html'
    obj_query_constructor = QueryConstructor()
    form = SearchForm(request.GET)
    search = request.GET.get('search')
    obj_query_constructor.set_index("newsdb")
    obj_query_constructor.set_query_list("*")

    if search:
        obj_query_constructor.get_construct_query(search)
        print (search)
        options = "LIMIT 0,20"
        obj_query_constructor.get_result(options)
        sphinx_details = obj_query_constructor.execute()
        page = request.GET.get('page', 1)

        paginator = Paginator(sphinx_details, 10)
        try:
            sphinx_details = paginator.page(page)
        except PageNotAnInteger:
            sphinx_details = paginator.page(1)
        except EmptyPage:
            sphinx_details = paginator.page(paginator.num_pages)

        return render(request, template_name,
                      {'form': form, 'sphinx_details': sphinx_details, 'parameters': search})
    else:
        search = ""
        obj_query_constructor.get_construct_query(search)
        options = "order by published_date desc limit 5"
        obj_query_constructor.get_result(options)
        sphinx_details = obj_query_constructor.execute()
        return render(request, template_name, {'form': form, 'sphinx_details': sphinx_details})