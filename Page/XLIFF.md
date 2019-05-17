**XLIFF**（**XML Localisation Interchange File
Format**，即XML本地化交换文件格式）是一种基于[XML的交换格式](../Page/XML.md "wikilink")，旨在标准化[本地化过程中在工具之间传递可本地化数据的方式](../Page/国际化与本地化.md "wikilink")，是[CAT工具中常用的一种文件格式](../Page/電腦輔助翻譯.md "wikilink")。XLIFF由[結構化資訊標準促進組織](../Page/結構化資訊標準促進組織.md "wikilink")（OASIS）于2002年[标准化](../Page/标准化.md "wikilink")，目前规范为2014年8月5日发布的v2.0。\[1\]

该规范针对本地化行业，规范了用何种元素和属性存储从各种原始文件格式中提取的内容与相应翻译。其目标是[抽象化本地化技能](../Page/抽象化.md "wikilink")，使人们从[HTML等特定格式的相关工程技术中抽身](../Page/HTML.md "wikilink")。\[2\]

XLIFF格式是“开放架构”的XML创作与本地化（）参考架构的一部分。

## 描述 (XLIFF 1.2)

一份XLIFF
1.2\[3\]文档由一个或多个<file>元素组成。每个<file>元素对应一个原始文件或来源（例如数据库表）。<file>包含可本地化数据的源数据，并且每个区域只有一份的本地化数据。

本地化数据存储在<trans-unit>元素里。<trans-unit>元素有一个<code>

    </code>元素来存储源文本，并有一个<code><target></code>元素存储最新的已翻译文本。<code><target></code>元素非强制性。

    <syntaxhighlight lang="xml">
    <trans-unit id="1">
     <source xml:lang="en">Cannot find the file.

<target xml:lang="fr">`Fichier non trouvé.`</target>

</trans-unit>

</syntaxhighlight>

