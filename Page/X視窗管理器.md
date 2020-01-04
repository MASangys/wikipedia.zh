> 本文内容由[X視窗管理器](https://zh.wikipedia.org/wiki/X視窗管理器)转换而来。


**X視窗管理器**是[X窗口系统中](../Page/X_Window系統.md "wikilink")，用來控管[視窗](../Page/視窗.md "wikilink")外觀和放置方式的[視窗系統](../Page/視窗系統.md "wikilink")[软件](https://zh.wikipedia.org/wiki/電腦軟體 "wikilink")，主要用於[類Unix系統](https://zh.wikipedia.org/wiki/類Unix系統 "wikilink")。

X视窗管理器和[苹果公司的](https://zh.wikipedia.org/wiki/苹果公司 "wikilink")[Macintosh和](https://zh.wikipedia.org/wiki/Macintosh "wikilink")[微软公司的](https://zh.wikipedia.org/wiki/微软公司 "wikilink")[Windows的操作环境具有不同的使用模式](https://zh.wikipedia.org/wiki/Windows "wikilink")。后两者都有长期固定的用户界面和操作模式，而这些都是由开发商决定的，用户无法更换或者只能作微小调整。X视窗管理器提供完全开放的，和图像显示软件无关的用户界面。用户可以自由选用窗口管理器。这些管理器可以拥有完全不同的特性，包括：

  - 外观和功能的可配置性
  - 用于启动程序或者进行设置的[菜单](https://zh.wikipedia.org/wiki/菜单 "wikilink")
  - 启动程序的方式，可能是命令行式的，也可能是图形化的，比如停靠栏。
  - 多桌面、[虚拟桌面](https://zh.wikipedia.org/wiki/虚拟桌面 "wikilink")（比显示器尺寸要大的桌面）和用于切换桌面的[桌面切换器](https://zh.wikipedia.org/wiki/桌面切换器 "wikilink")（pager）。
  - 内存和系统资源的消耗
  - 和[桌面环境](../Page/桌面环境.md "wikilink")的整合程度。部分X窗口管理器提供更加完整的用户界面、系统软件和应用程序。

## X視窗管理器的運作原理

當視窗管理器開始運作時，[X伺服器和客戶端之間的互動](../Page/X_Window系統的協議和架構.md "wikilink")，會重新導向到視窗管理器。每當要顯示一個新視窗時，這個請求便會被重新導向到視窗管理器，它會決定視窗的初始位置。此外，大部分較新的視窗管理器會改變視窗的親屬關係，通常會在視窗頂部加上標題列，並在視窗周圍加上裝飾性的框架。這兩個部分皆由視窗管理器來控制，而不是其它程式。因此，當使用者點擊或拖曳那些元件時，視窗管理器會進行適當的動作（如移動或改變視窗的大小）。

視窗管理器也負責處理[圖示](../Page/圖示.md "wikilink")，圖示並不存在於[X Window核心協議的層次中](../Page/X_Window核心協議.md "wikilink")。當使用者將視窗最小化時，視窗管理器會取消視窗的映射（使其不可見），並完成適當的動作，將視窗改顯示成圖示。某些視窗管理器並不支援圖示功能。

視窗管理器主要的目標，就如同其名，是用來管理視窗的。許多視窗管理器提供附加的功能，如處理滑鼠在[根視窗上的點擊](https://zh.wikipedia.org/wiki/根視窗 "wikilink")，呈現出窗格以及其它的視覺化元件，處理按鍵（例如 Alt-F4 可關閉視窗），判定哪一個應用程式在啟動時執行等等。

## 特殊的視窗管理器

幾種特殊的視窗管理器如下。

### 虛擬視窗管理器

**虛擬視窗管理器**使用了虛擬的螢幕畫面，其解析度可大於顯示器的解析度。當希望有較多的視窗時，這個功能也很有用。虛擬視窗管理器包括有 [FVWM](https://zh.wikipedia.org/wiki/FVWM "wikilink")、[Tvtwm](https://zh.wikipedia.org/wiki/Tvtwm "wikilink")、[HaZe](https://zh.wikipedia.org/wiki/HaZe "wikilink") 等等。

### 平铺式视窗管理器

**[平铺式视窗管理器](https://zh.wikipedia.org/wiki/平铺式视窗管理器 "wikilink")**是以不重疊畫面的方式組織螢幕畫面（故稱為[平铺式](https://zh.wikipedia.org/wiki/平铺 "wikilink")），相對於傳統的方式，它更近似於以坐標為基礎的疊置物件（視窗），其嘗試模仿辦公桌的式樣。

第一個平铺式视窗管理器是 [larswm](https://zh.wikipedia.org/wiki/larswm "wikilink")，隨後是 [Ion](https://zh.wikipedia.org/wiki/Ion "wikilink")。以下是平铺式视窗管理器的列表：

  - [Awesome](../Page/Awesome.md "wikilink") [1](http://awesome.naquadah.org/)

  - [dwm](https://zh.wikipedia.org/wiki/dwm "wikilink") [2](http://dwm.suckless.org/)

  - [i3](https://zh.wikipedia.org/wiki/i3_\(窗口管理器\) "wikilink") [3](http://i3wm.org/)

  - [Ion](https://zh.wikipedia.org/wiki/Ion "wikilink") [4](http://tuomov.iki.fi/software/)

  - [larswm](https://zh.wikipedia.org/wiki/larswm "wikilink")

  - [Musca](https://zh.wikipedia.org/wiki/Musca "wikilink") [5](https://web.archive.org/web/20130315014341/http://aerosuidae.net/musca.html)

  - [6](http://www.nongnu.org/ratpoison/)

  - [Stumpwm](https://zh.wikipedia.org/wiki/Stumpwm "wikilink") [7](http://www.nongnu.org/stumpwm/)

  - [8](http://wmii.googlecode.com/)

  - [Xmonad](../Page/Xmonad.md "wikilink") [9](http://xmonad.org/)

  - [10](https://github.com/baskerville/bspwm)

## 主流X視窗管理器

  - [Blackbox](../Page/Blackbox.md "wikilink") (minimalist)

  - [Enlightenment](../Page/Enlightenment.md "wikilink")

  - [Fluxbox](../Page/Fluxbox.md "wikilink") （轻量级，基于[Blackbox](../Page/Blackbox.md "wikilink")）

  - （基础上开发的的 ）

  - [IceWM](../Page/IceWM.md "wikilink")

  - [KWin](../Page/KWin.md "wikilink")（原名 KWM, [KDE](../Page/KDE.md "wikilink")默認的窗口管理器）

  - [Metacity](../Page/Metacity.md "wikilink")（ [GNOME](../Page/GNOME.md "wikilink") 2.2後成為默認的窗口管理器）

  - [Mutter](https://zh.wikipedia.org/wiki/Mutter "wikilink")

  - MWM ([Motif](../Page/Motif.md "wikilink") Window Manager)

  - [Openbox](../Page/Openbox.md "wikilink")（ [LXDE](../Page/LXDE.md "wikilink")默認的窗口管理器，基于[Blackbox](../Page/Blackbox.md "wikilink")）

  - [Sawfish](https://zh.wikipedia.org/wiki/Sawfish "wikilink") （原名 Sawmill，前[GNOME](../Page/GNOME.md "wikilink")系统默认窗口管理器）

  - （X Window系统X11R4以来的默认窗口管理器）

  - [Xfwm](https://zh.wikipedia.org/wiki/Xfwm "wikilink")， （[Xfce](../Page/Xfce.md "wikilink")默認的窗口管理器)

## 其它X視窗管理器

  - [4Dwm](https://zh.wikipedia.org/wiki/4Dwm "wikilink")

  - [5Dwm](https://zh.wikipedia.org/wiki/5Dwm "wikilink") (derived from mwm, true SGI look\&feel)

  - [9wm](https://zh.wikipedia.org/wiki/9wm "wikilink") [11](http://unauthorised.org/dhog/9wm.html)（複製 [九號計畫](../Page/貝爾實驗室九號計畫.md "wikilink") 原先的視窗系統）

  - [aewm](https://zh.wikipedia.org/wiki/aewm "wikilink") [12](https://web.archive.org/web/20061213142305/http://www.red-bean.com/%7Edecklin/software/aewm/)

  -
  - [amiwm](https://zh.wikipedia.org/wiki/amiwm "wikilink") [13](http://www.lysator.liu.se/~marcus/amiwm.html) Amiga workbench unix clone.

  - [Awesome](../Page/Awesome.md "wikilink") [14](http://awesome.naquadah.org/)

  - [Compiz](../Page/Compiz.md "wikilink") (a compositing window manager) and [Beryl (window manager)](https://zh.wikipedia.org/wiki/Beryl_\(window_manager\) "wikilink") an under development fork of it

  - [CTWM](https://zh.wikipedia.org/wiki/CTWM "wikilink")

  -
  - [dwm](https://zh.wikipedia.org/wiki/dwm "wikilink") [15](http://dwm.suckless.org/)

  - [EvilPoison](https://zh.wikipedia.org/wiki/EvilPoison "wikilink") [16](https://web.archive.org/web/20070321034106/http://www.darkarts.co.za/projects/evilpoison/) (a fork of evilwm with Ratpoison-like keybindings)

  - [evilwm](https://zh.wikipedia.org/wiki/evilwm "wikilink") [17](http://www.6809.org.uk/evilwm/)

  - [18](http://flwm.sourceforge.net/)

  - [FVWM95](https://zh.wikipedia.org/wiki/FVWM95 "wikilink")

  - [hackedbox](https://zh.wikipedia.org/wiki/hackedbox "wikilink") [19](https://web.archive.org/web/20070311170630/http://www.scrudgeware.org/projects/Hackedbox/index.html)

  - [HaZe](https://zh.wikipedia.org/wiki/HaZe "wikilink")

  - [i3](https://zh.wikipedia.org/wiki/i3_\(窗口管理器\) "wikilink")[20](http://i3wm.org/)

  - (平铺式窗口管理器，为键盘用户设计) [21](http://tuomov.iki.fi/software/)

  - (Joe's Window Manager)

  - [Kahakai](https://zh.wikipedia.org/wiki/Kahakai "wikilink")

  - [larswm](https://zh.wikipedia.org/wiki/larswm "wikilink")

  - [Luminocity](https://zh.wikipedia.org/wiki/Luminocity "wikilink") (experimentation in compositing)

  - [LWM](https://zh.wikipedia.org/wiki/LWM "wikilink") [22](http://www.jfc.org.uk/software/lwm.html)

  - [23](https://web.archive.org/web/20070403041018/http://projects.o-hand.com/matchbox/)

  - [Musca](https://zh.wikipedia.org/wiki/Musca "wikilink") [24](https://web.archive.org/web/20130315014341/http://aerosuidae.net/musca.html)

  - [OLWM](https://zh.wikipedia.org/wiki/OLWM "wikilink")（and [OLVWM](https://zh.wikipedia.org/wiki/OLVWM "wikilink") [25](https://web.archive.org/web/20081204203055/http://home.nyc.rr.com/twopks/olvwm/) with virtual desktops, [OPEN LOOK](https://zh.wikipedia.org/wiki/OPEN_LOOK "wikilink") window managers）

  - [Oroborus](https://zh.wikipedia.org/wiki/Oroborus_\(window_manager\) "wikilink")

  - [PekWM](https://zh.wikipedia.org/wiki/PekWM "wikilink")[26](http://www.pekwm.org/)

  - [PLWM](https://zh.wikipedia.org/wiki/PLWM "wikilink")

  - [PWM](https://zh.wikipedia.org/wiki/PWM_\(window_manager\) "wikilink")

  - [Qvwm](https://zh.wikipedia.org/wiki/Qvwm "wikilink") (Windows 95/98 look-alike) [27](http://freshmeat.net/projects/qvwm/) (list of forks)

  - [28](http://www.nongnu.org/ratpoison/)

  - [Scwm](https://zh.wikipedia.org/wiki/Scwm "wikilink") (the Scheme constraints window manager)

  - [Stumpwm](https://zh.wikipedia.org/wiki/Stumpwm "wikilink") [29](http://www.nongnu.org/stumpwm/)

  - Orion A nested (tiled or floating) window manager written in Scheme and scsh

  - [swm](https://zh.wikipedia.org/wiki/swm "wikilink") (the original virtual desktop implementation)

  - [Toy'd](https://zh.wikipedia.org/wiki/Toy'd "wikilink")（[HomePage](http://www.toyd.org/) [GoogleProject](http://code.google.com/p/toyd) a portable window manager for MS-Windows & UNIX / Linux platforms）

  - [TrsWM](https://zh.wikipedia.org/wiki/TrsWM "wikilink")

  - [uwm](https://zh.wikipedia.org/wiki/UWM_\(computing\) "wikilink")

  - [Waimea](https://zh.wikipedia.org/wiki/Waimea_\(window_manager\) "wikilink") [30](http://www.freedesktop.org/Software/waimea)

  - [WindowLab](https://zh.wikipedia.org/wiki/WindowLab "wikilink")

  - [Window Maker](../Page/Window_Maker.md "wikilink")

  - [wm2](https://zh.wikipedia.org/wiki/wm2 "wikilink") [31](http://www.all-day-breakfast.com/wm2/)

  - [WMI](https://zh.wikipedia.org/wiki/WMI_\(window_manager\) "wikilink")

  - [32](http://wmii.googlecode.com/)

  - [XPwm](https://zh.wikipedia.org/wiki/XPde "wikilink")（for [XPde](https://zh.wikipedia.org/wiki/XPde "wikilink")，Windows XP Look alike）

  - [Xmonad](../Page/Xmonad.md "wikilink")（平铺窗口管理器） [33](http://xmonad.org/)

  - [XWEM](https://zh.wikipedia.org/wiki/XWEM "wikilink") [34](https://web.archive.org/web/20130605083134/http://www.xemacs.org/Documentation/packages/html/xwem.html)

## 參閱

  - [Re-parenting window manager](https://zh.wikipedia.org/wiki/Re-parenting_window_manager "wikilink") for a popular implementation technique
  - [X Window System protocols and architecture](https://zh.wikipedia.org/wiki/X_Window_System_protocols_and_architecture "wikilink") for context
  - [Compositing manager](https://zh.wikipedia.org/wiki/Compositing_manager "wikilink") for another kind of manager in X
  - [Compositing window manager](https://zh.wikipedia.org/wiki/Compositing_window_manager "wikilink") that combines two roles in one program
  - [Windowing system](https://zh.wikipedia.org/wiki/Windowing_system "wikilink") for other platforms than the X Window System

## 外部連結

  - [*Window Managers for X*](https://web.archive.org/web/20040805030657/http://xwinman.org/) by Matt Chapman
  - [*The Other Window Managers*](http://www.gilesorr.com/papers/otherwm/book1.html) - extensive review of window managers (2003)
  - [*Window Managers*](https://web.archive.org/web/20070504233626/http://uebb.cs.tu-berlin.de/~magr/wm-review.en.html) - list of window managers with minimal comments (2004)
  - [*Software List:Window Managers*](https://web.archive.org/web/20061210081721/http://www.linuxsoft.cz/en/sw_list.php?id_kategory=5) - list of window managers with summaries
  - [名詞解釋：Matchbox](https://web.archive.org/web/20070927213651/http://www.emb-kb.com/doku.php/%E8%A9%9E%E8%A7%A3/matchbox)

[Category:X_視窗管理器](https://zh.wikipedia.org/wiki/Category:X_視窗管理器 "wikilink") [Category:X_Window系統](https://zh.wikipedia.org/wiki/Category:X_Window系統 "wikilink") [Category:圖形用戶界面](https://zh.wikipedia.org/wiki/Category:圖形用戶界面 "wikilink")