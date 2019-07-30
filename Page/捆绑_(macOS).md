[NeXTSTEP](../Page/NeXTSTEP.md "wikilink")，[Mac OS X和](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")[GNUStep中](https://zh.wikipedia.org/wiki/GNUStep "wikilink")，**捆绑**（Bundle）是一个目录（也可能是一个文件），它允许相关资源（例如[可执行代码](https://zh.wikipedia.org/wiki/可执行代码 "wikilink")，[本地化资源](https://zh.wikipedia.org/wiki/本地化 "wikilink")，[图片等](https://zh.wikipedia.org/wiki/图片 "wikilink")）被组合在一起，在某些情况下可以当作一个单独文件看待。在[Mac中](https://zh.wikipedia.org/wiki/Mac "wikilink")，该特性在[Mac OS 9中引入](../Page/Mac_OS_9.md "wikilink")，被称为“包”（package），它类似于[RISC OS和](../Page/RISC_OS.md "wikilink")[ROX Desktop中](https://zh.wikipedia.org/wiki/ROX_Desktop "wikilink")[应用程序目录的特性](https://zh.wikipedia.org/wiki/应用程序目录 "wikilink")，以及使用[SpatialBundle技术的](https://zh.wikipedia.org/wiki/SpatialBundle "wikilink")[Ubuntu](../Page/Ubuntu.md "wikilink")和[Debian](../Page/Debian.md "wikilink")等[Linux发行版](../Page/Linux发行版.md "wikilink")。

[应用程序](../Page/应用程序.md "wikilink")，[应用程序框架和](https://zh.wikipedia.org/wiki/应用程序框架 "wikilink")[插件](../Page/插件.md "wikilink")通常以捆绑的形式将其内部文件组织在一起，同时，文档也可以构成框架。在[NeXT](../Page/NeXT.md "wikilink")的Foundation工具包和[Cocoa](../Page/Cocoa.md "wikilink")的Foundation框架中，可以使用`NSBundle`类操作捆绑；在[Core Foundation中](https://zh.wikipedia.org/wiki/Core_Foundation "wikilink")，则使用`CFBundle`系列函数进行操作。

捆绑通常包含一个可执行代码文件和一些资源文件，例如[NIB文件](../Page/Interface_Builder.md "wikilink")，图像，声音，[本地化字符串](https://zh.wikipedia.org/wiki/本地化 "wikilink")，配置文件（通常是[属性列表文件](https://zh.wikipedia.org/wiki/属性列表文件 "wikilink")）和其它媒体。在其它系统上，例如[Microsoft Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")，这些资源通常在编译时就被直接包含在了可执行文件中。[Mac OS X从](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")[NeXTSTEP](../Page/NeXTSTEP.md "wikilink")中引入了捆绑的概念，用以代替早期[Mac OS中以](https://zh.wikipedia.org/wiki/Mac_OS "wikilink")[资源分支存储附加](https://zh.wikipedia.org/wiki/资源分支 "wikilink")[元数据](../Page/元数据.md "wikilink")的技术。多数类型的捆绑在使用时与普通文件类似，从而减少了其内部文件意外更改或丢失的风险。同时，捆绑的另一个意义在于可以使用文件夹简化组织资源的方式，避免使用资源分支导致的额外的复杂性。

捆绑的[统一类型标识符是](https://zh.wikipedia.org/wiki/统一类型标识符 "wikilink")`com.apple.bundle`，而包的则是`com.apple.package`。

## Mac OS X中的应用程序捆绑

应用程序捆绑通常为[软件包](https://zh.wikipedia.org/wiki/软件包 "wikilink")，以单一文件的形式出现在用户面前。这个“文件”实际上是一个以`.app`为扩展名的文件夹。[辅助点按这个包](https://zh.wikipedia.org/wiki/辅助点按 "wikilink")，然后选择“显示包内容”，即可以文件夹的形式打开该捆绑并查看、修改其内容。对于应用程序，捆绑中的唯一一个一级子目录通常是`Contents`。在`Contents`中，通常有另外一些目录，包括可执行文件目录（在Mac中为`MacOS`，GNUStep中则为应用程序的名字），资源目录（`Resources`）等。资源目录中通常包含了程序所需的本地化资源，包括字符串文件（`.strings`文件），[nib文件等等](../Page/Interface_Builder.md "wikilink")。

其它常见的子目录包括`Plugins`，`Frameworks`和`Shared Frameworks`。`Frameworks`包括了该程序使用的框架，程序运行时会首先查找此处的框架而不是优先使用系统提供的，可以在一定程度上避免类似[DLL地狱的情况发生](https://zh.wikipedia.org/wiki/DLL地狱 "wikilink")。`Shared Frameworks`目录包含了可以由本程序和其它程序使用的框架，同时，与`Frameworks`不同，只会在无法在系统中找到更新的版本时使用。`Plugins`目录则包含了程序使用的插件。

## Mac OS X中的框架捆绑

Mac OS X中的框架也以捆绑的形式储存。框架中的[动态库代码储存在与框架同名的文件中](https://zh.wikipedia.org/wiki/动态库 "wikilink")，放置于顶层目录中；顶层目录中也可能包含`Headers`，储存了该框架提供的[头文件](../Page/头文件.md "wikilink")。

## Mac OS X中的可载入捆绑

**可载入捆绑**即包含可以在运行时载入的代码的捆绑\[1\]，其扩展名通常为`.bundle`，常常被用作[插件](../Page/插件.md "wikilink")。

## 其它捆绑格式

其它的一些捆绑包括包含图形的，以`.rtfd`为扩展名的[RTF文件](https://zh.wikipedia.org/wiki/RTF文件 "wikilink")，[Safari](../Page/Safari.md "wikilink")的下载未完成的文件等。[GarageBand](https://zh.wikipedia.org/wiki/GarageBand "wikilink")，[Keynote](../Page/Keynote.md "wikilink")，[Pages](../Page/Pages.md "wikilink")，[Numbers](../Page/Numbers.md "wikilink")，[iMovie和](https://zh.wikipedia.org/wiki/iMovie "wikilink")[Xcode](../Page/Xcode.md "wikilink")等程序的部分版本中，项目文件亦存储为捆绑。在[iWork '09版中](https://zh.wikipedia.org/wiki/iWork "wikilink")，其文件为一压缩的捆绑，可以将其解压后查看内部结构\[2\]；另外，[Microsoft Office](../Page/Microsoft_Office.md "wikilink") 2007引入的新文件格式也采用了类似的技术。

Apple's installer packages (`.pkg`) are bundles that contain [`pax`](https://zh.wikipedia.org/wiki/pax_\(program\) "wikilink") archives. See [Installer (Mac OS X)](https://zh.wikipedia.org/wiki/Installer_\(Mac_OS_X\) "wikilink"). 苹果安装器包（`.pkg`）是包含[`pax`](https://zh.wikipedia.org/wiki/pax "wikilink")归档文件的捆绑，参见[Installer (Mac OS X)](https://zh.wikipedia.org/wiki/Installer_\(Mac_OS_X\) "wikilink")。

Linux发行版[Super OS使用](https://zh.wikipedia.org/wiki/Super_OS "wikilink")[RUNZ格式的捆绑](https://zh.wikipedia.org/wiki/RUNZ "wikilink")。

## 参考文献

## 参见

  - [Application Directory](https://zh.wikipedia.org/wiki/Application_Directory "wikilink") — [RISC OS中的应用程序捆绑](../Page/RISC_OS.md "wikilink")
  - [klik](https://zh.wikipedia.org/wiki/klik "wikilink") — 一个使用类似原理的Linux程序
  - [RUNZ](https://zh.wikipedia.org/wiki/RUNZ "wikilink")
  - [SpatialBundle](https://zh.wikipedia.org/wiki/SpatialBundle "wikilink") 采用“一个文件，一个程序”哲学的用于Linux的可移植程序

## 外部链接

  - [Bundle Programming Guide](http://developer.apple.com/mac/library/documentation/CoreFoundation/Conceptual/CFBundles/Introduction/Introduction.html) at Apple Developer Connection
  - [NSBundle documentation](http://www.gnustep.org/resources/documentation/Developer/Base/Reference/NSBundle.html) from the GNUstep project
  - [Platypus](http://www.sveinbjorn.org/platypus) — a tool to create application bundles around scripts
  - [Tech News](http://www.bgdna.com/) — new technology news information with reviews

[Category:MacOS](https://zh.wikipedia.org/wiki/Category:MacOS "wikilink")

1.  [Code Loading Programming Topics for Cocoa: About Loadable Bundles](http://developer.apple.com/documentation/Cocoa/Conceptual/LoadingCode/Concepts/AboutLoadableBundles.html)
2.  [Open iWork' 09 flat files as folders](http://www.macosxhints.com/article.php?story=20090225034801527)