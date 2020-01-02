> 本文内容由[Geo](https://zh.wikipedia.org/wiki/Geo)转换而来。


****是一种在[HTML](../Page/HTML.md "wikilink")和[XHTML](../Page/XHTML.md "wikilink")中标记[WGS84地理坐标](https://zh.wikipedia.org/wiki/WGS84 "wikilink")（[经度](../Page/经度.md "wikilink")，[纬度](../Page/纬度.md "wikilink")）的[微格式](../Page/微格式.md "wikilink")。尽管属于“草案”，其格式是稳定的并已经被使用。它还可以作为[hCard微格式的一个子集](https://zh.wikipedia.org/wiki/hCard "wikilink")。

使用Geo可以使分析器（比如其他网站，[Firefox](../Page/Firefox.md "wikilink")的[Operator插件](https://zh.wikipedia.org/wiki/Operator "wikilink")）获得位置信息，并通过别的网站或者[地图](../Page/地图.md "wikilink")工具进行显示，或者载入到[GPS设备](https://zh.wikipedia.org/wiki/GPS "wikilink")，或者转换成其他格式。

[Firefox](../Page/Firefox.md "wikilink") 3 将支持包括Geo的微格式。\[1\]

## 使用

  - 若有纬度信息，**必须**提供经度信息，反之亦然
  - 所有的值都**应该**有相同位数的小数点后数值，包括后缀的0

注：**必须**和**应该**是[IETF文件](https://zh.wikipedia.org/wiki/IETF "wikilink")[RFC 2119](https://web.archive.org/web/20081206203611/http://www.ietf.org/rfc/rfc2119.txt)中使用的术语

有两种方法可以将普通的（X）HTML转换成Geo微格式：

### 三个“class”

加入三个“class”，比如：

    <nowiki>
    <div>北京：39.90556；116.39139</div>
    </nowiki>

变成：

    <nowiki>
    <div class="geo">北京：<span class="latitude">39.90556</span>；<span class="longitude">116.39139</span></div>
    </nowiki>

其中加入了三个“class”，其属性值分别为“geo”，“latitude”和“longitude”。

显示为：

>
>
> <div class="geo">
>
> 北京：<span class="latitude">39.90556</span>；<span class="longitude">116.39139</span>
>
> </div>

同时，上述代码中的关于[北京的位置信息可以被微格式分析器获得](https://zh.wikipedia.org/wiki/北京 "wikilink")。

### 一个“class”

在一些情况下，可以使用短格式，仅用一个“class”。这时，纬度**必须**在前：

    <nowiki>
    北京位于39.90556; 116.39139。
    </nowiki>

变成：

    <nowiki>
    北京位于<span class="geo">39.90556; 116.39139</span>。
    </nowiki>

注意，这里的分隔符**必须**是[半角分号](https://zh.wikipedia.org/wiki/分号 "wikilink")“；”。若想显示其他分隔符，可以使用“abbr”元素，并将数值放在“title”属性中：

    <nowiki>
    北京位于<abbr class="geo" title="39.90556; 116.39139">39.90556，116.39139</abbr>。
    </nowiki>

这也可以用来通过其他方式显示位置信息：

    <nowiki>
    北京位于<abbr class="geo" title="39.90556; 116.39139">华北</abbr>。
    </nowiki>

但是，使用“abbr”来完全隐藏位置信息并不是一个好主意：

    <nowiki>
    北京位于<abbr class="geo" title="39.90556; 116.39139">很漂亮</abbr>。
    </nowiki>

## hCard

每个Geo微格式都可以被用在[hCard中](https://zh.wikipedia.org/wiki/hCard "wikilink")，和个人、企业、地点的名称，邮件地址，电话号码，[URL](https://zh.wikipedia.org/wiki/URL "wikilink")，图片等一起使用。

## 扩展

目前有三个互不冲突的扩展Geo微格式的建议：

  - [geo-extension](http://microformats.org/wiki/geo-extension-strawman) - 非WSG84方式表示其他星球上的坐标
  - [geo-elevation](http://microformats.org/wiki/geo-elevation-examples) - 表示高度
  - [geo-waypoint](http://microformats.org/wiki/geo-waypoint-examples) - 表示路径和边界

## 参见

  - [维基百科中的Geo](https://zh.wikipedia.org/wiki/Wikipedia:專題/微格式#Geo "wikilink")

## 注释

<references />

## 外部链接

  - [Geo spec](http://microformats.org/wiki/geo) with notes and examples
      - [Geo cheat-sheet](http://microformats.org/wiki/geo-cheatsheet) a quick reference

[Category:文件格式](https://zh.wikipedia.org/wiki/Category:文件格式 "wikilink")

1.