# -*- coding: utf-8 -*-

# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: https://docs.scrapy.org/en/latest/topics/item-pipeline.html
import pymysql     # 导入pymysql


class MaoyanmoviePipeline:

    def __init__(self):
        print("===数据库连接===")
        self.conn = pymysql.connect(host = 'localhost',
                       port = 3306,
                       user = '@smx123',
                       password = 'pwd123_321',
                       database = 'smartx_test',
                       charset = 'utf8mb4'
                        )
        # 获得cursor游标对象
        self.cur = self.conn.cursor()

    # https://docs.scrapy.org/en/latest/topics/item-pipeline.html
    def open_spider(self, spider):
        self.file = open('./maoyanmovie2.csv', 'a', encoding='utf-8')

    def close_spider(self, spider):
        self.file.close()

    def process_item(self, item, spider):
        mname = item['mname']
        mtype = item['mtype']
        mdatetime = item['mdatetime']
        # output = f'电影名称：{mname} | 电影类型：{mtype} | 上映时间：{mdatetime}\n'
        output = f'{mname} | {mtype} | {mdatetime}\n'
        print(f"output-> {output}")
        # with open('./maoyanmovie2.csv', 'a+', encoding='utf-8') as article: article.write(output)
        self.file.write(output)
        try:
            sql = "INSERT INTO smartx_test.tbl_maoyan_movie(name,mtype,releasetime) VALUES(%s, %s, %s)"
            self.cur.execute(sql, (mname, mtype, mdatetime))
            self.conn.commit()
        except Exception as ex:
            print(f'insert error ex-> {ex}')
            conn.rollback()
        return item
    
    def close_spider(self, spider):
        self.cur.close()
        self.conn.close()
