from __future__ import print_function
from utils_sphinx_connector import Connector


class SphinxconnectorCreator(object):

    def __init__(self):
        self.sphinx_connector = Connector(host="127.0.0.1", port=9306, options={})


class SphinxResult(object):

    def __init__(self, index):
        self.__main_query_template = "SELECT {fields} {snippet} FROM {index} {cond} {options}"
        self.__cond_query_template = " WHERE {where_con} "
        self.__snippet_template = ", SNIPPET({field}, {key_word}, {limit}) as {field}_snippet"
        self.__index = index
        self.__field_list = None
        self.__construct_query = None
        self.__options = None

    def set_field_list(self, field_list):
        self.__field_list = field_list

    def get_snippet(self, field, key_word, limit):
        t = "'%s'" % key_word
        limit = "'LIMIT =%s'" % limit
        self.__snippet_template = self.__snippet_template.format(field=field, key_word=t, limit=limit)
        return self

    def get_exact_query(self, search):
        pk = int(search)
        where_con = "id = %s" % pk
        self.__cond_query_template = self.__cond_query_template.format(where_con=where_con)
        self.__snippet_template = ""
        return self

    def get_match_query(self, search):
        where_con = "MATCH('%s')" % search
        self.__cond_query_template = self.__cond_query_template.format(where_con=where_con)
        return self

    def set_options(self, options):
        self.__options = options

    def get_final_query(self):

        print ("The index", self.__index)
        print ("The fil", self.__field_list)
        print ("The options", self.__options)
        print ("The query", self.__cond_query_template)
        print ("The snippett", self.__snippet_template)
        self.__main_query_template = self.__main_query_template.format(fields=self.__field_list,
                                                                       snippet=self.__snippet_template,
                                          index=self.__index, cond=self.__cond_query_template,
                                          options=self.__options)+";show meta;"
        return self.__main_query_template

    def execute(self, is_ex_match=False, has_meta=True):

        obj_sphinx_connector = SphinxconnectorCreator()
        sphinx_con = obj_sphinx_connector.sphinx_connector.get_connection()
        sphinx_cursor = sphinx_con.cursor()
        print ("The resultant", self.__main_query_template)
        result_dict = {}
        sphinx_cursor.execute(self.__main_query_template)
        result_dict['result'] = sphinx_cursor.fetchall()
        if has_meta:
            meta_details = ""
            sphinx_cursor.nextset()
            result_dict['meta'] = sphinx_cursor.fetchall()
            print("The meta Details", result_dict['meta'])

        obj_sphinx_connector.sphinx_connector.put_connection(sphinx_con)
        return result_dict

