# -*- coding: utf-8 -*-

# Scrapy settings for maoyanmovie project
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


BOT_NAME = 'maoyanmovie'

SPIDER_MODULES = ['maoyanmovie.spiders']
NEWSPIDER_MODULE = 'maoyanmovie.spiders'


# Crawl responsibly by identifying yourself (and your website) on the user-agent
#USER_AGENT = 'maoyanmovie (+http://www.yourdomain.com)'
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
RANDOMIZE_DOWNLOAD_DELAY=True


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

# Disable Telnet Console (enabled by default)
#TELNETCONSOLE_ENABLED = False
cookie = '__mta=209654317.1598019559486.1598023920578.1598023933018.7; uuid_n_v=v1; uuid=4C49A090E3B911EAA157CB0983A956359F9DF3EF41D2445FA5474403C3D81F62; _csrf=5f0729c3e71e2ce12d4ebf09e0475cda6fec890895d28c6780a2acb86704e87a; Hm_lvt_703e94591e87be68cc8da0da7cbd0be2=1598019559; mojo-uuid=73f646aee21ff5a3cdb6e706b75b3902; _lxsdk_cuid=17411635f0ac8-04705937dcf9d7-31647305-1ea000-17411635f0ac8; _lxsdk=4C49A090E3B911EAA157CB0983A956359F9DF3EF41D2445FA5474403C3D81F62; mojo-session-id={"id":"8ded96285dd303670d2893917e4b1afb","time":1598968636100}; mojo-trace-id=1; Hm_lpvt_703e94591e87be68cc8da0da7cbd0be2=1598968637; __mta=209654317.1598019559486.1598023933018.1598968639968.8; _lxsdk_s=17449f53091-6b3-fa7-9ff%7C%7C2'

# Override the default request headers:
DEFAULT_REQUEST_HEADERS = {
  'Accept': 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9',
  'Accept-Language': 'en-US,en;q=0.9,zh-CN;q=0.8,zh;q=0.7',
  'Accept-Encoding': 'gzip, deflate, br',
  'Cookie': cookie,
  'User-Agent': USER_AGENT,
  'Referer': 'https://maoyan.com/films'
}

# Enable or disable spider middlewares
# See https://docs.scrapy.org/en/latest/topics/spider-middleware.html
#SPIDER_MIDDLEWARES = {
#    'maoyanmovie.middlewares.MaoyanmovieSpiderMiddleware': 543,
#}

# Enable or disable downloader middlewares
# See https://docs.scrapy.org/en/latest/topics/downloader-middleware.html
#DOWNLOADER_MIDDLEWARES = {
#    'maoyanmovie.middlewares.MaoyanmovieDownloaderMiddleware': 543,
#}

DOWNLOADER_MIDDLEWARES = {
    'maoyanmovie.middlewares.MaoyanmovieDownloaderMiddleware': 543,
    'scrapy.downloadermiddlewares.httpproxy.HttpProxyMiddleware': None,
    'scrapy.downloadermiddlewares.useragent.UserAgentMiddleware': None,
    'maoyanmovie.middlewares.RandomHttpProxyMiddleware': 400,
    'maoyanmovie.middlewares.FaildRetryMiddleware': 220,
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
   'maoyanmovie.pipelines.MaoyanmoviePipeline': 300,
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
    'db' : 'smartx_test',
    'charset' : 'utf8mb4'
}