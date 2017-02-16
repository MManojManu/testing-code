from __future__ import unicode_literals
from __future__ import print_function
from collections import deque
import MySQLdb


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
        self.sphinx_connector = Connector(host="127.0.1.1", port=9316, options={})

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

        limit = "limit 100"
        final_query = self.query.format(fields=fields, match=from_match, limit=limit)

        return final_query


class Search(object):

    def process(self):
        obj_query = CreateQuery()
        obj_search = SphinxRecord()

        search_keyword = raw_input("Enter the Search keyword ")

        final_query = obj_query.get_final_query(search_keyword)
        sphinx_details = obj_search.get_sphinx_record(final_query)

        if not sphinx_details:
            print("No Records Found!!")
        else:
            print("Title\t\t\t\t\t\t\tPublished Date\t\t\tNewsType\t\t\tLocation\t\t\t\tSource\t\t\t\tAuthor"
                  "\t\t\t\tcontent")
            print("---------------------\t------------------\t------------------"
                  "\t------------------\t---------------------\t-----------------------\t"
                  "------------------------")
            for details in sphinx_details:
                article_title = details[1]
                published_date = details[2]
                resolved_news_type = details[3]
                resolved_location_name = details[4]
                content = details[5]
                source_name = details[6]
                author_name = details[7]
                print("%s\t\t%s\t\t%s\t\t\t%s\t\t\t\t%s\t\t\t%s\t\t\t\t%s"
                      % (article_title, published_date, resolved_news_type, resolved_location_name,
                         source_name, author_name, content))


search = Search()
search.process()
