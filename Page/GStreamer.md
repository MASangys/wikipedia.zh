**GStreamer** 是一个基于[流水线的](../Page/流水线_\(计算机\).md "wikilink")[多媒体框架](https://zh.wikipedia.org/wiki/多媒体框架 "wikilink")，基于[GObject](../Page/GObject.md "wikilink")，以[C语言写成](https://zh.wikipedia.org/wiki/C语言 "wikilink")。

凭借GStreamer，程序员可以很容易地创建各种多媒体功能组件，包括简单的[音频](https://zh.wikipedia.org/wiki/音频 "wikilink")[回放](https://zh.wikipedia.org/wiki/回放 "wikilink")，音频和[视频](../Page/视频.md "wikilink")播放,[录音](https://zh.wikipedia.org/wiki/录音 "wikilink")，[流媒体](../Page/流媒体.md "wikilink")和音频编辑。基于流水线设计，可以创建诸如[视频编辑器](https://zh.wikipedia.org/wiki/视频编辑器 "wikilink")、流媒体广播和[媒体播放器等等的很多多媒体应用](https://zh.wikipedia.org/wiki/媒体播放器 "wikilink")。

## 發展歷史

1999年Erik Walthinsen建立了GStreamer，2001年1月11日發表了第一個主要版本是0.1。沒過多久，GStreamer出現了第一個商業版本，由RidgeRun公司發行，這是一家嵌入式Linux 公司。RidgeRun後來遇到了財務困難，工作人員大多離去，包括Walthinsen。 GStreamer的進展並未受影響。2001年7月發表了0.2.0的版本，2002年9月，發表了0.4.0，2004年3月又發表了0.8.0。

2004年，新公司Fluendo成立，並使用GStreamer編寫一個流媒體伺服器Flumotion, 並提供多媒體解決方案。2005年12月發表了0.10.0版本。日後GStreamer漸漸普及，2006年，Totem , Rhythmbox 和 Banshee等媒體巨頭都使用 GStreamer。

GStreamer日後在商業上取得巨大成功有許多不同的公司採用（諾基亞、摩托羅拉、德州儀器、 飛思卡爾、英特爾等等），並已成為一個非常強大的跨平台多媒體框架。

其[跨平台设计](https://zh.wikipedia.org/wiki/跨平台 "wikilink")，使其能够在[Linux](../Page/Linux.md "wikilink")（包括[x86](https://zh.wikipedia.org/wiki/x86 "wikilink")，[PowerPC](../Page/PowerPC.md "wikilink")和[ARM架构](https://zh.wikipedia.org/wiki/ARM "wikilink")），[Solaris](../Page/Solaris.md "wikilink")（Intel和[SPARC](../Page/SPARC.md "wikilink")）以及[OpenSolaris](../Page/OpenSolaris.md "wikilink")，[FreeBSD](../Page/FreeBSD.md "wikilink")，[OpenBSD](../Page/OpenBSD.md "wikilink")，[NetBSD](../Page/NetBSD.md "wikilink")，[Mac OS X](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")，[Microsoft Windows和](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")[OS/400上运行](https://zh.wikipedia.org/wiki/OS/400 "wikilink")。GStreame也有针对其他语言的[绑定如](https://zh.wikipedia.org/wiki/绑扎 "wikilink")[Python](../Page/Python.md "wikilink")，[Vala](../Page/Vala.md "wikilink")，[C++](../Page/C++.md "wikilink")，[Perl](../Page/Perl.md "wikilink")，[GNU Guile和](../Page/GNU_Guile.md "wikilink")[Ruby](../Page/Ruby.md "wikilink")。GStreamer依据[GNU宽通用公共许可证](../Page/GNU宽通用公共许可证.md "wikilink")授权。\[1\]

## 技術概述

[GStreamer_Technical_Overview.svg](https://zh.wikipedia.org/wiki/File:GStreamer_Technical_Overview.svg "fig:GStreamer_Technical_Overview.svg") GStreamer的程序通過連接數字媒體處理的元素注入管道（pipeline）。每個元素是由一個插件提供 。 元素可组合為箱（bins），箱可以進一步聚合，從而形成架構圖。右圖是一個例子一個過濾器圖表 。

元素溝通是透過墊（pads）。來源墊（source pad）上一個元素可以被連接到一個接收墊（sink pad）在另一個。當管道是在播放狀態，數據緩衝流（data buffers flow）從來源墊（source pad）流向接收墊（sink pad）。

該圖可以體現出如何使用GStreamer播放MP3文件。該文件的源讀取 MP3文件從一台計算機的硬碟驅動程式，並將其發送到MP3解碼器。解碼器解碼該MP3數據，並轉換成PCM，然後傳遞到ALSA聲音驅動。ALSA的聲卡驅動程序發送 PCM聲音樣本，最後從電腦的揚聲器播放。

### Plug-ins

GStreamer採用基於插件（plugin）和管道（pipeline）的體系結構，框架中的所有的功能模塊都被實現成可以插拔的組件（component），能夠很方便地安裝到任意管道上。GStreamer使用[插件](../Page/插件.md "wikilink")架構並造就了大量的GStreamer的[共享庫](../Page/函式庫.md "wikilink")。\[2\]GStreamer基本功能包括登錄與載入，新的組件可以透過基礎類別來取得這些屬性。Gstreamer的基礎類別之一是GObject。以Gobject的實作思想而言，可通过2個struct，一個相當于C++ 成員變數，一个相當C++中的成员函数。GStreamer框架中的大部分函數都會涉及到對GstElement對象的操作，GstElement又被區分成Source Element、Filter Element、Sink Element。写gstreamer element的时候，不能使用全局变量，要把这些变量全部放到该element的class中。

Plug-ins 如果有需要的話, 可以半自動的載入。GStreamer並沒有嚴格規定輸入端和輸出端的數目，事實上它們都可以是一個或者多個。所有的元件都從NULL狀態開始，依次經歷NULL、READY、PAUSED、PLAYING等狀態間的轉換。正處於播放狀態的管道能夠隨時切換到PAUSED狀態。

0.9版以後的插件可被區分成三種類 (來自電影*[黄金三镖客](https://zh.wikipedia.org/wiki/黄金三镖客 "wikilink")*"The Good, the Bad and the Ugly"的名字)

| 插件集合的名稱 | 描述                                                                                                                                       |
| ------- | ---------------------------------------------------------------------------------------------------------------------------------------- |
| Good    | 此一類的GStreamer插件來自於“優秀”"組，具有高品質的LGPL認證，\[3\]或依照GStreamer的 "contains a set of well-supported plug-ins under our preferred license"認證。\[4\] |
| Bad     | GStreamer所謂的“不良”插件是指未經 up-to-par 的處理。這類插件已經很接近高品質，但還缺乏一些認證事誼：程式碼審核、需要文件說明、大量測試、真正的維修人員，或大量的使用群\[5\]。                                     |
| Ugly    | GStreamer所謂的“醜惡”插件可能是品質良好，但是出現佈署（distribution）上的問題\[6\]。                                                                                 |

## 参阅

## 另见

  - [Phonon](../Page/Phonon_\(KDE\).md "wikilink")
  - [VLC](https://zh.wikipedia.org/wiki/VLC "wikilink")
  - [Xine](https://zh.wikipedia.org/wiki/Xine "wikilink")
  - [MPlayer](../Page/MPlayer.md "wikilink")

## 外部链接

  - [GStreamer主页](http://gstreamer.freedesktop.org/)
  - [GStreamer介绍](http://www-128.ibm.com/developerworks/aix/library/au-gstreamer.html?ca=dgr-lnxw07GStreamer)（英文）
  - [GStreamer](http://www.ohloh.net/projects/3475?p=GStreamer)在[Ohloh网站](https://zh.wikipedia.org/wiki/Ohloh "wikilink")
  - [\#gstreamer](irc://irc.freenode.net/gstreamer)在[freenode的讨论组](https://zh.wikipedia.org/wiki/freenode "wikilink")
  - [GStreamer](http://gstreamer.freedesktop.org/modules/gst-ffmpeg.html)的[FFmpeg](../Page/FFmpeg.md "wikilink")插件网站
  - [Windows 二进制安装包](http://code.google.com/p/ossbuild/)
  - [Mac OS X 二进制安装包](https://web.archive.org/web/20110314012940/http://itee.uq.edu.au/~davel/gstreamer/)

[Category:自由软件](https://zh.wikipedia.org/wiki/Category:自由软件 "wikilink") [Category:开源软件](https://zh.wikipedia.org/wiki/Category:开源软件 "wikilink") [Category:多媒体框架](https://zh.wikipedia.org/wiki/Category:多媒体框架 "wikilink") [Category:GNOME](https://zh.wikipedia.org/wiki/Category:GNOME "wikilink")

1.
2.
3.  gstreamer0.10-plugins-good package description (Ubuntu 10.04)
4.
5.  gstreamer0.10-plugins-bad package description (Ubuntu 10.04)
6.  gstreamer0.10-plugins-ugly package description (Ubuntu 10.04)