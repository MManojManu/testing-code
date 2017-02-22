from __future__ import print_function
from utils_sphinx_connector import Connector
from facets import FacetConnectorCreator


class SphinxConnectorCreator(object):

    def __init__(self):
        self.sphinx_connector = Connector(host="127.0.0.1", port=9306, options={})


class SphinxResult(object):

    def __init__(self, index):
        self.__main_query_template = "SELECT {fields} FROM {index} {cond} {facets} {options}"
        self.__cond_query_template = " WHERE {where_con} "
        self.__snippet_template = "SNIPPET({field}, '{key_word}', 'LIMIT={limit}') as {field}_snippet"
        self.__facet_location_template = "AND {field} IN {options}"
        self.__facet_source_template = "AND {field} IN {options}"
        self.__facet_newstype_template = "AND {field} IN {options}"
        self.__index = index
        self.__search_query = None
        self.__field_list = []
        self.__snippet_field_list = []
        self.__facet_location_list = []
        self.__facet_source_list = []
        self.__facet_newstype_list = []
        self.__construct_query = None
        self.__options = None

    def set_query_string(self, key_word):
        self.__search_query = key_word

    def set_location_list(self, facet_keyword_list):
        assert isinstance(facet_keyword_list, list)
        self.__facet_location_list.extend(facet_keyword_list)

    def set_source_list(self, facet_source_list):
        assert isinstance(facet_source_list, list)
        self.__facet_source_list.extend(facet_source_list)

    def set_newstype_list(self, newstype_list):
        assert isinstance(newstype_list, list)
        self.__facet_newstype_list.extend(newstype_list)

    def set_field_list(self, field_list):
        assert isinstance(field_list, list)
        self.__field_list.extend(field_list)

    def set_snippet_field_list(self, snippet_list):
        assert isinstance(snippet_list, list)
        self.__snippet_field_list.extend(snippet_list)

    def __get_snippet_query_list(self, limit=300):
        if self.__search_query is None:
            raise NotImplementedError("Query should not be empty. "
                                      "call set_query_string to set search keyword first.")
        snippet_query_list = []
        for field in self.__snippet_field_list:
            s = self.__snippet_template.format(field=field, key_word=self.__search_query, limit=limit)
            snippet_query_list.append(s)
        return snippet_query_list

    def get_exact_query(self, search):
        pk = int(search)
        where_con = "id = %s" % pk
        self.__cond_query_template = self.__cond_query_template.format(where_con=where_con)
        self.__snippet_template = ""

    def __get_facet_location_query(self):
        facet_query_list = []
        print ("Query ", self.__facet_location_list)
        for keyword in self.__facet_location_list:
            facet = keyword
            facet_query_list.append(facet)
        print (facet_query_list)
        return facet_query_list

    def __get_facet_source_query(self):
        facet_source_query_list = []
        print ("Query ", self.__facet_source_list)
        for keyword in self.__facet_source_list:
            facet = keyword
            facet_source_query_list.append(facet)
        print ("The Facet", facet_source_query_list)
        return facet_source_query_list

    def __get_facet_newstype_query(self):
        facet_newstype_query_list = []
        print ("Query ", self.__facet_newstype_list)
        for keyword in self.__facet_source_list:
            facet = keyword
            facet_newstype_query_list.append(facet)
        print ("The source",facet_newstype_query_list)
        return facet_newstype_query_list

    def __get_match_query(self):
        if self.__search_query is None:
            raise NotImplementedError("Query should not be empty. "
                                      "call set_query_string to set search keyword first.")

        where_con = "MATCH('%s')" % self.__search_query

        self.__cond_query_template = self.__cond_query_template.format(where_con=where_con)
        return self

    def set_options(self, field, **options):
        if options['limit']:
            limit = "LIMIT %s" % options['limit']
        else:
            limit = ""
        if options['order']:
            order = "ORDER BY %s " % field + " %s " % options['order']
        else:
            order = ""
        self.__options = order + limit

    def __get_final_query(self, is_ex_match, has_meta):

        print ("The index    ", self.__index)
        print ("The query    ", self.__cond_query_template)
        print ("The snippett ", self.__snippet_template)
        print("The options   ", self.__options)

        field = "".join(self.__field_list)
        facets = ""
        location_facet = ""
        source_facet = ""
        if self.__facet_source_list:
            source_field = "source_name"
            source = "(" + ','.join("'" + item + "'" for item in self.__facet_source_list) + ")"
            source_facet = self.__facet_location_template.format(field=source_field, options=source)

        if self.__facet_location_list:
            fields = "resolved_location_name"
            location = "(" + ','.join("'" + item + "'" for item in self.__facet_location_list) + ")"
            location_facet = self.__facet_location_template.format(field=fields, options=location)

        if source_facet and location_facet:
            facets = source_facet + location_facet
        elif source_facet:
            facets = source_facet
        else:
            facets = location_facet

        if self.__snippet_field_list:
            snippet = ", ".join(self.__get_snippet_query_list())
            fields = "{fields}, {snippet}".format(fields=field, snippet=snippet)
        if is_ex_match:
            fields = "{fields} {snippet}".format(fields=field, snippet="")

        print ("The Fields  ", fields)

        query = self.__main_query_template.format(fields=fields, index=self.__index,
                                                  cond=self.__cond_query_template,
                                                  facets=facets, options=self.__options)
        if has_meta:
            query += "; SHOW META;"
        return query

    def execute(self, is_ex_match=False, has_meta=True):
        a = self.__get_facet_location_query()
        obj_sphinx_connector = SphinxConnectorCreator()
        sphinx_con = obj_sphinx_connector.sphinx_connector.get_connection()
        sphinx_cursor = sphinx_con.cursor()
        self.__get_match_query()
        result_dict = {}
        query = self.__get_final_query(is_ex_match, has_meta)
        print(query)
        sphinx_cursor.execute(query)
        result_dict['result'] = sphinx_cursor.fetchall()
        print ("The value", has_meta)
        if has_meta:
            sphinx_cursor.nextset()
            result_dict['meta'] = sphinx_cursor.fetchall()
            print("The meta Details", result_dict['meta'])

        obj_sphinx_connector.sphinx_connector.put_connection(sphinx_con)
        return result_dict

    def get_facet_record(self):
        q = FacetConnectorCreator()

        final_query = "SELECT id FROM newsdb where match('%s') LIMIT 0,10 FACET resolved_location_name " \
                      "FACET source_name FACET resolved_news_type_name;" \
                      % self.__search_query
        print("FACET QUERY : %s" % final_query)
        result = q.execute_facet(final_query)

        return result




