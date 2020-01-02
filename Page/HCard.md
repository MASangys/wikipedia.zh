> 本文内容由[HCard](https://zh.wikipedia.org/wiki/HCard)转换而来。


**hCard**是一种[微格式](../Page/微格式.md "wikilink")，用来发布个人、公司、组织、地点等详细的联系信息。它可以包含在[(X)HTML](../Page/HTML.md "wikilink")、[Atom](https://zh.wikipedia.org/wiki/Atom "wikilink")、[RSS](../Page/RSS.md "wikilink")等[可扩展置标语言中](https://zh.wikipedia.org/wiki/可扩展置标语言 "wikilink")。hCard使用[vCard](https://zh.wikipedia.org/wiki/vCard "wikilink")（RFC 2426）的属性和值来实现这些功能。

它可以使分析器（比如其他网站，[Firefox](../Page/Firefox.md "wikilink")的[Operator插件](https://zh.wikipedia.org/wiki/Operator "wikilink")）获得详细的信息，并通过别的网站或者[地图](../Page/地图.md "wikilink")工具进行显示，或者载入到地址簿等其他程序。

## 举例

### 示例一

如下HTML代码：

``` xml
 <div>
     <div>Joe Doe</div>
     <div>The Example Company</div>
     <div>604-555-1234</div>
     <a href="http://example.com/">http://example.com/</a>
 </div>
```

加入微格式后，成为：

``` xml
<div class="vcard">
     <div class="fn">Joe Doe</div>
     <div class="org">The Example Company</div>
     <div class="tel">604-555-1234</div>
     <a class="url" href="http://example.com/">http://example.com/</a>
 </div>
```

这里，正式名称（class="fn"），组织（class="org"），电话号码（class="tel"）和url（class="url"）分别用相应的class标示；同时，所有内容都包含在`class="vcard"`里。

### 示例二

这里是[维基媒体基金会](../Page/维基媒体基金会.md "wikilink")的联系方式，可以作为hCard的一个真实示例：

>
>
> <div class="vcard">
>
> <div class="fn org">
>
> Wikimedia Foundation Inc.
>
> </div>
>
> <div class="adr">
>
> <div class="street-address">
>
> 200 2nd Ave. South \#358
>
> </div>
>
> <div>
>
> <span class="locality">St. Petersburg</span>, <span class="region">FL</span> <span class="postal-code">33701-4313</span>
>
> </div>
>
> <div class="country-name">
>
> USA
>
> </div>
>
> </div>
>
> <div>
>
> Phone: <span class="tel">+1-727-231-0101</span>
>
> </div>
>
> <div>
>
> Email: <span class="email">info@wikimedia.org</span>
>
> </div>
>
> <div>
>
> <span class="tel"><span class="type">Fax</span>: <span class="value">+1-727-258-0207</span></span>
>
> </div>
>
> </div>

加入微格式后，成为：

``` xml
<div class="vcard">
  <div class="fn org">Wikimedia Foundation Inc.</div>
  <div class="adr">
    <div class="street-address">200 2nd Ave. South #358</div>
    <div>
      <span class="locality">St. Petersburg</span>,
      <span class="region">FL</span> <span class="postal-code">33701-4313</span>
    </div>
    <div class="country-name">USA</div>
    </div>
  <div>Phone: <span class="tel">+1-727-231-0101</span></div>
  <div>Email: <span class="email">info@wikimedia.org</span></div>
  <div>
    <span class="tel"><span class="type">Fax</span>:
    <span class="value">+1-727-258-0207</span></span>
  </div>
</div>
```

注意，在这个例子中，正式名称（class="fn"）和组织（class="org"）写在了一个属性中，表示这是一个组织，而不是个人。

## 属性

[Geo](../Page/Geo.md "wikilink")可以被包含在hCard中，表示某个地址的坐标。

其他常用的hCard属性包括：

  - `bday` - 生日
  - `email`
  - `honorific-prefix` -（西式）名字前的尊稱，例如：[博士](../Page/博士.md "wikilink")（Dr.）、[牧師](https://zh.wikipedia.org/wiki/牧師 "wikilink")（Rev.）等，在東方會放在名字的後方。
  - `honorific-suffix` -（西式）名字後的尊稱，一般都是封銜，例如：[太平紳士](../Page/太平紳士.md "wikilink")（[JP](https://zh.wikipedia.org/wiki/JP "wikilink")）、[大紫荊勳章](../Page/大紫荊勳章.md "wikilink")（[GBM](https://zh.wikipedia.org/wiki/GBM "wikilink")），一般詳列在名字的最後方。
  - `logo`
  - `nickname` - 暱稱、愛稱或外號。西方人的名字一般都有簡寫，有時這些暱稱或外號就用來分辨同名的人。例如：William "Bill" Gates 中間的"Bill"。
  - `note`
  - `photo`
  - `post-office-box`

## 外部链接

  - [hCard微格式](http://microformats.org/wiki/hcard)

  - [将.vcf文件转换成hCard](https://web.archive.org/web/20070710133553/http://dig.csail.mit.edu/breadcrumbs/node/146)

  - [一个python的hCard分析器](http://phildawes.net/microformats/)

  - [一个xml/javascript的hCard分析器](http://acidmartin.wemakesites.net/?pageId=hCardXml)

[Category:文件格式](https://zh.wikipedia.org/wiki/Category:文件格式 "wikilink")