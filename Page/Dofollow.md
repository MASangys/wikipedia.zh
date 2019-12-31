> 本文内容由[Dofollow](https://zh.wikipedia.org/wiki/Dofollow)转换而来。


**dofollow**是[HTML](../Page/HTML.md "wikilink")的一个属性，默认情况下，所有链接都是dofollow链接，除非被手动修改为[nofollow链接或由网站设置自动更改](https://zh.wikipedia.org/wiki/nofollow "wikilink")。[搜索引擎](../Page/搜索引擎.md "wikilink")抓取工具，换句话说，它们会继续抓取它们通过标准链接发现的其他页面。通过了解经常链接到哪些网页，搜索引擎可以确定[网站在搜索结果中的](https://zh.wikipedia.org/wiki/网站 "wikilink")[排名](../Page/排名.md "wikilink")。链接只是众多排名因素之一。相比之下，nofollow链接有一些[代码](../Page/代码.md "wikilink")要求[搜索引擎](../Page/搜索引擎.md "wikilink")不抓取它们。，特别是如果用户提交或链接到广告。\[1\]

``` text
<a rel="nofollow" href="http://example.com">范例</a>
```

dofollow值只是一个描述符，因为HTML中不存在[rel属性的dofollow值](https://zh.wikipedia.org/wiki/rel "wikilink")。因此，dofollow链接在技术上相当于任何不具有nofollow值的rel属性的链接。

## 示例

``` text
<a href="http://example.com">范例</a>
```

除非网站设置正在更改用户添加的代码，否则在创建新链接以使其成为dofollow链接时，用户无需执行任何操作。

## 另见

  - [Nofollow](../Page/Nofollow.md "wikilink")

## 參考資料

[Category:HTML属性](https://zh.wikipedia.org/wiki/Category:HTML属性 "wikilink") [Category:搜索引擎最佳化](https://zh.wikipedia.org/wiki/Category:搜索引擎最佳化 "wikilink")

1.