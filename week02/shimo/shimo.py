#! /usr/bin/env python3
# _*_ coding: utf-8 _*_

from selenium import webdriver
import time
import requests
from fake_useragent import UserAgent
import json


def shimo_request():
    ua = UserAgent(verify_ssl=False)
    headers = {
        'User-Agent': ua.random,
        'Referer': 'https://shimo.im/login?from=home',
        'x-requested-with':'XmlHttpRequest',
        'x-source':'lizard-desktop'
    }

    s = requests.Session()
    page_login_url = 'https://shimo.im/login?from=home'
    # 会话对象：在同一个 Session 实例发出的所有请求之间保持 cookie，
    # 期间使用 urllib3 的 connection pooling 功能。
    # 向同一主机发送多个请求，底层的 TCP 连接将会被重用，从而带来显著的性能提升。
    api_login_url = 'https://shimo.im/lizard-api/auth/password/login'
    form_data = {
        'mobile': '+861368173xxxx',
        'password': 'pwd123321'
    }
    # pre_login = 'https://accounts.douban.com/passport/login'
    # pre_resp = s.get(pre_login, headers=headers)
    # print(f'pre_resp->{pre_resp.text}')
    response = s.post(api_login_url,data=form_data,headers=headers,cookies=s.cookies)
    print(f'response->{response}')
    # print('response->{response.json()}')


def shimo_webdriver():
    try:
        browser = webdriver.Chrome()
        # browser = webdriver.Firefox()
        browser.get('https://shimo.im/login?from=home')
        time.sleep(3)
        browser.find_element_by_xpath('//*[@name="mobileOrEmail"]').send_keys('1368173xxxx')
        browser.find_element_by_xpath('//*[@name="password"]').send_keys('pwd123321')
        time.sleep(3)
        browser.find_element_by_xpath('//button[contains(@class,"sm-button submit")]').click()

        cookies = browser.get_cookies()  # 获取cookies
        print(f'cookies-> {cookies}')
        time.sleep(3)
        browser.find_element_by_xpath('//a[@href="/inbox"]').click()
        time.sleep(5)

    except Exception as ex:
        print(f'ex-> {ex}')
    finally:
        browser.close()


if __name__ == '__main__':
    shimo_webdriver()
    # shimo_request()
