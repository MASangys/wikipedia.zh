\-{zh-hant:**Finder**;zh-hans:**访达**（）}-是在[Classic Mac OS和](../Page/Classic_Mac_OS.md "wikilink")[macOS](https://zh.wikipedia.org/wiki/macOS "wikilink")（2012年前称Mac OS X，2012年-2016年称OS X）中預設的[應用程式](https://zh.wikipedia.org/wiki/應用程式 "wikilink")，能讓使用者管理檔案、文件、磁碟、網路，以及啟動其他的應用程式。Finder與其他作業系統中的[殼層](../Page/殼層.md "wikilink")（shell）功能相似，而Finder使用了[圖形使用者界面](https://zh.wikipedia.org/wiki/圖形使用者界面 "wikilink")（GUI）。最早的第一台麥金塔電腦上就已經有了Finder，同時在電腦上也以之一部份的形式出現。當蘋果轉換至以[UNIX為基礎的](https://zh.wikipedia.org/wiki/Unix "wikilink")[Mac OS X作業系統後](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")，Finder也被徹底重新改寫。

在啟動（或登入）麥金塔（Macintosh）電腦後，Finder是使用者首先會接觸到的程式，它也負責呈現整個作業系統的主要視覺風格，而需要注意的是，這不應該和實際上由作業系統內建之特定服務元件所提供的[圖形使用者界面混淆](https://zh.wikipedia.org/wiki/圖形使用者界面 "wikilink")（例如：[WindowServer](../Page/Quartz_Compositor.md "wikilink")）。雖然Finder是作業系統中重要的部份之一，但它僅是一個應用程式，使用者可以將Finder從系統中關閉，但這樣一來也就無法直观的開啟任何檔案或檔案夾。

Finder能持續顯示出使用[桌面比擬](https://zh.wikipedia.org/wiki/桌面比擬 "wikilink")（Desktop metaphor）修正后的後的[檔案系統视图](https://zh.wikipedia.org/wiki/檔案系統 "wikilink")，意即檔案和檔案夾皆以適當的圖案表示、磁碟（卷宗）會出現於一个（虚拟形象化的）桌面上，也有一個垃圾桶（在OS X是位於[Dock中](https://zh.wikipedia.org/wiki/Dock "wikilink")，更早的舊版則是在桌面上），將檔案拖曳至垃圾桶圖示上方即可刪除。“桌面”本身其实也是一个实际的文件夹，存在于Macintosh的文件系统中。

## Finder 1.0至4.1

最早的Finder和MFS（[Macintosh File System](https://zh.wikipedia.org/wiki/Macintosh_File_System "wikilink")）一起使用，总是在每个磁盘的根目录上留有一个空白[文件夹](../Page/目录_\(文件系统\).md "wikilink")。只要这个文件夹被重命名或者使用，系统又会自动生成另一个新的空白文件夹。在Finder 1.0-4.1版本中，文件夹本身不能被其内部文件夹替代。文件夹的维护工作只由Finder来执行，而不保存在文件系统中。所以，在一个驱动器上不能有两个文件重名，在应用程序的“打开”对话框中不能显示文件夹，而只是简单罗列出所有文件。如果重建桌面，所有的文件夹信息将全部丢失，把所有文件都放回根目录中。

Finder中还有一个"垃圾桶文件夹"，删除文件的唯一办法是把文件拖到这个垃圾桶文件夹里面去，然后清空垃圾桶。尽管如此，这个垃圾桶文件夹只是一个镜像，无法反映到磁盘上。垃圾桶里面的文件列表只保存在内存中，因此Finder会在其中之前清空垃圾桶，包括在运行任何其他程序的时候。若出现意外情况，垃圾桶中的文件将被打回到原来位置。

1984年5月发布的[Macintosh 128K上搭载的Finder](https://zh.wikipedia.org/wiki/Macintosh_128K "wikilink") 1.1缓慢的文件拷贝速度导致很多用户不满，因为早期电脑只有一个驱动器，而这个操作却要让用户不停切换磁盘，尽管主要原因归咎于容量太小的内存。直到1985年4月发布的Finder 4.1才真正提高了Finder速度并增加新功能，包括在新的“特别”菜单里面增加"新文件夹"命令和"关闭"命令，而且还可以访问"MiniFinder"。MiniFinder是一个简化界面，里面有一些常用的应用程序和文档，启动也更快速，节约在应用程序和拓展程序之间切换的时间。

## Finder 6.x

在早期MacOS中的Finder早期版本中，必须先关闭Finder才能启动其它应用程序，因为操作系统还是单任务的。而从System 5.x及其附带的Finder 6.0和新的[MultiFinder开始支持](https://zh.wikipedia.org/wiki/MultiFinder "wikilink")[协作多任务](https://zh.wikipedia.org/wiki/协作多任务 "wikilink")。用户可以在控制面板中激活MultiFinder，但是需要重新启动。[System Software 6](https://zh.wikipedia.org/wiki/System_Software_6 "wikilink").0.x及其附带的Finder 6.1.x提供了改进很多的MultiFinder版本，并增强了很多功能。

## Finder 7.0至9.2

1991年苹果公司发佈了[System 7](https://zh.wikipedia.org/wiki/System_7 "wikilink")，是其操作系统的一大显著改进。和系统的其他软件一样，Finder也用[C++](../Page/C++.md "wikilink")完全改写。Finder窗口可以染色，而且列表视图可以通过一个“收缩三角形”进行下一层文件夹的展开。

虽然Macintosh操作系统本身一直在不断改进，Finder一直相对保持不变，直到1997年[Mac OS 8发布](../Page/Mac_OS_8.md "wikilink")。Finder 8.0是第一个[多线程](../Page/多线程.md "wikilink")版本，用户终于可以再拷贝文件或者清空垃圾桶的时候不会被妨碍Finder的其他功能同时进行。和系统其他配件一样，Finder 8.0采用了金属外观，也增加了若干新功能，比如，在屏幕下方显示的标签在点击之后可以弹出窗口，显示其内容。Finder 8.0中还引进了带弹簧的文件夹。Finder 8.1在1998年初发布，开始更有效支持[HFS+文件系统](https://zh.wikipedia.org/wiki/HFS_Plus "wikilink")。

1999年10月发布的Finder 9，开始支持多用户操作、软件更新和Classic支持模式。9.1版本的其他功能还包括，支持特大文件（\>2GB），Encryption, Keychains, USB打印机共享和刻录CD。Finder 9是classic Mac OS Finder的最后一次大型升级。之后在2001年12月，在OS 9.2.2.之后，苹果停止开发[Mac OS 9](../Page/Mac_OS_9.md "wikilink")，也停止了Finder。

## Finder 10.0至10.2.1

Mac OS X中的Finder不是先前版本的升级，而是在借鉴[NeXTSTEP](../Page/NeXTSTEP.md "wikilink")文件管理器后彻底改写的。因此它和原先的Finder有很大的不同，很多老用户表示很不习惯。

Finder 10.0缺少Classic中的一些功能。通用桌面没有了，取而代之的是一个只显示用户自己桌面文件夹内容的桌面。原来对标签，以及各种元数据的支持也没有了，同样消失的还有弹出窗口，桌面打印机，"整理"命令和压缩文件夹。在 Finder 10.0中，废纸篓（垃圾桶）也从桌面上消失，也不再是桌面的一部分，而是集成到了系统的Dock里面。

Finder 10.0引进了一种可以高度自定义的工具栏，显示在每个Finder窗口顶部。还有一个新功能就是[NeXT](../Page/NeXT.md "wikilink")技术制作的列式视图，可以在右侧建立新的一列来显示下一级文件夹中的内容，

[Mac OS X 10.1是一个免费的升级版本](../Page/Mac_OS_X_v10.1.md "wikilink")，在Finder中引入CD刻录兼容性。这个性能在classic Mac OS 9.1版本中已经出现。

在 OS X Public Beta 中，Finder被稱作Desktop

## Finder 10.3

[Mac OS X v10.3中的Finder进行了改进](https://zh.wikipedia.org/wiki/Mac_OS_X_v10.3 "wikilink")，在保留一些classic环境中的特征的同时也引进了更新的[用户界面](../Page/用户界面.md "wikilink")。

Finder 10.3有一种称为Brushed Metal的外观，与苹果的[iTunes播放器软件的外观类似](https://zh.wikipedia.org/wiki/iTunes "wikilink")（版本5之前，成为Polished Metal外观）。正如OS X 10.0之后的几个旧版本中，用户可以在Finder窗口自定义一个工具栏，包括[搜索调板](https://zh.wikipedia.org/wiki/搜索 "wikilink")，可以在任何选定的文件夹或者磁盘中进行动态搜索。在Finder左边有一个新的面板称为“边栏”（Sidebar），几乎任何部件都可以拖进去，作为快捷接入的方式。重要的是，这些自定义的側欄内容也会在其他应用程序的打开／保存对话框出现。边栏中还可以显示、移出移动存储器的选项。Mac OS 9中卷标和按照输入、创建人[元数据](../Page/元数据.md "wikilink")进行搜索等功能深受老用户的喜爱，因此在10.3中又重新出现。

通过点击窗口右上角的“显示／隐藏边栏”按钮，不仅可以隐藏窗口的工具栏，而且边栏也被隐藏，将窗口转化为“紧凑模式”。

## Finder 10.4

[Mac OS X v10.4对Finder进行了进一步修改](https://zh.wikipedia.org/wiki/Mac_OS_X_v10.4 "wikilink")，包括幻灯片功能（與[Windows Explorer類似](https://zh.wikipedia.org/wiki/Windows_Explorer "wikilink")），它可以在Finder中直接按全屏方式浏览选中图像；[Spotlight](https://zh.wikipedia.org/wiki/Spotlight "wikilink")，一个在10.4引进的新概念，旨在搜索整个作業系統中的信息，原先classic中command-F的Finder快捷方式现在以另一种方式进化而来。搜索结果可以保存为[智能文件夹](https://zh.wikipedia.org/wiki/智能文件夹 "wikilink")，可以显示随时更新的搜索结果。不过还有另外两种搜索方式：Spotlight菜单项和Spotlight窗口。苹果公司声称“Spotlight和Mac OS X将改变你的寻找、组织和评价你电脑中的信息的方式。”尽管如此，有一些人觉得使用Spotlight时速度较慢，即使是在新的机器上，搜索速度也有限。

## Finder 10.5

[Finder_gallery_coverflow20070611.jpg](https://zh.wikipedia.org/wiki/File:Finder_gallery_coverflow20070611.jpg "fig:Finder_gallery_coverflow20070611.jpg")

Finder在[Leopard系統中進行了更新](https://zh.wikipedia.org/wiki/Mac_OS_X_v10.5 "wikilink")。主要的使用者界面與[iTunes](https://zh.wikipedia.org/wiki/iTunes "wikilink") 7相似，也包含了[Cover Flow顯示方式](../Page/Cover_Flow.md "wikilink")（如圖所示）。新的FInder加入了經過歸類整理的新側邊欄（sidebar）、與[Spotlight的整合也更加緊密](https://zh.wikipedia.org/wiki/Spotlight "wikilink")，此外還有名為「[Quick Look](https://zh.wikipedia.org/wiki/Quick_Look "wikilink")」的新功能，能讓使用直接觀看檔案的內容，而不需要開啟對應的應用程式。新的FInder在視覺外觀上使用了新的「統一整合主題」（unified theme）。

## Finder的替代

一些第三方Macintosh软件开发商提供可以Finder的软件，并可以在Macintosh中和其他应用程序一样独立运行，如[Path Finder](https://zh.wikipedia.org/wiki/Path_Finder "wikilink")。这些替代软件都是共享软件，目标是在实现Finder的同时能够提供一些Finder不具备的功能。

## Finder的譯名

蘋果於macOS 10.13.2 之後的版本正式將“Finder”翻譯為“訪達”（僅限服務[簡體中文使用者](https://zh.wikipedia.org/wiki/簡體中文 "wikilink")，蘋果公司並未花資源替[繁體中文使用者進行](https://zh.wikipedia.org/wiki/繁體中文 "wikilink")[本地化](https://zh.wikipedia.org/wiki/本地化 "wikilink")）

## 关于Macintosh Finder的一些批评

  - 当前文件夹在处理网络共享的时候速度变慢
  - Finder窗口改变大小的时候，其中的项目不能自动重排。
  - 项目多的文件夹中，在方格视图下，横竖滚动条同时提供，操作极其不便

## 外部链接

  - [macOS - Apple](http://www.apple.com/macos/)

[Category:Mac_OS软件](https://zh.wikipedia.org/wiki/Category:Mac_OS软件 "wikilink") [Category:文件管理器](https://zh.wikipedia.org/wiki/Category:文件管理器 "wikilink")