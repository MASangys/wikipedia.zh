[Feed-icon.svg](https://zh.wikipedia.org/wiki/File:Feed-icon.svg "fig:Feed-icon.svg")

**Atom**是一對彼此相關的標準。Atom供稿格式（Atom Syndication Format）是用於[網站消息來源](../Page/消息來源.md "wikilink")，基于[XML](../Page/XML.md "wikilink")的文档格式；而Atom出版協定（Atom Publishing Protocol，簡稱AtomPub或APP）是用於新增及修改網路資源，基于[HTTP的协议](https://zh.wikipedia.org/wiki/HTTP "wikilink")。

它借鉴了各种版本[RSS](../Page/RSS.md "wikilink")的使用经验，被許多的聚合工具广泛使用在发布和使用上。Atom供稿格式設計作為RSS的替代品；而Atom出版協定用來取代現有的多種發布方式（如Blogger API和LiveJournal XML-RPC Client/Server Protocol）。[Google](../Page/Google.md "wikilink")提供的多種服务正在使用Atom。Google Data API（GData）亦基於Atom。

Atom是[IETF的](https://zh.wikipedia.org/wiki/IETF "wikilink")「建議標準」，Atom供稿格式列為[RFC 4287](http://tools.ietf.org/html/rfc4287)，而Atom出版協定列為[RFC 5023](http://tools.ietf.org/html/rfc5023)。

## 歷史

Atom曾命名為「Echo」。

## Atom與RSS 2.0的比較

当初发展Atom的动机在于广泛应用[RSS](../Page/RSS.md "wikilink") 2.0时所遇到的问题。为了降低开发支持Web聚合应用的难度，下面列出Atom 1.0所克服的RSS 2.0几个主要问题（源自[1](http://www.intertwingly.net/wiki/pie/Rss20AndAtom10Compared)）：

  - RSS 2.0可能包含文本或经过编码的HTML内容，同时却没有提供明确的区分办法；相比之下，Atom则提供了明确的标签（也就是typed）。
  - RSS 2.0的description标签可以包含全文或摘要（尽管该标签的英文含义为描述或摘要）。Atom则分别提供了summary和content标签，用以区分摘要和内容，同时Atom允许在summary中添加非文本内容。
  - RSS 2.0存在多种非标准形式的应用，而Atom具有统一的标准，这便于内容的聚合和发现。
  - Atom有符合XML标准的命名空间，[RSS](../Page/RSS.md "wikilink") 2.0却没有。
  - Atom通过XML内置的xml:base标签来指示相对地址（[URI](https://zh.wikipedia.org/wiki/URI "wikilink")），[RSS](../Page/RSS.md "wikilink") 2.0则无相应的机制区分相对地址和绝对地址。
  - Atom通过XML内置的xml:lang，而[RSS](../Page/RSS.md "wikilink")採用自己的language标签。
  - Atom强制为每个条目设定唯一的ID，这将便于内容的跟踪和更新。
  - Atom 1.0允许条目单独成为文档，[RSS](../Page/RSS.md "wikilink") 2.0则只支持完整的种子文档，这可能产生不必要的复杂性和带宽消耗。
  - Atom按照[RFC 3339](http://tools.ietf.org/html/rfc3339)标准（[ISO 8601标准的一个子集](../Page/ISO_8601.md "wikilink")）表示时间 ，而[RSS](../Page/RSS.md "wikilink") 2.0中没有指定统一的时间格式。
  - Atom 1.0具有在IANA注册了的[MIME类型](https://zh.wikipedia.org/wiki/MIME "wikilink")，而[RSS](../Page/RSS.md "wikilink") 2.0所使用的application/rss+xml并未注册。
  - Atom 1.0标准包括一个XML schema，[RSS](../Page/RSS.md "wikilink") 2.0却没有。
  - Atom是[IETF组织标准化程序下的一个开放的发展中标准](https://zh.wikipedia.org/wiki/IETF "wikilink")，[RSS](../Page/RSS.md "wikilink") 2.0则不属于任何标准化组织，而且它不是开放版权的。

## 示例

一个Atom文档：

``` xml
<?xml version="1.0" encoding="utf-8"?>

<feed ns="http://www.w3.org/2005/Atom">

    <title>Example Feed</title>
    <subtitle>A subtitle.</subtitle>
    <link href="http://www.20to20.biz/feed/" rel="self" />
    <link href="http://example.org/" />
    <id>urn:uuid:60a76c80-d399-11d9-b91C-0003939e0af6</id>
    <updated>2003-12-13T18:30:02Z</updated>
    <author>
        <name>John Doe</name>
        <email>johndoe@example.com</email>
    </author>

    <entry>
        <title>Atom-Powered Robots Run Amok</title>
        <link href="http://example.org/2003/12/13/atom03" />
        <link rel="alternate" type="text/html" href="http://example.org/2003/12/13/atom03.html"/>
        <link rel="edit" href="http://example.org/2003/12/13/atom03/edit"/>
        <id>urn:uuid:1225c695-cfb8-4ebb-aaaa-80da344efa6a</id>
        <updated>2003-12-13T18:30:02Z</updated>
        <summary>Some text.</summary>
    </entry>

</feed>
```

### 包含于XHTML

下列标签会被插入XHTML文档的头部以提供ATOM源的链接。

``` xml
<link href="atom.xml" type="application/atom+xml" rel="alternate" title="Sitewide ATOM Feed" />
```

## 参见

  - [消息來源](../Page/消息來源.md "wikilink")（饋送）

## 外部链接

  - [IETF Atom Publishing Format and Protocol working group (atompub)](https://web.archive.org/web/20071018010134/http://www.ietf.org/html.charters/atompub-charter.html)

  - [Atom Wiki](http://www.intertwingly.net/wiki/pie/FrontPage)

  - [AtomEnabled.org](https://web.archive.org/web/20070630160757/http://atomenabled.org/) - Atom計劃的非官方支持網站

  - [The great syndication wars](http://phaedo.cx/archives/2003/07/15/the-great-syndication-wars/)

  - [Why we need Echo](http://www.sixapart.com/log/2003/06/why_we_need_ech.shtml)

  - [Should Atom Use RDF?](http://www.xml.com/pub/a/2003/08/20/dive.html)

[Category:基于XML的标准](https://zh.wikipedia.org/wiki/Category:基于XML的标准 "wikilink") [Category:網站供稿](https://zh.wikipedia.org/wiki/Category:網站供稿 "wikilink")