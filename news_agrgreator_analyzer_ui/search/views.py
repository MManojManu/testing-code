from django.core.paginator import Paginator

from django.views.generic import ListView, TemplateView
import MySQLdb
from collections import deque
from django.shortcuts import render, render_to_response
from .forms import SearchForm
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger

class Connector(object):
    MAX_CON = 1

    def __init__(self, host, port, options):

        self.__connection_pool = deque()
        for con in range(self.MAX_CON):
            con = MySQLdb.connect(host=host, port=int(port), **options)
            self.__connection_pool.append(con)

    def get_connection(self):
        con = self.__connection_pool.pop()
        return con

    def put_connection(self, con):
        self.__connection_pool.appendleft(con)

    def __del__(self):
        for con in range(self.MAX_CON):
            con = self.__connection_pool.pop()
            con.close()


class SphinxRecord(object):

    def __init__(self):
        self.sphinx_connector = Connector(host="127.0.0.1", port=9306, options={})

    def get_sphinx_record(self, query, args=None):
        sphinx_con = self.sphinx_connector.get_connection()
        sphinx_cursor = sphinx_con.cursor()
        sphinx_cursor.execute(query, args or ())
        sphinx_details = sphinx_cursor.fetchall()
        self.sphinx_connector.put_connection(sphinx_con)
        return sphinx_details


class CreateQuery(object):

    def __init__(self):
        #self.query = "SELECT {fields} FROM {index } {cond} {options}"
        self.query = "{fields}{match}{limit}"
    def get_final_query(self, search_keyword):
        # Limit and offset
        #con_query = " WHERE {where_con} "
        #fields = "*"
        fields = "select * from newsdb "
        if not search_keyword:
            from_match = "where match('')"
        else:
            from_match = "where match('%s')" % search_keyword

        limit = ""
        final_query = self.query.format(fields=fields, match=from_match, limit=limit)

        return final_query


class IndexView(TemplateView):
    def get(self, request, *args, **kwargs):
        template_name = 'search/form.html'
        obj_query = CreateQuery()
        obj_search = SphinxRecord()
        form = SearchForm(request.GET)
        search = request.GET.get('search')
        if search:
            print (search)
            final_query = obj_query.get_final_query(search)
            sphinx_details = obj_search.get_sphinx_record(final_query, page_number)
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


def detailed_view(request, pk):

    obj_query = CreateQuery()
    obj_search = SphinxRecord()
    form = SearchForm
    template_name = 'search/view.html'
    final_query = "SELECT * FROM newsdb where id=%s" % pk
    sphinx_details = obj_search.get_sphinx_record(final_query)
    return render(request, template_name, {'form': form, 'sphinx_details': sphinx_details})


def get_search(request):
    template_name = 'search/form.html'
    obj_query = CreateQuery()
    obj_search = SphinxRecord()
    form = SearchForm(request.GET)
    search = request.GET.get('search')
    if search:
        print (search)
        final_query = obj_query.get_final_query(search)
        sphinx_details = obj_search.get_sphinx_record(final_query)
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