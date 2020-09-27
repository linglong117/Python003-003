# -*- coding: utf-8 -*-

# Scrapy settings for doubanmovie project
#
# For simplicity, this file contains only settings considered important or
# commonly used. You can find more settings consulting the documentation:
#
#     https://docs.scrapy.org/en/latest/topics/settings.html
#     https://docs.scrapy.org/en/latest/topics/downloader-middleware.html
#     https://docs.scrapy.org/en/latest/topics/spider-middleware.html

from fake_useragent import UserAgent
import time

ua = UserAgent(verify_ssl=False)


BOT_NAME = 'doubanmovie'

SPIDER_MODULES = ['doubanmovie.spiders']
NEWSPIDER_MODULE = 'doubanmovie.spiders'


# Crawl responsibly by identifying yourself (and your website) on the user-agent
#USER_AGENT = 'doubanmovie (+http://www.yourdomain.com)'
USER_AGENT_LIST=[
'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'
    "Mozilla/5.0 (Windows NT 6.2) AppleWebKit/536.3 (KHTML, like Gecko) Chrome/19.0.1062.0 Safari/536.3",
    "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/536.3 (KHTML, like Gecko) Chrome/19.0.1062.0 Safari/536.3",
    "Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; 360SE)",
    "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/536.3 (KHTML, like Gecko) Chrome/19.0.1061.1 Safari/536.3",
    "Mozilla/5.0 (Windows NT 6.1) AppleWebKit/536.3 (KHTML, like Gecko) Chrome/19.0.1061.1 Safari/536.3",
    "Mozilla/5.0 (Windows NT 6.2) AppleWebKit/536.3 (KHTML, like Gecko) Chrome/19.0.1061.0 Safari/536.3",
    "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/535.24 (KHTML, like Gecko) Chrome/19.0.1055.1 Safari/535.24",
    "Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/535.24 (KHTML, like Gecko) Chrome/19.0.1055.1 Safari/535.24",
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36",
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36"
]
import random
# USER_AGENT = random.choice(USER_AGENT_LIST)
USER_AGENT = ua.random
print(f'user-agent-> {USER_AGENT}')


# Obey robots.txt rules
ROBOTSTXT_OBEY = True

# Configure maximum concurrent requests performed by Scrapy (default: 16)
#CONCURRENT_REQUESTS = 32

# Configure a delay for requests for the same website (default: 0)
# See https://docs.scrapy.org/en/latest/topics/settings.html#download-delay
# See also autothrottle settings and docs
#DOWNLOAD_DELAY = 3
# The download delay setting will honor only one of:
#CONCURRENT_REQUESTS_PER_DOMAIN = 16
#CONCURRENT_REQUESTS_PER_IP = 16

# Disable cookies (enabled by default)
#COOKIES_ENABLED = False

cookie = 'bid=C9RSEkGXvxc; __utmc=30149280; __gads=ID=e925f058ff54f733:T=1597735399:S=ALNI_MZrwRx4DUDjNevyokEJHaeXaWCnNg; ll="108296"; _vwo_uuid_v2=DFBAE86141E04599B755246A5CC417475|eedae13974be523a84bff8b59f35c351; douban-fav-remind=1; push_doumail_num=0; __utmv=30149280.444; douban-profile-remind=1; dbcl2="4442217:6vyUNbSfW2k"; ck=FhU9; __utmz=30149280.1598798914.22.3.utmcsr=accounts.douban.com|utmccn=(referral)|utmcmd=referral|utmcct=/passport/login_popup; frodotk="81fa12f3a6def6d785ee38daf49ce485"; push_noty_num=0; RT=r=https%3A%2F%2Fmovie.douban.com%2Ftop250&ul=1601184208798&hd=1601184209132; ap_v=0,6.0; __utma=30149280.1791384309.1597735396.1601169732.1601184210.26; __utmb=30149280.0.10.1601184210'

