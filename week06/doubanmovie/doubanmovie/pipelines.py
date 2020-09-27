# -*- coding: utf-8 -*-

# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: https://docs.scrapy.org/en/latest/topics/item-pipeline.html
import pymysql     # 导入pymysql


class DoubanmoviePipeline:
    # def process_item(self, item, spider):
    #     return item

    def __init__(self,db_info):
        print(f"db->{db_info}")
        self.db_info = db_info

    @classmethod
    def from_crawler(cls, crawler):
        return cls(
            db_info=crawler.settings.get('DBINFO')
        )

    def open_spider(self, spider):
        # print("===数据库连接===")
        self.conn = pymysql.connect(host = self.db_info['host'],
                       port = self.db_info['port'],
                       user = self.db_info['user'],
                       password = self.db_info['password'],
                       database = self.db_info['db'],
                       charset = self.db_info['charset']
                        )
        self.file = open('./doubanmovie.csv', 'a', encoding='utf-8')

    def close_spider(self, spider):
        self.file.close()
        self.conn.close()

    def process_item(self, item, spider):
        spoilertip = item['spoilertip']
        username = item['username']
        avatorimgurl = item['avatorimgurl']
        createdon = item['createdon']
        starlevel = item['starlevel'] 
        reviewtitle = item['reviewtitle']
        reviewshort = item['reviewshort']
        # # output = f'电影名称：{mname} | 电影类型：{mtype} | 上映时间：{mdatetime}\n'
        output = f'{username} | {reviewtitle} | {reviewshort}\n'
        print(f"output-> {output}")
        # with open('./maoyanmovie2.csv', 'a+', encoding='utf-8') as article: article.write(output)
        self.file.write(output)
        try:
            # 获得cursor游标对象
            cur = self.conn.cursor()
            sql = "INSERT INTO douban.moviereviews(movieid,username,avatorimgurl,createdon,starlevel,reviewtitle,reviewshort) VALUES(%s,%s, %s, %s,%s, %s,%s)"
            cur.execute(sql, ("4407781727800393729",username,avatorimgurl,createdon, starlevel,reviewtitle,reviewshort))
            self.conn.commit()
            cur.close()
        except Exception as ex:
            print(f'insert error ex-> {ex}')
            self.conn.rollback()

        return item
