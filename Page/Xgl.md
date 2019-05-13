[movie-cube.jpg](https://zh.wikipedia.org/wiki/File:movie-cube.jpg "fig:movie-cube.jpg")
**Xgl** 是一個[X
server](../Page/X_Window_System.md "wikilink")，他藉由[OpenGL技術充分發揮了新一代顯示卡優異的](../Page/OpenGL.md "wikilink")3D立體畫面表現能力；從「架構」的角度來看，XGL透過了[glitz位在](../Page/glitz.md "wikilink")[OpenGL的上層](../Page/OpenGL.md "wikilink")。XGL利用了[聚合視窗管理器的幫助](../Page/compositing_window_manager.md "wikilink")（像是[Compiz](../Page/Compiz.md "wikilink")
或
[Beryl](../Page/Beryl_\(window_manager\).md "wikilink")）對所有使用X、OpenGL和[XVideo所製作的應用和圖形效果提供了](../Page/XVideo.md "wikilink")[硬體加速的支援](../Page/硬體加速.md "wikilink")，所以能表現出包含調整視窗透明度、可旋轉的3D桌面、果凍效果等等令人嘆為觀止的立體特效。這個計畫最初由[David
Reveman發起](../Page/David_Reveman.md "wikilink")，並在2006年1月2日的時候第一次釋出（release）。

## 历史

2005年，XGL的很多工作基於實作的理由\[1\]，先以閉門造車的方式完成。然後在2006年1月2日，[開放源碼](../Page/开放源代码.md "wikilink")，\[2\]\[3\]，而后针对许多显卡驱动加以改造，归入了[freedesktop.org](../Page/freedesktop.org.md "wikilink")。X服务器的后端可采用**Xglx**以及**Xegl**。2006年2月起，Novell桌面小组作了一次eye-candy特效展示，包括透明的窗口、可旋转的3D桌面\[4\]\[5\]\[6\]，从而使该项目声名远扬。eye-candy特效最初在一个称为[glxcompmgr的复合管理器中实现](../Page/glxcompmgr.md "wikilink")，但几个特效由于缺乏窗口管理器与复合管理器的整合，而无法有效实现。取而代之的是由David
Revenman开发的[Compiz](../Page/Compiz.md "wikilink")，这是第一个使用OpenGL来表现的[复合窗口管理器](../Page/复合窗口管理器.md "wikilink")（compositing
window manager）。\[7\]

## 後端

OpenGL並未規範如何去啟始顯示和處理繪圖的細節。取而代之的是規範了一個特殊的中介[API去驅動底層作業系統的繪圖系統呼叫](../Page/API.md "wikilink")。到目前為止，有兩種不同的後端（backend）途徑去解決這些初始化的問題。最有可能的是大多數各個後端將會包含相同的程式碼以及不同的差異將會首先在servers初始化部份上。

### Xglx

Xglx是第一個針對這架構的後端實作。它也是目前發展上的焦點核心。其運作的原理就是在已經存在的X
server上用[GLX開一個OpenGL視窗](../Page/GLX.md "wikilink")，xgl再來使用這個OpenGL視窗，這樣的概念類似於[Xnest](../Page/Xnest.md "wikilink")。在未來，這種運作模式將只會提供專業的開發者使用，畢竟它存在著一個看似多餘的X
server機制。在2006年XDev會議（XDevConf）上面，NVidia這家公司明白的表示這樣的發展的方向是一個錯誤的方向，因為這讓XGL的後端竟然只是一個次級的OpenGL視窗（layared
server）而不是一個獨立的個體（like X server），這將使得許多顯示卡的特效受限於最前端的X
server而無法呈現。！（像是3D立體的glasses）\[8\]
儘管如此，卻不能否認這樣的一個設計方法，是將整個後端 "原型機"
"全部實做出來" 的方法中，最快速而簡單的一招。這樣的作法可以讓開發者省略掉開發一些已經存在於前置X
server上的項目，把精力集中在實做Xgl獨特架構的本體上面。

### Xegl

*Xegl*被认为是Xgl的未来，X Server开发过程的长期日标。\[9\] 它和Xglx
Server分享部分绘画代码，但是OpenGL可绘画的初始化和上下文管理则是由EGL
API管理，EGL由Khronos开发（EGL是窗口系统无关的，相当于GLX和WGL，GLX用于在X
Window系统上支持OpenGL，WGL用于微软Windows）。当前的实现是使用[Mesa
3D提供直接的OpenGL渲染到帧缓存或通过](../Page/Mesa_3D.md "wikilink")[DRI到图形硬件](../Page/Direct_Rendering_Infrastructure.md "wikilink")。2007年7月时Xegl只能运行在使用[ATi
Radeon
R200显卡的系统上](../Page/ATi_Radeon_R200.md "wikilink")，当前开发已经暂停了。\[10\]
它将会被保留直到Xglx Server证明自己可行，并且闭源的驱动支持EGL API，这时它才是一个显而易见的Xglx Server的替代品。

Xegl貌似已经失败。

## 竞争者

對於另一競爭者[微軟公司而言](../Page/微軟.md "wikilink")，他們也在自家的Windows作業系統上提供了相似功能的解決方案：視窗桌面管理器[DWM](../Page/桌面視窗管理員.md "wikilink")。有別於Xgl所採用的OpenGL技術，這套採用微軟自家[DirectX技術的DWM已经在新一代的視窗作業系統](../Page/DirectX.md "wikilink")[Windows
Vista中問世](../Page/Windows_Vista.md "wikilink")。

## 争议

Xgl在技术上为了要较好的实现OpenGL性能，需要用到目前一些3D显卡的特性。但目前对于ATI和NVIDIA显卡最新型号，只能以二进之代码包的形式得到这些内核模块（无法得到源代码）。目前这种情况变成了一个僵局，因为显卡制造商已经声明不会支持完全开放源代码，他们认为这会暴露他们硬件上的商业秘密。不过Intel公司从Intel965芯片组开始，公布其驱动程序的源代码\[11\]。这将是Linux硬件视频驱动发展上的一个里程碑。之后[ATI也不断发布了新老版本显卡的技术文档](../Page/ATI.md "wikilink")，把较老版本显卡驱动的维护间接转移给开源社区。

## 可得性

2006年5月，Xgl含其附屬元件（像是聚合視窗管理員 Compiz
和組態設定工具等等）成為了[SUSE](../Page/SUSE.md "wikilink")
10 這個Linux發行版中的非預設安裝項目，也以套件的形式成為[Frugalware
Linux和](../Page/Frugalware.md "wikilink")[SUSE Linux Enterprise
Desktop
10的一部份](../Page/SUSE_Linux_Enterprise_Desktop_10.md "wikilink")。在[Ubuntu](../Page/Ubuntu.md "wikilink")
6.06 (Dapper)和
[Freespire上](../Page/Freespire.md "wikilink")，Xgl更可以以最簡單的二進位程式碼來安裝。在[Gentoo
Linux上面Xgl也可以以](../Page/Gentoo_Linux.md "wikilink") overlayed
package的形式取得。[Arch
Linux的使用者也可以透過PKGBUILD來取得Xgl](../Page/Arch_Linux.md "wikilink")。

[Mandriva Linux
2007內含由官方發行的由Xgl和](../Page/Mandriva_Linux.md "wikilink")[AIGLX搭配](../Page/AIGLX.md "wikilink")[Compiz所組成的package](../Page/Compiz.md "wikilink")
套件。另外Mandriva也提供了drak3d工具，讓使用者能愉快的使用兩鍵式滑鼠來搞定3D立體桌面的全部設定。

## 延伸閱讀

  - [X Window System](../Page/X_Window_System.md "wikilink")
  - [AIGLX](../Page/AIGLX.md "wikilink")
  - [VirtualGL](../Page/VirtualGL.md "wikilink")
  - [OpenGL](../Page/OpenGL.md "wikilink")
  - [Compiz](../Page/Compiz.md "wikilink")

## 參考資料

<references/>

## 外部連結

  - [Xgl](https://web.archive.org/web/20060413160259/http://www.freedesktop.org/wiki/Software_2fXgl)
  - [Xegl](http://www.freedesktop.org/wiki/Xegl)
  - [Announcement of Xgl on the xorg mailing
    list](http://lists.freedesktop.org/pipermail/xorg/2004-November/004358.html)
  - [Accelerated X flame wars\!—Maybe
    not](http://www.freesoftwaremagazine.com/articles/accelerated_x)
    一篇說明 AIGLX 和 Xgl 有什麼差別的文章。

### 安裝和使用說明、論壇、尋求支援

  - [openSUSE wiki for Xgl](http://www.opensuse.org/Xgl)
  - [openSUSE wiki for compiz](http://www.opensuse.org/compiz)
  - [German XGL/Compiz-Support](http://www.xglusers.de)
  - [查詢支援XGL的顯示晶片，以及推薦的顯示晶片](https://web.archive.org/web/20061024154951/http://en.opensuse.org/Xgl#Hardware_Advisory)
  - [Xgl on Ubuntu 6.06
    How-To.](https://web.archive.org/web/20070409010500/http://www.biodesign.com.ar/blog/?p=16)
  - [Xgl on Gentoo
    How-To](https://web.archive.org/web/20060410140532/http://gentoo-wiki.com/HOWTO_XGL)
  - 如何安裝和使用 Xgl:
    [Novell](http://www.novell.com/coolsolutions/feature/17174.html)，[Ubuntu](https://wiki.ubuntu.com/CompositeManager/Xgl)，[Debian
    Etch](http://sonique54.free.fr/xgl/xgl.htm)，[Gentoo
    Linux](https://web.archive.org/web/20060410140532/http://gentoo-wiki.com/HOWTO_XGL)，[Fedora
    Core](https://web.archive.org/web/20061014055616/http://fedoraxgl.tuxfamily.org/index.php?title=Installation_en)，[Arch
    Linux](https://web.archive.org/web/20061011170006/http://wiki.archlinux.org/index.php/Xgl)，[Mandriva
    Linux](http://qa.mandriva.com/twiki/bin/view/Main/XglHowTo)，[Frugalware
    Linux](https://web.archive.org/web/20061025120422/http://wiki.frugalware.org/Xgl)。

### 免安裝直接開機使用光碟

  - [Kororaa Linux](http://kororaa.org) 這套含有 XGL 功能的
    LINUX作業系統可以被直接安置在光碟裡面，您可以使用光碟片開機體驗華麗的
    XGL 功能而不會更動到任何的硬碟資訊。然而值得住意的是：由於 ATI 和 NVidia 的驅動程式和
    [GPL](../Page/GPL.md "wikilink") 版權規範有所不相容，所以新版的 Kororaa Linux Live
    CD
    將不支援這兩家公司的顯示卡，直到有符合[GPL版權宣告的新版驅動程式出現為止](../Page/GPL.md "wikilink")。
  - [Mandriva](https://web.archive.org/web/20061015201706/http://www.mandriva.com/en/download/mandrivaone)
    在其最新版的 Live CD中支援XGL功能。
  - [Sabayon Linux](http://www.sabayonlinux.org/) 是一個支援 XGL 和 AIGLX 的
    Live CD。 然而和 [Kororaa Linux](http://kororaa.org) 不同的是它支援了 ATI 和
    NVidia 的顯示卡。另外它也可以被安裝在硬碟上面。

### 桌面貼圖、快照、screencast及範例影片

  - [Novell 的 Xgl
    展示（包含了影片和快照）](https://archive.is/20120629083457/http://xgl.opensuse.org/)
  - Novell Open Audio podcast [Xgl with David
    Reveman](https://web.archive.org/web/20060629014801/http://www.novell.com/podcast/Detailpage.jsp?id=55)
    - [7 April](../Page/7_April.md "wikilink") 2006，discusses the basics
    and future of Xgl and Compiz
  - [Videos of Xgl on SUSE Linux Enterprise
    Desktop 10](https://web.archive.org/web/20060210061558/http://www.linuxedge.org/?q=node%2F55)
  - [Slides, screenshots and a video with more
    effects](https://web.archive.org/web/20060218184749/http://www.linuxedge.org/?q=node%2F58)
      - [the video demonstrating Compiz on
        Xgl](http://www.freedesktop.org/~davidr/xgl-demo1.xvid.avi)
  - [EGL
    specifications](https://web.archive.org/web/20050405201242/http://www.khronos.org/opengles/spec.html)
  - [Article: The State of Linux
    Graphics](http://www.freedesktop.org/~jonsmirl/graphics.html) -
    overview of various approaches to replace the current X server.
  - [Binary packages for
    Ubuntu](https://web.archive.org/web/20170210105132/http://xgl.compiz.info/)
  - [Unofficial community forums](http://www.compiz.net)
  - [Communication between Xgl and Xorg - For
    dummies](https://web.archive.org/web/20060415183547/http://principe.homelinux.net/)
  - [RR4/RR64 - 32/64bit Xgl LiveDVD](http://www.lxnaydesign.net/)
  - Ultra high resolution XGL-KDE [demo and
    screencaps](http://www.saguratus.com/nick/xgl)
      - 影片分流站台：[saguratus.com](http://www.saguratus.com/nick/xgl/xgl-kde.avi)
        [Filefront](http://files.filefront.com/5020047)
  - [Mandriva 3D
    Video](http://www.dailymotion.com/video/xb7sz_mandriva-linux-2007-3d-desktop)

[Category:开放源代码](https://zh.wikipedia.org/wiki/Category:开放源代码 "wikilink")
[Category:X服务器](https://zh.wikipedia.org/wiki/Category:X服务器 "wikilink")
[Category:OpenGL](https://zh.wikipedia.org/wiki/Category:OpenGL "wikilink")

1.
2.  <http://lists.freedesktop.org/archives/xorg/2006-January/011922.html>
3.  <http://lwn.net/Articles/166081/>
4.  <http://linux.slashdot.org/linux/06/02/08/0624253.shtml>
5.
6.  <http://www.opensuse.org/Xgl>
7.
8.  <http://download.nvidia.com/developer/presentations/2006/xdevconf/compositing-with-current-framework.pdf>
9.  <http://jonsmirl.googlepages.com/graphics.html>
10. <http://gitweb.freedesktop.org/?p=xorg/xserver.git;a=history;h=master;hb=master;f=hw/xgl/egl/xegl.c>
11. <http://intellinuxgraphics.org/>