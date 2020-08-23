#!/usr/bin/python
# -*- coding: UTF-8 -*-
import requests
from bs4 import BeautifulSoup as bs
import lxml.etree
import pandas
import random
import os

homepath = os.path.expandvars('$HOME')
curpath = os.getcwd()  # 获取当前路径

def start():
    # 按评价排序
    url = 'https://maoyan.com/films?showType=3&sortId=3'

    USER_AGENT_LIST = [
        'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'
        "Mozilla/5.0 (Windows NT 6.2) AppleWebKit/536.3 (KHTML, like Gecko) Chrome/19.0.1062.0 Safari/536.3",
        "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/536.3 (KHTML, like Gecko) Chrome/19.0.1062.0 Safari/536.3",
        "Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; 360SE)",
        "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/536.3 (KHTML, like Gecko) Chrome/19.0.1061.1 Safari/536.3",
        "Mozilla/5.0 (Windows NT 6.1) AppleWebKit/536.3 (KHTML, like Gecko) Chrome/19.0.1061.1 Safari/536.3",
        "Mozilla/5.0 (Windows NT 6.2) AppleWebKit/536.3 (KHTML, like Gecko) Chrome/19.0.1061.0 Safari/536.3",
        "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/535.24 (KHTML, like Gecko) Chrome/19.0.1055.1 Safari/535.24",
        "Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/535.24 (KHTML, like Gecko) Chrome/19.0.1055.1 Safari/535.24",
        'Mozilla/5.0(Macintosh;IntelMacOSX10_15_1) AppleWebKit/537.36(KHTML,likeGecko)Chrome/78.0.3904.108Safari/537.36',
        'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 YaBrowser/19.7.0.1635 Yowser/2.5 Safari/537.36',
        'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36'
    ]
    # user_agent = random.choice(USER_AGENT_LIST)
    # user_agent = 'Mozilla/5.0(Macintosh;IntelMacOSX10_15_1) AppleWebKit/537.36(KHTML,likeGecko)Chrome/78.0.3904.108Safari/537.36'
    user_agent="Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36"
    header = {}
    header['user-agent'] = user_agent
    # header["Referer"] = "https://maoyan.com/films?showType=3&sortId=2"
    header["Cookie"] = '__mta=209654317.1598019559486.1598023920578.1598023933018.7; uuid_n_v=v1; uuid=4C49A090E3B911EAA157CB0983A956359F9DF3EF41D2445FA5474403C3D81F62; _csrf=5f0729c3e71e2ce12d4ebf09e0475cda6fec890895d28c6780a2acb86704e87a; Hm_lvt_703e94591e87be68cc8da0da7cbd0be2=1598019559; mojo-uuid=73f646aee21ff5a3cdb6e706b75b3902; _lxsdk_cuid=17411635f0ac8-04705937dcf9d7-31647305-1ea000-17411635f0ac8; _lxsdk=4C49A090E3B911EAA157CB0983A956359F9DF3EF41D2445FA5474403C3D81F62; mojo-session-id={"id":"c7aaa4af743bbfe52d3b77db03671110","time":1598169664162}; mojo-trace-id=3; Hm_lpvt_703e94591e87be68cc8da0da7cbd0be2=1598169670; __mta=209654317.1598019559486.1598023933018.1598169670318.8; _lxsdk_s=1741a55cf00-9d8-390-2ef%7C%7C6'

    #===本地文件调试===
    # # file = '/maoyan.html'
    # file = '/week01/maoyan.html'
    # # a_path = os.path.join(path, "b_file/a.txt")
    # #tree = html.parse(file)
    # #使用open函数打开文件
    # # config_path = homepath+"/k8s/kubeconfig.yaml"
    # htmlfile = open(curpath+file, 'r', encoding='utf-8')
    # #读取html的句柄内容
    # htmlhandle = htmlfile.read()
    # #使用Beautifulsoup解析
    # bs_info = bs(htmlhandle, features='lxml')
    # print(f"bs_info-> {bs_info}")
    # if 200 == 200:
    #===本地文件调试===
    response = requests.get(url, headers=header)
    # print(f"response-> {response.text}")
    bs_info = bs(response.text, 'html.parser')
    # print(f"bs_info-> {bs_info}")
    if response.status_code == 200:
        ttags =  bs_info.find_all('div', attrs={'class': 'movie-hover-info'})
        # print(ttags)
        # for tags in bs_info.find_all('div', attrs={'class': 'movie-hover-info'}):
        for index in range(0,10):
            tags = ttags[index]
            divs = tags.find_all('div', attrs={'class': 'movie-hover-title'})
            for i in range(0, len(divs)):
                subDiv = divs[i]
                if i == 0:
                    movie_name = subDiv.find('span', attrs={'class': 'name'}).text
                    for score in subDiv.find_all('span', attrs={'class': 'score channel-detail-orange'}):
                        minteger = score.find('i', attrs={'class': 'integer'}).text
                        mfraction = score.find('i', attrs={'class': 'fraction'}).text
                        # print(f"评分-> {minteger}{mfraction}")
                elif i == 1:
                    # movie_tpye = subDiv.text.strip().replace('\n', '').replace('\r', '').replace(' ', '')
                    # print(f"类型->{movie_tpye}")
                    movie_tpye2 =  subDiv.contents[2].strip()
                elif i == 3:
                    # dt = subDiv.text.strip().replace('\n', '').replace('\r', '').replace(' ', '')
                    dt2 = subDiv.contents[2].strip()
            print(f"名称: {movie_name} | 类型: {movie_tpye2} | 上映时间: {dt2}")
            output = f'{movie_name} | {movie_tpye2} | {dt2} \n\n'
            with open('maoyan_movie1.csv', 'a+', encoding='utf-8') as article:
                article.write(output)

if __name__ == "__main__":
    # pass
    start()
