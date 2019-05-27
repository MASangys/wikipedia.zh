**Eclipse**是著名的[跨平台](https://zh.wikipedia.org/wiki/跨平台 "wikilink")[开源](https://zh.wikipedia.org/wiki/开源 "wikilink")[集成开发环境](../Page/集成开发环境.md "wikilink")（IDE）。最初主要用来[Java语言开发](../Page/Java.md "wikilink")，目前亦有人通过[插件使其作为](../Page/插件.md "wikilink")[C++](../Page/C++.md "wikilink")、[Python](../Page/Python.md "wikilink")、[PHP等其他语言的开发工具](../Page/PHP.md "wikilink")。

Eclipse的本身只是一个框架平台，但是众多[插件的支持](../Page/插件.md "wikilink")，使得Eclipse拥有較佳的灵活性，所以许多软件开发商以Eclipse为框架开发自己的IDE。

## 历史

Eclipse最初是由[IBM公司开发的替代商业软件](../Page/IBM.md "wikilink")[Visual Age for
Java的下一代IDE开发环境](https://zh.wikipedia.org/wiki/Visual_Age_for_Java "wikilink")，2001年11月贡献给开源社区，现在它由非营利软件供应商联盟[Eclipse基金会](../Page/Eclipse基金会.md "wikilink")（Eclipse
Foundation）管理。2003年，Eclipse
3.0选择OSGi服务平台规范为运行时架构。2007年6月，稳定版3.3发布；2008年6月发布代号为Ganymede的3.4版；2009年6月发布代号为Galileo的3.5版；2010年6月发布代号为Helios的3.6版；2011年6月發布代號為Indigo的3.7版；2012年6月發布代號為Juno的4.2版；2013年6月發布代號為Kepler的4.3版；2014年6月發布代號為Luna的4.4版；2015年6月發布代號為Mars的4.5版。

## 架构

Eclipse的基础是[富客户机平台](https://zh.wikipedia.org/wiki/RCP "wikilink")（即RCP）。RCP包括下列组件：

  - 核心平台（启动Eclipse，运行插件）
  - [OSGi](../Page/OSGi.md "wikilink")（标准集束框架）
  - [SWT](../Page/SWT.md "wikilink")（可移植[构件工具包](https://zh.wikipedia.org/wiki/构件工具包 "wikilink")）
  - [JFace](https://zh.wikipedia.org/wiki/JFace "wikilink")（文件缓冲，文本处理，文本编辑器）
  - Eclipse工作台（即Workbench，包含视图（views）、编辑器（editors）、视角（perspectives）、和向导（wizards））

Eclipse采用的技术是IBM公司开发的（[SWT](../Page/SWT.md "wikilink")），这是一种基于Java的窗口组件，类似Java本身提供的[AWT和](../Page/AWT.md "wikilink")[Swing窗口组件](https://zh.wikipedia.org/wiki/Swing "wikilink")；不过IBM声称SWT比其他Java窗口组件更有效率。Eclipse的用户界面还使用了GUI中间层JFace，从而简化了基于SWT的应用程序的构建。

### 插件

Eclipse的插件机制是轻型软件组件化架构。在富客户机平台上，Eclipse使用插件来提供所有的附加功能，例如支持Java以外的其他语言。已有的分离的插件已经能够支持C/C++（CDT）、PHP、Perl、Ruby，Python、telnet和数据库开发。插件架构能够支持将任意的扩展加入到现有环境中，例如配置管理，而决不仅仅限于支持各种编程语言。

Eclipse的设计思想是：一切皆插件。Eclipse核心很小，其它所有功能都以插件的形式附加于Eclipse核心之上。Eclipse基本内核包括：图形API（SWT/Jface），Java开发环境插件（JDT），插件开发环境（[PDE](https://zh.wikipedia.org/wiki/PDE "wikilink")）等。

框架的本质与极高的扩展性，使得厂商可以利用Eclipse作为平台开发各类IDE。甚至一些应用软件也是基于Eclipse的，如Oracle
JDK自带的监控程序、Android SDK附带的设备监视工具DDMS。

## Eclipse计划

Eclipse由各种不同的计划组成。以下列出了部分计划，更完整全面的列表\[//www.eclipse.org/projects/
在此\]（英文）。

  - **Eclipse计划**：本身包括Eclipse平台，Eclipse富客户端平台（\[//www.eclipse.org/rcp/
    RCP\]）和Java开发工具（[JDT](http://www.eclipse.org/jdt/index.html)）。
  - **Eclipse测试和性能工具平台**（\[//www.eclipse.org/tptp/index.html
    TPTP\]）：提供一个允许软件开发者构建诸如测试调试、概况分析、基准评测等测试和性能工具的平台。
  - **Eclipse Web工具平台计划**（\[//www.eclipse.org/webtools/index.html
    WTP\]）：用[Java企业版Web应用程序开发工具来扩展Eclipse平台](https://zh.wikipedia.org/wiki/J2EE "wikilink")。它由以下部分组成：[HTML](../Page/HTML.md "wikilink")、[JavaScript](../Page/JavaScript.md "wikilink")、[CSS](https://zh.wikipedia.org/wiki/CSS "wikilink")、[JSP](../Page/JSP.md "wikilink")、[SQL](../Page/SQL.md "wikilink")、[XML](../Page/XML.md "wikilink")、[DTD](https://zh.wikipedia.org/wiki/DTD "wikilink")、[XSD和](https://zh.wikipedia.org/wiki/XSD "wikilink")[WSDL的源代码编辑器](../Page/WSDL.md "wikilink")；XSD和WSDL的图形界面编辑器；Java企业版的“项目性质”（project
    nature）、建构器（builder）和模型（model），与一个Java企业版的导航（navigator）；一个Web服务（Web
    service）向导和浏览器，还有一个[WS-I测试工具](https://zh.wikipedia.org/wiki/WS-I "wikilink")；最后是数据库访问查询的工具与模型。
  - **Eclipse[商业智能和](../Page/商业智能.md "wikilink")[报表工具计划](https://zh.wikipedia.org/wiki/报表 "wikilink")**（\[//www.eclipse.org/birt/
    BIRT\]）：提供Web应用程序（特别是基于Java企业版的）的报表开发工具。
  - **Eclipse可视化界面编辑器计划**（\[//www.eclipse.org/vep/
    VEP\]）：一个Eclipse下创建[图形用户界面代码生成器的框架](../Page/图形用户界面.md "wikilink")。
  - **Eclipse建模框架**（\[//www.eclipse.org/emf/
    EMF\]）：依据使用[XMI描述的建模规格](https://zh.wikipedia.org/wiki/XMI "wikilink")，生成结构化数据模型的工具和其他应用程序的代码。
  - **图形化编辑器框架**（\[//www.eclipse.org/gef/
    GEF\]）：能让开发者采用一个现成的应用程序模型来轻松地创建富图形化编辑器。
  - **UML2**：Eclipse平台下的一个[UML](../Page/统一建模语言.md "wikilink")
    2.0[元模型的实现](https://zh.wikipedia.org/wiki/元模型 "wikilink")，用以支持建模工具的开发。
  - **AspectJ**：一种针对Java的[面向侧面语言扩展](../Page/面向侧面的程序设计.md "wikilink")。
  - **Eclipse通讯框架**（\[//www.eclipse.org/ecf/
    ECF\]）：专注于在Eclipse平台上创建通讯应用程序的工作。
  - **Eclipse数据工具平台计划**（\[//www.eclipse.org/datatools/ DTP\]）
  - **Eclipse设备驱动软件开发计划**（\[//www.eclipse.org/dsdp/ DSDP\]）
  - **C/C++开发工具计划**（\[//www.eclipse.org/cdt
    CDT\]）：努力为Eclipse平台提供一个全功能C和C++的集成开发环境（IDE），它使用GCC作为编译器。
  - **PHP开发工具计划**（\[//www.eclipse.org/pdt
    PDT\]）：努力为Eclipse平台提供一个全功能PHP的集成开发环境（IDE）。
  - **Eclipse平台COBOL集成开发环境子计划**（[COBOL](http://www.eclipse.org/cobol)）：将构建一个Eclipse平台上的全功能[COBOL集成开发环境](../Page/COBOL.md "wikilink")。
  - **并行工具平台**（\[//eclipse.org/ptp
    PTP\]）：将开发一个对并行计算机架构下的一组工具进行集成的平行工具平台，而且这个平台是可移植的，可伸缩的并基于标准的。
  - **嵌入式富客户端平台**（\[//www.eclipse.org/ercp
    eRCP\]）：计划将Eclipse富客户端平台扩展到[嵌入式设备上](../Page/嵌入式系统.md "wikilink")。这个平台主要是一个富客户端平台（RCP）组件子集的集合。它能让桌面环境下的应用程序模型能够大致同样地能运用在嵌入式设备上。

## 版本

在Eclipse基金會及其項目和貢獻者社區，對我們經常被稱為協調調度版本同時發布，協同發布或發布列車的Eclipse。此頁面提供當前和前幾年現有同時發布的索引。

自2018-09發布以來，節奏從一個年度主要版本加上3個更新/服務版本變為帶有滾動版本的13週週期。

| **發布名稱**       | **平台版本** | **發布**      | **鏈接**                                                      |
| -------------- | -------- | ----------- | ----------------------------------------------------------- |
| 2019-03（即將發布）  | 4.11     | 2019年3月     |                                                             |
| 2018-12（下一個版本） | 4.10     | 2018年12月19日 | [維基 / 計劃](https://wiki.eclipse.org/Category:SimRel-2018-12) |
| 2018-09（當前版本）  | 4.9      | 2018年9月19日  | [維基 / 計劃](https://wiki.eclipse.org/Category:SimRel-2018-09) |

從2006年起，Eclipse基金會每年都會安排\[//wiki.eclipse.org/Simultaneous_Release
**同步發佈**\]（simultaneous release）。

Eclipse基金會及其社區項目和貢獻者每年都會按照協調的時間表發布一個版本。 此版本通常被稱為Eclipse的同時發布，

協調發布，發布培訓或年度版本。 此頁面提供了當前和以前年份的現有同步發布的索引。

每個版本通常在6月份發布，並在9月份（\* .1），12月份（\* .2）和3月份（\* .3）發布後續更新版本。

在Neon(4.6)之前，每個發行版在9月份（SR1）和次年2月份（SR2）發布了兩個服務版本。

<table>
<thead>
<tr class="header">
<th><p>代號</p></th>
<th><p>平台版本</p></th>
<th><p>項目</p></th>
<th><p>主要版本發行日期</p></th>
<th><p>SR1發行日期</p></th>
<th><p>SR2發行日期</p></th>
<th></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>--</p></td>
<td></td>
<td><p>--</p></td>
<td><p>2004年6月21日</p></td>
<td><p>--</p></td>
<td><p>--</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>--</p></td>
<td></td>
<td><p>--</p></td>
<td><p>2005年6月28日</p></td>
<td><p>--</p></td>
<td><p>--</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>Callisto</p></td>
<td></td>
<td><p>[//www.eclipse.org/callisto/callistoprojects.php Callisto projects]</p></td>
<td><p>2006年6月30日</p></td>
<td><p>--</p></td>
<td><p>--</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>Europa</p></td>
<td></td>
<td><p>[//wiki.eclipse.org/index.php/Europa_Simultaneous_Release Europa projects]</p></td>
<td><p>2007年6月29日</p></td>
<td><p>2007年9月28日</p></td>
<td><p>2008年2月29日</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>Ganymede</p></td>
<td></td>
<td><p>[//wiki.eclipse.org/index.php/Ganymede_Simultaneous_Release Ganymede projects]</p></td>
<td><p>2008年6月25日</p></td>
<td><p>2008年9月24日</p></td>
<td><p>2009年2月25日</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>Galileo</p></td>
<td></td>
<td><p>[//wiki.eclipse.org/Galileo Galileo projects]</p></td>
<td><p>2009年6月24日</p></td>
<td><p>2009年9月25日</p></td>
<td><p>2010年2月26日</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>Helios</p></td>
<td></td>
<td><p>[//wiki.eclipse.org/index.php/Helios Helios projects]</p></td>
<td><p>2010年6月23日</p></td>
<td><p>2010年9月24日</p></td>
<td><p>2011年2月25日</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>Indigo</p></td>
<td></td>
<td><p>[//wiki.eclipse.org/Indigo Indigo projects]</p></td>
<td><p>2011年6月22日</p></td>
<td><p>2011年9月23日</p></td>
<td><p>2012年2月24日</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>Juno</p></td>
<td></td>
<td><p>[//wiki.eclipse.org/Juno Juno projects]</p></td>
<td><p>2012年6月27日</p></td>
<td><p>2012年9月28日</p></td>
<td><p>2013年2月22日</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>Kepler</p></td>
<td></td>
<td><p>[//wiki.eclipse.org/Kepler Kepler projects]</p></td>
<td><p>2013年6月26日</p></td>
<td><p>2013年9月28日</p></td>
<td><p>2014年2月28日</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>Luna</p></td>
<td></td>
<td><p>[//wiki.eclipse.org/Luna Luna projects]</p></td>
<td><p>2014年6月25日</p></td>
<td><p>2014年9月23日</p></td>
<td><p>2015年2月25日</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>Mars</p></td>
<td></td>
<td><p><a href="https://wiki.eclipse.org/Mars">Mars projects</a></p></td>
<td><p>2015年6月24日</p></td>
<td><p>2015年9月22日</p></td>
<td><p>2016年2月24日</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong>代號</strong></p></td>
<td><p><strong>平台版本</strong></p></td>
<td><p><strong>項目</strong></p></td>
<td><p><strong>主要版本發行日期</strong></p></td>
<td><p>9月份 (*.1)</p></td>
<td><p>12月份 (*.2)</p></td>
<td><p>3月份 (*.3)</p></td>
</tr>
<tr class="even">
<td><p>Neon</p></td>
<td></td>
<td><p><a href="https://wiki.eclipse.org/Neon">Neon projects</a></p></td>
<td><p>2016年6月22日</p></td>
<td><p>2016年9月28日</p></td>
<td><p>2016年12月21日</p></td>
<td><p>2017年3月23日</p></td>
</tr>
<tr class="odd">
<td><p>Oxygen</p></td>
<td></td>
<td><p><a href="http://wiki.eclipse.org/Oxygen">Oxygen projects</a></p></td>
<td><p>2017年6月28日</p></td>
<td><p>2017年9月27日</p></td>
<td><p>2017年12月20日</p></td>
<td><p>2018年3月21日</p></td>
</tr>
<tr class="even">
<td><p>Photon</p></td>
<td></td>
<td><p><a href="http://wiki.eclipse.org/Photon">Photon projects</a></p></td>
<td><p>2018年6月27日</p></td>
<td><p>2018年9月</p></td>
<td><p>2018年12月</p></td>
<td><p>2019年3月</p></td>
</tr>
</tbody>
</table>

<small></small>

## 参见

  - [NetBeans](../Page/NetBeans.md "wikilink") 另一著名的开源多语言开发平台、IDE软件
  - [IntelliJ IDEA](../Page/IntelliJ_IDEA.md "wikilink") 另一著名的商业Java IDE
  - [WSAD](https://zh.wikipedia.org/wiki/WSAD "wikilink")
    [IBM的商业Java](../Page/IBM.md "wikilink") IDE（WebSphare
    Application Developer）
  - [Visual J++](https://zh.wikipedia.org/wiki/Visual_J++ "wikilink")
    [Microsoft的商业Java](https://zh.wikipedia.org/wiki/Microsoft "wikilink")
    IDE
  - [JBuilder](https://zh.wikipedia.org/wiki/JBuilder "wikilink")
    [Borland的商业Java](../Page/Borland.md "wikilink") IDE
  - [g-Eclipse](https://zh.wikipedia.org/wiki/g-Eclipse "wikilink")

## 參考資料

## 外部链接

  - \[//www.eclipse.org/ Eclipse的官方网站\] 上面提供相关的邮件列表、新闻组以及Eclipse软件及插件下载。
  - [有关Eclipse 2.0
    API的网站](https://web.archive.org/web/20050522235816/http://download.eclipse.org/eclipse/downloads/documentation/2.0/html/plugins/org.eclipse.platform.doc.isv/reference/api/)
  - [有关Eclipse 2.1
    API的网站](http://help.eclipse.org/help21/index.jsp?topic=/org.eclipse.platform.doc.isv/reference/api/)
  - [有关Eclipse 3.0
    API的网站](http://help.eclipse.org/help30/index.jsp?topic=/org.eclipse.platform.doc.isv/reference/api/)
  - [Acceleo, Eclipse的代码生成程序](https://www.eclipse.org/acceleo/)

[Category:集成开发环境](https://zh.wikipedia.org/wiki/Category:集成开发环境 "wikilink")
[Category:开放源代码](https://zh.wikipedia.org/wiki/Category:开放源代码 "wikilink")
[Category:自由整合開發環境](https://zh.wikipedia.org/wiki/Category:自由整合開發環境 "wikilink")
[Category:Linux集成开发环境](https://zh.wikipedia.org/wiki/Category:Linux集成开发环境 "wikilink")