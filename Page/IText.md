**iText**是[Java中用于创建和操作](../Page/Java.md "wikilink")[PDF文件的](https://zh.wikipedia.org/wiki/PDF "wikilink")[开源](https://zh.wikipedia.org/wiki/开源 "wikilink")[库](https://zh.wikipedia.org/wiki/程式庫 "wikilink")。它是由Bruno
Lowagie、Paulo
Soares等人编写的。报告称2001年以来\[1\]，26个不同的贡献者进行了1万多次提交，超过100多万行代码。\[2\]iText具有一个由大型开发团队维护的完善的、成熟的、活跃度同比持平的代码库。\[3\]利用[COCOMO模型](https://zh.wikipedia.org/wiki/COCOMO "wikilink")，花了大约250的努力后，2000年11月iText项目开始了第一次提交。\[4\]

5.0.0版（2009年12月7日发布）后的iText是在[Affero通用公共许可证第](https://zh.wikipedia.org/wiki/Affero通用公共许可证 "wikilink")3版下分发的。之前版本的iText（Java版的至4.2.1版，和C\#版的至4.1.6版）是在[Mozilla公共许可证或](../Page/Mozilla公共许可证.md "wikilink")[LGPL下分发的](../Page/GNU宽通用公共许可证.md "wikilink")。iText同时由iText软件公司通过一个[专有许可证进行分发](../Page/专有软件.md "wikilink")。iText®是1T3XT
BVBA的注册商标

iText已经以iTextSharp的名义移植到[.NET
Framework下](https://zh.wikipedia.org/wiki/.NET_Framework "wikilink")。iTextSharp是用[C\#编写的](../Page/C♯.md "wikilink")，它有一个独立于iText的代码库，但与iText的版本同步。

在2013年中，iText（Java）和iTextSharp（.NET）仅在[SourceForge就有超过](../Page/SourceForge.md "wikilink")500万次的下载量。2013年10月，iText在[SourceForge上每周约有](../Page/SourceForge.md "wikilink")3000次下载\[5\]，而iTextSharp每周约有4000次下载\[6\]。

## 特性

开发者可以用iText来：

  - 从XML文件或数据库来动态生成PDF文档
  - 为浏览器生成PDF文档
  - 利用PDF的许多互动功能
  - 添加书签、页码、水印、条形码等
  - 分割、拼接和处理PDF页面
  - 自动填写PDF表单
  - 给PDF文件添加数字签名

通常情况下，在具有下列情况之一的项目中会使用iText：

  - 内容不是提前准备好的：它基于用户输入或数据库的实时信息来计算、处理。
  - 内容太多，PDF文件无法手动生成。
  - 在批处理过程中，文档需要在无人值守模式下创建。
  - 需要对内容进行定制或个性化。例如，最终用户的名字需要被印在多个页面上。

### 支持的ISO标准

  - ISO 32000-1 (PDF 1.7)
  - ISO 19005
    ([PDF/A](https://zh.wikipedia.org/wiki/PDF/A "wikilink"))\[7\]
  - ISO 14289
    ([PDF/UA](https://zh.wikipedia.org/wiki/PDF/UA "wikilink"))\[8\]

## 历史

1998年冬天，Bruno
Lowagie在[根特大学的一个内部项目开发了一个PDF](../Page/根特大学.md "wikilink")[库](https://zh.wikipedia.org/wiki/程式庫 "wikilink")——rugPdf，用来创建一个PDF文档应用（针对学生管理用）。rugPdf是一个非常小、很复杂[库](https://zh.wikipedia.org/wiki/程式庫 "wikilink")，实现的功能很少，例如简单的读取和写入PDF文件。为了利用这个[库](https://zh.wikipedia.org/wiki/程式庫 "wikilink")，开发者必须了解PDF语法、对象、运算符和操作数。

1999年，Lowagie抛弃了rugPdf的代码，从头开始写了一个新的[库](https://zh.wikipedia.org/wiki/程式庫 "wikilink")——iText。Lowagie创建iText，意图使Java开发者在不了解PDF语法的情况下也可以使用这个[库创建PDF文档](https://zh.wikipedia.org/wiki/程式庫 "wikilink")，并在2000年2月14日将其作为[自由及开放源代码软件发布](../Page/自由及开放源代码软件.md "wikilink")。在2000年的夏天，Paulo
Soares加盟了这个项目，现在他已经是iText新功能的主要开发者之一。

2007年，《SOA
World》（SOA世界）杂志将iText作为企业应该使用的10种开源解决方案之一。[詹姆斯·高斯林称赞iText库](../Page/詹姆斯·高斯林.md "wikilink")，并在Huckster的新版本使用。\[9\][纽约时报还利用iText来创建其公共领域文章的PDF版本](../Page/纽约时报.md "wikilink")。
\[10\]

iText被嵌入在许多产品和服务中，包括[Eclipse
BIRT](https://zh.wikipedia.org/wiki/Eclipse_BIRT "wikilink")、[Jasper
Reports](https://zh.wikipedia.org/wiki/Jasper_Reports "wikilink")、、、[pdftk等等](https://zh.wikipedia.org/wiki/pdftk "wikilink")。\[11\]

2008年末，iText的专有许可证可用；2009年初，iText软件公司成立，成为iText产品的全球许可方。\[12\]

2013年，[德勤提名iText软件集团为](../Page/德勤.md "wikilink")[比荷卢联盟高科技](https://zh.wikipedia.org/wiki/比荷卢联盟 "wikilink")、高成长50强。该公司在比荷卢联盟中排名第10位，在比利时中排名第3位。\[13\]\[14\]\[15\]\[16\]

## 许可证和复刻

iTextSharp 4.1.6/iText
4.2.0之前的版本是在[MPL和](https://zh.wikipedia.org/wiki/MPL "wikilink")[LGPL许可证下分发的](https://zh.wikipedia.org/wiki/LGPL "wikilink")，允许用户在[闭源软件项目中使用](https://zh.wikipedia.org/wiki/闭源软件 "wikilink")。2009年底，iText第5版发布，其许可证被更换为[Affero通用公共许可证第](https://zh.wikipedia.org/wiki/Affero通用公共许可证 "wikilink")3版。
那些不愿意提供其源代码的项目，可以购买iText第5版的商业许可，或没有任何变化的继续使用iText的以前版本（其许可证更宽松）。\[17\]\[18\]然而，开发商Bruno
Lowagie警告说，第5版之前的版本可能包含非LGPL授权的代码，因而以前版本的闭源项目的用户可能需要为侵犯版权负责。虽然AGPL库可以链接到GPL的程序，但AGPL许可证与GPL许可证不兼容。

## 示例

下面的源代码生成一个PDF文件，作为一个[Hello World的例子](../Page/Hello_World.md "wikilink")。

``` java
import java.io.FileOutputStream;
import com.itextpdf.text.Document;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfWriter;

public class ITextHelloWorld {
    public static void main(String args[]) {
        try {
            Document document = new Document();
            PdfWriter.getInstance(document, new FileOutputStream("HelloWorld.pdf"));
            document.open();
            document.add(new Paragraph("Hello World"));
            document.close();
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}
```

## 延展阅读

  -
  - [Review first edition on
    JFree.org](http://www.jfree.org/reviews/itextinaction.html) by David
    Gilbert

  - [Review first edition on
    JavaLobby](http://www.javalobby.org/articles/itext-in-action/) by
    Stephen Kitt

  -
  - [Review second edition in Freies
    Magazin](http://www.freiesmagazin.de/ftp/2010/freiesMagazin-2010-12.pdf#page=50)
    by Michael Niedermair

  - [PDF Generation Made
    Easy](http://www.jguru.com/article/tools/itext-java-pdf-generator.html)
    by Benoy Jose

  - [Tools of the Trade, Part 1: Creating PDF documents with
    iText](http://www.adobepress.com/articles/printerfriendly.asp?p=420686)
    by Jeff Friesen (Adobe Press)

  - [Dynamically Creating PDFs in a Web
    Application](http://www.onjava.com/pub/a/onjava/2003/06/18/dynamic_files.html)
    by Sean C. Sullivan

  - [Creating PDFs with
    iText](http://www.bartneck.de/2008/02/28/creating-pdf-files-with-itext/)
    by Christoph Bartneck

  - [Generate PDF files from Java applications
    dynamically](http://www-128.ibm.com/developerworks/opensource/library/os-javapdf/)
    by Amit Tuli, Staff Software Engineer, IBM

  - [Create PDF With iText Java
    Tutorial](http://www.javatips.net/blog/2011/09/create-pdf-with-itext-java-tutorial)

  - [Itext Add / Insert Image Into
    PDF](http://www.javatips.net/blog/2011/12/itext-add-insert-image-into-pdf)

  - (Chapters [10, 11
    and 12](http://editorial.mcpressonline.com/web/mcpdf.nsf/wdocs/5105/$FILE/5105_TOC.pdf)
    are dedicated entirely to iText)

  - (see section "Generating PDF with iText" starting on p705)

  -
  -
  - (translated into Italian: [Acrobat e PDF. Trucchi e
    segreti](http://books.google.be/books?id=Gp81DTkEw8gC&pg=PA231&dq=iText&hl=en&sa=X&ei=z9pcUse5Mq_I0AWC44CACg&redir_esc=y#v=onepage&q=iText&f=false))

## 参见

  - [PDF軟體列表](../Page/PDF軟體列表.md "wikilink")

## 参考文献

## 外部链接

  - [iText主页](http://itextpdf.com)
  - [SourceForge上的iText](http://sourceforge.net/projects/itext/)
  - [SourceForge上的iTextSharp](http://sourceforge.net/projects/itextsharp/)
  - [StackOverflow上的iText](http://stackoverflow.com/questions/tagged/itext)
  - [StackOverflow上的iTextSharp](http://stackoverflow.com/questions/tagged/itextsharp)
  - 用来咨询与IText有关问题的支持论坛[1](http://support.itextpdf.com/forum)
  - 用IText创建PDF文件的第三方指南[2](http://tutorials.jenkov.com/java-itext/index.html)
  - 用IText合并PDF文件的第三方指南[3](http://www.mindfiresolutions.com/Java-Merging-multiple-PDFs-into-a-single-PDF-using-iText-671.php)
  - 2012年IText峰会上讲解[Android](../Page/Android.md "wikilink")、[PDF](https://zh.wikipedia.org/wiki/PDF "wikilink")、[HTML5的视频片段](../Page/HTML5.md "wikilink")[4](https://www.youtube.com/results?search_query=itext+summit&oq=itext+summit)
  - Adobe的PDF架构师Leonard
    Rosenthol在2012年IText峰会上的讲解：[PDF及其标准](http://www.youtube.com/watch?v=Pkm28bFwGtE)

[Category:自由PDF软件](https://zh.wikipedia.org/wiki/Category:自由PDF软件 "wikilink")
[Category:自由排版软件](https://zh.wikipedia.org/wiki/Category:自由排版软件 "wikilink")
[Category:用C♯编程的自由软件](https://zh.wikipedia.org/wiki/Category:用C♯编程的自由软件 "wikilink")
[Category:用Java編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用Java編程的自由軟體 "wikilink")
[Category:Java平台](https://zh.wikipedia.org/wiki/Category:Java平台 "wikilink")
[Category:Java函式庫](https://zh.wikipedia.org/wiki/Category:Java函式庫 "wikilink")
[Category:C♯函式庫](https://zh.wikipedia.org/wiki/Category:C♯函式庫 "wikilink")

1.
2.
3.
4.
5.
6.
7.
8.  [iText bringing PDF/UA support to Java
    Implementations](http://duff-johnson.com/2013/02/19/itext-bringing-pdfua-support-to-java-implementations/)
    by [Duff
    Johnson](https://zh.wikipedia.org/wiki/Duff_Johnson "wikilink")
9.
10.
11. [list with references](http://itextpdf.com/references)
12.
13. [Ranking Deloitte Technology Fast 50
    Benelux](http://actueel.deloitte.nl/media/316749/fast50_ranking_2013.pdf)

14. [DataNews: 10 Belgians in Deloitte's Technology Fast 50 (Dutch
    article)](http://datanews.knack.be/ict/nieuws/tien-belgen-in-deloitte-technology-fast50/article-4000420777148.htm)
15. [digimedia: the 5 Belgian digital start-ups with the fastest growth
    rate (Dutch
    article)](http://www.digimedia.be/content.php?lng=nl&rubric=News&id=15296)
16. \[<http://www.deloitte.com/assets/Dcom-Belgium/Local%20Assets/Documents/NL/Fast50/Krant%20van%20West%20Vlaanderen_Ieper%20heeft%20studenten%20en%20betere%20verbinding%20nod>....pdf
    Deloitte's Fast 50 Newspaper article\]
17. [mailing list
    discussion](http://www.mail-archive.com/itext-questions@lists.sourceforge.net/msg48353.html)
18. [Talk about the (A)GPL](http://www.youtube.com/watch?v=NCwhEWEPV-E)
    by Ywein Van den Brande, IP lawyer and technologist