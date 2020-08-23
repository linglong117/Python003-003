# -*- coding: utf-8 -*-

# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: https://docs.scrapy.org/en/latest/topics/item-pipeline.html


class MaoyanmoviePipeline:
    def process_item(self, item, spider):
        mname = item['mname']
        mtype = item['mtype']
        mdatetime = item['mdatetime']
        # output = f'电影名称：{mname} | 电影类型：{mtype} | 上映时间：{mdatetime}\n'
        output = f'{mname} | {mtype} | {mdatetime}\n'
        # print(f"output-> {output}")
        with open('./maoyanmovie2.csv', 'a+', encoding='utf-8') as article: article.write(output)
        return item
