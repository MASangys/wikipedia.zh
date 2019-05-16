DXF是**AutoCAD DXF**（Drawing Interchange Format或者Drawing Exchange
Format）的简称，它是[Autodesk公司开发的用于](../Page/Autodesk.md "wikilink")[AutoCAD与其它软件之间进行](../Page/AutoCAD.md "wikilink")[CAD数据交换的](../Page/CAD数据交换.md "wikilink")[CAD数据](https://zh.wikipedia.org/wiki/CAD "wikilink")[文件格式](https://zh.wikipedia.org/wiki/文件格式 "wikilink")。

DXF于1982年12月作为AutoCAD
1.0的一部分首次面世，用于从未公开的AutoCAD内部文件格式[DWG的一种精确表示](https://zh.wikipedia.org/wiki/DWG "wikilink")。目前Autodesk在它的网站上公布有从1994年11月发布的AutoCAD
Release 13到2006年3月发布的AutoCAD 2007的DXF规范。

从1988年10月发布的AutoCAD Release
10开始DXF同时支持[ASCII与](../Page/ASCII.md "wikilink")[二进制格式数据](https://zh.wikipedia.org/wiki/二进制 "wikilink")。早期的版本只支持ASCII格式。

随着AutoCAD功能越来越强大，支持的对象类型越来越复杂，DXF的作用也日渐减弱。包括[ACIS实体与区域在内的一些对象类型都没有介绍](../Page/ACIS.md "wikilink")。其它一些对象类型，包括AutoCAD
2006的动态块以及所有AutoCAD
vertical-market版本特有的对象，都只有部分的介绍，而且开发人员无法根据这些信息进行全面的支持。

几乎所有的商用软件开发商，包括所有的Autodesk的竞争对手都选择DWG作为与AutoCAD进行数据交换的主要格式，他们使用的函数库是Open
Design Alliance这个非营利性业界协会对DWG文件格式进行逆向工程得到的。

## 文件结构

ASCII格式的DXF可以用文本编辑器进行查看。DXF文件的基本组成如下所示：

  - **HEADER**部分 - 图的总体信息。每个参数都有一个变量名和相应的值。
  - **CLASSES**部分 - 包括应用程序定义的类的信息，这些实例将显示在BLOCKS、ENTITIES以及

OBJECTS部分。通常不包括用于充分用于与其它应用程序交互的信息。

  - **TABLES**部分 - 这部分包括命名条目的定义。

<!-- end list -->

  -
    Application ID（APPID）表
    Block Recod（BLOCK_RECORD）表
    Dimension Style（DIMSTYPE）表
    Layer（LAYER）表
    Linetype（LTYPE）表
    Text style（STYLE）表
    User Coordinate System（UCS）表
    View（VIEW）表
    Viewport configuration（VPORT）表

<!-- end list -->

  - **BLOCKS**部分-这部分包括Block Definition实体用于定义每个Block的组成。
  - **ENTITIES**部分-这部分是绘图实体，包括Block References在内。
  - **OBJECTS**部分-包括非图形对象的数据，供AutoLISP以及[ObjectARX应用程序所使用](https://zh.wikipedia.org/wiki/ObjectARX "wikilink")。
  - **THUMBNAILIMAGE**部分-包括DXF文件的预览图。
  - **END OF FILE**

## 参见

  - [QCad](../Page/QCad.md "wikilink")

## 外部链接

  - [DXF
    Specifications](https://archive.is/20121206003818/http://www.autodesk.com/dxf)
    - Autodesk从Release 13到最新版本的DXF文档。
  - [Open Design Alliance](http://www.opendesign.com) -
    提供读写DWG与DXF文件所需程序库的非营利性产业协会

[Category:CAD文件格式](https://zh.wikipedia.org/wiki/Category:CAD文件格式 "wikilink")