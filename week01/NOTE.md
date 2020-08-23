学习笔记

### 配置 git-ssh 拉取代码 2020-08-17 22:31:23

### 2020-08-18 看视频教程实操 requests bs4 lxml

### 2020-08-20 倒腾虚拟环境 pipenv poetry 最后放弃继续使用 pip 安装包 vscode 调试

### scrapy安装步骤：

1 pip install scrapy
2 scrapy startproject maoyanmovie
3 cd ./maoyanmovie/maoyanmovie/spiders
4 scrapy genspider maoyan maoyan.com
5 scrapy crawl maoyan

### bs4 解析遇到的问题
```<div class="movie-hover-info">
            <div class="movie-hover-title" title="摔跤吧！爸爸" >
              <span class="name ">摔跤吧！爸爸</span>
                <span class="score channel-detail-orange"><i class="integer">9.</i><i class="fraction">8</i></span>
            </div>
            <div class="movie-hover-title" title="摔跤吧！爸爸" >
              <span class="hover-tag">类型:</span>
              喜剧／动作／家庭
            </div>
            <div class="movie-hover-title" title="摔跤吧！爸爸" >
              <span class="hover-tag">主演:</span>
              阿米尔·汗／沙克希·坦沃／法缇玛·萨那·纱卡
            </div>
            <div class="movie-hover-title movie-hover-brief" title="摔跤吧！爸爸" >
              <span class="hover-tag">上映时间:</span>
              2017-05-05
            </div>
          </div>
```

这一段 html 很容易能定位到，里面有电影名称、类型、上映日期；movie-hover-title 的列表很容易能拿到，电影名称和评分可以从第一个 div-span 下面取到；
下面 3 个 div 的格式都一样，一开始按照 

\`
for tag in tags.find\_all('div', attrs={'class': 'movie-hover-title'})
\`

不知道怎么取第一个 div 中的名称了，因为第一个 div 和其他 3 个 div 里面的格式不一样有点懵了；开始搜索 bs4的相关例子又回头看视频比较demo 中豆瓣的例子，就感觉哪里卡着了没想明白各种曲折了一个晚上；看来还是基础的东西没掌握好暂时采用了 for if的方式实现，后面学的好一点再来优化；

```
 divs = tags.find_all('div', attrs={'class': 'movie-hover-title'})
      for i in range(0, len(divs)):
          subDiv = divs[i]
           if i == 0:
              movie_name = subDiv.find('span', attrs={'class': 'name'}).text
                   
            elif i == 1:
                movie_tpye2 =  subDiv.contents[2].strip()
             elif i == 3:
				pass
```

采用scrapy来解析这段代码就非常轻松了直接  movie.xpath('./div[x]/text()') 的方式就很容易取到需要的值；
### 调试技巧
由于猫眼的反扒限制，网页经常需要滑动验证才能正常访问，爬虫的话更容易出现 403 等错误，为了调试方便，把页面源码保存到本地进行调试，功能完成后再通过设置 headers的user-agent cookie 等参数进行实际的 url 请求；请求头的配置参照浏览器浏览改页面的参数进行配置；



## 作业一：

安装并使用 requests、bs4 库，爬取猫眼电影（）的前 10 个电影名称、电影类型和上映时间，并以 UTF-8 字符集保存到 csv 格式的文件中。

## 作业二：

使用 Scrapy 框架和 XPath 抓取猫眼电影的前 10 个电影名称、电影类型和上映时间，并以 UTF-8 字符集保存到 csv 格式的文件中。

猫眼电影网址： https://maoyan.com/films?showType=3

要求：必须使用 Scrapy 框架及其自带的 item pipeline、选择器功能，不允许使用 bs4 进行页面内容的筛选。
