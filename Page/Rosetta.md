**Rosetta**是[苹果电脑公司发布的在](https://zh.wikipedia.org/wiki/苹果电脑公司 "wikilink")[Mac OS X上的一个二进制编译器](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")[软件](../Page/软件.md "wikilink")。它可以让在[Power PC平台上开发的软件在](https://zh.wikipedia.org/wiki/Power_PC "wikilink")[英特尔](../Page/英特尔.md "wikilink")平台的[麦金塔电脑上顺利运行](https://zh.wikipedia.org/wiki/麦金塔电脑 "wikilink")。它基于Transitive公司的QuickTransit技术，也是麦金塔电脑从PowerPC向英特尔转换的一个重要部分，确保原先的[Mac OS X程序能在新的英特尔平台上运行](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")。虽然和英特尔原生编译的软件比较起来会有速度上的差别，但是对大多数对[CPU资源使用不是很多的软件来说](https://zh.wikipedia.org/wiki/CPU "wikilink")，速度上的差别是非常小的。

这个软件的名字起源于[羅塞塔石碑](../Page/羅塞塔石碑.md "wikilink")（Rosetta Stone）。在考古学上，它的发现成为破译古埃及象形文字的关键。苹果利用这名字来形容编译器的重要性。

在Intel版本的Mac OS X上，用户可以在[通用二进制](../Page/通用二进制.md "wikilink")程序的选项里选择是否使用Rosetta来运行程序。

因架構轉換已完成數年，大多數Mac平台軟體已更新為通用二进制甚至不再支援PowerPC架構，因此在2009年推出的[Mac OS X Snow Leopard](../Page/Mac_OS_X_Snow_Leopard.md "wikilink")，Rosetta不再預設隨附於系統安裝中，但使用者可從系統光碟或網路下載自行安裝。而2011年夏天推出的[Mac OS X Lion](../Page/Mac_OS_X_Lion.md "wikilink")，則不再支援Rosetta。\[1\]

## 性能

Rosetta预装在[英特尔](../Page/英特尔.md "wikilink")芯片[麦金塔电脑的操作系统上](https://zh.wikipedia.org/wiki/麦金塔电脑 "wikilink")。它可以将[G3](https://zh.wikipedia.org/wiki/PowerPC_G3 "wikilink")，[G4和](https://zh.wikipedia.org/wiki/PowerPC_G4 "wikilink")[AltiVec指令进行翻译](https://zh.wikipedia.org/wiki/AltiVec "wikilink")，但是不编译需要[G5的软件](https://zh.wikipedia.org/wiki/PowerPC_G5 "wikilink")——这些应用程序需要开发者自行修改。尽管如此，目前几乎没有软件必须需要G5处理器这样的高配置，所以对于绝大多数的应用程序来说，Rosetta都可以工作。 [Intel_Mac_with_PowerPC_application.png](https://zh.wikipedia.org/wiki/File:Intel_Mac_with_PowerPC_application.png "fig:Intel_Mac_with_PowerPC_application.png")正在執行PowerPC應用程式[Internet Explorer for Mac](../Page/Internet_Explorer_for_Mac.md "wikilink")\]\]

[苹果公司声称](https://zh.wikipedia.org/wiki/苹果公司 "wikilink")，那些重视用户互动而较少计算量的应用程序（比如[Word等文字处理器](https://zh.wikipedia.org/wiki/Word "wikilink")）是比较适合通过Rosetta编译的；而需要大计算量的程序，比如[Photoshop等就并非如此了](https://zh.wikipedia.org/wiki/Photoshop "wikilink")。原先苹果公司的"Pro"系列媒体产品应用软件的PowerPC版本（Final Cut Pro/Express, Motion, Soundtrack Pro, DVD Studio Pro, Aperture，和Logic Pro/Express）都不支持Rosetta，而这些软件需要另外的[通用二进制](../Page/通用二进制.md "wikilink")版本才能运行在英特尔麦金塔电脑上。

总的来说，Rosetta**不能**在以下环境中运行：

  - 基于[Mac OS 9及其以下版本的应用程序](../Page/Mac_OS_9.md "wikilink")。
  - 需要将设置插入系统参数设置的代码
  - 必须基于G5处理器的应用程序
  - 屏幕保护程序
  - [Kernel拓展程序](https://zh.wikipedia.org/wiki/Kernel "wikilink")，以及其他基于此的应用程序
  - 捆绑[Java](../Page/Java.md "wikilink")平台的应用程序，和不能被编译的[JNI](https://zh.wikipedia.org/wiki/JNI "wikilink")（Java本地接口，Java Native Interface）库的应用程序
  - Rosetta编译后应用程序中的Java插件。这意味着，仅PowerPC的网页浏览器（如微软的Internet Explorer for Mac）将无法读取Java插件。用户需要支持英特尔版本的浏览器，如[Safari](../Page/Safari.md "wikilink")，[Camino](../Page/Camino.md "wikilink")，[Firefox或者新版本的](https://zh.wikipedia.org/wiki/Mozilla_Firefox "wikilink")[Opera等等](https://zh.wikipedia.org/wiki/Opera "wikilink")）。
  - 其他读取-{zh-cn:运行时; zh-tw:執行時;}-的二进制库。

## 參考

<references/>

## 参见

  - [通用二进制](../Page/通用二进制.md "wikilink")

## 外部链接

  - [Apple中国-Rosetta（简体中文）](http://www.apple.com.cn/rosetta)
  - [蘋果電腦-Rosetta（繁體中文）](https://web.archive.org/web/20061004164259/http://www.apple.com.tw/rosetta/)
  - [苹果开发者关于通用二进制代码编程指南的介绍 简体中文](https://web.archive.org/web/20070206205603/http://developer.apple.com.cn/documentation/MacOSX/Conceptual/universal_binary/universal_binary_intro/chapter_1_section_1.html)

<!-- end list -->

  - [Apple新闻](https://web.archive.org/web/20100722102013/http://www.apple.com/pr/library/2005/jun/06intel.html)
  - [Transitive Corporation web site](http://www.transitive.com/)
  - [Rosetta AltiVec and OpenGL support confirmed](http://www.macrumors.com/pages/2005/11/20051130003205.shtml)
  - [Apple通用程序的列表](https://web.archive.org/web/20090601043720/http://guide.apple.com/action.lasso?-database=MacOSGuide&-layout=cgi_search&-response=%2Fussearch%2Fhitlist_universal.html&-op=bw&binaries=Universal&-maxRecords=20&-search)
  - [List of Universal Binary Applications at osx86project.org](http://wiki.osx86project.org/wiki/index.php/X86_software)
  - [Rosetta compatibility index](https://web.archive.org/web/20060208152806/http://guides.macrumors.com/Rosetta_incompatibilities)

[Category:蘋果公司軟體](https://zh.wikipedia.org/wiki/Category:蘋果公司軟體 "wikilink") [Category:仿真软件](https://zh.wikipedia.org/wiki/Category:仿真软件 "wikilink") [Category:MacOS軟體](https://zh.wikipedia.org/wiki/Category:MacOS軟體 "wikilink") [Category:MacOS](https://zh.wikipedia.org/wiki/Category:MacOS "wikilink")

1.