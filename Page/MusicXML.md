**MusicXML**（，**音乐扩展标记语言**）是一个开放的基于[XML](../Page/XML.md "wikilink")的记录西式[乐谱的](https://zh.wikipedia.org/wiki/乐谱 "wikilink")[文件格式](https://zh.wikipedia.org/wiki/文件格式 "wikilink")。该格式是完全自由、开放记录的，并依据W3C社区的许可协议自由使用。\[1\]\[2\]

## 历史

MusicXML由[Reccordare公司开发](https://zh.wikipedia.org/wiki/Reccordare "wikilink")，该技术源于几个现有的基于学术上的关键技术和想法，比如Walter Hewlett的[MuseData和David](https://zh.wikipedia.org/wiki/MuseData "wikilink") Huron的Humdrum。被设计用来做为乐谱信息的交换格式，特别是在不同的之间进行交换。随着MakeMusic公司于2011年收购Recordare，MusicXML的开发由MakeMusic管理。\[3\]\[4\]从2015年7月起，MusicXML的移交文档给W3C Music Notation Community Group。\[5\]

MusicXML的1.0版由Recordare公司在2004年1月发布。在2005年5月发布1.1版，包含对文件格式支持的改进。在2007年6月发布了2.0版，并且包含了标准的压缩格式。\[6\]所有这些都建立在一系列的[文档类型定义](https://zh.wikipedia.org/wiki/文档类型定义 "wikilink")（DTD）之上。2.0版的[XML Schema定义](../Page/XML_Schema.md "wikilink")（XSD）的实现于2008年9月发布。3.0版在2011年8月发布，改进了对虚拟乐器的支持。同时包含在DTD和XSD版本中。\[7\]\[8\]3.1版在2017年12月发布，包含对Standard Music Font Layout （SMuFL）的支持的改进。\[9\]MusicXML DTD和XSD版本都可以通过W3C Community Final Specification Agreement自由发布。\[10\]

## 支持

截止2017年12月，MusicXML被估计得到了超过230个乐谱程序的支持。\[11\]\[12\]这些程序包括：

  - 大多数乐谱编写程序，包括[Finale](../Page/Finale.md "wikilink")、[Sibelius和](https://zh.wikipedia.org/wiki/Sibelius "wikilink")[MuseScore](../Page/MuseScore.md "wikilink")。
  - 大多数音乐OCR程序，包括[SmartScore和PhotoScore](https://zh.wikipedia.org/wiki/SmartScore "wikilink")。
  - 大多数音序程序，包括[Cubase](https://zh.wikipedia.org/wiki/Steinberg_Cubase "wikilink")、[Logic Pro](../Page/Logic_Pro.md "wikilink")、[Digital Performer和](https://zh.wikipedia.org/wiki/Digital_Performer "wikilink")[SONAR](https://zh.wikipedia.org/wiki/Cakewalk_Sonar "wikilink")。

此外，还可以通过使用[HTML5](../Page/HTML5.md "wikilink") [canvas元素和](https://zh.wikipedia.org/wiki/canvas元素 "wikilink")[JavaScript](../Page/JavaScript.md "wikilink")在[网页浏览器](../Page/网页浏览器.md "wikilink")中产生合理的乐曲。\[13\]

功能包括[调号](../Page/调号.md "wikilink")、[拍号](https://zh.wikipedia.org/wiki/拍号 "wikilink")、[谱号](https://zh.wikipedia.org/wiki/谱号 "wikilink")、符杠信息、[符杆的方向](https://zh.wikipedia.org/wiki/符杆 "wikilink")、[圆滑线](https://zh.wikipedia.org/wiki/圆滑线 "wikilink")、[装饰音](https://zh.wikipedia.org/wiki/装饰音 "wikilink")、[小节和书写上的重复](https://zh.wikipedia.org/wiki/小节 "wikilink")。\[14\]

## 示例

MusicXML像所有基于XML的格式一样，用于简单的由自动化工具[分析和操纵](https://zh.wikipedia.org/wiki/语法分析器 "wikilink")。即使MusicXML可以通过手工创建，像Finale和MuseScore那样的交互式的乐谱编写软件大大简化了MusicXML文件的读取、编写和修改。

下面是一个C大调，G谱号，4/4拍，包含一个中央C[全音符的例子](https://zh.wikipedia.org/wiki/全音符 "wikilink")。\[15\] [MusicXML_C_Whole_Note.svg](https://zh.wikipedia.org/wiki/File:MusicXML_C_Whole_Note.svg "fig:MusicXML_C_Whole_Note.svg")表示就是这样的。\]\]

``` xml
<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<!DOCTYPE score-partwise PUBLIC
    "-//Recordare//DTD MusicXML 3.1 Partwise//EN"
    "http://www.musicxml.org/dtds/partwise.dtd">
<score-partwise version="3.1">
  <part-list>
    <score-part id="P1">
      <part-name>Music</part-name>
    </score-part>
  </part-list>
  <part id="P1">
    <measure number="1">
      <attributes>
        <divisions>1</divisions>
        <key>
          <fifths>0</fifths>
        </key>
        <time>
          <beats>4</beats>
          <beat-type>4</beat-type>
        </time>
        <clef>
          <sign>G</sign>
          <line>2</line>
        </clef>
      </attributes>
      <note>
        <pitch>
          <step>C</step>
          <octave>4</octave>
        </pitch>
        <duration>4</duration>
        <type>whole</type>
      </note>
    </measure>
  </part>
</score-partwise>
```

以上的文字演示是繁杂的，MusicXML v2.0通过[压缩成](../Page/数据压缩.md "wikilink")[ZIP格式](../Page/ZIP格式.md "wikilink")并加上`.mxl`后缀的处理使文件体积减小到20分之一。\[16\]

## 参考资料

## 外部链接

  - [MusicXML Version 3.1 Final Community Group Report](https://www.w3.org/2017/12/musicxml31/)
  - [W3C Music Notation Community Group](https://www.w3.org/community/music-notation/)
  - MakeMusic上的[官方网站](http://www.musicxml.com/)
  - [MusicXML viewer](https://www.soundslice.com/musicxml-viewer/)

[Category:基于XML的标准](https://zh.wikipedia.org/wiki/Category:基于XML的标准 "wikilink") [Category:樂譜檔案格式](https://zh.wikipedia.org/wiki/Category:樂譜檔案格式 "wikilink") [Category:音乐标记语言](https://zh.wikipedia.org/wiki/Category:音乐标记语言 "wikilink") [Category:W3C标准](https://zh.wikipedia.org/wiki/Category:W3C标准 "wikilink")

1.
2.
3.
4.
5.
6.
7.
8.
9.
10.
11.
12.
13.  源码可从[Google Code](https://code.google.com/archive/p/score-library/source/default/commits)、[Github](https://github.com/navigator117/score-library)和[Bitbucket](https://bitbucket.org/navigator117/score-library)获取。
14. Juan Pablo Bello, Elaine Chew, Douglas Turnbull (2008) *ISMIR 2008: Proceedings of the 9th International Conference* [p.365](https://books.google.com/books?id=OHp3sRnZD-oC&pg=PA365)
15.
16.