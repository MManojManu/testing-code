from __future__ import print_function
from collections import deque
from datetime import datetime
import random
import MySQLdb


class Connector(object):
    MAX_CON = 10

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


class MySQLOperation(object):

    def __init__(self):
        self.__connection = Connector(host="localhost", port=3306,
                                      options={"user": "root", "passwd": "welcome@mis", "db": "hindu"})

    def insert(self, query, args=None):
        con = self.__connection.get_connection()
        cursor = con.cursor()

        try:
            cursor.execute(query, args or ())
            con.commit()
        except IndexError:
            print("Not Inserted Inserted Sucessfully")
            con.rollback()
        finally:
            self.__connection.put_connection(con)

    def query_execute(self, query, args=None):
        con = self.__connection.get_connection()
        cursor = con.cursor()
        cursor.execute(query, args or ())
        self.__connection.put_connection(con)
        return cursor.fetchall()


class MySQLInsertRecord(object):

    def __init__(self):
        self.__exist_unresolved_news_type = 0
        self.__exist_resolved_location = 0

    def set_article_download(self):
        obj_mysqloperation = MySQLOperation()
        sql_query = "SELECT max(id) FROM article_download"
        get_temp_unique_id = obj_mysqloperation.query_execute(sql_query)
        #set_unique_id used to create uniquely
        set_unique_id = str(get_temp_unique_id[0][0])
        original_text = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        article_download_local_file_path = '/home/mis/' + set_unique_id + '/' + \
                                           ''.join(random.choice(original_text) for _ in range(12))+".txt"
        article_download_created_date = datetime.now()
        article_download_last_updated_date = datetime.now()
        url_text = "abcdefghijklmnopqrstuvwxyz"
        article_download_url = "/http://www.thehindu.com/"+set_unique_id+'/' + \
                               ''.join(random.choice(url_text) for _ in range(12))
        unique_key = "abcdefghijklmnopqrstuvwxyz123456789"
        article_download_unique_id = set_unique_id + ''.join(random.choice(unique_key) for _ in range(4))
        article_download_is_parsed = 1

        sql_query = "INSERT INTO article_download(article_download_local_file_path, " \
                    "article_download_created_date, article_download_last_updated_date," \
                    "article_download_url, article_download_unique_id," \
                    "article_download_is_parsed)" \
                    "VALUES(%s, %s, %s, %s, %s, %s)"
        args = (article_download_local_file_path, article_download_created_date,
                article_download_last_updated_date,
                article_download_url, article_download_unique_id, article_download_is_parsed)
        obj_mysqloperation.insert(sql_query, args)

    def set_unresolved_news_type(self):
        obj_mysqloperation = MySQLOperation()
        unresolved_news_type_list = ['city', 'cities', 'news', 'fitness', 'magazine', 'science',
                                     'sports', ]
        unresolved_news_type = random.choice(unresolved_news_type_list)
        sql_query = "SELECT id FROM unresolved_news_type WHERE unresolved_news_type_name = %s"
        args = (unresolved_news_type, )
        get_id = obj_mysqloperation.query_execute(sql_query, args)
        if get_id:
            self.__exist_unresolved_news_type = get_id
        else:
            sql_query = "INSERT INTO unresolved_news_type (unresolved_news_type_name) VALUES(%s)"
            args = (unresolved_news_type,)
            obj_mysqloperation.insert(sql_query, args)

    def set_unresolved_location(self):
        obj_mysqloperation = MySQLOperation()
        unresolved_location_list = ['dk', 'udupi', 'chennai', 'cochi', 'mysore', 'aluva',
                                    'andhrapradesh', ]
        unresolved_location = random.choice(unresolved_location_list)
        sql_query = "SELECT id FROM unresolved_location WHERE unresolved_location_name = %s"
        args = (unresolved_location,)
        get_id = obj_mysqloperation.query_execute(sql_query, args)
        if get_id:
            self.__exist_resolved_location = get_id
        else:
            sql_query = "INSERT INTO unresolved_location (unresolved_location_name) VALUES(%s)"
            args = (unresolved_location,)
            obj_mysqloperation.insert(sql_query, args)

    def set_source(self):
        obj_mysqloperation = MySQLOperation()
        #source_name = "The Hindu"
        source_name = "Times of India"
        rtrn_rows = 0
        sql_query = "SELECT id FROM source"
        source_id = obj_mysqloperation.query_execute(sql_query)
        for id in source_id:
            rtrn_rows += 1
        if rtrn_rows == 0:
            sql_query = "INSERT INTO source (source_name) VALUES(%s)"
            args = (source_name, )
            obj_mysqloperation.insert(sql_query, args)

    def set_article_parsed(self):
        obj_mysqloperation = MySQLOperation()
        article_title = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        article_title = ''.join(random.choice(article_title) for _ in range(25))
        if self.__exist_unresolved_news_type == 0:
            sql_query = "SELECT max(id) FROM unresolved_news_type"
            get_unresolved_news_type_id = obj_mysqloperation.query_execute(sql_query)
            unresolved_news_type_id = int(get_unresolved_news_type_id[0][0])
        else:
            unresolved_news_type_id = self.__exist_unresolved_news_type
        publish_date_list = ['2016-03-17 5:35:19.012661', '2016-12-27 5:35:19.012661',
                             '2016-04-17 4:35:19.012661', '2016-07-17 5:35:19.012661',
                             '2016-01-17 5:35:19.012661', '2016-03-17 5:35:19.012661',
                             '2016-02-17 5:35:19.012661', '2016-08-17 5:35:19.012661']
        publish_date = random.choice(publish_date_list)
        if self.__exist_resolved_location == 0:
            sql_query = "SELECT max(id) FROM unresolved_location"
            get_unresolved_location_id = obj_mysqloperation.query_execute(sql_query)
            unresolved_location_id = int(get_unresolved_location_id[0][0])
        else:
            unresolved_location_id = self.__exist_resolved_location
        sql_query = "SELECT id FROM source"
        get_source_id = obj_mysqloperation.query_execute(sql_query)
        source_id = int(get_source_id[0][0])
        sql_query = "SELECT MAX(id) FROM article_download"
        get_article_download_id = obj_mysqloperation.query_execute(sql_query)
        article_download_id = int(get_article_download_id[0][0])
        sql_query = "INSERT INTO article_parsed (article_title, unresolved_news_type_id," \
                    "published_date, unresolved_location_id, " \
                    "source_id, article_download_id) " \
                    "VALUES(%s, %s,  %s, %s, %s, %s)"
        args = (article_title, unresolved_news_type_id, publish_date,
                unresolved_location_id, source_id, article_download_id,)
        obj_mysqloperation.insert(sql_query, args)

    def set_article_content(self):
        obj_mysqloperation = MySQLOperation()
        text = "The spot at Dadar staton where the expansion will be carried outStrip of land which " \
               "divides the Central Railway and Western Railway parts of Dadar station will be used " \
               "to lay the two new platforms.Dadar (central), one of Mumbai's busiest local stations," \
               " will soon have two more platforms, bringing huge relief to nearly 2.7 lakh commuters" \
               " who board and disembark trains here every day.A strip of land which divides the Central " \
               "and Western parts of Dadar station will be used to lay the two new platforms," \
               " one of which will be dedicated to fast trains originating here."
        content = ''.join(random.choice(text) for _ in range(30))
        sql_query = "SELECT max(id) FROM article_parsed"
        get_article_parsed_id = obj_mysqloperation.query_execute(sql_query)
        article_parsed_id = int(get_article_parsed_id[0][0])
        sql_query = "INSERT INTO article_content (article_parsed_id, content) " \
                    "VALUES(%s, %s)"
        args = (article_parsed_id, content,)
        obj_mysqloperation.insert(sql_query, args)

    def set_author(self):
        obj_mysqloperation = MySQLOperation()
        text_author = ['ram', 'sham', 'chethan', 'shankar', 'vinu', 'vamshi']
        author_name = random.choice(text_author)
        sql_query = "SELECT MAX(id) FROM article_parsed"
        get_article_parsed_id = obj_mysqloperation.query_execute(sql_query)
        article_parsed_id = int(get_article_parsed_id[0][0])
        sql_query = "INSERT INTO author (author_name, article_parsed_id) " \
                    "VALUES(%s, %s)"
        args = (author_name, article_parsed_id,)
        obj_mysqloperation.insert(sql_query, args)


class Process(object):

    def start(self):
        obj_mysql_record = MySQLInsertRecord()
        run_until = int(input("Enter the Number of Records to Inserted "))
        if run_until < 0:
            print ("Please enter a valid number")
        else:
            print ("Insertion process in Progress.....\nplease wait")
            while run_until > 0:
                obj_mysql_record.set_unresolved_news_type()
                obj_mysql_record.set_unresolved_location()
                obj_mysql_record.set_article_download()
                obj_mysql_record.set_source()
                obj_mysql_record.set_article_parsed()
                obj_mysql_record.set_article_content()
                obj_mysql_record.set_author()
                run_until -= 1

        print ("Process Completed")


obj_process = Process()
obj_process.start()
