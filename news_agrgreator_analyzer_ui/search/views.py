from __future__ import unicode_literals

from django.views import generic
import MySQLdb
from collections import deque
from django.shortcuts import render_to_response
from sphinxit.core.processor import Search
from django.http import JsonResponse
from django.http import HttpResponse

from django.views.generic import ListView


"""class SphinxitConfig(object):
    DEBUG = True
    WITH_META = True
    WITH_STATUS = False
    POOL_SIZE = 5
    SQL_ENGINE = 'mysql'
    SEARCHD_CONNECTION = {
        'host': '127.0.0.1',
        'port': 9306,
    }
"""


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

    def get_sphinx_record(self, query):
        sphinx_con = self.sphinx_connector.get_connection()
        sphinx_cursor = sphinx_con.cursor()
        sphinx_cursor.execute(query)
        sphinx_details = sphinx_cursor.fetchall()
        self.sphinx_connector.put_connection(sphinx_con)
        return sphinx_details


class CreateQuery(object):

    def __init__(self):
        self.query = "{fields}{match}{limit}"

    def get_final_query(self, search_keyword):

        fields = "select * from newsdb "

        if not search_keyword:
            from_match = "where match('')"
        else:
            from_match = "where match('%s')" % search_keyword

        limit = "limit 10"
        final_query = self.query.format(fields=fields, match=from_match, limit=limit)

        return final_query


class IndexView(generic.ListView):
    paginate_by = 5
    template_name = 'search/result.html'
    context_object_name = 'sphinx_details'

    """def get_queryset(request):
        search_query = Search(indexes=['newsdb', ], config=SphinxitConfig)
        search_query = search_query.match('karnataka')
        search_result = search_query.ask()

        return JsonResponse(search_result)"""

    def get_queryset(request):
        obj_query = CreateQuery()
        obj_search = SphinxRecord()

        search_keyword = "tamilnadu"

        final_query = obj_query.get_final_query(search_keyword)
        sphinx_details = obj_search.get_sphinx_record(final_query)

        if not sphinx_details:
            print("No Records Found!!")
        else:
            return (sphinx_details)
