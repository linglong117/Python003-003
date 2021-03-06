# -*- coding: utf-8 -*-
import scrapy
# from bs4 import BeautifulSoup 
from maoyanmovie.items import MaoyanmovieItem
from scrapy.selector  import Selector
from scrapy.cmdline import execute
import os

curpath = os.getcwd()  # 获取当前路径

print(f'htmlpath-> {curpath}')

class MaoyanSpider(scrapy.Spider):
    name = 'maoyan'
    allowed_domains = ['maoyan.com']
    # start_urls = ['http://maoyan.com/']
    start_urls = ['https://maoyan.com/films?showType=3&sortId=3']
    file = '/week01/maoyan.html'
    # htmlfile = open(curpath+file, 'r', encoding='utf-8')

    def start_requests(self):
        i = 0
        # filePath = "file:///Users/eventworld/mbyte/gitcode/geekbang/Python003-003/week01/maoyan.html"
        filePath = "file:///Users/eventworld/mbyte/gitcode/geekbang/Python003-003-local/week02/maoyan.html"

        # yield scrapy.Request(url=filePath, callback=self.parse, dont_filter=False)
        url = f'https://maoyan.com/films?showType=3&sortId=3'
        yield scrapy.Request(url=url, callback=self.parse, dont_filter=False)
        # yield scrapy.Request(url=filePath, callback=self.parse, dont_filter=False)
        # yield scrapy.Request(url, headers=headers, meta={"proxy":""},callback=self.parse)

    def parse(self, response):
         # pass
        # print(f"response->{response}")
        movies = Selector(response=response).xpath('//div[@class="movie-hover-info"]')
        # print(f"movies->{movies}")
        items = []
        # for movie in movies:
        for index in range(0,10):
            item = MaoyanmovieItem()
            movie = movies[index]
            # print(f"movie->{movie}")
            title = movie.xpath('./div/span/text()')
            mtype = movie.xpath('./div[2]/text()')
            mdt = movie.xpath('./div[4]/text()')
            mName = title.extract_first().strip()
            mmtype = mtype.extract()[1].strip()
            mmdt = mdt.extract()[1].strip()
            # print(f'电影名称：{mName} | 电影类型：{mmtype} | 上映时间：{mmdt}')
            item['mname'] = mName
            item['mtype'] = mmtype
            item['mdatetime'] = mmdt
            items.append(item)
        return items
        # for movie in movies:
        #     div_titles = movie.xpath('./div')
        #     movie_name = div_titles[0].xpath('./@title').extract_first().strip()
        #     movie_type = div_titles[1].xpath('./text()').extract()[1].strip()
        #     movie_release_time = div_titles[3].xpath('./text()').extract()[1].strip()
        #     # ====
        #     print(f'电影名称：{movie_name} | 电影类型：{movie_type} | 上映时间：{movie_release_time}')
        #     item = MaoyanmovieItem()
        #     item['movie_name'] = movie_name
        #     item['movie_type'] = movie_type
        #     item['movie_release_time'] = movie_release_time
        #     # yield item
        #     items.append(item)
        # return items