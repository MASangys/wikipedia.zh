{{ infobox software | name = FreeType | developer = 大衛·特納、羅伯特·威廉、維納爾·倫貝爾\[1\]\[2\]以及其他FreeType貢獻者 | logo = Freetype logo new.svg | logo size = 360px | released = \[3\] | latest release version = 2.10.1 | latest release date = \[4\] | operating system = [跨平台](https://zh.wikipedia.org/wiki/跨平台 "wikilink") | programming language = [C](https://zh.wikipedia.org/wiki/C語言 "wikilink") | genre = [字体光栅化](../Page/字体光栅化.md "wikilink") | license = [GNU通用公共许可证](../Page/GNU通用公共许可证.md "wikilink")、[FTL許可證](http://git.savannah.gnu.org/cgit/freetype/freetype2.git/plain/docs/FTL.TXT) | website = <http://freetype.org/> }}

**FreeType**是一個用[C語言實現的一個](https://zh.wikipedia.org/wiki/C語言 "wikilink")[字体光栅化](../Page/字体光栅化.md "wikilink")[函式庫](../Page/函式庫.md "wikilink")。它可以用來將字符[柵格化並映射成](https://zh.wikipedia.org/wiki/柵格化 "wikilink")[-{zh-cn:位图;zh-tw:點陣圖}-以及提供其他字體相關業務的支持](https://zh.wikipedia.org/wiki/位圖 "wikilink")。

FreeType並不提供[API以執行更高級的功能](https://zh.wikipedia.org/wiki/API "wikilink")，如文字佈局或圖形處理（例如彩色文本[渲染](../Page/渲染.md "wikilink")、「空洞化」等）。然而，它提供了一個簡單、易用並統一的[接口來訪問](../Page/介面_\(程式設計\).md "wikilink")[字型](../Page/字型.md "wikilink")文件的內容，從而極大地簡化了這些任務。它支持各種字體格式，包括[TrueType](../Page/TrueType.md "wikilink")、[Type 1](https://zh.wikipedia.org/wiki/Type_1 "wikilink")、以及[OpenType](../Page/OpenType.md "wikilink")。

FreeType在兩個[自由軟件許可證的授權下發佈](https://zh.wikipedia.org/wiki/自由軟件許可證 "wikilink")：[GNU通用公共許可證或者以及一個](https://zh.wikipedia.org/wiki/GNU通用公共許可證 "wikilink")[類BSD許可證](https://zh.wikipedia.org/wiki/類BSD許可證 "wikilink")。因此這個[函式庫](../Page/函式庫.md "wikilink")能夠使用于任何類型的項目中，無論其是否是[專有軟件](https://zh.wikipedia.org/wiki/專有軟件 "wikilink")。同時也包括正在使用的主要自由桌面系統軟件。

## 功能

### 字体微调

  - TrueType: TrueType 字节码直译器于2.4.0版默认启用，\[5\]TrueType次像素微调支持于2.4.11版实现。\[6\]
    PostScript: Dave Arnold的新的CFF解析及微调引擎于2.4.12版加入，\[7\]2.5.0.1版默认启用。
    Auto-hinter: Auto-hinter于FreeType 2.1.10中以auto-fitter取代。\[8\]新的用于中日韩字体的算法于FreeType 2.2中加入，基于Akito Hirai的补丁。\[9\]

### 文件格式

Adobe的新型SING字型包格式于FreeType 2.2中加入。\[10\]TrueType字体"head"表格当中的Bit 1于FreeType 2.2中得到支持。\[11\]对SFNT cmap 13表格格式的支持于2.3.10中加入。\[12\]对带有SFNT封装的OpenType Collection及CFF字体的支持于2.4.11版加入。\[13\]

  - PostScript: 针对AFM文件的追踪性字距调整于FreeType 2.2中加入。\[14\]

## 历史

FreeType于1996年由大卫·特纳（David Turner）创造，用以渲染TrueType字体，包括一个处理TrueType字节码的解析器。最初以[Pascal语言编写](../Page/Pascal_\(程式語言\).md "wikilink")，1997年由罗伯特·威廉（Robert Wilhelm）移植到C语言。随后维纳尔·伦贝尔（Werner Lemberg）加入开发组并维护Freetype至今。\[15\]\[16\]\[17\]

FreeType 1只支持TrueType字体格式，但包含了一个扩展来支持[OpenType](../Page/OpenType.md "wikilink")文本排版功能。

### 大规模重写的2.0

FreeType 2.0版于2000年发布，带来完全重写的代码以使之模块化。FreeType 2带来对更多字体格式的支持，并且演化出被开发者称为“更精简且更强大”的源代码。\[18\]FreeType 2不与FreeType 1兼容，但开发者声称从FreeType 1转移到FreeType 2表现出的难度很小。\[19\]然而由于文本布局处理不是FreeType 2的目标，FreeType 1的OpenType文本布局功能在FreeType 2中被移除。FreeType 1的OpenType文本布局功能的进一步演化形式用在了[Pango](../Page/Pango.md "wikilink")文本布局库。[HarfBuzz](../Page/HarfBuzz.md "wikilink")项目进一步发展出有着完全重写的内容的所需特性作为独立的库，带有比Pango的许可证略为严格的授权。\[20\]

### 专利冲突

1999年Freetype项目被[苹果公司通知FreeType](https://zh.wikipedia.org/wiki/苹果公司 "wikilink")TrueType[字体微调相关专利](https://zh.wikipedia.org/wiki/字体微调 "wikilink")。之后Freetype被默认停用或者围绕专利相关技术开发。因此像[FreeBSD](../Page/FreeBSD.md "wikilink")或[Linux](../Page/Linux.md "wikilink")之类的一些开放源代码项目包含禁用或者阉割[字体微调的FreeType以避开苹果持有的](https://zh.wikipedia.org/wiki/字体微调 "wikilink")[软件专利](https://zh.wikipedia.org/wiki/软件专利 "wikilink")。\[21\]

2010年5月起，所有与字体微调相关的有冲突的软件专利被解除，\[22\]允许FreeType的TrueType字体微调引擎开放源代码使用。许多禁用该引擎的系统提供选项来让用户启用。Fedora中，freetype-freeworld从专有的[yum资源库转移到自由资源库](../Page/Yellowdog_Updater,_Modified.md "wikilink")\[23\]

### CFF引擎捐赠

2013年Adobe给FreeType项目捐赠了一个CFF（Compact Font Format，[PostScript字体](https://zh.wikipedia.org/wiki/PostScript字体 "wikilink")）渲染引擎，在2.5版被加入并默认启用。\[24\]\[25\]

## 用户

  - [Android](../Page/Android.md "wikilink"): FreeType在Android用作字体渲染引擎。\[26\]
    [苹果公司](https://zh.wikipedia.org/wiki/苹果公司 "wikilink"): 苹果在[iOS](https://zh.wikipedia.org/wiki/iOS "wikilink")\[27\]和[macOS](https://zh.wikipedia.org/wiki/macOS "wikilink")\[28\]中使用FreeType，仅次于。
    [Java](../Page/Java.md "wikilink"): 2007年，Sun公司在[OpenJDK](../Page/OpenJDK.md "wikilink")這個Java開發工具包中將專有的字型柵格化引擎變更為FreeType。<ref>{{cite web

|url=<http://openjdk.java.net/projects/font-scaler/> |title=Font Scaler |accessdate=4 April 2014}}</ref>

  - [PlayStation](../Page/PlayStation.md "wikilink"): 索尼于[PlayStation 3](../Page/PlayStation_3.md "wikilink")\[29\]、[PlayStation 4](../Page/PlayStation_4.md "wikilink")\[30\]及[PlayStation Vita](../Page/PlayStation_Vita.md "wikilink")\[31\]的控制台中搭载FreeType。

<!-- end list -->

  - [ReactOS](https://zh.wikipedia.org/wiki/ReactOS "wikilink"): FreeType用作ReactOS的字體渲染程序。\[32\]

### 其他

[Screenshot_of_MacType_2013.1231.png](https://zh.wikipedia.org/wiki/File:Screenshot_of_MacType_2013.1231.png "fig:Screenshot_of_MacType_2013.1231.png") 在被多數自由桌上型系統軟體使用的同時，FreeType也被現代[電子遊戲](https://zh.wikipedia.org/wiki/電子遊戲 "wikilink")\[33\]\[34\]及用於[Wii](../Page/Wii.md "wikilink")的[Opera用作柵格化引擎](https://zh.wikipedia.org/wiki/Opera "wikilink")。\[35\]gdipp\[36\]及[MacType](../Page/MacType.md "wikilink")\[37\]專案把[Windows系統的字型柵格化引擎以FreeType取代](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")。

## 参见

  - [HarfBuzz](../Page/HarfBuzz.md "wikilink")，用于Unicode文本塑形的库
  - [Pango](../Page/Pango.md "wikilink")，多语种文本渲染引擎
  - [FontForge](../Page/FontForge.md "wikilink")，字体编辑软件
  - [AltNETType](http://www.altsoftlab.com/altnettype.aspx)，FreeType的C\#移植版本

## 參考資料

## 外部連結

  - [FreeType首頁](http://freetype.org/)
  - [關於Freetype的文章](https://web.archive.org/web/20090203163022/http://hackyourway.net/2008/07/30/font-technology-and-freetype)

[Category:數碼字體排印](https://zh.wikipedia.org/wiki/Category:數碼字體排印 "wikilink") [Category:C函式庫](https://zh.wikipedia.org/wiki/Category:C函式庫 "wikilink") [Category:自由排版软件](https://zh.wikipedia.org/wiki/Category:自由排版软件 "wikilink") [Category:字体格式](https://zh.wikipedia.org/wiki/Category:字体格式 "wikilink")

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
13.
14.
15.
16. [ft2faq](https://web.archive.org/web/20090718090712/http://www.cs.sunysb.edu/documentation/freetype-2.1.9/docs/ft2faq.html)
17.
18.
19.
20.
21.
22.
23.
24. [adobe-contributes-cff-rasterizer-to-freetype](http://blog.typekit.com/2013/05/01/adobe-contributes-cff-rasterizer-to-freetype/)
25. [youve-got-cff](http://google-opensource.blogspot.de/2013/06/youve-got-cff.html)
26.
27.
28.
29.
30.
31.
32.
33. 遊戲公司[遺迹娛樂](../Page/遺迹娛樂.md "wikilink")在他們的遊戲Dawn of War及Company of Heroes當中使用FreeType，以其在載入屏幕方面視為可靠。
34. FreeType也被用於《A Treehouse of My Own》及《Julie Saves The Eagles》之類的PC版遊戲。
35. [Wii](../Page/Wii.md "wikilink")上的Opera 9控制台使用FreeType，可以通過能以下列途徑在Wii中搜尋到的Third-party information頁面找到：[Internet Channel](https://zh.wikipedia.org/wiki/Internet_Channel "wikilink") \> Operations Guide \> About \> Opera 9 for Wii — Third-party information
36.
37.