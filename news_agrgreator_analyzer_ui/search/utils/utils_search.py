
from __future__ import print_function
from utils_sphinx_connector import Connector


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


class QueryConstructor(object):

    def __init__(self):
        self.sphinx_connector = Connector(host="127.0.0.1", port=9306, options={})
        self.query = "SELECT {fields} FROM {index } {cond} {options}"
        self.query = "{fields}{match}{limit}"
        self.index = None
        self.query_list = None
        self.__get_construct_query = None
        self.__get_result_query = None

    def set_index(self, index_name):
        self.index = index_name

    def set_query_list(self, query_list):
        self.query_list = query_list

    def get_construct_query(self, search):
        con_query = " WHERE {where_con} "
        try:
            pk = int(search)
            where_con = "id = %s" % pk
            con_query.format(where_con=where_con)
        except ValueError:
            where_con = "MATCH('%s')" %search
            con_query.format(where_con=where_con)
            self.__get_construct_query = con_query

    def __get_result(self):
        options = "LIMIT 20 OFFSET 10"
        self.__get_result_query = self.query.format(fields=self.query_list,
                                                    index=self.index, cond=self.__get_construct_query,
                                                    options=options)
        return self.__get_result_query

    def execute(self):
        sphinx_con = self.sphinx_connector.get_connection()
        sphinx_cursor = sphinx_con.cursor()
        print ("The resultant", self.__get_result_query)
        sphinx_cursor.execute(self.__get_result_query)
        sphinx_details = sphinx_cursor.fetchall()
        self.sphinx_connector.put_connection(sphinx_con)
        return sphinx_details

    def get_final_query(self, search_keyword):
        # Limit and offset
        #con_query = " WHERE {where_con} "
        #fields = "*"

        q = QueryConstructor()

        fields = "select * from  %s " % self.index
        print (fields)
        if not search_keyword:
            from_match = "where match('')"
        else:
            from_match = "where match('%s')" % search_keyword

        limit = ""
        final_query = self.query.format(fields=fields, match=from_match, limit=limit)

        return final_query