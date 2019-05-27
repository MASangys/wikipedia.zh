**[异体字选择器](../Page/异体字.md "wikilink")**\[1\]（）是在[Unicode和](https://zh.wikipedia.org/wiki/Unicode "wikilink")[ISO/IEC
10646
(UCS)上](https://zh.wikipedia.org/wiki/ISO/IEC_10646 "wikilink")，用来更详细地进行[文字](../Page/文字.md "wikilink")[字体之间的选择指定的一种程序](../Page/字体.md "wikilink")。

## 描述

[u845b-k.svg](https://zh.wikipedia.org/wiki/File:u845b-k.svg "fig:u845b-k.svg")的葛}}\]\]
[u845b.svg](https://zh.wikipedia.org/wiki/File:u845b.svg "fig:u845b.svg")的葛}}\]\]
[Unicode是一个字体间抽象的文字集合](https://zh.wikipedia.org/wiki/Unicode "wikilink")，它并没有描绘出每个字体的样式。因此同样意义的字符被赋予了相同的编码，因此在[字形上作区分是有必要的](../Page/计算机字体.md "wikilink")\[2\]\[3\]。

需注意的是譬如[拉丁字母](../Page/拉丁字母.md "wikilink")'a'是否有从顶部向右延伸的线，通常不属于不同间字体的差异，因为可以通过更改字体来修改。但举个例子，在[中日韓統一表意文字中](../Page/中日韓統一表意文字.md "wikilink")，作为的字体以各国内标准的原因为理由，经常运用被认为是“另一个字”的字形，以其汉字的不同属于不同字体为由，经常发生字体重合（在最初的Unicode提案中就已经被关注了）。因此，根据情况，需要在上保存不同字形的区别是有必要的。

  - 在大部分的操作系统中，[文件名是纯文本](https://zh.wikipedia.org/wiki/文件名 "wikilink")，不能区别在文本中不能区分的东西。
  - [输入法可以输入的字符串仅是通常的文本](../Page/输入法.md "wikilink")\[4\]。因此[字形即使可以被选择](../Page/字形.md "wikilink")，在要求与通常的文字进行不同的选择上，必须记住正确的组合，对于大部分的普通用户来说，不能用更多的时间来输入。例如[Windows
    Vista开始可以区分](https://zh.wikipedia.org/wiki/Microsoft_Windows_Vista "wikilink")以及了\[5\]，如[葛](https://zh.wikipedia.org/wiki/File:u845b-k.svg "fig:葛")飾区和[葛](https://zh.wikipedia.org/wiki/File:u845b.svg "fig:葛")城市这种字体的区别，在编码上没有区别。\[6\]。
  - 用于发送[电子邮件的](../Page/电子邮件.md "wikilink")[SMTP等](../Page/简单邮件传输协议.md "wikilink")[网络传输协议是用纯文本发送的](../Page/网络传输协议.md "wikilink")，因此不能区分一些相同编码字符的不同字形\[7\]。

异体字选择器是为了在unicode中解决上述问题而设计出的特殊的“字符”（有着相同[码位的异体字](https://zh.wikipedia.org/wiki/码位 "wikilink")）。由异体字选择器决定在当前文本中所使用的文字，根据前后文判断并由异体字选择器选择不同的字形。\[8\]。另外，异体字选择器具有更详细地指定附加的文字的字形的功能，但是并不显示异体选择器本身。

## 种类

异体字选择器一般分两种，Standardized Variation Sequence（标准化的异体字选择器、简称
SVS\[9\]），以及Ideographic Variation Sequence（汉字异体字选择器、简称 **IVS**）。

SVS在非漢字及[中日韓統一表意文字中均有启用](../Page/中日韓統一表意文字.md "wikilink")，这种字形选择定义为Unicode的标准化变体\[10\]。向标准化变体里添加字体属于[統一碼聯盟的工作](../Page/統一碼聯盟.md "wikilink")。

另一方面，IVS是汉字专用的，字形收集是由ideographic variation
database（汉字异体字数据库，简称为ivd）定义的。要想在ivd中增加字形，也必须根据规定向統一碼聯盟申请。\[11\]。

直到2017年12月，由异体字选择器所使用的异体字如下所示。

**Standardized Variants录入的字集和数量**

  - [数学符号表](../Page/数学符号表.md "wikilink")：25个
  - 缅甸的[缅文](../Page/缅文.md "wikilink")：27个
  - [八思巴字母](../Page/八思巴字母.md "wikilink")：6个
  - [摩尼字母](../Page/摩尼字母.md "wikilink")：5个
  - [传统蒙古文](../Page/传统蒙古文.md "wikilink")：60个
  - [中日韓統一表意文字](../Page/中日韓統一表意文字.md "wikilink")：1,002通个
  - [颜文字](../Page/颜文字.md "wikilink")：702个（文本类型和图形文字的类型351个）\[12\]

**IVD（2017-12-12版）录入的字集和数量**

  - [CID之adobe](https://zh.wikipedia.org/wiki/CID_\(文字编码\) "wikilink")-japan1集：14,683个\[13\]
  - 通用电子信息交换环境整顿计划之Hanyo-Denshi集：13,045个
  - 文字信息基础整备事业之Moji_Joho集：11,384个
  - [澳门特别行政区之MSARG集](https://zh.wikipedia.org/wiki/澳门 "wikilink")：21个
  - [韩国之KRName集](https://zh.wikipedia.org/wiki/韩国 "wikilink")：36个

但是hanyo-denshi与adobe-japan1有很多重复。\[14\]

### 字形规格

  - [OpenType](../Page/OpenType.md "wikilink") 1.5版使用了“Unicode Variation
    Sequences”规格<ref>

</ref>。

  - [SVG不仅局限于IVS](https://zh.wikipedia.org/wiki/Scalable_Vector_Graphics "wikilink")，任意Unicode编码均可\[15\]。

### 字体创建工具

  - [FontForge](../Page/FontForge.md "wikilink") - 2007年10月2日之后\[16\]。
  - Adobe Font Development Kit for OpenType (AFDKO) 2.1版之后\[17\]。
  - TTX/FontTools - GlyphWiki来生成IVS对应字体。\[18\]。
  - [TTEdit](https://zh.wikipedia.org/wiki/TTEdit "wikilink") - 对应生成IVS
    TrueType字体。

### 库

2007年10月[FreeType以后的开发板内置了](../Page/FreeType.md "wikilink")[API工具](https://zh.wikipedia.org/wiki/應用程式介面 "wikilink")\[19\]。

### 软件

  - [Windows
    7在](https://zh.wikipedia.org/wiki/Windows_7 "wikilink")[资源管理器的所显示文件名及](https://zh.wikipedia.org/wiki/资源管理器 "wikilink")[记事本中可以生成异体字字形](https://zh.wikipedia.org/wiki/记事本 "wikilink")。但是需要字体支持\[20\]
  - [Windows
    8以后](https://zh.wikipedia.org/wiki/Windows_8 "wikilink")，采用IVS处理\[21\]。
  - [Mac OS X
    10.5标准文本和绘制处理是由default](https://zh.wikipedia.org/wiki/Mac_OS_X_10.5 "wikilink")
    ignorable所处理的\[22\]異体字セレクタを描画しないが、字形の切り替えはサポートしない。
  - [Mac OS X
    10.6开始自建标准文本的绘制处理可支持字形的转换](https://zh.wikipedia.org/wiki/Mac_OS_X_10.6 "wikilink")\[23\]、Windows
    7と同様標準フォントの[ヒラギノは異体字セレクタに未対応である](https://zh.wikipedia.org/wiki/ヒラギノ "wikilink")。
  - [Mac OS X Lion](../Page/Mac_OS_X_Lion.md "wikilink")（10.7）则采用了adobe
    - japan1的IVS\[24\]。

[uts37sample.png](https://zh.wikipedia.org/wiki/File:uts37sample.png "fig:uts37sample.png")
のお嬢様だ」「[芦](https://zh.wikipedia.org/wiki/芦 "wikilink")」字之下的「戸」分别为[新字体及](../Page/新字体.md "wikilink")[旧字体](https://zh.wikipedia.org/wiki/旧字体 "wikilink")\]\]

  - Alpha（文本编辑器） -
    2008年2月在IVS-OTFT测试公开版中，通过将异体字选择器的信息转换为opentype功能标签的信息，对应于由不同体字选择器进行的格里夫的切换。\[25\]。
  - [gdi++](https://zh.wikipedia.org/wiki/gdi++ "wikilink")
  - [Emacs 23](../Page/Emacs.md "wikilink")\[26\]
  - [EmEditor v11之后](../Page/EmEditor.md "wikilink")\[27\]
  - FooEditor （文本编辑器）\[28\]
  - [gPad](https://zh.wikipedia.org/wiki/gPad "wikilink")（文本编辑器）
  - [Mery](https://zh.wikipedia.org/wiki/Mery "wikilink") （文本编辑器）
  - [oedit](https://zh.wikipedia.org/wiki/oedit "wikilink") （文本编辑器）
  - [Adobe Reader
    9](https://zh.wikipedia.org/wiki/Adobe_Reader "wikilink")、[Flash
    Player
    10](https://zh.wikipedia.org/wiki/Flash_Player "wikilink")、[Adobe
    InDesign
    CS4之后的](../Page/Adobe_InDesign.md "wikilink")[Adobe软件](../Page/Adobe.md "wikilink")\[29\]。
  - Windows
    7及之上的[Opera](https://zh.wikipedia.org/wiki/Opera "wikilink")（[Presto](../Page/Presto.md "wikilink")）\[30\]
  - [Mozilla
    Firefox版本](https://zh.wikipedia.org/wiki/Mozilla_Firefox "wikilink")4之后\[31\]。另外，在版本31以后，改由CJK来实现该功能\[32\]。
  - [WebKit可以支持SVG字体](../Page/WebKit.md "wikilink")，由SVG字体定义的IVS进行字形切换。这与Opera相同\[33\]。
  - [Microsoft Office](../Page/Microsoft_Office.md "wikilink") 2007 -
    2010版本需要附加Unicode IVS Add-in for Microsoft
    Office插件\[34\]，2010之后的默认自带。
  - [LibreOffice](https://zh.wikipedia.org/wiki/LibreOffice "wikilink")
    4.1之后/[Apache OpenOffice](../Page/Apache_OpenOffice.md "wikilink")
    4.0之后

## 参考资料

## 延伸阅读

  -
  -
  -
  -
  - 上記3資料を併合して日本語訳したもの。

## 参见

  - [字体](../Page/字体.md "wikilink")
  - [組合字符](../Page/組合字符.md "wikilink")
  - [控制字符](../Page/控制字符.md "wikilink")
  - [中日韓統一表意文字](../Page/中日韓統一表意文字.md "wikilink")
  - [中日韓相容表意文字](../Page/中日韓相容表意文字.md "wikilink")

## 外部链接

  - [Standardized Variants -
    Unicode](http://www.unicode.org/Public/UNIDATA/StandardizedVariants.txt)
    (已录入的SVS一覧)
  - [Unicode Technical Standard \#37 - UNICODE IDEOGRAPHIC VARIATION
    DATABASE](http://www.unicode.org/reports/tr37/) (IVD结构和注册程序)
  - [Ideographic Variation Database -
    Unicode](http://www.unicode.org/ivd/index.html) (关于IVD)
  - [IVD Sequences -
    Unicode](http://www.unicode.org/ivd/data/2017-12-12/IVD_Sequences.txt)
    (2017-12-12版)  (IVD登记的汉字的组合列表)
  - [異体字选择器](https://747.github.io/vsselector/) - 搜索SVS・IVS所有可用的变体。

[Category:Unicode](https://zh.wikipedia.org/wiki/Category:Unicode "wikilink")

1.  JIS X 0221:2007の規格票では「字形選択子」という訳語を当てているが、全く意味の異なる"Character shaping
    selectors"などにも全く同じ訳語を当てているので、混乱を避けるため本項では「異体字セレクタ」という訳語を用いる。

2.

3.  之所以不同的字有相同的编码，不如说是在最初定义字形的16位编码的字库不足，所以不足以将所有汉字的正确形态一一描述进去。

4.

5.   [デモ映像](http://channel9.msdn.com/ShowPost.aspx?PostID=222960#222960)

6.

7.

8.

9.  一般にはSVSが略称として使われることがあるが、公式な略称ではない

10.

11.

12.

13. なおAdobe-Japan1-6の文字セットに含まれる漢字は14,664個である

14.

15.

16.

17.

18.

19.

20.

21.

22.

23.

24.

25.

26.

27.

28.

29.
30.

31.

32.

33.

34.