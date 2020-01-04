> 本文内容由[Cocoa](https://zh.wikipedia.org/wiki/Cocoa)转换而来。


**Cocoa**是[苹果公司为](https://zh.wikipedia.org/wiki/苹果公司 "wikilink")[macOS所创建的原生](https://zh.wikipedia.org/wiki/macOS "wikilink")[面向对象的](https://zh.wikipedia.org/wiki/面向对象的程序设计 "wikilink")[应用程序接口](../Page/应用程序接口.md "wikilink")，是Mac OS X上五大[API之一](https://zh.wikipedia.org/wiki/API "wikilink")（其它四个是[Carbon](https://zh.wikipedia.org/wiki/Carbon_\(API\) "wikilink")、[POSIX](https://zh.wikipedia.org/wiki/POSIX "wikilink")、[X11和](https://zh.wikipedia.org/wiki/X11 "wikilink")[Java](../Page/Java.md "wikilink")）。

Cocoa应用程序一般在苹果公司的开发工具[Xcode](../Page/Xcode.md "wikilink")（前身为）和[Interface Builder上用](../Page/Interface_Builder.md "wikilink")[Objective-C](../Page/Objective-C.md "wikilink")写成。不过，通过Java bridge、、、以及等桥接技术，[Java](../Page/Java.md "wikilink")、、、[Object Pascal](../Page/Object_Pascal.md "wikilink")、[Python](../Page/Python.md "wikilink")、[Perl](../Page/Perl.md "wikilink")、[Ruby](../Page/Ruby.md "wikilink")等其它工具或者语言也可以用来开发Cocoa应用。也有一些其它语言的Cocoa实现无须桥接，比如苹果公司开发的和类似[Lisp的](https://zh.wikipedia.org/wiki/Lisp "wikilink")[Nu](../Page/Nu.md "wikilink")语言。不使用Xcode和Interface Builder，仅仅通过文本编辑器、[GCC](../Page/GCC.md "wikilink")和[GNU make工具也可以用Objective](https://zh.wikipedia.org/wiki/GNU_make "wikilink")-C语言开发Cocoa应用。

对最终用户来说，使用Cocoa编程环境开发的应用程序即为**Cocoa應用程式**。这类应用有独特的外观，因为Cocoa编程环境让程序在多方面自动遵循苹果公司的。

## Cocoa历史

Cocoa是从1980年代由[NeXT](../Page/NeXT.md "wikilink")开发的编程环境NeXTSTEP和OPENSTEP演变而来，這點可由其類別之名皆以NS前綴（代表NeXTSTEP）看出端倪。苹果电脑公司在1996年12月收购了NeXT。开发NeXTSTEP和OPENSTEP的大量工作都转化到了Mac OS X中，最显而易见的部分当属Cocoa。但差异也存在。例如，NeXTSTEP和OPENSTEP使用[Display PostScript实现文字和图形的屏幕显示](https://zh.wikipedia.org/wiki/Display_PostScript "wikilink")，而Cocoa依赖苹果的[Quartz](https://zh.wikipedia.org/wiki/Quartz "wikilink")（基于PDF的绘图模型）。

Cocoa这个名词曾经被用来称呼一款帮助儿童创建多媒体工程的应用程序。随后该应用停产。该名称被用作现在的用途。

## 内存管理

Cocoa环境的一个特点是它可以管理动态分配的内存。Cocoa中绝大部分类的基类都是NSObject，它实现了[引用计数](../Page/引用计数.md "wikilink")的内存管理模型。从NSObject继承的类可以响应`retain`和`release`消息，以增减其引用计数；也可以通过发送`retainCount`消息来获取其引用计数。一个以`alloc`，`copy`或[Objective-C 2.0中增加的](https://zh.wikipedia.org/wiki/Objective-C_2.0 "wikilink")`new`所创建的对象的引用计数为1；向对象发送`retain`消息会将计数加1，而发送`release`消息则会将计数减1。若对象的引用计数减少到了0，则它会被销毁。`dealloc`消息类似于[C++](../Page/C++.md "wikilink")中的[析构函数](https://zh.wikipedia.org/wiki/析构函数 "wikilink")，在对象被销毁之前可能会被调用，但系统不保证会发送该消息。这种引用计数的模型与[微软](../Page/微软.md "wikilink")的[COM中的](../Page/组件对象模型.md "wikilink")[IUnknown](../Page/IUnknown.md "wikilink")接口特性十分相似，它提供了`AddRef`和`Release`接口，与`retain`和`release`对应。

从[Objective-C 2.0开始](https://zh.wikipedia.org/wiki/Objective-C_2.0 "wikilink")，Objective-C运行时实现了可选的[垃圾收集器](https://zh.wikipedia.org/wiki/Objective-C#垃圾收集 "wikilink")。若垃圾收集的特性被激活，则运行时会将引用计数相关的操作，例如“retain”和“release”，变为[无操作](../Page/NOP.md "wikilink")。[iOS上的Objective](https://zh.wikipedia.org/wiki/iOS "wikilink")-C 2.0实现中不包含垃圾收集器。垃圾收集器运行在一个低优先级的后台线程中，并可以在用户动作时暂停，从而保持良好的用户体验。\[1\]

## 主要框架

Cocoa包含三个主要的[Objective-C](../Page/Objective-C.md "wikilink")对象库，称为“[框架](https://zh.wikipedia.org/wiki/框架 "wikilink")”。框架的功能类似于[动态库](https://zh.wikipedia.org/wiki/动态库 "wikilink")，即可以在运行时动态的载入应用程序的地址空间，但框架作为一个[捆绑而非独立文件](https://zh.wikipedia.org/wiki/捆绑_\(计算机\) "wikilink")，其中除了可执行代码外，也包含了资源，头文件和文档。

  - “”，或简称为“Foundation”，首先出现在OpenStep中。在[Mac OS X中](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")，它是基于的。作为通用的[面向对象的](https://zh.wikipedia.org/wiki/面向对象 "wikilink")[函数库](https://zh.wikipedia.org/wiki/函数库 "wikilink")，Foundation提供了[字符串](../Page/字符串.md "wikilink")，数值的管理，[容器及其枚举](https://zh.wikipedia.org/wiki/容器_\(计算机科学\) "wikilink")，[分布式计算](../Page/分布式计算.md "wikilink")，[事件循环](https://zh.wikipedia.org/wiki/事件循环 "wikilink")，以及一些其它的与[图形用户界面](../Page/图形用户界面.md "wikilink")没有直接关系的功能。其中用于类和[常数的](https://zh.wikipedia.org/wiki/常数 "wikilink")“NS”前缀来自于Cocoa的来源，[NeXTSTEP](../Page/NeXTSTEP.md "wikilink")。它可以在[Mac OS X和](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")[iOS中使用](https://zh.wikipedia.org/wiki/iOS "wikilink")。

<!-- end list -->

  - “”，或称AppKit（**App**lication **Kit**）是直接衍生自NeXTSTEP的AppKit的。它包含了程序与[图形用户界面](../Page/图形用户界面.md "wikilink")交互所需的代码。它是基于Foundation建立的，也使用“NS”前缀。它只能在[Mac OS X中使用](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")。

<!-- end list -->

  - “[用户界面工具包](https://zh.wikipedia.org/wiki/UIKit "wikilink")”，或称UIKit（**U**ser **I**nterface **Kit**），是用于[iOS的图形用户界面工具包](https://zh.wikipedia.org/wiki/iOS "wikilink")。与AppKit不同，它使用“UI”的前缀。

Cocoa构架的一个关键部分是其多样的视图模型。总体而言，它是基于由[Quartz提供的](https://zh.wikipedia.org/wiki/Quartz "wikilink")[PDF绘制模型的](https://zh.wikipedia.org/wiki/PDF "wikilink")，该特性允许使用[PostScript](../Page/PostScript.md "wikilink")绘制自定义图形内容，同时也自动的支持了打印机以及类似设备。由于Cocoa框架管理了全部的绘图操作，例如裁剪，滚动，缩放等，程序员可以不再重复实现基础的功能，而可以集中于提供程序的关键功能上。

## 模型-视图-控制器

[施乐](../Page/施乐.md "wikilink")[帕罗奥多研究中心的](https://zh.wikipedia.org/wiki/帕罗奥多研究中心 "wikilink")[Smalltalk](../Page/Smalltalk.md "wikilink")开发小组最终发明了一种可以简化开发过程，提高代码重用率的设计哲学，即“[模型-视图-控制器](https://zh.wikipedia.org/wiki/模型-视图-控制器 "wikilink")”模式（MVC）。这种模式将应用程序分为三个可以交互的对象集，即模型，视图和控制器。其中，模型类代表原始数据，例如文档、设置、文件、内存中的对象等，视图是模型中数据的可视化表现，而控制器类则包含了将模型和其对应视图连接起来的逻辑，并保持前二者的状态同步。

Cocoa的设计遵循了严格的MVC原则。在OpenStep下，绝大多数的类要么是高层的视图类（AppKit），或者是相对底层的模型类（Foundation）。与类似的MVC系统相比，OpenStep没有强的模型层，例如它不包含表示“文档”的存储类。在向Cocoa迁移的过程中，模型层被大大扩展了，引入了一系列的类，它们提供了一些桌面程序所需的常用功能。

在[Mac OS X 10.3中](https://zh.wikipedia.org/wiki/Mac_OS_X_10.3 "wikilink")，苹果引入了NSController系列类以提供预定义的控制器层。这些类是[Cocoa绑定系统的一部分](https://zh.wikipedia.org/wiki/Cocoa绑定 "wikilink")，该系统也允许使用类似[键-值-观测器和](https://zh.wikipedia.org/wiki/键-值-观测器 "wikilink")[键-值-绑定协议来对其进行扩展](https://zh.wikipedia.org/wiki/键-值-绑定 "wikilink")。其中，“绑定”的概念表明两个对象（通常是视图和控制器）之间的关系。绑定使得开发者可以集中于定义这种关系，而不是编写大量的“胶水代码”来实现这些关系。

在[Mac OS X 10.4中](https://zh.wikipedia.org/wiki/Mac_OS_X_10.4 "wikilink")，苹果引入了[Core Data框架](../Page/Core_Data.md "wikilink")，进一步扩展了这种概念。Core Data标准化了对更改的追踪和模型层的保存行为。因此，该框架大大简化了改变应用程序数据，撤销更改，在磁盘中保存和读取数据的过程。

通过提供对MVC模型中全部3层的框架支持，苹果的目的在于减少程序员所需编写的“胶水代码”量，以解放这些资源而用于程序的真正特性。

## 动态绑定

在多数[面向对象的](https://zh.wikipedia.org/wiki/面向对象的程序设计 "wikilink")[编程语言](../Page/编程语言.md "wikilink")中，调用方法是由直接调用内存中一段固定的代码实现的。由于这种方法需要预定义的处理命令的类，因而限制了程序的设计，通常采用[责任链模式](../Page/责任链模式.md "wikilink")作为其[设计模式](https://zh.wikipedia.org/wiki/设计模式 "wikilink")。虽然Cocoa在多数地方仍然采用这种方式，但通过Objective-C的[动态绑定特性增加了更多设计的自由性](https://zh.wikipedia.org/wiki/Objective-C#讯息传递 "wikilink")。

在Objective-C中，消息由**selector**所代表，其为描述需要调用的方法的一个字符串。在发送消息时，该selector被送入Objective-C运行时中，在可用方法列表中寻找对应的方法，然后调用该方法的实际**实现**。由于selector只是文本数据，因此它可以保存在文件中，通过网络或在进程间传输，或以其它方式进行操作。方法的实现是在运行时查找的，而非编译时。这样的做法会造成一些性能损失\[2\]，但动态绑定允许相同的selector代表不同的实现。

利用这些特性，Cocoa提供了一种通用的数据管理技术，称为**[键-值编码](https://zh.wikipedia.org/wiki/键-值编码 "wikilink")**(KVC)\[3\]。这种技术允许对象的数据或属性可以在运行时通过其键名进行查找，其中，属性的名称即为其值的键名。在静态语言中，这样的做法是不可能的。KVC大大的增加了设计的自由度：通过KVC，无需知道对象的类型即可访问其属性或数据。另外，利用**[键-值-观测器](https://zh.wikipedia.org/wiki/键-值-观测器 "wikilink")**（KVO）技术和NSUndoManager类，可以提供自动的撤销/重做支持\[4\]。

## Rich objects

Cocoa中最有用的特性是系统提供的强大的“基础对象”，例如Foundation中的`NSString`和`NSAttributedString`类，提供了[Unicode](https://zh.wikipedia.org/wiki/Unicode "wikilink")[字符串](../Page/字符串.md "wikilink")的支持；而AppKit中的`NSText`系统则允许程序员在GUI中放置字符串对象。

`NSText`及其相关类是用于显示和编辑字符串的。这些对象允许程序实现简单的单行文本框，也可以实现完整的多页，多栏文本显示方案 ，方案同时可以提供支持完整的专业[排版](../Page/排版.md "wikilink")特性，例如，[合字](../Page/合字.md "wikilink")，环绕形状的文字，[旋转](../Page/旋转.md "wikilink")，完整的Unicode支持和[反锯齿](https://zh.wikipedia.org/wiki/反锯齿 "wikilink")[字形](../Page/字形.md "wikilink")渲染。段落格式可以自动控制或由用户自定义；可以使用内建的“ruler”对象附加到任何文本视图上。这些类也有自动[拼写检查特性](https://zh.wikipedia.org/wiki/拼写检查 "wikilink")，该特性使用一个由所有程序共享的字典。另外，也允许无限制数量的撤销/重做操作。只使用内建的特性，任何人都可以只用不到10行代码写出一个具备上述特性的文本编辑器，而若使用[Cocoa绑定](https://zh.wikipedia.org/wiki/Cocoa绑定 "wikilink")，甚至可以不用写一行代码。

若需要对已有特性进行扩展，Objective-C中的[类别特性使得这项操作变得相当容易](https://zh.wikipedia.org/wiki/Objective-C#类别 "wikilink")\[5\]。通过类别可以直接对已有类进行功能添加，而无需对其进行更改或获得其源代码。一般而言，这样的目的需要通过继承原有的类并修改原有的代码，将原有的类以新的子类代替来完成。

## 实现

Cocoa本身由Objective-C语言写成，因此Objective-C是开发Cocoa应用的首选语言。虽然也提供Java到Cocoa的绑定，但是在开发者中并未得到广泛采用。而且，由于使用桥接机制，Java的绑定并不能全面利用Cocoa的所有功能。2005年，苹果公司宣布Java的Cocoa绑定在Mac OS X 10.4和之后版本中属被废弃的技术。換句話說，Cocoa API中可能會逐漸出現不支援Java的功能。

作为Xcode一部分的[AppleScript Studio工具允许用户和开发者用AppleScript编写一些简单的Cocoa应用](../Page/AppleScript.md "wikilink")。第三方实现的绑定有Clozure CL、LispWorks、PyObjC（Python）、RubyCocoa（Ruby）、CamelBones（Perl）、Cocoa\#、Monobjc（C\#）和NObjective（C\#）。Nu语言直接使用Objective-C的对象模型，所以无须绑定就可以调用Cocoa API。

也有开源项目把Cocoa的大部分在其它操作系统上实现（包括Windows），从而使开发跨平台的Cocoa应用成为可能。比如[GNUstep](../Page/GNUstep.md "wikilink")和[Cocotron](https://zh.wikipedia.org/wiki/Cocotron "wikilink")\[6\]。

## 参考文献

  - [Aaron Hillegass](https://zh.wikipedia.org/wiki/Aaron_Hillegass "wikilink"): <cite>Cocoa Programming for Mac OS X</cite>, Addison-Wesley, 3rd Edition 2008, Paperback, ISBN 0-321-50361-9.
  - [Stephen Kochan](https://zh.wikipedia.org/wiki/Stephen_Kochan "wikilink"): <cite>Programming in Objective-C</cite>, Sams, 1st Edition 2003, Paperback, ISBN 0-672-32586-1.
  - [Michael Beam](https://zh.wikipedia.org/wiki/Michael_Beam "wikilink"), [James Duncan Davidson](https://zh.wikipedia.org/wiki/James_Duncan_Davidson "wikilink"): <cite>Cocoa in a Nutshell</cite>, O'Reilly, 1st Edition 2003, Paperback, ISBN 0-596-00462-1.
  - [Erick Tejkowski](https://zh.wikipedia.org/wiki/Erick_Tejkowski "wikilink"): <cite>Cocoa Programming for Dummies</cite>, 1st Edition 2003, Paperback, ISBN 0-7645-2613-8.
  - [Simson Garfinkel](https://zh.wikipedia.org/wiki/Simson_Garfinkel "wikilink"), [Michael K. Mahoney](https://zh.wikipedia.org/wiki/Michael_K._Mahoney "wikilink"): <cite>Building Cocoa Applications : A Step by Step Guide</cite>, O'Reilly, 1st Edition 2002, Paperback, ISBN 0-596-00235-1.
  - [James Duncan Davidson](https://zh.wikipedia.org/wiki/James_Duncan_Davidson "wikilink"): <cite>Learning Cocoa with Objective-C</cite>, O'Reilly, 2nd Edition 2002, Paperback, ISBN 0-596-00301-3.
  - [Scott Anguish](https://zh.wikipedia.org/wiki/Scott_Anguish "wikilink"), [Erik M. Buck](https://zh.wikipedia.org/wiki/Erik_M._Buck "wikilink"), [Donald A. Yacktman](https://zh.wikipedia.org/wiki/Donald_A._Yacktman "wikilink"): <cite>Cocoa Programming</cite>, Sams, 1st Edition 2002, Paperback, ISBN 0-672-32230-7.
  - [Bill Cheeseman](https://zh.wikipedia.org/wiki/Bill_Cheeseman "wikilink"): <cite>Cocoa Recipes for Mac OS X</cite>, Peachpit Press, 1st Edition 2002, Paperback, ISBN 0-201-87801-1.
  - Andrew Duncan: <cite>Objective-C Pocket Reference</cite>, O'Reilly, 1st Edition 2002, Paperback, ISBN 0-596-00423-0.
  - [Apple Inc.](https://zh.wikipedia.org/wiki/Apple_Inc. "wikilink"): <cite>Learning Cocoa</cite>, O'Reilly, 1st Edition 2001, Paperback, ISBN 0-596-00160-6.

## 外部链接

  - [Apple的Cocoa文档](https://web.archive.org/web/20090301174219/http://developer.apple.com/documentation/Cocoa/Cocoa.html)
  - [iDevApps - Cocoa编程论坛](https://web.archive.org/web/20190202170514/http://www.idevapps.com/)
  - [CocoaDev](https://web.archive.org/web/20080801025517/http://www.cocoadev.com/)
  - [Cocoa Dev Central](http://cocoadevcentral.com/)

[Category:Mac_OS介面](https://zh.wikipedia.org/wiki/Category:Mac_OS介面 "wikilink")

1.
2.  [Wikibooks - Some Objective-C advantages](http://en.wikibooks.org/wiki/Programming_Mac_OS_X_with_Cocoa_for_beginners/Objective_C,_the_language_and_its_advantages#Some_Objective-C_advantages)
3.  [Key-Value Coding Programming Guide](http://developer.apple.com/library/mac/#documentation/Cocoa/Conceptual/KeyValueCoding/index.html)
4.  [Key-Value Observing Programming Guide](http://developer.apple.com/library/ios/documentation/cocoa/Conceptual/KeyValueObserving/Concepts/KVOBasics.html)
5.  [Categories and Extensions](http://developer.apple.com/documentation/Cocoa/Conceptual/ObjectiveC/Articles/ocCategories.html#//apple_ref/doc/uid/TP30001163-CH20-SW1)
6.  [Cocotron](http://www.cocotron.org/) - Cocoa的免費版本