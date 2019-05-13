**Interface
Builder**（[縮寫](../Page/縮寫.md "wikilink")：**IB**），是用于[苹果公司](../Page/苹果公司.md "wikilink")[Mac
OS
X操作系统的](../Page/Mac_OS_X.md "wikilink")[软件开发程序](../Page/软件开发.md "wikilink")，是[Xcode套件的一部分](../Page/Xcode.md "wikilink")。[Cocoa和](../Page/Cocoa.md "wikilink")[Carbon开发者可以使用Interface](../Page/Carbon_\(API\).md "wikilink")
Builder来创建和修改应用程序的[图形用户界面](../Page/图形用户界面.md "wikilink")。其数据以[XML的形式被储存在](../Page/XML.md "wikilink")**.xib**文件中。在过去，其数据则是储存在**.nib**文件中的，nib是“NeXT
Interface Builder”的缩写。

Interface
Builder是继承自[NeXTSTEP的开发套件的](../Page/NeXTSTEP.md "wikilink")。[OpenStep的开发也使用了IB的一个版本](../Page/OpenStep.md "wikilink")，而[GNUStep则使用一个非常类似的](../Page/GNUStep.md "wikilink")，称为[Gorm的工具](../Page/Gorm.md "wikilink")。

2008年3月27日，随着[iPhone SDK](../Page/iPhone_SDK.md "wikilink") Beta
2的发布，IB开始提供对[iPhone程序开发的支持](../Page/iPhone.md "wikilink")，允许开发者使用IB设计[iOS应用程序的界面](../Page/iOS.md "wikilink")。

## 历史

1988年，IB作为NeXTSTEP 0.8的一部分首次出现。它最初由[Jean-Marie
Hullot所设计和编写](../Page/Jean-Marie_Hullot.md "wikilink")，计划用于Lisp（即Expertelligence出品的ExperLisp）。它是首批可以使用鼠标放置[按钮](../Page/按钮_\(计算机\).md "wikilink")，[选单](../Page/选单.md "wikilink")，[视窗等](../Page/视窗.md "wikilink")[控件的商业软件之一](../Page/控件.md "wikilink")。

## 设计

IB向[Objective-C开发者提供了包含一系列用户界面对象的工具箱](../Page/Objective-C.md "wikilink")，这些对象包括[文本框](../Page/文本框.md "wikilink")，[数据表格](../Page/数据表格.md "wikilink")，[滚动条](../Page/滚动条.md "wikilink")，[弹出式菜单等控件](../Page/弹出式菜单.md "wikilink")。IB的工具箱是可扩展的，也就是说，所有开发者都可以开发新的对象，并将其加入IB的工具箱中。

开发者只需要从工具箱中简单的向窗口或菜单中拖拽控件即可完成界面的设计。然后，用连线将控件可以提供的“动作”（Action）、控件对象分别和应用程序代码中对象“方法”（Method）、对象“接口”（Outlet）连接起来，就完成了整个创建工作。与其它[图形用户界面设计器](../Page/图形用户界面设计器.md "wikilink")，例如[Microsoft
Visual
Studio相比](../Page/Microsoft_Visual_Studio.md "wikilink")，这样的过程减小了[MVC模式中控制器和视图两层的耦合](../Page/MVC模式.md "wikilink")，提高了代码质量。

在代码中，使用`IBAction`标记接受动作的方法，而用`IBOutlet`标记对象接口\[1\]。

IB将应用程序界面保存为[捆绑](../Page/捆绑_\(计算机\).md "wikilink")，其中包含了界面对象及其与应用程序的关系。这些对象被[序列化为](../Page/序列化.md "wikilink")[XML文件或](../Page/XML.md "wikilink")[NeXT风格的](../Page/NeXT.md "wikilink")[属性列表文件](../Page/属性列表文件.md "wikilink")，扩展名为`.nib`。在应用程序运行时，对应的NIB对象调入内存，与其应用程序的二进制代码联系起来。与绝大多数其余GUI设计系统不同，IB不是生成代码以在运行时产生界面（如[Glade](../Page/Glade.md "wikilink")，[Codegear的](../Page/Codegear.md "wikilink")[C++
Builder所做的](../Page/C++_Builder.md "wikilink")），而是采用与代码无关的机制，通常称为*freeze
dried*。从IB
3.0开始，加入了一种新的文件格式，其扩展名为`.xib`。这种格式与原有的格式功能相同，但其为单独文件而非捆绑，以便于[版本控制系统的运作](../Page/版本控制.md "wikilink")，以及类似[diff的工具的处理](../Page/diff.md "wikilink")。

## 未来发展

2010年6月的[WWDC上](../Page/WWDC.md "wikilink")，苹果宣布在Xcode4中会将IB和Xcode整合在一起，即在Xcode中直接提供编辑图形界面的功能。这意味着随着Xcode
4的发布，IB在[Mac OS
X中将不再作为单独的程序提供](../Page/Mac_OS_X.md "wikilink")\[2\]\[3\]。

## 参考文献

## 外部链接

  - [Apple's Interface Builder
    description](http://developer.apple.com/tools/interfacebuilder.html)
    for Cocoa and Carbon development
  - [Sun's Interface Builder
    documentation](https://web.archive.org/web/20050427175754/http://docs.sun.com/app/docs/doc/802-2110/6i63kq4sf?a=view)
    for OpenStep development
  - [Apple's Nib file
    documentation](http://developer.apple.com/legacy/mac/library/documentation/Carbon/Conceptual/UnarchivingIOwithIBS/ibs_intro/IBSIntro.html)

## 参见

  - [Xcode](../Page/Xcode.md "wikilink")

{{-}}

[Category:NeXT](https://zh.wikipedia.org/wiki/Category:NeXT "wikilink")
[Category:图形用户界面设计器](https://zh.wikipedia.org/wiki/Category:图形用户界面设计器 "wikilink")
[Category:MacOS軟體](https://zh.wikipedia.org/wiki/Category:MacOS軟體 "wikilink")
[Category:MacOS開發](https://zh.wikipedia.org/wiki/Category:MacOS開發 "wikilink")

1.  [Interface Builder User
    Guide](http://developer.apple.com/library/mac/documentation/DeveloperTools/Conceptual/IB_UserGuide/IB_UserGuide.pdf)
    （PDF）
2.
3.