下面的例子展示一个XLIFF文档，它存储了从[Photoshop文件](https://zh.wikipedia.org/wiki/Photoshop "wikilink")（PSD文件）提取的文本，以及[日文译文](https://zh.wikipedia.org/wiki/日文 "wikilink")。

``` xml
<xliff version="1.2">
 <file original="Graphic Example.psd"
  source-language="en-US" target-language="ja-JP"
  tool="Rainbow" datatype="photoshop">
  <header>
   <skl>
    <external-file uid="3BB236513BB24732" href="Graphic Example.psd.skl"/>
   </skl>
   <phase-group>
    <phase phase-name="extract" process-name="extraction"
     tool="Rainbow" date="20010926T152258Z"
     company-name="NeverLand Inc." job-id="123"
     contact-name="Peter Pan" contact-email="ppan@example.com">
     <note>Make sure to use the glossary I sent you yesterday.
      Thanks.</note>
    </phase>
   </phase-group>
  </header>
  <body>
   <trans-unit id="1" maxbytes="14">
    <source xml:lang="en-US">Quetzal</source>
    <target xml:lang="ja-JP">Quetzal</target>
   </trans-unit>
   <trans-unit id="3" maxbytes="114">
    <source xml:lang="en-US">An application to manipulate and
     process XLIFF documents</source>
    <target xml:lang="ja-JP">XLIFF 文書を編集、または処理
     するアプリケーションです。</target>
   </trans-unit>
   <trans-unit id="4" maxbytes="36">
    <source xml:lang="en-US">XLIFF Data Manager</source>
    <target xml:lang="ja-JP">XLIFF データ・マネージャ</target>
   </trans-unit>
  </body>
 </file>
</xliff>
```

## XLIFF 2.0

2014年5月6日，XLIFF 2.0规范转移到\[4\]OASIS标准候选。\[5\]

2014年8月6日，XLIFF 2.0规范成为OASIS标准\[6\]

XLIFF 2.0文档示例：

``` xml
<xliff ns="urn:oasis:names:tc:xliff:document:2.0" version="2.0"
 srcLang="en-US" trgLang="ja-JP">
 <file id="f1" original="Graphic Example.psd">
  <skeleton href="Graphic Example.psd.skl"/>
  <unit id="1">
   <segment>
    <source>Quetzal</source>
    <target>Quetzal</target>
   </segment>
  </unit>
  <unit id="2">
   <segment>
    <source>An application to manipulate and process XLIFF documents</source>
    <target>XLIFF 文書を編集、または処理 するアプリケーションです。</target>
   </segment>
  </unit>
  <unit id="3">
   <segment>
    <source>XLIFF Data Manager</source>
    <target>XLIFF データ・マネージャ</target>
   </segment>
  </unit>
 </file>
</xliff>
```

## 相关工具

### 文件操作和检查工具

  - [Okapi
    Framework](../Page/Okapi_Framework.md "wikilink")：提供了多个生成XLIFF文档的过滤器\[7\]以及使用XLIFF的各种组件。\[8\]
  - [Translate
    Toolkit](../Page/Translate_Toolkit.md "wikilink")：可将多种文件格式转换为XLIFF，并提供该格式的检查、过滤和操作工具。
  - [XLIFFChecker](http://www.maxprograms.com/products/xliffchecker.html)：一个开源的跨平台工具，用于验证XLIFF文件是否符合XML语法和规范。
  - [Xliff to HTML
    Converter](http://www.softpedia.com/get/Office-tools/Other-Office-Tools/Xliff-to-HTML-Converter.shtml)：将XLIFF文件转换为HTML以便于校对。
  - [Okapi XLIFF
    Toolkit](http://bitbucket.org/okapiframework/xliff-toolkit)：一个开源库，用于创建、读取、操作、验证和编写XLIFF
    2.0文档。
  - [Okapi Lynx-Web
    page](https://okapi-lynx.appspot.com/validation)：可用于在线验证XLIFF
    2.0文档。

### 编辑器

<table>
<thead>
<tr class="header">
<th><p>名称</p></th>
<th><p>操作系统</p></th>
<th><p>免费</p></th>
<th><p>描述</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><a href="http://cafetran.com/">CafeTran Espresso</a></p></td>
<td><p>Windows、macOS、Linux</p></td>
<td><p>限制记忆和词汇大小</p></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="https://www.matecat.com">MateCat</a></p></td>
<td><p>Web</p></td>
<td></td>
<td><p>MateCat支持XLIFF文件作为输入与输出格式。输入文件支持SDLXLIFF</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Page/MemoQ.md" title="wikilink">MemoQ</a></p></td>
<td><p>Windows</p></td>
<td></td>
<td><p>使用MQXLIFF完成互操作性和多种XLIFF的支持</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>Web、Windows、macOS、Linux</p></td>
<td><p>限制2个文件</p></td>
<td><p>MXLIFF是其原生格式</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Page/OmegaT.md" title="wikilink">OmegaT</a> (with <a href="../Page/OmegaT.md" title="wikilink">Benten</a>)</p></td>
<td><p>Windows、macOS、Linux</p></td>
<td></td>
<td><p>跨平台和开源CAT工具</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>Web</p></td>
<td></td>
<td><p>基于Web的本地化平台</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Page/塔多思.md" title="wikilink">塔多思</a> Studio</p></td>
<td><p>Windows</p></td>
<td></td>
<td><p>SDLXLIFF是其原生格式</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>Web</p></td>
<td></td>
<td><p>云翻译环境</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>Windows、macOS、Linux</p></td>
<td></td>
<td><p>基于XLIFF的跨平台CAT工具</p></td>
</tr>
<tr class="even">
<td><p><a href="../Page/Transifex.md" title="wikilink">Transifex</a></p></td>
<td><p>Web</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="http://www.star-ts.com/products/translation-memory-transit-nxt/">Transit NXT</a></p></td>
<td><p>Windows</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td><p>Windows、macOS、Linux</p></td>
<td></td>
<td><p>开源CAT工具</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Page/Weblate.md" title="wikilink">Weblate</a></p></td>
<td><p>Web</p></td>
<td></td>
<td><p>基于Web的翻译工具</p></td>
</tr>
<tr class="even">
<td><p><a href="../Page/Wordfast.md" title="wikilink">Wordfast</a></p></td>
<td><p>Windows、macOS</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

### 程序库

2015年11月11日，Microsoft XLIFF
2.0对象模型在[GitHub上](../Page/GitHub.md "wikilink")[开源](https://zh.wikipedia.org/wiki/开源 "wikilink")\[9\]，其是一个[.NET库](https://zh.wikipedia.org/wiki/.NET "wikilink")，可以用来构建本地化工具、平台和系统。

## 参见

  - （ITS）

  - （SRX）

  - （TBX）

  - （TMX）

## 参考资料

## 外部链接

  - [OASIS XLIFF技术委员会网站](http://www.oasis-open.org/committees/xliff/)
  - XLIFF邮件列表：[TC List](http://lists.oasis-open.org/archives/xliff/),
    [Comments to TC
    List](http://lists.oasis-open.org/archives/xliff-comment/), [Users
    List](http://lists.oasis-open.org/archives/xliff-users/)
  - [XML in localisation: Use XLIFF to translate
    documents](http://www.maxprograms.com/articles/xliff.html)
  - [An Introduction to XLIFF 2.0 (Multilingual article
    June-2014)](http://multilingual.com/articles/201406-42/)
  - [Multilingual App
    Toolkit](https://www.microsoft.com/en-us/translator/mat.aspx)（MAT），[微软出品](../Page/微软.md "wikilink")

[Category:文件格式](https://zh.wikipedia.org/wiki/Category:文件格式 "wikilink")
[Category:國際化與在地化](https://zh.wikipedia.org/wiki/Category:國際化與在地化 "wikilink")
[Category:基于XML的标准](https://zh.wikipedia.org/wiki/Category:基于XML的标准 "wikilink")

1.
2.

3.  [OASIS XLIFF 1.2
    specification](http://docs.oasis-open.org/xliff/xliff-core/xliff-core.html)

4.  [60-day Public Review for XLIFF Version 2.0 Candidate OASIS Standard
    announcement](http://lists.oasis-open.org/archives/xliff-comment/201405/msg00000.html)

5.  [Candidate OASIS
    Standard 01](http://docs.oasis-open.org/xliff/xliff-core/v2.0/cos01/xliff-core-v2.0-cos01.html)

6.  [Announcement of XLIFF 2.0 becoming an OASIS
    Standard](https://www.oasis-open.org/news/announcements/xliff-version-2-0-becomes-an-oasis-standard)

7.  [Okapi
    filters](http://www.opentag.com/okapi/wiki/index.php?title=Filters)

8.  [Okapi components using
    XLIFF](http://www.opentag.com/okapi/wiki/index.php?title=Category:XLIFF)

9.  [XLIFF 2.0 Object Model is now Open Source on
    GitHub](https://blogs.technet.microsoft.com/terminology/2015/11/11/xliff-2-0-object-model-is-now-open-source-on-github/),
    Microsoft Language Portal Blog