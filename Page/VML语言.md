{{ infobox file format | name = Vector Markup Language | icon = | logo =
| screenshot = | caption = | extension = `.htm`或`.html` | mime =
application/vnd.openxmlformats-officedocument.vmlDrawing | type code = |
uniform type = | magic = | owner =
[Microsoft](../Page/Microsoft.md "wikilink") | released = | latest
release version = | latest release date = | genre =
[矢量图形格式](../Page/矢量图形.md "wikilink") | container for
= | contained by = | extended from = [XML](../Page/XML.md "wikilink") |
extended to = | standard = Part of ECMA-376及ISO/IEC 29500:2008 | url =
[ECMA-376](http://www.ecma-international.org/publications/standards/Ecma-376.htm),
[ISO/IEC 29500-4:2012](http://www.iso.org/iso/home/store/catalogue_tc/catalogue_detail.htm?csnumber=61798)
}} **Vector Markup
Language**（**VML**）是一種[XML語言用於繪製](../Page/XML.md "wikilink")[向量圖形](../Page/向量圖形.md "wikilink")（[vector
graphics](../Page/矢量图形.md "wikilink")）。1998年VML建議書由微軟、Macromedia等向[W3C提出審核](../Page/W3C.md "wikilink")。VML遭到拒絕，因為[Adobe](../Page/Adobe_Systems.md "wikilink")、[Sun等提出了](../Page/Sun_Microsystems.md "wikilink")[PGML](../Page/PGML.md "wikilink")\[[http://www.w3.org/TR/1998/NOTE-PGML-19980410\]計劃書。這兩套標準後來合併成更具潛力的](http://www.w3.org/TR/1998/NOTE-PGML-19980410%5D計劃書。這兩套標準後來合併成更具潛力的)[SVG](../Page/Scalable_Vector_Graphics.md "wikilink")。

儘管VML規格一度遭到W3C的拒絕，並為大多數使用者所遺棄。微軟（Microsoft）依然將VML的標準規格實作到[Internet
Explorer](../Page/Internet_Explorer.md "wikilink") 5.0及更新的版本，[Microsoft
Office](../Page/Microsoft_Office.md "wikilink") 2000以上的版本亦有支援。

[Google Maps目前在](../Page/Google_Maps.md "wikilink")[Internet
Explorer](../Page/Internet_Explorer.md "wikilink")
5.5+\[[http://www.google.com/apis/maps/documentation/\#XHTML_and_VML\]上採用VML來描寫向量（rendering](http://www.google.com/apis/maps/documentation/#XHTML_and_VML%5D上採用VML來描寫向量（rendering)
vector）。

[Google
Docs目前在相同平台上](../Page/Google_Docs.md "wikilink")\[[http://googledocs.blogspot.com/2009/03/drawing-on-your-creativity-in-docs.html\]采用VML来绘制矢量图](http://googledocs.blogspot.com/2009/03/drawing-on-your-creativity-in-docs.html%5D采用VML来绘制矢量图)。

## 範例

下列的程式碼會顯示出一個塗滿蓝色的橢圓形：

    <nowiki>
    <html xmlns:v>
     <style>v\:*{behavior:url(#default#VML);position:absolute}</style>
    <body>
     <v:oval style="left:0;top:0;width:100;height:50" fillcolor="blue" stroked="f"/>
    </body>
    </html
    </nowiki>

[SVG更精簡的程式碼可達成上述的相同結果](../Page/Scalable_Vector_Graphics.md "wikilink")：

    <nowiki>
    <?xml version="1.0"?>
    <!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1//EN"
      "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd">
    <svg ns="http://www.w3.org/2000/svg" width="100" height="50">
      <ellipse cx="50" cy="25" rx="50" ry="25" fill="blue" stroke="none" />
    </svg>
    </nowiki>

## 参考文献

## 外部連結

  - [W3C VML proposal](http://www.w3.org/TR/1998/NOTE-VML-19980513)
  - [MSDN VML
    Page](http://msdn2.microsoft.com/en-us/library/bb263898.aspx)
  - [VML
    DEMOS](https://web.archive.org/web/20110907181049/http://midiwebconcept.free.fr/Demos/)
  - [Vector Graphics Rendering Library Buffer
    Overflow](http://secunia.com/advisories/21989/)

## 参见

  - [SVG](../Page/SVG.md "wikilink")

{{-}}

[Category:置标语言](https://zh.wikipedia.org/wiki/Category:置标语言 "wikilink")
[Category:基于XML的标准](https://zh.wikipedia.org/wiki/Category:基于XML的标准 "wikilink")
[Category:图形文件格式](https://zh.wikipedia.org/wiki/Category:图形文件格式 "wikilink")
[Category:矢量图形](https://zh.wikipedia.org/wiki/Category:矢量图形 "wikilink")