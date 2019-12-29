**XULRunner**是[Mozilla](../Page/Mozilla.md "wikilink")平台的一个封装版本，目的是实现独立的桌面应用程序开发。它们已在可执行文件中自带，所以运行这些程序不需要一个浏览器。该应用程序采用Mozilla开发的[XUL](../Page/XUL.md "wikilink")编写。它取代了Gecko运行时环境（*Gecko Runtime Environment*），一个有着类似目的但已停滞的项目。\[1\]XULRunner首个稳定的开发者预览版本于2006年2月发布，基于Mozilla 1.8代码。

XULRunner是一种“技术实验”而不是实际的产品\[2\]，因此没有“官方”的XULRunner版本，只有以相应Firefox版本的代码为基础的稳定版本。

Mozilla于2015年7月停止支持XULrunner的发展。\[3\]\[4\]

## 软件架构

XULRunner是一个[运行时系统](https://zh.wikipedia.org/wiki/运行时系统 "wikilink")（runtime），它可以用于启动多个与Firefox和Thunderbird功能等同的[XUL](../Page/XUL.md "wikilink")+[XPCOM](../Page/XPCOM.md "wikilink")的应用程序。

XULRunner会在内部管理的[SQLite](../Page/SQLite.md "wikilink")数据库中存储一系列配置数据（书签、Cookie、联系人等），乃至提供一个附加组件来管理SQLite数据库。

## 使用

所有基于XUL的应用程序（例如[Mozilla Firefox](../Page/Firefox.md "wikilink")、[Mozilla Thunderbird](../Page/Mozilla_Thunderbird.md "wikilink")、、[Songbird](../Page/Songbird.md "wikilink")、[Flickr](../Page/Flickr.md "wikilink") Uploadr、[SeaMonkey](../Page/SeaMonkey.md "wikilink")、、[Sunbird](../Page/Mozilla_Sunbird.md "wikilink")、[Miro](../Page/Miro.md "wikilink")、[Joost](../Page/Joost.md "wikilink")和[TomTom Home 2.0都在XULRunner上运行](../Page/TomTom.md "wikilink")。Mozilla Firefox自3.0版本开始使用一个私用的XULRunner\[5\]，将框架直接安装在应用程序目录中。

[Kiwix](../Page/Kiwix.md "wikilink")是一个维基百科的官方浏览器（现扩展到[古腾堡计划](../Page/古腾堡计划.md "wikilink")等）采用XULRunner。

[电子游戏](../Page/电子游戏.md "wikilink")系列Simon the Sorcerer第四代《》采用了XULRunner。

网站的一个称为的下载程序采用XULRunner。

自[Lotus Notes](../Page/IBM_Lotus_Notes.md "wikilink") 8.5.1版本开始，[IBM](../Page/IBM.md "wikilink")部署XULRunner to 提供Notes客户端支持 client support for 为应用程序

## 放弃

2014年1月，Mozilla开发人员讨论了放弃XULRunner的支持。\[6\]2015年7月，Mozilla停止支持XULrunner开发并删除了社区页面。\[7\]截至2016年初，它已从大多数Linux发行版的[软件包管理系统](../Page/软件包管理系统.md "wikilink")中删除，包括Gentoo、\[8\]Debian\[9\]\[10\]和Ubuntu。\[11\]\[12\]

XULRunner仍可独立安装，并且许多依赖XULRunner的应用程序可以很容易地切换。\[13\]但是，它的消失已导致一些依赖软件包从软件包管理系统中移除。\[14\]

## 参见

  - [Mozilla应用程序框架](../Page/Mozilla应用程序框架.md "wikilink")（XPFE）

  -
  - [Gecko](../Page/Gecko.md "wikilink")

  - [HTML应用程序](../Page/HTML应用程序.md "wikilink")

  - [Adobe Integrated Runtime](../Page/Adobe_AIR.md "wikilink")（AIR）

  -
  - [Electron](../Page/Electron.md "wikilink")

## 参考资料

## 外部链接

  - [XULRunner wiki site](https://zh.wikipedia.org/wiki/mozillawiki:XUL:Xul_Runner "wikilink")
  - [XULRunner Documentation](https://developer.mozilla.org/en-US/docs/Mozilla/Projects/XULRunner)
  - [XULRunner Hall of Fame](https://developer.mozilla.org/en-US/docs/Mozilla/Projects/XULRunner/Hall_of_Fame)
  - [XULRunner: What we are doing](http://benjamin.smedbergs.us/blog/2007-05-15/xulrunner-what-we-are-doing/)
  - [XULRunner source code](http://ftp.mozilla.org/pub/mozilla.org/xulrunner/)
  - [Brian King 2005 Media](https://web.archive.org/web/20171016040917/http://video.kiberpipa.org/media/SU_Harnessing_the_Mozilla_platform/play.html)
  - [Brian King 2005 Presentations Slides](http://brian.mozdev.org/presentations/cyberpipe2005/slides.html)

[Category:自由系統軟體](https://zh.wikipedia.org/wiki/Category:自由系統軟體 "wikilink") [Category:标记语言](https://zh.wikipedia.org/wiki/Category:标记语言 "wikilink") [Category:Mozilla](https://zh.wikipedia.org/wiki/Category:Mozilla "wikilink") [Category:使用XUL的軟體](https://zh.wikipedia.org/wiki/Category:使用XUL的軟體 "wikilink") [Category:使用MPL许可证的软件](https://zh.wikipedia.org/wiki/Category:使用MPL许可证的软件 "wikilink") [Category:用C++編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用C++編程的自由軟體 "wikilink")

1.
2.
3.  [Deprecation Notice](http://ftp.mozilla.org/pub/xulrunner/nightly/latest-mozilla-aurora/Deprecation_notice.txt)
4.  [XULRunner future and ownership: Announcement to XULRunner dev group](https://groups.google.com/forum/?_escaped_fragment_=msg/mozilla.dev.platform/_rFMunG2Bgw/C-4PcHj9IgAJ#!msg/mozilla.dev.platform/_rFMunG2Bgw/C-4PcHj9IgAJ)
5.
6.  [Terminating xulrunner?](https://groups.google.com/forum/?_escaped_fragment_=searchin/mozilla.dev.platform/xulrunner/mozilla.dev.platform/o99wQZBjIJw/4eBoWbjEzjAJ#!searchin/mozilla.dev.platform/xulrunner/mozilla.dev.platform/o99wQZBjIJw/4eBoWbjEzjAJ)
7.  [Obsolete and defunct XULRunner community site](https://developer.mozilla.org/en-US/docs/Mozilla/Projects/XULRunner/Community)
8.
9.  [XULRunner decision on Debian](http://lists.alioth.debian.org/pipermail/pkg-mozilla-maintainers/2014-May/015812.html)
10. [XULRunner on Debian](https://tracker.debian.org/pkg/xulrunner)
11. [Ubuntu bug](https://bugs.launchpad.net/ubuntu/+source/xulrunner-1.9.2/+bug/816377)
12. [Ubuntu-devel discussion](http://ubuntu.5.x6.nabble.com/XULRunner-in-12-04-td4693546.html)
13. [Mozilla will stop producing automated builds of XULRunner after the 41.0 cycle](http://hearsum.ca/blog/mozilla-will-stop-producing-automated-builds-of-xulrunner-after-the-410-cycle.html)
14. [1](http://www.kiwix.org/wiki/Debian) \[//en.wikipedia.org/wiki/Kiwix Kiwix\]<span> not available on </span>\[//en.wikipedia.org/wiki/Debian Debian\]