# Disable Telnet Console (enabled by default)
#TELNETCONSOLE_ENABLED = False

# Override the default request headers:
#DEFAULT_REQUEST_HEADERS = {
#   'Accept': 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8',
#   'Accept-Language': 'en',
#}

DEFAULT_REQUEST_HEADERS = {
  'Accept': 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9',
  'Accept-Language': 'en-US,en;q=0.9,zh-CN;q=0.8,zh;q=0.7',
  'Accept-Encoding': 'gzip, deflate, br',
  'Cookie': cookie,
  'User-Agent': USER_AGENT,
#   'Referer': 'https://maoyan.com/films'
}

# Enable or disable spider middlewares
# See https://docs.scrapy.org/en/latest/topics/spider-middleware.html
#SPIDER_MIDDLEWARES = {
#    'doubanmovie.middlewares.DoubanmovieSpiderMiddleware': 543,
#}

# Enable or disable downloader middlewares
# See https://docs.scrapy.org/en/latest/topics/downloader-middleware.html
#DOWNLOADER_MIDDLEWARES = {
#    'doubanmovie.middlewares.DoubanmovieDownloaderMiddleware': 543,
#}


DOWNLOADER_MIDDLEWARES = {
    'doubanmovie.middlewares.DoubanmovieDownloaderMiddleware': 543,
    'scrapy.downloadermiddlewares.httpproxy.HttpProxyMiddleware': None,
    'scrapy.downloadermiddlewares.useragent.UserAgentMiddleware': None,
    'doubanmovie.middlewares.RandomHttpProxyMiddleware': 400,
    'doubanmovie.middlewares.FaildRetryMiddleware': 220,
}

# https://github.com/clarketm/proxy-list

HTTP_PROXY_LIST = [
     'http://51.77.159.90:80',
     'http://92.119.222.1:8080',
     'http://200.54.247.98:8080',
     'http://181.191.250.45:8080',
     'http://140.0.70.7:8080',
     'http://118.175.93.103:48214',
     'http://152.231.25.213:8080',
     'http://119.42.115.254:8080',
     'http://202.138.248.187:8080'
]

# Enable or disable extensions
# See https://docs.scrapy.org/en/latest/topics/extensions.html
#EXTENSIONS = {
#    'scrapy.extensions.telnet.TelnetConsole': None,
#}

# Configure item pipelines
# See https://docs.scrapy.org/en/latest/topics/item-pipeline.html
ITEM_PIPELINES = {
   'doubanmovie.pipelines.DoubanmoviePipeline': 300,
}

# Enable and configure the AutoThrottle extension (disabled by default)
# See https://docs.scrapy.org/en/latest/topics/autothrottle.html
#AUTOTHROTTLE_ENABLED = True
# The initial download delay
#AUTOTHROTTLE_START_DELAY = 5
# The maximum download delay to be set in case of high latencies
#AUTOTHROTTLE_MAX_DELAY = 60
# The average number of requests Scrapy should be sending in parallel to
# each remote server
#AUTOTHROTTLE_TARGET_CONCURRENCY = 1.0
# Enable showing throttling stats for every response received:
#AUTOTHROTTLE_DEBUG = False

# Enable and configure HTTP caching (disabled by default)
# See https://docs.scrapy.org/en/latest/topics/downloader-middleware.html#httpcache-middleware-settings
#HTTPCACHE_ENABLED = True
#HTTPCACHE_EXPIRATION_SECS = 0
#HTTPCACHE_DIR = 'httpcache'
#HTTPCACHE_IGNORE_HTTP_CODES = []
#HTTPCACHE_STORAGE = 'scrapy.extensions.httpcache.FilesystemCacheStorage'

DBINFO = {
    'host' : 'localhost',
    'port' : 3306,
    'user' : 'ealingxx',
    'password' : 'pwd123_321',
    'db' : 'douban',
    'charset' : 'utf8mb4'
}