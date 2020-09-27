# -*- coding: utf-8 -*-
import scrapy
# from bs4 import BeautifulSoup
from doubanmovie.items import DoubanmovieItem
from scrapy.selector  import Selector
from scrapy.cmdline import execute
import os


class DoubanSpider(scrapy.Spider):
    name = 'douban'
    allowed_domains = ['movie.douban.com']
    start_urls = ['http://movie.douban.com/']

  
    # def parse(self, response):
    #     pass

    def start_requests(self):
        for i in range(0,10):
            # i = 0
            url = f'https://movie.douban.com/subject/30170448/reviews?start={i*20}'
            yield scrapy.Request(url=url, callback=self.parse, dont_filter=False)
        # return super().start_requests()

    def parse(self, response):
        reviewlist = Selector(response=response).xpath('//div[@class="main review-item"]')
        # print(f"review-list-> {reviewlist}")
        items = []
        for item in reviewlist:
            ditem = DoubanmovieItem()
            # print(f"item-> {item}")
            avatorimgurl = item.xpath('./header/a/img/@src').extract()[0]
            username = item.xpath('./header/a[2]/text()').extract()[0]
            starlevel = item.xpath('./header/span[1]/@title').extract()[0]
            createdon = item.xpath('./header/span[2]/text()').extract()[0]
            reviewtitle = item.xpath('./div/h2/a/text()').extract()[0]
            reviewshorts = item.xpath('./div/div/div[@class="short-content"]/text()').extract()
            reviewshort = ""
            if len(reviewshorts) > 0:
                for i in range(0,len(reviewshorts)):
                    value = reviewshorts[i].replace('&nbsp;(','').replace('\n', '').replace('(', '').strip()
                    if len(value) > 1:
                        # print(f"短评-> {value}")
                        reviewshort = value
                        ditem['reviewtitle'] = reviewshort
            # print(f"username-> {username}")
            # print(f"avatorimg-> {avatorimgurl}")
            # print(f"starlevel-> {starlevel}")
            # print(f"createdon-> {createdon}")
            # print(f"reviewtitle-> {reviewtitle}")
            # print(f"reviewshort-> {reviewshort}")
            spoilertip = ""
            ditem['spoilertip'] = spoilertip
            ditem['username'] =  username
            ditem['avatorimgurl'] = avatorimgurl
            ditem['createdon'] = createdon
            ditem['starlevel'] = starlevel
            ditem['reviewtitle'] = reviewtitle
            ditem['reviewshort'] = reviewshort

            items.append(ditem)

            print('======')
        return items
            # print(title.extract())
            # print(link.extract())
            # print(title.extract_first())
            # print(link.extract_first())
            # print(title.extract_first().strip())
            # print(link.extract_first().strip())
            # print(item)
            # yield  scrapy.Request(url=link,meta={'item':item},callback=self.parse2)
    

