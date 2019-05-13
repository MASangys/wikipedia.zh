**ArgoUML**是一个用于绘制[UML图的应用软件](../Page/UML.md "wikilink")，它用Java构造，并遵守[开源的](../Page/开源.md "wikilink")[BSD协议](../Page/BSD許可證.md "wikilink")。因为它本身由[Java构建的缘故](../Page/Java编程语言.md "wikilink")，所以ArgoUML能运行在任何支持Java的平台上。
2003年，ArgoUML获得了《软件开发杂志》的设计和分析工具类别的年度读者选择奖（annual Readers' Choice
Award）。\[1\]

ArgoUML没有完全实现UML标准\[2\]，同时它对某些图还不能完全支持（如[时序图](../Page/时序图.md "wikilink")）。\[3\]
当前的稳定版0.24版式对0.22的一个bug修复版，它一共修正了0.22版本的172个bug。\[4\]

ArgoUML的开发因为人力缺乏而受到影响。『回退（Undo）』功能早在2003年就已经提出，而迄今未实现。

## 发布版

已发布的稳定版本：

  - 第一次发布：1998年4月
  - 0.7.0（1999年4月）
  - 0.8.1a（2000年10月）
  - 0.10.1（2002年7月）
  - 0.12（2002年10月）
  - 0.14（2003年8月）
  - 0.16.1（2004年8月）
  - 0.18.1（2005年4月）
  - 0.20（2006年2月）
  - 0.22（2006年8月）
  - 0.24（2007年2月）
  - 0.26（2008年9月）
  - 0.26.2（2008年11月）
  - 0.28（2009年3月）
  - 0.28.1（2009年8月）
  - 0.30（当前版本）

## 特点

从v0.20版本开始的新特点：

  - Critics browser improvements
  - 选中状态下显示文字编辑框，如『联系（Associations）』等
  - 在图中支持数据类型（DataTypes），构造型（Stereotypes）和枚举（Enumerations）
  - Clear grid selection and snap
  - 支持CallStates, ObjectFlowStates
  - 允许在不选择类（Class，亦称『型别』）的情况下绘制状态图（Statechart）
  - UML 1.4——对UML1.4的扩展特性支持增强
  - 兼容AndroMDA
  - 质量——数百个bug得到修正
  - 当前多数功能支持元素多选
  - 支持从浏览树到图的拖拽操作，拖拽操作也适用于在浏览树内操作。

其他特点：

  - UML1.4的全部9种图都得到支持
  - 紧密支持UML标准
  - 平台无关性——使用Java1.5+
  - 无需下载安装，支持JWS，从浏览器启动运行。
  - 标准的UML1.4元模型（metamodel）
  - 支持XMI.
  - 可以多种格式导出UML图：[GIF](../Page/GIF.md "wikilink")，[PNG](../Page/PNG.md "wikilink")，[PS](../Page/PS.md "wikilink")，[EPS](../Page/EPS.md "wikilink")，[PGML以及](../Page/PGML.md "wikilink")[SVG](../Page/SVG.md "wikilink")
  - 支持10种语言：英语，英语（EN-GB），德语，西班牙语，意大利语，俄语，法语，挪威语，葡萄牙语，汉语
  - 图像编辑和缩放的高级功能
  - Built-in design critics provide unobtrusive review of design and
    suggestions for improvements.
  - 可扩展的模型接口
  - 支持OCL
  - 正向工程（支持生成C++ and C\#, Java, PHP4, PHP5, Python, Ruby代码，Ada,
    Delphi和SQL也支持，但不成熟）
  - 逆向工程（导入jar包）
  - 认知支持（Cognitive support）
      - 动作反应（Reflection-in-action）
          - Design Critics.
          - 自动纠正（部分实现）
          - 待做（To Do）列表
          - 用户模型（部分实现）
      - 机会主义设计（Opportunistic design）
          - 待做（To Do）列表
          - 清单（Checklists）
      - 问题理解和解决（Comprehension and Problem Solving）
          - 浏览器视图预览（Explorer perspectives）
          - 多重、交迭的视图

## 弱点

  - 无『回退』（undo）功能（或称『反悔』操作）
  - 对序列图（Sequence diagrams）支持不好
  - 不支持UML 2.x

## 其他

ArgoUML有一个商用衍生品Poseidon for UML。

## 参见

  - [UML工具列表](../Page/UML工具列表.md "wikilink")
  - [ATL](../Page/ATL.md "wikilink")（ATLAS Transformation Language）– an
    open source [QVT](../Page/QVT.md "wikilink") language able to
    transform UML models produced by Argo/Poseidon.
  - [StarUML](../Page/StarUML.md "wikilink") –
    StarUML是一个开源工程，它是用于开发UML/MDA的平台，运行于Winows32机器上。
  - [OpenBlueLab](../Page/OpenBlueLab.md "wikilink")
    –一个开源的ERP，它直接使用ArgoUML去创建portal，这个portal由用例图和类图配置。
  - [OMF OpenBlueLab Modeling
    Framework](https://web.archive.org/web/20071008171748/http://forge.openbluelab.org/gf/project/omf/)
    –
    OpenBlueLab的一个子工程，它可以把ArgoUML生成的文件转化成ECORE文件（用于类图），或一种元数据模型（用于用例图）。这个软件的工作目的是要把ArgoUML生成的文件转化成和TopCased兼容的格式。

## 参考链接

<references/>

## 外部链接

  - [ArgoUML官方站点](http://argouml.tigris.org)

[Category:Java](https://zh.wikipedia.org/wiki/Category:Java "wikilink")
[Category:UML](https://zh.wikipedia.org/wiki/Category:UML "wikilink")
[Category:自由UML工具](https://zh.wikipedia.org/wiki/Category:自由UML工具 "wikilink")
[Category:开源软件](https://zh.wikipedia.org/wiki/Category:开源软件 "wikilink")
[Category:Tigris.org工程](https://zh.wikipedia.org/wiki/Category:Tigris.org工程 "wikilink")

1.
2.
3.
4.