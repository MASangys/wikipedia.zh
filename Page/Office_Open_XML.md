**Office Open XML**（縮寫：**Open XML**、**OpenXML**或**OOXML**），為由[Microsoft開發的一種以](https://zh.wikipedia.org/wiki/Microsoft "wikilink")[XML](../Page/XML.md "wikilink")為基礎並以[ZIP格式](../Page/ZIP格式.md "wikilink")壓縮的電子文件規範，支持[文件](https://zh.wikipedia.org/wiki/文件 "wikilink")、[表格](https://zh.wikipedia.org/wiki/表格 "wikilink")、[備忘錄](../Page/備忘錄.md "wikilink")、[幻燈片等檔案格式](https://zh.wikipedia.org/wiki/幻燈片 "wikilink")。

OOXML在[2006年12月](../Page/2006年12月.md "wikilink")成為了[ECMA規範的一部分](https://zh.wikipedia.org/wiki/ECMA "wikilink")，編號為ECMA-376；並於[2008年4月](../Page/2008年4月.md "wikilink")通過[國際標準化組織](../Page/國際標準化組織.md "wikilink")的表決，在兩個月後公佈為[ISO](https://zh.wikipedia.org/wiki/ISO "wikilink")／[IEC](https://zh.wikipedia.org/wiki/IEC "wikilink") 29500國際標準。微軟推出這個格式，很多人認為是出於商業考量。\[1\]許多專家指出，該標準並不是個完整的標準，採用了許多[微軟的獨有規格](https://zh.wikipedia.org/wiki/微軟 "wikilink")，使用上困難重重。\[2\]\[3\]

从Microsoft Office 2007开始，Office Open XML文件格式已经成为Microsoft Office默认的文件格式。\[4\]\[5\]\[6\]Microsoft Office 2010支持对ECMA-376标准文档的读操作，ISO/IEC 29500 Transitional的读/写，ISO/IEC 29500 Strict的读取。\[7\]Microsoft Office 2013同时支持ISO/IEC 29500 Strict的读写操作。\[8\]

它的競爭對手是[OpenDocument Format](https://zh.wikipedia.org/wiki/OpenDocument_Format "wikilink")，後者是被廣泛接受的一種開放的文檔存儲和交換規範。

## 版本

存在以下几个版本的Office Open XML标准。

### ECMA 376

ECMA 376，目前歷經4個版本，第1版（2006年12月）、第2版（2008年12月）、第3版（2011年6月）、第4版（2012年12月）。\[9\]

### ISO/IEC 29500

ISO/IEC 29500目前最新的版本為2012年的版本 ISO/IEC标准的结构分为四部分。第1、2和3是独立的标准，第2部分用于其他文件格式，包括[Design_Web_Format和](https://zh.wikipedia.org/wiki/Design_Web_Format "wikilink")[XPS格式](../Page/XML纸张规范.md "wikilink")。第4部分作用是读出第1部分的变体。\[10\]

  - 第1部分（基础知识和标记语言参考）
  - 第2部分（解包约定）
  - 第3部分（标记兼容性和可扩展性）
  - 第4部分（过渡期迁移特性）

## 批評

微軟公司發表的Office Open XML使用許多非標準的規範，造成與其他辦公室軟體(如[LibreOffice](https://zh.wikipedia.org/wiki/LibreOffice "wikilink"))讀取時發生不相容或內容偏移的情形，目的是讓[Microsoft Office保持市場優勢](../Page/Microsoft_Office.md "wikilink")。

[ODF](https://zh.wikipedia.org/wiki/ODF "wikilink")(廣泛接受的開放文檔規範)編碼時會使用其他標準規範(如[ISO 639](../Page/ISO_639.md "wikilink")、[MathML](https://zh.wikipedia.org/wiki/MathML "wikilink"))來進行儲存，但OOXML使用非標準的編碼進行存取。例如 ODF 裡面的顏色代碼，不管是試算表、文件、簡報等，紅色的代碼都是 \#FF0000，然而在OOXML裏隨不同產品，代碼分別為： Word：\#FF0000， Excel：\#FFFF0000， Powerpoint：\#FF0000， 。

OOXML設計的目的是將微軟定義的 doc、ppt、xls 二進制格式轉成 XML 格式，並沒有依照 XML 的特性最佳化，而其私有格式內含的額外非標準元件也包含在內，例如 [ActiveX](../Page/ActiveX.md "wikilink") 等等（過時，且容易用於攻擊）；第二個原因是 [比尔·盖茨](../Page/比尔·盖茨.md "wikilink") 在 1998 年留下的備忘錄，提到「不能讓其他瀏覽器可完美顯示 MS Office 文件，只能讓自家公司的專屬 [IE](../Page/Internet_Explorer.md "wikilink") 可正確顯示」，現在的狀況可以說是微軟延續了比爾·蓋茲的精神，使「現代的 MS Office 存出的 OOXML 檔」刻意做成第三方軟體不能完善地解讀、呈現，顯示OOXML並非如其所聲稱的開放。\[11\]

## Open XML Format SDK

[Microsoft](https://zh.wikipedia.org/wiki/Microsoft "wikilink") Open XML Format [SDK](https://zh.wikipedia.org/wiki/SDK "wikilink")\[12\]包含一套[托管代码库用于编程以创建](https://zh.wikipedia.org/wiki/托管代码 "wikilink")、操纵Office Open XML文件。并不用于代替Microsoft Office Object Model，也不提供文件格式的顶层抽象。使用Open XML SDK必须理解文档格式结构。对Word文档不提供诸如layout功能；对Excel文档，不提供诸如重新计算、数据刷新等功能。

  - 版本1.0发布于2008年6月10日。\[13\]配合Office Open XML规范的ISO/IEC标准化过程。\[14\]
  - 版本2.0： 用于.NET 3.5应用程序。支持使用.NET的强类型类来直接表示XML的element/attribute/value、 使用Office Open XML schema验证Office Open XML文档、在Office Open XML文档中搜索。该SDK建于System.IO.Packaging API之上。使用了.NET Framework Language-Integrated Query (LINQ)技术用强类型。把很多操作Open XML packages封装为API，以简化使用。
  - 版本2.5： 用于.NET 4.0应用程序。发布于2014年6月\[15\]并在github上开源。\[16\]这是目前最高版本。支持Office 2013的一些新的类。读取 ISO/IEC 29500 Strict Format文档。

**Open XML SDK 2.5 Productivity Tool for Microsoft Office**提供许多特性，如给予文档内容产生Open XML SDK 2.5源代码，比较源与目标Open XML documents以产生源代码从源创建目标文档、验证文档、显示文档，ECMA376v1标准，Microsoft Office实现注解。

通常安装在 C:\\Program Files (x86)\\Open XML SDK\\V2.5\\

一个Open XML文档包含多个文档部分（document part）。ZIP格式支持任意访问各个部分。例如，一个slide页面、Word文档中的comment，都是独立的文档部分。一个Open XML文档就是一个Open Packaging Conventions (OPC)包(package)。每个文档部分有个部分名字，由一系列segments或一个pathname组成，如"/word/theme/theme1.xml"。包的\[Content_Types\].xml部分，用于确定包中所有文档部分的内容类型。

### SpreadsheetML文档

SpreadsheetML文档包含<workbook> element，其内部包含<sheets>与<sheet>用于表示各个worksheet。每个worksheet被创建为一个独立的XML文件。一个spreadsheet文档还可以包含

<table>

, <chartsheet>, <pivotTableDefinition>等element。

在命名空间DocumentFormat.OpenXML.Spreadsheet中定义了spreadsheet中重要的elements：

| Package Part           | Top Level SpreadsheetML Element | Open XML SDK 2.5 Class | 描述                                                                                                          |
| ---------------------- | ------------------------------- | ---------------------- | ----------------------------------------------------------------------------------------------------------- |
| Workbook               | workbook                        | Workbook               | 主文档part的根元素                                                                                                 |
| Worksheet              | worksheet                       | Worksheet              | A type of sheet that represent a grid of cells that contains text, numbers, dates or formulas.              |
| Chart Sheet            | chartsheet                      | Chartsheet             | A sheet that represents a chart that is stored as its own sheet.                                            |
| Table                  | table                           | Table                  | A logical construct that specifies that a range of data belongs to a single dataset.                        |
| Pivot Table            | pivotTableDefinition            | PivotTableDefinition   | A logical construct that displays aggregated view of data in an understandable layout.                      |
| Pivot Cache            | pivotCacheDefinition            | PivotCacheDefinition   | A construct that defines the source of the data in the PivotTable.                                          |
| Pivot Cache Records    | pivotCacheRecords               | PivotCacheRecords      | A cache of the source data of the PivotTable.                                                               |
| Calculation Chain      | calcChain                       | CalculationChain       | A construct that specifies the order in which cells in the workbook were last calculated.                   |
| Shared String Table    | sst                             | SharedStringTable      | A construct that contains one occurrence of each unique string that occurs on all worksheets in a workbook. |
| Conditional Formatting | conditionalFormatting           | ConditionalFormatting  | A construct that defines a format applied to a cell or series of cells.                                     |
| Formulas               | f                               | CellFormula            | A construct that defines the formula text for a cell that contains a formula.                               |

## 参考资料

[Category:文件格式](https://zh.wikipedia.org/wiki/Category:文件格式 "wikilink") [Category:Microsoft_Office](https://zh.wikipedia.org/wiki/Category:Microsoft_Office "wikilink") [Category:IEC標準](https://zh.wikipedia.org/wiki/Category:IEC標準 "wikilink") [Category:Ecma標準](https://zh.wikipedia.org/wiki/Category:Ecma標準 "wikilink") [Category:基于XML的标准](https://zh.wikipedia.org/wiki/Category:基于XML的标准 "wikilink")

1.
2.
3.
4.
5.
6.
7.  [Overview of the XML file formats in Office 2010](http://technet.microsoft.com/en-us/library/cc179190.aspx)
8.
9.
10.
11. [微軟文書格式為何常跑掉？揭開 OOXML 格式大祕辛](https://technews.tw/2017/08/16/the-big-secret-of-ooxml/)
12.
13.
14.
15.
16. [Open-XML-SDK on github](https://github.com/OfficeDev/Open-XML-SDK)