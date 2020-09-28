学习笔记


https://github.com/Python003-003/Python003-003/issues/9

https://github.com/linglong117/Python003-003/tree/master/week06


#学号: G20200389040094
#姓名: 谢义龙
#班级: 1 班
#小组: 5 组
#作业&总结链接: https://github.com/linglong117/Python003-003/tree/master/week06


## 作业背景

数据经过分析和清洗之后，需要使用适当的方式对数据进行展示，Web 就是当前最流行的展示方式之一。

## 作业要求

使用 息Django 展示豆瓣电影中某个电影的短评和星级等相关信：

要求使用 MySQL 存储短评内容（至少 20 条）以及短评所对应的星级；
展示高于 3 星级（不包括 3 星级）的短评内容和它对应的星级；
（选做）在 Web 界面增加搜索框，根据搜索的关键字展示相关的短评。
注意

如果你对前端相关的技术不太熟悉，我们在页面下方提供了前端模版（frontend.zip 文件），可以直接在作业中使用。

### 复习scrapy：

1 pip install scrapy
2 scrapy startproject doubanmovie
3 cd ./doubanmovie/doubanmovie/spiders
4 scrapy genspider douban movie.douban.com
5 scrapy crawl douban
6 scrapy crawl douban  --nolog

## django 练习
django-admin startproject MyDjango   

python manage.py startapp index
python manage.py startapp Douban

python manage.py inspectdb  生成 models
运行
python manage.py runserver 0.0.0.0:8090
支持搜索条件：评论人 | 评论标题 |  评论内容

### 问题
chrome 浏览器下样式 navbar navbar-dark bg-dark 样式未生效
chrome 提示找不到 maps 文件

加载 jquery.slim.min.js 时提示 jquery 版本不对要小于 3，有点奇怪直接直接打开老师文件夹下的 index.html 样式 js 都能加载；集成到 django 就不行了；
重新下载了 https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js
根据关键搜索后页面列表样式有问题；


## 数据库操作
MyDjango/Douban/douban.sql 为数据库导出文件（表结构+数据）

## 引入 snowflake 生成 guid ->movieid
 mac运行 snowflake_start_server


