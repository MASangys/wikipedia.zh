**robots.txt**（统一小写）是一种存放于[网站根目录下的](https://zh.wikipedia.org/wiki/网站 "wikilink")[ASCII](../Page/ASCII.md "wikilink")编码的[文本文件](../Page/文本文件.md "wikilink")，它通常告诉网络[搜索引擎](../Page/搜索引擎.md "wikilink")的漫游器（又称[网络蜘蛛](https://zh.wikipedia.org/wiki/网络蜘蛛 "wikilink")），此网站中的哪些内容是不应被搜索引擎的漫游器获取的，哪些是可以被漫游器获取的。因为一些系统中的URL是大小写敏感的，所以robots.txt的文件名应统一为小写。robots.txt应放置于网站的根目录下。如果想单独定义搜索引擎的漫游器访问子目录时的行为，那么可以将自定的设置合并到根目录下的robots.txt，或者使用robots[元数据](../Page/元数据.md "wikilink")（Metadata，又稱元資料）。

robots.txt协议并不是一个规范，而只是约定俗成的，所以并不能保证网站的隐私。注意robots.txt是用字符串比较来确定是否获取[URL](https://zh.wikipedia.org/wiki/URL "wikilink")，所以目录末尾有与没有斜杠“/”表示的是不同的URL。robots.txt允许使用类似"Disallow: \*.gif"这样的通配符\[1\]\[2\]。

其他的影响搜索引擎的行为的方法包括使用robots[元数据](../Page/元数据.md "wikilink")：

``` html4strict
<meta name="robots" content="noindex,nofollow" />
```

这个协议也不是一个规范，而只是约定俗成的，有些搜索引擎会遵守这一规范，有些则不然。通常搜索引擎会识别这个元数据，不索引这个页面，以及这个页面的链出页面。

## 例子

允许所有的机器人：

``` text
User-agent: *
Disallow:
```

另一写法

``` text
User-agent: *
Allow:/
```

仅允许特定的机器人：（name_spider用真实名字代替）

``` text
User-agent: name_spider
Allow:
```

拦截所有的机器人：

``` text
User-agent: *
Disallow: /
```

禁止所有机器人访问特定目录：

``` text
User-agent: *
Disallow: /cgi-bin/
Disallow: /images/
Disallow: /tmp/
Disallow: /private/
```

仅禁止坏爬虫访问特定目录（BadBot用真实的名字代替）：

``` text
User-agent: BadBot
Disallow: /private/
```

禁止所有机器人访问特定文件类型\[3\]：

``` text
User-agent: *
Disallow: /*.php$
Disallow: /*.js$
Disallow: /*.inc$
Disallow: /*.css$
```

## 非标准扩展协议

### 自动发现Sitemaps文件

`Sitemap`指令被几大搜索引擎支持（包括[Google](../Page/Google.md "wikilink")、[Yahoo](https://zh.wikipedia.org/wiki/Yahoo "wikilink")、[Bing](../Page/Bing.md "wikilink")和[Ask](../Page/Ask.com.md "wikilink")），指定了网站[Sitemaps文件的位置](https://zh.wikipedia.org/wiki/Sitemaps "wikilink")。Sitemaps文件包含了网站页面所在的URL的一个列表。`Sitemap`指令并不受`User-agent`指令的限制，所以它可以放在robots.txt文件中的任意位置。\[4\] 唯一要注意的就是要使用网站地图指令，\<sitemap_location\>,并将URL的"location"值换成网站地图的地址，例如，下面就是一个网站地图指令的例子：

``` text
Sitemap: <http://www.example.com/sitemap.xml>
```

如何编写Sitemaps文件，请参考[sitemaps.org](http://www.sitemaps.org)上的说明。

### Crawl-delay指令

几大抓取工具支持`Crawl-delay`参数，设置为多少秒，以等待同服务器之间连续请求：\[5\]\[6\]

``` text
User-agent: *
Crawl-delay: 10
```

### Allow指令

一些大的Crawlers支持一项Allow指令，可以抵消先前Disallow指令。比如[Googlebot](https://zh.wikipedia.org/wiki/Googlebot "wikilink")。\[7\]

## 替代

雖然robots.txt是最為廣泛接受的方法，但也可以與robots META標籤一起使用。robots META標籤主要是針對一個獨立的頁面設定，與其他的META標籤（如使用的語言、頁面的描述、關鍵詞等）一樣，robots META標籤也是放在頁面的HEAD標籤中，專門用來告訴搜索引擎robots如何抓取該頁的內容。註

``` html4strict
<head>
    <meta name="robots" content="noindex,nofollow" />
</head>
```

## 參考文獻

## 外部連結

  - [The Web Robots Pages](http://www.robotstxt.org)

{{-}}

[Category:全球資訊網](https://zh.wikipedia.org/wiki/Category:全球資訊網 "wikilink") [Category:搜索引擎](https://zh.wikipedia.org/wiki/Category:搜索引擎 "wikilink")

1.

2.

3.
4.

5.

6.

7.  [如何拦截Googlebot（谷歌网站站长工具帮助）](http://www.google.com/support/webmasters/bin/answer.py?answer=40364&hl=zh-CN)