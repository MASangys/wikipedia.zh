> 本文内容由[Compiz](https://zh.wikipedia.org/wiki/Compiz)转换而来。


**Compiz** 是第一个由[OpenGL](../Page/OpenGL.md "wikilink")驱动的运行于[X Window System上的](https://zh.wikipedia.org/wiki/X_Window_System "wikilink")[混合窗口管理器](https://zh.wikipedia.org/wiki/混合窗口管理器 "wikilink") 。Compiz的[混合渲染能力使其可以在窗口管理过程中实现多种视觉效果](https://zh.wikipedia.org/wiki/混合渲染 "wikilink")，比如在矩形虚拟桌面上的窗口最小化。

Compiz符合[ICCCM標準](https://zh.wikipedia.org/wiki/ICCCM "wikilink")，可以取代[GNOME](../Page/GNOME.md "wikilink")環境的[Metacity](../Page/Metacity.md "wikilink")視窗管理器，或是[KDE Plasma環境下的](https://zh.wikipedia.org/wiki/KDE_Plasma_Workspaces "wikilink")[KWin](../Page/KWin.md "wikilink")。 Compiz拥有類似[蘋果電腦的](https://zh.wikipedia.org/wiki/蘋果公司 "wikilink")[Mac OS X作業系統中所提供的許多桌面特效](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")，例如 [Exposé](https://zh.wikipedia.org/wiki/Exposé_\(Mac_OS_X\) "wikilink")。 Compiz 使用 OpenGL 繪圖層 [Glitz](https://zh.wikipedia.org/wiki/Glitz "wikilink") 架構在 [Xgl](../Page/Xgl.md "wikilink") 這個新的 X 環境上。Compiz 最早是由[Novell](../Page/Novell.md "wikilink")在2006年一月時公佈新版 Xgl 時所發表的。在开发初期Compiz只能正常运行在有限的几种[Xgl](../Page/Xgl.md "wikilink")所支援的硬件3D加速卡上。尽管Xgl和Compiz这两个全新构造的系统还存在一些bug并且仍處於積極的开发阶段，大多数[NVIDIA和](https://zh.wikipedia.org/wiki/NVIDIA "wikilink")[ATI图形处理卡可以在Xgl上正常运行Compiz](https://zh.wikipedia.org/wiki/ATI_Technologies "wikilink")。Compiz在其他一些X服务器和硬件上也可以正常运行。据报道，Compiz在现时仍处于开发阶段的[AIGLX上运行良好](https://zh.wikipedia.org/wiki/AIGLX "wikilink")。

2007年7月30日，Compiz已經與其分支套件[Beryl合併](https://zh.wikipedia.org/wiki/Beryl "wikilink")，並且更名為[Compiz Fusion](https://zh.wikipedia.org/wiki/Compiz_Fusion "wikilink")。2009年2月2日，Compiz和Compiz Fusion合并，新名字叫Compiz。

## 特点

内建：

  - 桌布
  - 透明效果，亮度调节，色彩调节
  - 自动唤出活动的窗口

正式插件中：

  - cube - 由四个虚拟桌面形成一个矩形，顶端和底端可以放映投影。
  - decoration - 对于Gnome和KDE桌面窗口的装饰，可以用来拖拉窗口。
  - fade - 窗口的淡入淡出效果。
  - gconf - 针对Gnome的设置工具。
  - minimize - 带有动画效果的窗口最小化。
  - move - 窗口的移动。
  - place - 新開視窗位置
  - resize - 視窗大小調整
  - rotate - 旋轉桌面『方塊』
  - scale - 開啟視窗瀏覽（類似 OSX 的 exposé）
  - switcher - 使用 Alt-Tab 切換焦點視窗
  - wobbly - 移動視窗時如果凍般波動
  - zoom - 局部螢幕放大鏡

额外插件：

  - edgeflip - 移動視窗至螢幕邊緣時，滑入下一個桌面
  - opacity - 可調整視窗透明度
  - opaquefocus - 調整非焦點視窗的透明度
  - trailfocus - 非焦點視窗隨時間淡化
  - transset - 個別程式透明度調整

## 發展套件

Compiz 目前可以使用在下列的 Linux 發行套件（經由官方或由第三方支援）:

1.  [Gentoo Linux](../Page/Gentoo_Linux.md "wikilink") - 參閱 [Hanno's Blog](http://www.hboeck.de/item/282) and the [Gentoo Wiki](https://web.archive.org/web/20080517095627/http://www.gentoo-wiki.com/)
2.  [Mandriva Linux](../Page/Mandriva_Linux.md "wikilink") - 非官方套件參考 [1](https://web.archive.org/web/20060524060913/http://people.mandriva.com/~vguardiola/xgl/) and a howto here [2](http://mandrivausers.org/index.php?showtopic=31369&hl=compiz).
3.  [SUSE Linux Enterprise Desktop](https://zh.wikipedia.org/wiki/SUSE_Linux_Enterprise_Desktop "wikilink") - Novell 宣稱將於下一版 SLED 在2006年春公佈時， Xgl 與 Compiz 將包含在發行套件當中。 [3](http://arstechnica.com/news.ars/post/20060203-6109.html)
4.  [OpenSUSE](../Page/OpenSUSE.md "wikilink") - 10.1版出廠已支援 Xgl and Compiz。使用 Xgl 與 Compiz 在舊版 SUSE Linux 的說明文件可以參考 OpenSUSE.org 網頁。 [4](http://www.opensuse.org)
5.  [PLD Linux Distribution](https://zh.wikipedia.org/wiki/PLD_Linux_Distribution "wikilink") - 包含在 PLD 3.0 (Th)
6.  [Ubuntu Linux](https://zh.wikipedia.org/wiki/Ubuntu_Linux "wikilink") - 可以使用在預覽版 [Dapper Drake 6.04 Flight 5](http://www.ubuntu.com/testing/flight5) 或是之後的版本，可以在 [apt-get](https://zh.wikipedia.org/wiki/apt-get "wikilink") 套件庫中的 *universe* 區找到。
7.  [Korora](../Page/Korora.md "wikilink") - 為 [Fedora](../Page/Fedora.md "wikilink") 的衍生版本。

## Compiz Fusion

**Compiz Fusion** 是合併後的 **Compiz** ＋ [Beryl](https://zh.wikipedia.org/wiki/Beryl "wikilink") 项目新名字，以 Compiz Core 为核心，使用GNU GPL授權協議。從 [Ubuntu](../Page/Ubuntu.md "wikilink") 7.10 開始，已将 Compiz Fusion 作为默认的窗口管理器。

## 参考

  - [Compiz on AIGLX](http://lists.freedesktop.org/archives/xorg/2006-March/013577.html)
  - [A Simple Compiz Plugin Walkthrough](https://web.archive.org/web/20060415033607/http://www.downwithnumbers.com/compiz_plugins.html)
  - [Compiz source code](https://web.archive.org/web/20060415200937/http://webcvs.freedesktop.org/xorg/app/compiz/)

## 参考文献

<div class="references-small">

<references />

</div>

## 外部链接

  - [Novell 關於 Xgl 的發表](http://www.novell.com/linux/xglrelease/) - 包含有 Compiz 的展示影片
  - [openSUSE 關於 Xgl 的 wiki](http://www.opensuse.org/Xgl)
  - [openSUSE 關於 Compiz 的 wiki](http://www.opensuse.org/compiz)
  - Novell Open Audio podcast [Xgl with David Reveman](https://web.archive.org/web/20060629014801/http://www.novell.com/podcast/Detailpage.jsp?id=55) - 2006-04-07，有關於 Xgl and Compiz 基礎與特點的討論

<!-- end list -->

  - [Freedesktop.org wiki for Compiz](http://www.freedesktop.org/wiki/Software/Compiz)
  - [Freedesktop.org 關於 Compiz 的郵件群](http://lists.freedesktop.org/mailman/listinfo/compiz)
  - [Freedesktop.org 上 Xgl 的 wiki](https://web.archive.org/web/20060413160259/http://www.freedesktop.org/wiki/Software_2fXgl)

<!-- end list -->

  - [第三方 Compiz 論壇](https://web.archive.org/web/20060413142419/http://compiz.ed3n.com/)
  - [關於 Compiz 外掛與修補的網誌](http://compiz.blogspot.com)

<!-- end list -->

  - Linux Edge report [Novell Linux Desktop Demonstration Videos](https://web.archive.org/web/20060210061558/http://www.linuxedge.org/?q=node%2F55) - Compiz 於 Novell Linux Desktop 10 的展示影片
  - Linux Edge report [Compiz Window Manager Released](https://web.archive.org/web/20060218184749/http://www.linuxedge.org/?q=node%2F58) - 簡報，螢幕截圖與更多特效的影片
      - [the video demonstrating Compiz on Xgl](http://www.freedesktop.org/~davidr/xgl-demo1.xvid.avi)

<!-- end list -->

  - [Xgl/Compiz-Howto at Gentoo Wiki](https://web.archive.org/web/20060410140532/http://gentoo-wiki.com/HOWTO_XGL)
  - [Debian Etch Xgl HowTo](http://sonique54.free.fr/xgl/xgl.htm)
  - [Ubuntu Linux Xgl HowTo](http://wiki.ubuntu.com/XglHowto)

<!-- end list -->

  - [Ubuntu 討論區中關於 Xgl/Compiz 的指引文件](http://www.ubuntuforums.org/showthread.php?t=127090)

<!-- end list -->

  - [Compiz Fusion 官方网站](https://web.archive.org/web/20121005110919/http://www.compiz-fusion.org/)

[Category:X_Window系统](https://zh.wikipedia.org/wiki/Category:X_Window系统 "wikilink") [Category:桌面环境](https://zh.wikipedia.org/wiki/Category:桌面环境 "wikilink") [Category:图形用户界面](https://zh.wikipedia.org/wiki/Category:图形用户界面 "wikilink") [Category:X_视窗管理器](https://zh.wikipedia.org/wiki/Category:X_视窗管理器 "wikilink")