**Translate
Toolkit**是本地化和翻译的工具箱。它提供了一组工具，用来操作[本地化文件格式和需要本地化的文件](https://zh.wikipedia.org/wiki/本地化 "wikilink")。它还提供了用于开发其他本地化工具的API。

此工具箱使用[Python编程语言编写而成](../Page/Python.md "wikilink")。它是[自由软件](../Page/自由软件.md "wikilink")，最初由[Translate.org.za开发和发布于](https://zh.wikipedia.org/wiki/Translate.org.za "wikilink")2002年，目前由Translate.org.za和社区开发者维护。

## 历史

此工具箱最初是作为mozpotools由David
Fraser为Translate.org.za而开发的。Translate.org.za的中心是翻译使用[Gettext](../Page/Gettext.md "wikilink")
PO作为本地化的KDE。伴随着内部的重心转移到最终用户、跨平台和OSS软件，这个团体决定本地化[Mozilla应用程序套件](../Page/Mozilla_Application_Suite.md "wikilink")。这样就要求使用不如Gettext
PO那么丰富的新工具和新格式。因此创建mozpotools程序来把Mozilla DTD和.properties文件转换为Gettext PO。

因此需要开发各种工具，包括`pocount`，用来计算源文本单词数以便正确预估任务的工具；`pogrep`，全面搜索翻译的工具；和`pofilter`，检查各种质量问题的工具。

当Translate.org.za开始翻译OpenOffice.org时，它只是自然地调整Translate
Toolkit来处理OpenOffice.org的内部文件格式。如今使用PO文件翻译OpenOffice.org成为默认的翻译方式。

作为WordForge项目的一部分，这个工作得到了重要的推动，并进一步把工具箱扩展为同时管理XLIFF和PO文件。继续的赞助开发中添加了其他功能，包括转换[Open
Document
Format为XLIFF和管理占位符](../Page/开放文档格式.md "wikilink")（变量、缩写、术语等）的功能。

## 设计目标

此工具箱的主要目标是提高本地化和翻译的质量。这是由下面几方面实现的。首先，关注好的本地化格式，因此工具箱中使用PO和XLIFF本地化格式。这样的好处是停止了本地化格式的激增，同时允许本地化人员工作于一个好的本地化工具。对于工具箱，这意味着要构建转换工具，实现把要翻译的文件与这两种基本格式之间的转换。

其次，构建允许提高本地化一般质量的工具。这些工具允许提取术语和检查术语的一致性。还允许检查各种技术错误，例如变量是否正确使用。

最后，此工具箱提供了强大的本地化API\[1\]，以它们为基础可以构建其他本地化相关工具。

## 用户

许多翻译人员直接使用此工具箱进行质量检查和文件转换。此外，还有许多使用Translate Toolkit API的间接用户：

  - [Pootle](https://zh.wikipedia.org/wiki/Pootle "wikilink") - 在线翻译工具
  - [open-tran](http://open-tran.eu) - 提供翻译记忆查询
  - [Wordforge
    (原名为Pootling)](http://sourceforge.net/projects/wordforge2/) -
    用于Windows和Linux的离线翻译工具
  - [Rosetta](https://launchpad.net/rosetta) -
    由LaunchPad提供的免费网页翻译服务。它主要被作为Ubuntu社区翻译工具。
    请到[Launchpad
    Translations](https://translations.launchpad.net/)参阅它的翻译动态。
  - [OpenOffice.org](../Page/OpenOffice.org.md "wikilink") -
    大部分社区本地化工作是通过由此工具箱生成的PO文件进行
  - [Virtaal](https://zh.wikipedia.org/wiki/Virtaal "wikilink") -
    本地化翻译工具
  - [Translatewiki.net](http://translatewiki.net)

## 支持的文档格式

  - 主要的本地化格式
      - [Gettext](../Page/Gettext.md "wikilink") PO
      - [XLIFF](../Page/XLIFF.md "wikilink") (Normal and PO
        representations)
  - 其他相关的本地化格式
      - [TBX](https://zh.wikipedia.org/wiki/TBX "wikilink")
      - Java [.properties](../Page/.properties.md "wikilink")
      - [Qt](../Page/Qt.md "wikilink") .ts, .qm and .qph (Qt Phrase
        Book)
      - [Gettext](../Page/Gettext.md "wikilink") .mo
      - [OmegaT](../Page/OmegaT.md "wikilink") glossaries
      - [Haiku](../Page/俳句.md "wikilink") catkeys files
  - 其他格式
      - [OpenDocument Format](../Page/开放文档格式.md "wikilink")
      - Plain Text
      - Wiki: [DokuWiki](../Page/DokuWiki.md "wikilink") and
        [MediaWiki](../Page/MediaWiki.md "wikilink") syntax
      - Mozilla DTD
      - OpenOffice.org SDF
      - PHP strings
      - [OS X](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")
        strings
      - [Adobe
        Flex](https://zh.wikipedia.org/wiki/Adobe_Flex "wikilink") files
      - [INI file](https://zh.wikipedia.org/wiki/INI檔案 "wikilink")
      - Windows / Wine .rc files
      - [iCalendar](https://zh.wikipedia.org/wiki/iCalendar "wikilink")
      - [Symbian](https://zh.wikipedia.org/wiki/Symbian "wikilink")
        localization files
      - Subtitles
  - Translation Memory Formats
      - [TMX](https://zh.wikipedia.org/wiki/Translation_Memory_eXchange "wikilink")
      - [Wordfast](../Page/Wordfast.md "wikilink") TM

### OpenDocument格式支持

从2008年6月开始进行增加[OpenDocument
Format支持的工作](../Page/开放文档格式.md "wikilink")。\[2\]此工作由[NLnet基金会资助](https://zh.wikipedia.org/wiki/NLnet "wikilink")，并由Translate.org.za和[Itaapy合作进行](https://zh.wikipedia.org/wiki/Itaapy "wikilink")。\[3\]

## 另请参阅

  - [计算机辅助翻译](../Page/電腦輔助翻譯.md "wikilink")
  - [翻譯記憶](../Page/翻譯記憶.md "wikilink")

## 参考

<references/>

## 外部链接

  - [Translate Toolkit home
    page](http://translate.sourceforge.net/wiki/toolkit/index)

  - [Supported document
    formats](http://translate.sourceforge.net/wiki/toolkit/formats)

  -
  - [Python package
    index](https://web.archive.org/web/20090221032557/http://pypi.python.org/pypi/Translate%20Toolkit)

  -
[Category:软件本地化工具](https://zh.wikipedia.org/wiki/Category:软件本地化工具 "wikilink")
[Category:用Python編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用Python編程的自由軟體 "wikilink")
[Category:國際化與在地化](https://zh.wikipedia.org/wiki/Category:國際化與在地化 "wikilink")

1.
2.
3.