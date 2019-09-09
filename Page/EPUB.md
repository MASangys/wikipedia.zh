**EPUB**（Electronic Publication的缩写，[電子出版](../Page/電子出版.md "wikilink")）是一種電子圖書標準，由[國際數位出版論壇](https://zh.wikipedia.org/wiki/國際數位出版論壇 "wikilink")（IDPF）提出；其中包括3種文件格式標準（文件的扩展名為`.epub`），這個格式已取代了先前的[Open eBook開放](../Page/Open_eBook.md "wikilink")[電子書](../Page/電子書.md "wikilink")標準\[1\]。

## 概覽

EPub是一個自由的開放標準，屬於一種可以「自動重新編排」的內容；也就是文字內容可以根據閱讀設備的特性，以最適於閱讀的方式顯示。EPub檔案內部使用了XHTML或[DTBook](https://zh.wikipedia.org/wiki/DTBook "wikilink")（一種由DAISY Consortium提出的XML標準）來展現文字、並以zip壓縮格式來包裹檔案內容。EPub格式中包含了數位版權管理（DRM）相關功能可供選用。\[2\]

EPub於2007年9月成為國際數位出版論壇（IDPF）\[3\]的正式標準，以取代舊的開放Open eBook電子書標準。EPub包括三項主要規格：

  - 開放出版結構（Open Publication Structure，OPS）2.0，以定義內容的版面；
  - 開放包裹格式（Open Packaging Format，OPF）2.0，定義以XML為基礎的.epub檔案結構；
  - OEBPS容納格式（OEBPS Container Format，OCF）1.0，將所有相關文件收集至ZIP壓縮檔案之中。

## 文件格式

### 3.2版(當前版本)

### 3.1版

EPUB 3.0推荐规范发布于2011年10月11日。2014年6月26日，EPUB 3.0.1发布，作为3.0的小维护更新。2017年1月5日發布EPUB 3.1，對文字的格式規範進行了重組和清理。EPUB 3.0取代了之前的EPUB 2.0.1版。可以从[IDPF网站](http://idpf.org/epub/30/spec/epub30-changes.html)找到2.0.1到3.0版本的更新内容。

EPUB 3.0由四个规范组成：\[4\]

  - *EPUB出版物3.0*，其定义了出版物级别的语义以及EPUB出版物的首要一致性要求。
  - *EPUB内容文档3.0*，其定义了用于EPUB出版社中的XHTML、SVG和CSS的配置文件。
  - *EPUB开放容器格式（OCF）3.0*，其定义了将一组相关的资源封装到一个作为EPUB容器的单一文件（ZIP）的文件格式和处理模型。
  - *EPUB媒体覆盖3.0*，其定义了同步文本和音频的格式和处理模型。

EPUB 3.0格式旨在解决下列问题：

  - 虽然EPUB能够很好的处理以文本为主的书籍，但其可能不适合那些诸如漫画书的需要精确布局的出版物。\[5\]虽然这被认为是在解决一个已经解决了的问题，而不是解决悬而未决的问题。\[6\]
  - 阻碍大多数科技出版物使用EPUB的主要问题是其不支持[MathML等式格式](https://zh.wikipedia.org/wiki/MathML "wikilink")。现在，其被作为[位图](../Page/位图.md "wikilink")或[SVG图片被嵌入](https://zh.wikipedia.org/wiki/SVG "wikilink")，不能被屏幕阅读器处理，也不能与计算机代数系统交互。EPUB 3.0规范加入了对MathML的支持。
  - 对EPUB规范的其他批评是该规范缺少对链入EPUB书籍、在EPUB书籍之间跳转、在EPUB书籍之内跳转的定义和缺少对注释的定义。对这些链接跳转的阻碍是因为EPUB容器使用的是ZIP文件。此外，目前还不清楚使用EPUB的内部结构标记和直接链接ZIP的文件结构哪个更好。\[7\]不能以标准方式注释EPUB书籍可能会导致难以共享和转移注释，进而限制了使用EPUB的情景，特别是在教学环境中，其不能提供和网络相媲美的交互性。\[8\]

### 2.0.1版

EPUB 2.0发布于2007年10月，2010年9月发布的维护更新版本（2.0.1）对该规范进行了澄清和校正。\[9\]EPUB 2.0.1版有三个规范组成：

  - *开放出版结构*（OPS）2.0.1，包含其内容的格式。\[10\]
  - *开放包装格式*（OPF）2.0.1，使用XML描述`.epub`文件的结构。\[11\]
  - *开放容器格式*（OCF）2.0.1，以[ZIP文档存档所有文件](https://zh.wikipedia.org/wiki/ZIP "wikilink")。\[12\]

EPUB内部使用[XHTML](../Page/XHTML.md "wikilink")或[DTBook](https://zh.wikipedia.org/wiki/DTBook "wikilink")（[数位无障碍资讯系统联盟提供的一种XML标准](https://zh.wikipedia.org/wiki/数位无障碍资讯系统 "wikilink")）表示文本并组织内容文档，使用[CSS的子集提供的布局和格式化](https://zh.wikipedia.org/wiki/CSS "wikilink")。[XML](../Page/XML.md "wikilink")用于创建文档清单、目录和EPUB[元数据](../Page/元数据.md "wikilink")。最后，文件被捆绑在一个[zip文件之中作为一个包装格式](https://zh.wikipedia.org/wiki/zip "wikilink")。

#### 开放出版结构2.0.1

EPUB文件使用XHTML 1.1（或DTBook）构建2.0.1版本书籍的内容。这与之前的版本不同（OEBPS 1.2及更早），其使用的是XHTML的子集。然而，在某些元素上存在限制。EPUB中XHTML文档的[互联网媒体类型](../Page/互联网媒体类型.md "wikilink")是application/xhtml+xml。\[13\]对于所需XHTML模块的列表和限制的描述，可以查看规范的[2.2节](http://idpf.org/epub/20/spec/OPS_2.0.1_draft.htm#Section2.2)。

样式和布局使用CSS 2.0的子集，参考*开放出版结构样式表*。此规范的语法要求阅读系统仅支持一部分CSS属性，并附加了一些自定义属性。自定义属性包括oeb-page-head、oeb-page-foot和oeb-column-number。可以使用@font-face属性实现嵌入字体，同时在开放包装格式的清单中包含字体文件。EPUB中CSS文档的[互联网媒体类型](../Page/互联网媒体类型.md "wikilink")是text/css。\[14\]对于支持属性的列表和详细的信息，可以查看规范的[3.0节](http://idpf.org/epub/20/spec/OPS_2.0.1_draft.htm#Section3.0)。

EPUB还要求使用[互联网媒体类型](../Page/互联网媒体类型.md "wikilink")image/png、image/jpeg、image/gif和image/svg+xml支持[PNG](../Page/PNG.md "wikilink")、[JPEG](../Page/JPEG.md "wikilink")、[GIF](../Page/GIF.md "wikilink")和[SVG图像](https://zh.wikipedia.org/wiki/SVG "wikilink")。规范同样允许其他媒体类型，但创作者必须使用支持的类型提供替代内容。\[15\]对于所有需要的互联网媒体类型的列表，可以查看规范的[Section 1.3.7节](http://idpf.org/epub/20/spec/OPS_2.0.1_draft.htm#Section1.3.7)。

必须使用[Unicode](https://zh.wikipedia.org/wiki/Unicode "wikilink")，内容必须使用[UTF-8](../Page/UTF-8.md "wikilink")或[UTF-16编码](https://zh.wikipedia.org/wiki/UTF-16 "wikilink")。\[16\]这是为了支持国际化和多语种数据。然而，阅读系统不必提供用于显示所有Unicode字符所需的字体，可以使用至少一个占位符显示那些不能完全显示的字符。\[17\]

EPUB的XHTML文件的结构如下：

``` html4strict
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html ns="http://www.w3.org/1999/xhtml" xml:lang="zh-TW">
  <head>
    <meta http-equiv="Content-Type" content="application/xhtml+xml; charset=utf-8" />
    <title>Pride and Prejudice</title>
    <link rel="stylesheet" href="css/main.css" type="text/css" />
  </head>
  <body>
    ...
  </body>
</html>
```

#### 开放包装格式2.0.1

#### 开放容器格式2.0.1

### 数字版权管理

EPUB文件可以随意的作为附加层包含[数字版权管理](../Page/数字版权管理.md "wikilink")，但这不是规范所要求的。\[18\]另外，规范没有指定任何特定的数字版权管理系统，所以出版商可以自由地选择适合的数字版权管理计划。然而，未来版本的EPUB（即OCF）*可能会*指定数字版权管理的格式。\[19\]

EPUB规范没有强制或推荐使用特定的[数字版权管理](../Page/数字版权管理.md "wikilink")计划。这可能会影响[设备对不同数字版权管理系统所支持的水平以及购买电子书的便捷性](https://zh.wikipedia.org/wiki/电子书阅读器 "wikilink")。因此，这些数字版权管理的不兼容可能会按照数字版权管理系统分裂EPUB格式，这将破坏单一标准格式的优势，使得消费者迷惑。\[20\]\[21\]\[22\]\[23\]\[24\]\[25\]

目前，拥有数字版权管理的EPUB文件必须在其ZIP容器的根级META-INF目录中包含一个名为rights.xml的文件。\[26\]

### 验证

一个名为*epubcheck*的[开源工具用于对结构化标记](https://zh.wikipedia.org/wiki/开源 "wikilink")（OPS、OPF、OCF）及XHTML和图片文件进行验证并检查错误。该工具可以从命令行运行，也可以在[网络应用程序](../Page/网络应用程序.md "wikilink")及应用程序中作为[库使用](https://zh.wikipedia.org/wiki/库_\(计算机\) "wikilink")。此工具原作中的大部分工作是在[Adobe Systems中完成的](https://zh.wikipedia.org/wiki/Adobe_Systems "wikilink")。\[27\]

## 軟體

### Epub閱讀軟體

  - [Firefox EpubReader擴充元件](https://zh.wikipedia.org/wiki/Firefox_EpubReader擴充元件 "wikilink")：EPUBReader是一個可以閱讀ePub格式文件的Firefox擴充程式。你無須安裝額外的軟體，在Firefox瀏覽器中便可閱讀ePub格式文件。

  - [Readium](https://zh.wikipedia.org/wiki/Readium "wikilink")（Chrome擴充元件）：Readium可以阅读网络上的epub文件，或者从你的电脑上选择一个epub文件。

  -
  - [calibre](https://zh.wikipedia.org/wiki/calibre "wikilink")：一個自由開源的電子書軟體套裝，可以用來組織、存放以及管理電子書，支援大多數的電子書格式。同時也支援與許多流行的電子書閱讀器進行同步，並可能在数字版权管理的限制下轉換電子書的格式。

  - [Mobipocket](../Page/Mobipocket.md "wikilink")-Reader/Creator

  - Openberg Lector

  - [FBReader](../Page/FBReader.md "wikilink")：可在Windows，Linux，以及多種PDA上使用的開放原始碼閱讀軟體，支援多種檔案格式。

  - [BookGlutton](https://zh.wikipedia.org/wiki/BookGlutton "wikilink")：以閱讀社群為主的免費線上ePub閱讀工具。

  - [Bookworm Free](https://zh.wikipedia.org/wiki/Bookworm_Free "wikilink")：線上ePub閱讀工具（亦適用於[行動設備](http://mobile.bookworm.oreilly.com)）。

  - [Talking Clipboard](https://zh.wikipedia.org/wiki/Talking_Clipboard "wikilink")：文字轉換語音軟體，可讀出ePub書籍內容。

  - [Lovelyreader](https://zh.wikipedia.org/wiki/Lovelyreader "wikilink")：瀏覽器與桌面（win、mac、linux）通用的epub閱讀軟體，支持中文直排與多欄版型，完全免費。

  - sony reader library

  - SumatraPDF

#### Windows

  - [SumatraPDF](https://zh.wikipedia.org/wiki/SumatraPDF "wikilink")：Windows平台上一款免費閱讀器，支持打開PDF, ePub, MOBI, XPS, DjVu, CHM, CBZ和CBR格式。
  - [Universal Reader](https://zh.wikipedia.org/wiki/Universal_Reader "wikilink")（至善閱讀）：支持包括epub在內的多種格式單頁和雙頁真書模式閱讀，支持中文豎排，有漢語、英語、法語界面，完全免費。
  - [Professional PDF Converter](https://zh.wikipedia.org/wiki/Professional_PDF_Converter "wikilink")
  - [Microsoft Edge](../Page/Microsoft_Edge.md "wikilink")

#### Mac OS X

  - [iBooks](https://zh.wikipedia.org/wiki/iBooks "wikilink")：苹果在Mac OS X 10.9 Marvericks中内置的电子书阅读软件。
  - [Murasaki](https://zh.wikipedia.org/wiki/Murasaki "wikilink")：[official site](http://genjiapp.com/mac/murasaki/index_en.html)

#### iOS

  - [iBooks](https://zh.wikipedia.org/wiki/iBooks "wikilink")：Apple的電子書閱讀工具，支援書面材質、翻頁特效、標註、Spotlight、字典功能，能夠透過自家iBooks Store下載電子書。
  - [BookU趣看書](https://zh.wikipedia.org/wiki/BookU趣看書 "wikilink")（iPad版）：即時繁簡互換，支持中文豎排，支持New iPad高解析度，ePub閱讀器免費使用。
  - Stanza（電腦桌面版、iPhone版）
  - [sReader](https://zh.wikipedia.org/wiki/sReader "wikilink")（iPhone版）
  - 京东读书
  - 掌阅
  - 得到APP

#### Android

  - [Mantano Reader](https://zh.wikipedia.org/wiki/Mantano_Reader "wikilink")（Android版）：支持epub、pdf格式文件，对epub格式有相当完美的解析，是安卓系统极少的既能完全支持css又能支持多字体显示的epub阅读软件。
  - [Moon+ Reader](https://zh.wikipedia.org/wiki/Moon+_Reader "wikilink")（Android版）：支持epub、txt格式文件，html、epub、umd、zip及多個在線書庫，支持翻頁效果，並可更換字型，支持注释导出。
  - [iReader掌閱](https://zh.wikipedia.org/wiki/iReader掌閱 "wikilink")（Android版、iPhone版）：iReader是一款五星級閱讀軟件，支持EBK2/TXT/UMD/PDB/CHM/EPUB全主流閱讀格式。
  - [Aldiko](https://zh.wikipedia.org/wiki/Aldiko "wikilink")（Android版）
  - [掌上书苑](https://zh.wikipedia.org/wiki/掌上书苑 "wikilink")（Android版）：epub電子書閱讀軟件，支持從掌上書苑下載、閱讀數萬部epub格式電子書。
  - [Anyview](https://zh.wikipedia.org/wiki/Anyview "wikilink")（Android版）：具有舒适页面阅读体验的知名阅读软件。
  - [多看阅读](https://zh.wikipedia.org/wiki/多看阅读 "wikilink") （Android版）:专门针对epub的电子书阅读器，完美支持epub格式，可以实现图片全屏放大，弹出注释，还可以很方便的做笔记！
  - [奇特阅读(Gitden Reader)](https://zh.wikipedia.org/wiki/奇特阅读\(Gitden_Reader\) "wikilink")（Android版、IOS版）：针对epub书籍推出的电子书阅读器，支持epub2.0规格标准，并且支持epub3.0最高规格。
  - [FBReader](../Page/FBReader.md "wikilink")（Android版）：多格式支持，高度可定制并支持云同步的电子书阅读器。支持epub2.0及epub3.0的主要特点。该应用程序是开源的(GPL)
  - [Reasily](https://zh.wikipedia.org/wiki/Reasily "wikilink")（Android版）：支持 EPUB2 与 EPUB3 规格，包含 MathML 等。可同时开启多本书籍。反应速度快。可高亮，注释，并云同步至 Google 云端硬碟。可自订 CSS 与字型档。

### Epub製作軟體

  - [電電轉換器](http://conv.denshochan.com/tw)：提供Markdown文件轉包括直排在內EPUB 3檔案的線上服務。
  - [AZARDI ePub Desktop Reader](https://zh.wikipedia.org/wiki/AZARDI_ePub_Desktop_Reader "wikilink")（僅有Windows版）：內建epub編輯和重新壓縮打包功能。
  - [Sigil](https://zh.wikipedia.org/wiki/Sigil "wikilink")：跨平台的开源epub电子书编辑器，支持Windows、Linux和Mac系统。
  - [eScape](https://zh.wikipedia.org/wiki/eScape "wikilink")：供自由軟體Open Office使用的epub製作工具；適用於Windows與Linux系統。
  - [epubBuilder](https://zh.wikipedia.org/wiki/epubBuilder "wikilink")：功能强大的epub电子书制作软件，多种格式导入。支持Stanza, Sony 505, Adobe DE等多种阅读器。
  - [calibre](https://zh.wikipedia.org/wiki/calibre "wikilink")：一個自由開源的電子書軟體套裝，可以用來組織、存放以及管理電子書，支援大多數的電子書格式。同時也支援與許多流行的電子書閱讀器進行同步，並可能在数字版权管理的限制下轉換電子書的格式。
  - [EpubSTAR](https://zh.wikipedia.org/wiki/EpubSTAR "wikilink")：出色的epub轉換生成軟體，即word to epub和text to epub轉換程式。可以利用現成的word文檔（word 97/2003/2007/2010）或純文字的text文檔，自動生成epub格式電子書。其特色是簡單易學，一鍵轉換，操作方便。只需三步，就可製作一本成熟的印刷品質般的電子書，讓初學者也有機會體驗高品質電子書製作的機會。
  - [八千卷图片epub](https://zh.wikipedia.org/wiki/八千卷图片epub "wikilink")：提供在线生成epub格式的电子书，可以将图片、照片等导入加上文字说明生成电子书，以方便传阅，即时导入即时生成，支持ibook等多种阅读器。
  - [Jutoh](https://zh.wikipedia.org/wiki/Jutoh "wikilink"):專業級的epub電子書籍製作軟體，支持最新的epub3.0標準。

<!-- end list -->

  - [LibreOffice](https://zh.wikipedia.org/wiki/LibreOffice "wikilink"):開放的辦公室套裝軟體，在6.0版中增加「匯出為EPUB」之選項。支援Windows 、 Mac 及 Linux。
  - [Google文件](../Page/Google文件.md "wikilink"):Google提供的網頁式辦公套件在線服務，在檔案-\>下載-\>EPUB Publication(.epub)之選項。

## 作業系統

  - [OpenInkpot](https://zh.wikipedia.org/wiki/OpenInkpot "wikilink")：開放原始碼的嵌入式作業系統，相容於多種eReader閱讀設備。

## 硬體閱讀系統

  - [蘋果Mac系列](https://zh.wikipedia.org/wiki/Mac "wikilink")（使用iBooks軟體）

  - [蘋果iPad](https://zh.wikipedia.org/wiki/iPad "wikilink")（使用iBooks軟體）

  - [蘋果iPhone](https://zh.wikipedia.org/wiki/iPhone "wikilink")（使用iBooks軟體）

  - [蘋果iPod Touch](https://zh.wikipedia.org/wiki/iPad "wikilink")（使用iBooks軟體）

  - [翰林eReader](https://zh.wikipedia.org/wiki/翰林eReader "wikilink")

  - Sony Reader

  - [COOL-ER Reader](http://www.coolreaders.com/)

  - 使用Android系統的手機或其他裝置（使用[FBReaderJ](http://www.fbreader.org/FBReaderJ/)）

  - [Plastic Logic](http://www.plasticlogic.com/)

  - BenQ nReader

  - [Bambook](https://zh.wikipedia.org/wiki/Bambook "wikilink")（基于Android）

  - [Nook](../Page/Nook.md "wikilink")（基于Android）

  -
  - mooInk（由閱讀平台 readmoo 推出，基於 Android）

## 參見

  - [Openlnkpot](https://zh.wikipedia.org/wiki/Openlnkpot "wikilink")

## 参考文献

## 外部連結

  - [Epub格式建構指南](http://www.hxa.name/articles/content/epub-guide_hxa7241_2007.html)（[亦適用於EPUB](http://www.hxa.name/articles/content/EpubGuide-hxa7241.epub)）

  - Adobe公司所提供的[電子書範本圖書庫](http://www.adobe.com/products/digitaleditions/library/)

  - Infogrid Pacific公司所提供的[電子書範本圖書庫](https://web.archive.org/web/20090601063632/http://www.infogridpacific.com/igp/AZARDI/ePub%20Books%20and%20Resources/)

  - [使用EPUB制作数字图书教程](https://www.ibm.com/developerworks/cn/xml/tutorials/x-epubtut/)

[Category:基于XML的标准](https://zh.wikipedia.org/wiki/Category:基于XML的标准 "wikilink") [Category:自由文件格式](https://zh.wikipedia.org/wiki/Category:自由文件格式 "wikilink")

1.  [EPUB 101](http://www.idpf.org/digitalbook09/Presentations/EPUB%20101.pdf)

2.  [IDPF EPub常見問答](https://www.idpf.org/forums/viewtopic.php?t=22)

3.  [國際數位出版論壇（IDPF）首頁](http://www.idpf.org/)

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