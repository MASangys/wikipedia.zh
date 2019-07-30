**Uzbl**是一种[自由并开放源代码的](https://zh.wikipedia.org/wiki/自由及開放源代碼軟件 "wikilink")[極簡主義](../Page/極簡主義.md "wikilink")风格[网络浏览器](https://zh.wikipedia.org/wiki/网络浏览器 "wikilink")，遵循[Unix哲学](../Page/Unix哲学.md "wikilink")。Uzbl的核心组件由[C语言写成](https://zh.wikipedia.org/wiki/C语言 "wikilink")，但也有部分使用其他编程语言，特别是[Python](../Page/Python.md "wikilink")。整个Uzbl项目都是遵循[GNU GPL v3发布的自由软件](../Page/GNU通用公共许可证.md "wikilink")。虽然Uzbl的开发完成度还不高，但作为最好的极简风格浏览器之一它已经获得了较高的知名度\[1\]。

## 设计理念

Uzbl这一名称来自于英文单词“usable”的[网络语言读法](../Page/Lolcat.md "wikilink")。它的设计高度遵循Unix哲学，即如Unix文化的缔造者之一[Douglas McIlroy所归纳的](../Page/道格拉斯·麥克羅伊.md "wikilink")\[2\]：因此，Uzbl不像其他浏览器那样包含众多特性，它的核心程序既没有[工具栏](../Page/工具栏.md "wikilink")，也没有[控件](../Page/控件.md "wikilink")，甚至不能管理[书签](https://zh.wikipedia.org/wiki/书签 "wikilink")、浏览历史、下载和[Cookie](../Page/Cookie.md "wikilink")，这些功能都交给外部程序或[脚本去处理](../Page/脚本语言.md "wikilink")。在交互方面，它可以从[标准串流](https://zh.wikipedia.org/wiki/标准串流 "wikilink")（[先入先出队列](https://zh.wikipedia.org/wiki/先入先出队列 "wikilink")[管道](https://zh.wikipedia.org/wiki/管道_\(UNIX\) "wikilink")）、[Unix域套接字或者从配置文件中读取文本来获得输入](https://zh.wikipedia.org/wiki/Unix域套接字 "wikilink")。这种设计使丰富的自定义成为可能。

[Uzbl_screenshot_Acid3.png](https://zh.wikipedia.org/wiki/File:Uzbl_screenshot_Acid3.png "fig:Uzbl_screenshot_Acid3.png")测试\]\]

## 特性

Uzbl使用[WebKit](../Page/WebKit.md "wikilink")作为[排版引擎](../Page/排版引擎.md "wikilink")，因而支持为数众多的[网页标准](https://zh.wikipedia.org/wiki/网页标准 "wikilink")，包括[HTML](../Page/HTML.md "wikilink")、[XML](../Page/XML.md "wikilink")、[XPath](../Page/XPath.md "wikilink")、[CSS](https://zh.wikipedia.org/wiki/CSS "wikilink")、[ECMAScript](../Page/ECMAScript.md "wikilink")（[Javascript](https://zh.wikipedia.org/wiki/Javascript "wikilink"))、[DOM和](https://zh.wikipedia.org/wiki/DOM "wikilink")[SVG](https://zh.wikipedia.org/wiki/SVG "wikilink")，通过了[Acid3](../Page/Acid3.md "wikilink")浏览器测试\[3\]\[4\]。WebKit引擎也支持[Netscape类型的插件比如](https://zh.wikipedia.org/wiki/Netscape "wikilink")[Adobe Flash Player和](../Page/Adobe_Flash_Player.md "wikilink")[MPlayer](../Page/MPlayer.md "wikilink")\[5\]。

[Uzbl_screenshot_2.png](https://zh.wikipedia.org/wiki/File:Uzbl_screenshot_2.png "fig:Uzbl_screenshot_2.png") Uzbl的[用户界面](../Page/用户界面.md "wikilink")设计时考虑仅使用[键盘快捷键即可进行控制](../Page/快捷键.md "wikilink")，默认的[超链接操作方案和一个](https://zh.wikipedia.org/wiki/超链接 "wikilink")[Firefox](../Page/Firefox.md "wikilink")浏览器扩展[vimperator一致](https://zh.wikipedia.org/wiki/vimperator "wikilink")\[6\]。通过键盘快捷键进入特定的模式，浏览界面的每个[链接会自动标出数字](https://zh.wikipedia.org/wiki/超链接 "wikilink")，按下相应的数字键（0-9）即可访问该链接，或者也可以通过输入相应的文字选中链接。对于熟悉著名[文本编辑器](../Page/文本编辑器.md "wikilink")[Vim](../Page/Vim.md "wikilink")的用户来说，这种方式非常便捷，但其他用户可能需要经历较陡的[学习曲线](https://zh.wikipedia.org/wiki/学习曲线 "wikilink")。

## 软件详情

Uzbl是整个浏览器项目的总称，实际分发时分为以下三种软件包：

  - uzbl-core是Uzbl的核心组件，用于和其他工具或脚本进行整合。它使用WebkitGtk+（WebKit在[GTK+环境的移植](https://zh.wikipedia.org/wiki/GTK+ "wikilink")）进行网页渲染和网络交互，实现[CSS](https://zh.wikipedia.org/wiki/CSS "wikilink")、[JavaScript](../Page/JavaScript.md "wikilink")，支持[插件](../Page/插件.md "wikilink")。它本身并不包含输入网页[URL](https://zh.wikipedia.org/wiki/URL "wikilink")、载入/保存书签、保存浏览历史、快捷键等功能，甚至不支持下载，额外的功能都通过脚本来实现。运行期间，任何设定都可以即时修改，用户具有完全的控制权。

<!-- end list -->

  - uzbl-browser基于uzbl-core，是具有完整功能的网页浏览器。它通过一系列脚本（主要是Python脚本），构建出适合大多数人使用的浏览器功能，包括输入网页URL、历史记录、下载功能、填表功能、链接导航、[Cookie](../Page/Cookie.md "wikilink")、事件管理等等。但是，它不支持[标签式浏览](../Page/分頁_\(GUI\).md "wikilink")，每个实例只能同时显示一个页面。它还支持高度可定制的键盘控制方案，支持不同输入模式，支持修改快捷键等等，用户可以根据自己的需求修改为自己喜爱的方案，比如vim风格或者[emacs风格等](https://zh.wikipedia.org/wiki/emacs "wikilink")。

<!-- end list -->

  - uzbl-tabbed则在uzbl-browser的基础上进一步扩展，支持标签式浏览，即可以在一个实例中运行多个标签页，每个标签页用于浏览独立的网页。

## 开发历史与现状

Uzbl的开发始于2009年，想法产生于[Arch Linux的](../Page/Arch_Linux.md "wikilink")[网络论坛](../Page/网络论坛.md "wikilink")\[7\]，当时还没有严格遵循Unix哲学的浏览器。结果Dieter Plaetinck开始了Uzbl的开发，很快获得了某个活跃[社区开发者的支持](../Page/网络社区.md "wikilink")\[8\]。代码首次发布于2009年4月21日\[9\]，之后仅仅经过两个月的开发该产品就进入了可用阶段\[10\]。2009年9月21日，Uzbl进入了[Debian](../Page/Debian.md "wikilink")操作系统的软件库\[11\]，2009年10月2日进行了Debian的测试分支。

目前Uzbl仍被开发者定义为处在[Alpha阶段](https://zh.wikipedia.org/wiki/软件版本周期#Alpha "wikilink")。Uzbl最初是为Arch Linux设计，受益于类Unix平台良好的可移植性，Uzbl可以被[编译到各种](https://zh.wikipedia.org/wiki/编译 "wikilink")[GNU/Linux](https://zh.wikipedia.org/wiki/GNU/Linux "wikilink")[发行版](../Page/Linux发行版.md "wikilink")\[12\]。主流的Linux发行版[软件库已经提供Uzbl的软件包](https://zh.wikipedia.org/wiki/软件库 "wikilink")，其他平台也可以参照官方的编译指南进行编译\[13\]。

## 配置和使用

Uzbl的配置文件夹通常存放在用户的[主目录的](../Page/家目录.md "wikilink")“.config”文件夹下。在初次启动时，Uzbl没有绑定任何的快捷键，用户可以通过指定Uzbl使用程序提供的范例配置，或者自己进行设置。当然，Uzbl网站上提供了一些现成的配置文件，用户可以通过自己的喜好使用。

## 参考文献

## 外部链接

  -
  - [[slashdot对Uzbl的介绍](https://zh.wikipedia.org/wiki/slashdot "wikilink")](http://linux.slashdot.org/story/09/09/05/2142235)

  - [[FOSDEM谈话视频](https://zh.wikipedia.org/wiki/FOSDEM "wikilink")](http://video.fosdem.org/2010/lightningtalks/saturday/17-sat-uzbl.xvid.avi)和[幻灯演示](http://users.edpnet.be/dieter/uzbl/uzbl-fosdem2010.pdf)

  - [LinuxToy对Uzbl的介绍](http://linuxtoy.org/archives/uzbl-browser.html)

  -
[Category:自由网页浏览器](https://zh.wikipedia.org/wiki/Category:自由网页浏览器 "wikilink") [Category:Linux軟件](https://zh.wikipedia.org/wiki/Category:Linux軟件 "wikilink") [Category:Webkit衍生軟體](https://zh.wikipedia.org/wiki/Category:Webkit衍生軟體 "wikilink") [Category:用C編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用C編程的自由軟體 "wikilink")

1.

2.  [Basics of the Unix Philosophy](http://www.faqs.org/docs/artu/ch01s06.html)

3.

4.

5.

6.

7.  [bbs.archlinux.org/viewtopic.php?pid=539028\#p539028](http://bbs.archlinux.org/viewtopic.php?pid=539028#p539028)

8.
9.  [bbs.archlinux.org/viewtopic.php?pid=540372\#p540372](http://bbs.archlinux.org/viewtopic.php?pid=540372#p540372)

10.
11. [packages.qa.debian.org/u/uzbl/news/20090921T211043Z.html](http://packages.qa.debian.org/u/uzbl/news/20090921T211043Z.html)

12.

13.