from __future__ import print_function
from utils_sphinx_connector import Connector


class SphinxconnectorCreator(object):

    def __init__(self):
        self.sphinx_connector = Connector(host="127.0.0.1", port=9306, options={})


class QueryConstructor(object):

    def __init__(self):
        self.query = "SELECT {fields} FROM {index} {cond} {options}"
        self.con_query = " WHERE {where_con} "
        self.index = None
        self.query_list = None
        self.__get_construct_query = None
        self.__get_result_query = None

    def set_index(self, index_name):
        self.index = index_name

    def set_query_list(self, query_list):
        self.query_list = query_list

    def get_construct_query(self, search):

        try:
            pk = int(search)
            where_con = "id = %s" % pk
            self.__get_construct_query = self.con_query.format(where_con=where_con)
        except ValueError:
            where_con = "MATCH('%s')" % search
            self.query_list = self.query_list + ", SNIPPET(content, '%s' ," % search + "'limit=250')"
            self.query_list = self.query_list + ", SNIPPET(article_title, '%s' ," % search + "'limit=100')"
            self.__get_construct_query = self.con_query.format(where_con=where_con)

    def get_result(self, options):
        option = "ORDER BY weight() DESC "
        options = option + options
        options += ";SHOW meta;"
        print ("The index", self.index)
        print ("The fil", self.query_list)
        print ("The query", self.__get_construct_query)
        self.__get_result_query = self.query.format(fields=self.query_list,
                                                    index=self.index, cond=self.__get_construct_query,
                                                    options=options)

    def execute(self):
        obj_sphinx_connector = SphinxconnectorCreator()
        sphinx_con = obj_sphinx_connector.sphinx_connector.get_connection()
        sphinx_cursor = sphinx_con.cursor()
        print ("The resultant", self.__get_result_query)
        sphinx_cursor.execute(self.__get_result_query)
        sphinx_details = sphinx_cursor.fetchall()
        obj_sphinx_connector.sphinx_connector.put_connection(sphinx_con)
        return sphinx_details
