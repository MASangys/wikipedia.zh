**nofollow**是[HTML中的一個屬性](../Page/HTML.md "wikilink")，用于告诉[搜索引擎不要追踪特定的网页链接](../Page/搜索引擎.md "wikilink")。可以用于阻止在[PR值高的网站上以留言等方式添加链接从而提高自身网站排名的行为](../Page/PageRank.md "wikilink")，以改善搜索结果的质量，防止垃圾链接的蔓延。网站站长也可对其网页中的付费链接使用nofollow来防止该链接降低搜索排名。对一些重要度低的网页内容使用nofollow，还可以使搜索引擎以不同的优先级别来抓取网页内容。\[1\]

## 来源

在2005年，[Googlewebspan团队的领导](../Page/Google.md "wikilink")和Jason
Shellen在Blogger.com引入了这个特定属性`nofollow`。 \[2\]

`nofollow`原本是用来控制博客上的垃圾评论，使用博客的人都已经意识到垃圾评论的严重。就像对社区的其他垃圾形式，评论垃圾[spam影响到整个博客](https://zh.wikipedia.org/wiki/spam "wikilink")[網誌社区](../Page/網誌.md "wikilink")，所以在2005年，[Googlewebspan团队的领导](../Page/Google.md "wikilink")和Jason
Shellen设计了这个属性`nofollow`来解决这个问题。 \[3\]

`nofollow`的定义是在2005-2007年由作者声明版权的，受免版税的专利政策，W3C的专利政策20040205。\[4\] and
IETF RFC 3667 & RFC 3668. The authors intend to submit this
specification to a standards body with a liberal copyright/licensing
policy such as the
[GMPG](https://zh.wikipedia.org/wiki/GMPG "wikilink")、[IETF](https://zh.wikipedia.org/wiki/IETF "wikilink"),
and/or [W3C](https://zh.wikipedia.org/wiki/W3C "wikilink").\[5\]

## 简介

[Google早在](../Page/Google.md "wikilink")2005年声明，使用`rel="nofollow"`的超链接不会影响这个链接的排名[PageRank](../Page/PageRank.md "wikilink")。Yahoo和Bing的搜索引擎也遵守这个法则。\[6\]\[7\]

到2006年時，主流外文搜尋引擎已經公開發表聲明支援Nofollow，但百度到2010年才支援這個屬性。

每个搜索引擎对这个属性的解释不同。有一些引擎会字面理解一下，并且不会再去访问这个链接；但是有些还会“follow”这些链接，并且做排名参照。在最近的情况中，`rel="nofollow"`实际上是告诉引擎“不要因此处而影响对这个链接的排名”，而不是“不要访问这个链接”。

Google對Nofollow的說明是：一般情況下，我們不追蹤這些連結。也就是說，在極為特殊的情況下，Nofollow連結依然會傳遞權重。當然，在大部分情況下，搜尋引擎蜘蛛都不追蹤Nofollow連結。

因此Nofollow更像是一種提示，而不是指令。

### 举例

``` text
<a href="http://www.example.com/" rel="nofollow">discount drugs</a>
```

### 不能做什么

`nofollow`这个属性值并不是能够阻止内容不被访问或者内容不被搜索引擎收录。[robots.txt这个方法可以阻止搜索引擎访问一个网站并且将网站收录到排名中](https://zh.wikipedia.org/wiki/robots.txt "wikilink")。在页面中META的元素用来声明这个页面哪些搜索引擎可以访问。

## 搜索引擎的解释

### nofollow 与 dofollow links 的不同

nofollow link
不允许搜索引擎机器人跟随链接。这意味着如果网站所有者使用nofollow属性连接回您，它不会传递链接值。只有人类才能关注这些链接。虽然有一段时间谷歌明确表示他们不考虑nofollow链接属性，但这些链接的权重实际上更少。尽管如此，将Nofollow链接属性用于那些链接是一个很好的做法，在那里你不想传递link-juice。而dofollow
link 将会把连接值传去给被连接的网站。\[8\]

## 參見

  - [PageRank](../Page/PageRank.md "wikilink")
  - [noindex](https://zh.wikipedia.org/wiki/noindex "wikilink")
  - [robots.txt](https://zh.wikipedia.org/wiki/robots.txt "wikilink")
  - [搜索引擎优化](https://zh.wikipedia.org/wiki/搜索引擎优化 "wikilink")
  - [网络爬虫](https://zh.wikipedia.org/wiki/网络爬虫 "wikilink")

## 外部链接

  - [Google的网站站长工具帮助
    rel="nofollow"](http://support.google.com/webmasters/bin/answer.py?answer=96569)

## 參考資料

[Category:微格式](https://zh.wikipedia.org/wiki/Category:微格式 "wikilink")
[Category:搜索引擎最佳化](https://zh.wikipedia.org/wiki/Category:搜索引擎最佳化 "wikilink")
[Category:垃圾邮件](https://zh.wikipedia.org/wiki/Category:垃圾邮件 "wikilink")

1.

2.  [rel="nofollow"
    Specification](http://microformats.org/wiki/rel-nofollow),
    *Microformats.org*, retrieved June 17, 2007

3.

4.  [[W3C](https://zh.wikipedia.org/wiki/W3C "wikilink") Patent Policy
    20040205](http://www.w3.org/Consortium/Patent-Policy-20040205/)，*W3.ORG*

5.
6.  Google（January 18, 2006）, [Preventing comment
    spam](http://googleblog.blogspot.com/2005/01/preventing-comment-spam.html),
    *Official Google Blog*, retrieved on May 29, 2007

7.  Microsoft（June 3, 2008）,
    [Bing.com](http://www.bing.com/community/blogs/webmaster/archive/2008/06/03/robots-exclusion-protocol-joining-together-to-provide-better-documentation.aspx),
    "Bing Community", retrieved on June 11, 2009

8.