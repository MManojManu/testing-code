from __future__ import print_function
from utils_sphinx_connector import Connector


class FacetConnectorCreator(object):

    def __init__(self):
        self.sphinx_connector = Connector(host="127.0.0.1", port=9306, options={})

    def execute_facet(self, final_query):
        obj_sphinx_connector = FacetConnectorCreator()
        sphinx_con = obj_sphinx_connector.sphinx_connector.get_connection()
        sphinx_cursor = sphinx_con.cursor()

        sphinx_cursor.execute(final_query)
        result_dict = {}

        result_dict['facet_id'] = sphinx_cursor.fetchall()
        print("The Facet ID ", result_dict['facet_id'])

        sphinx_cursor.nextset()
        result_dict['location'] = sphinx_cursor.fetchall()
        print("The Facet meta Details", result_dict['location'])
        sphinx_cursor.nextset()
        result_dict['source'] = sphinx_cursor.fetchall()
        print("Source Dictionary", result_dict['source'])
        sphinx_cursor.nextset()
        result_dict['newstype'] = sphinx_cursor.fetchall()
        print("NEWSTYPE Dictionary", result_dict['newstype'])

        obj_sphinx_connector.sphinx_connector.put_connection(sphinx_con)
        return result_dict
