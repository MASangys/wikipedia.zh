**X視窗管理器**是[X窗口系统中](../Page/X_Window系統.md "wikilink")，用來控管[視窗外觀和放置方式的](../Page/視窗.md "wikilink")[視窗系統](../Page/視窗系統.md "wikilink")[软件](../Page/電腦軟體.md "wikilink")，主要用於[類Unix系統](../Page/類Unix系統.md "wikilink")。

X视窗管理器和[苹果公司的](../Page/苹果公司.md "wikilink")[Macintosh和](../Page/Macintosh.md "wikilink")[微软公司的](../Page/微软公司.md "wikilink")[Windows的操作环境具有不同的使用模式](../Page/Windows.md "wikilink")。后两者都有长期固定的用户界面和操作模式，而这些都是由开发商决定的，用户无法更换或者只能作微小调整。X视窗管理器提供完全开放的，和图像显示软件无关的用户界面。用户可以自由选用窗口管理器。这些管理器可以拥有完全不同的特性，包括：

  - 外观和功能的可配置性
  - 用于启动程序或者进行设置的[菜单](../Page/菜单.md "wikilink")
  - 启动程序的方式，可能是命令行式的，也可能是图形化的，比如停靠栏。
  - 多桌面、[虚拟桌面](../Page/虚拟桌面.md "wikilink")（比显示器尺寸要大的桌面）和用于切换桌面的[桌面切换器](../Page/桌面切换器.md "wikilink")（pager）。
  - 内存和系统资源的消耗
  - 和[桌面环境的整合程度](../Page/桌面环境.md "wikilink")。部分X窗口管理器提供更加完整的用户界面、系统软件和应用程序。

## X視窗管理器的運作原理

當視窗管理器開始運作時，[X伺服器和客戶端之間的互動](../Page/X_Window系統的協議和架構.md "wikilink")，會重新導向到視窗管理器。每當要顯示一個新視窗時，這個請求便會被重新導向到視窗管理器，它會決定視窗的初始位置。此外，大部分較新的視窗管理器會改變視窗的親屬關係，通常會在視窗頂部加上標題列，並在視窗周圍加上裝飾性的框架。這兩個部分皆由視窗管理器來控制，而不是其它程式。因此，當使用者點擊或拖曳那些元件時，視窗管理器會進行適當的動作（如移動或改變視窗的大小）。

視窗管理器也負責處理[圖示](../Page/圖示.md "wikilink")，圖示並不存在於[X
Window核心協議的層次中](../Page/X_Window核心協議.md "wikilink")。當使用者將視窗最小化時，視窗管理器會取消視窗的映射（使其不可見），並完成適當的動作，將視窗改顯示成圖示。某些視窗管理器並不支援圖示功能。

視窗管理器主要的目標，就如同其名，是用來管理視窗的。許多視窗管理器提供附加的功能，如處理滑鼠在[根視窗上的點擊](../Page/根視窗.md "wikilink")，呈現出窗格以及其它的視覺化元件，處理按鍵（例如
Alt-F4 可關閉視窗），判定哪一個應用程式在啟動時執行等等。

## 特殊的視窗管理器

幾種特殊的視窗管理器如下。

### 虛擬視窗管理器

**虛擬視窗管理器**使用了虛擬的螢幕畫面，其解析度可大於顯示器的解析度。當希望有較多的視窗時，這個功能也很有用。虛擬視窗管理器包括有
[FVWM](../Page/FVWM.md "wikilink")、[Tvtwm](../Page/Tvtwm.md "wikilink")、[HaZe](../Page/HaZe.md "wikilink")
等等。

### 平铺式视窗管理器

**[平铺式视窗管理器](../Page/平铺式视窗管理器.md "wikilink")**是以不重疊畫面的方式組織螢幕畫面（故稱為[平铺式](../Page/平铺.md "wikilink")），相對於傳統的方式，它更近似於以坐標為基礎的疊置物件（視窗），其嘗試模仿辦公桌的式樣。

第一個平铺式视窗管理器是 [larswm](../Page/larswm.md "wikilink")，隨後是
[Ion](../Page/Ion.md "wikilink")。以下是平铺式视窗管理器的列表：

  - [Awesome](../Page/Awesome.md "wikilink")
    [1](http://awesome.naquadah.org/)

  - [dwm](../Page/dwm.md "wikilink") [2](http://dwm.suckless.org/)

  - [i3](../Page/i3_\(窗口管理器\).md "wikilink") [3](http://i3wm.org/)

  - [Ion](../Page/Ion.md "wikilink") [4](http://tuomov.iki.fi/software/)

  - [larswm](../Page/larswm.md "wikilink")

  - [Musca](../Page/Musca.md "wikilink")
    [5](https://web.archive.org/web/20130315014341/http://aerosuidae.net/musca.html)

  - [6](http://www.nongnu.org/ratpoison/)

  - [Stumpwm](../Page/Stumpwm.md "wikilink")
    [7](http://www.nongnu.org/stumpwm/)

  - [8](http://wmii.googlecode.com/)

  - [Xmonad](../Page/Xmonad.md "wikilink") [9](http://xmonad.org/)

  - [10](https://github.com/baskerville/bspwm)

## 主流X視窗管理器

  - [Blackbox](../Page/Blackbox.md "wikilink") (minimalist)

  - [Enlightenment](../Page/Enlightenment.md "wikilink")

  - [Fluxbox](../Page/Fluxbox.md "wikilink")
    （轻量级，基于[Blackbox](../Page/Blackbox.md "wikilink")）

  - （基础上开发的的 ）

  - [IceWM](../Page/IceWM.md "wikilink")

  - [KWin](../Page/KWin.md "wikilink")（原名 KWM,
    [KDE默認的窗口管理器](../Page/KDE.md "wikilink")）

  - [Metacity](../Page/Metacity.md "wikilink")（
    [GNOME](../Page/GNOME.md "wikilink") 2.2後成為默認的窗口管理器）

  - [Mutter](../Page/Mutter.md "wikilink")

  - MWM ([Motif](../Page/Motif.md "wikilink") Window Manager)

  - [Openbox](../Page/Openbox.md "wikilink")（
    [LXDE默認的窗口管理器](../Page/LXDE.md "wikilink")，基于[Blackbox](../Page/Blackbox.md "wikilink")）

  - [Sawfish](../Page/Sawfish.md "wikilink") （原名
    Sawmill，前[GNOME系统默认窗口管理器](../Page/GNOME.md "wikilink")）

  - （X Window系统X11R4以来的默认窗口管理器）

  - [Xfwm](../Page/Xfwm.md "wikilink")，
    （[Xfce默認的窗口管理器](../Page/Xfce.md "wikilink"))

## 其它X視窗管理器

  - [4Dwm](../Page/4Dwm.md "wikilink")

  - [5Dwm](../Page/5Dwm.md "wikilink") (derived from mwm, true SGI
    look\&feel)

  - [9wm](../Page/9wm.md "wikilink")
    [11](http://unauthorised.org/dhog/9wm.html)（複製
    [九號計畫](../Page/貝爾實驗室九號計畫.md "wikilink")
    原先的視窗系統）

  - [aewm](../Page/aewm.md "wikilink")
    [12](http://www.red-bean.com/~decklin/software/aewm/)

  -
  - [amiwm](../Page/amiwm.md "wikilink")
    [13](http://www.lysator.liu.se/~marcus/amiwm.html) Amiga workbench
    unix clone.

  - [Awesome](../Page/Awesome.md "wikilink")
    [14](http://awesome.naquadah.org/)

  - [Compiz](../Page/Compiz.md "wikilink") (a compositing window
    manager) and [Beryl (window
    manager)](../Page/Beryl_\(window_manager\).md "wikilink") an under
    development fork of it

  - [CTWM](../Page/CTWM.md "wikilink")

  -
  - [dwm](../Page/dwm.md "wikilink") [15](http://dwm.suckless.org/)

  - [EvilPoison](../Page/EvilPoison.md "wikilink")
    [16](https://web.archive.org/web/20070321034106/http://www.darkarts.co.za/projects/evilpoison/)
    (a fork of evilwm with Ratpoison-like keybindings)

  - [evilwm](../Page/evilwm.md "wikilink")
    [17](http://www.6809.org.uk/evilwm/)

  - [18](http://flwm.sourceforge.net/)

  - [FVWM95](../Page/FVWM95.md "wikilink")

  - [hackedbox](../Page/hackedbox.md "wikilink")
    [19](https://web.archive.org/web/20070311170630/http://www.scrudgeware.org/projects/Hackedbox/index.html)

  - [HaZe](../Page/HaZe.md "wikilink")

  - [i3](../Page/i3_\(窗口管理器\).md "wikilink")[20](http://i3wm.org/)

  - (平铺式窗口管理器，为键盘用户设计) [21](http://tuomov.iki.fi/software/)

  - (Joe's Window Manager)

  - [Kahakai](../Page/Kahakai.md "wikilink")

  - [larswm](../Page/larswm.md "wikilink")

  - [Luminocity](../Page/Luminocity.md "wikilink") (experimentation in
    compositing)

  - [LWM](../Page/LWM.md "wikilink")
    [22](http://www.jfc.org.uk/software/lwm.html)

  - [23](https://web.archive.org/web/20070403041018/http://projects.o-hand.com/matchbox/)

  - [Musca](../Page/Musca.md "wikilink")
    [24](https://web.archive.org/web/20130315014341/http://aerosuidae.net/musca.html)

  - [OLWM](../Page/OLWM.md "wikilink")（and
    [OLVWM](../Page/OLVWM.md "wikilink")
    [25](https://web.archive.org/web/20081204203055/http://home.nyc.rr.com/twopks/olvwm/)
    with virtual desktops, [OPEN LOOK](../Page/OPEN_LOOK.md "wikilink")
    window managers）

  - [Oroborus](../Page/Oroborus_\(window_manager\).md "wikilink")

  - [PekWM](../Page/PekWM.md "wikilink")[26](http://www.pekwm.org/)

  - [PLWM](../Page/PLWM.md "wikilink")

  - [PWM](../Page/PWM_\(window_manager\).md "wikilink")

  - [Qvwm](../Page/Qvwm.md "wikilink") (Windows 95/98 look-alike)
    [27](http://freshmeat.net/projects/qvwm/) (list of forks)

  - [28](http://www.nongnu.org/ratpoison/)

  - [Scwm](../Page/Scwm.md "wikilink") (the Scheme constraints window
    manager)

  - [Stumpwm](../Page/Stumpwm.md "wikilink")
    [29](http://www.nongnu.org/stumpwm/)

  - Orion A nested (tiled or floating) window manager written in Scheme
    and scsh

  - [swm](../Page/swm.md "wikilink") (the original virtual desktop
    implementation)

  - [Toy'd](../Page/Toy'd.md "wikilink")（[HomePage](http://www.toyd.org/)
    [GoogleProject](http://code.google.com/p/toyd) a portable window
    manager for MS-Windows & UNIX / Linux platforms）

  - [TrsWM](../Page/TrsWM.md "wikilink")

  - [uwm](../Page/UWM_\(computing\).md "wikilink")

  - [Waimea](../Page/Waimea_\(window_manager\).md "wikilink")
    [30](http://www.freedesktop.org/Software/waimea)

  - [WindowLab](../Page/WindowLab.md "wikilink")

  - [Window Maker](../Page/Window_Maker.md "wikilink")

  - [wm2](../Page/wm2.md "wikilink")
    [31](http://www.all-day-breakfast.com/wm2/)

  - [WMI](../Page/WMI_\(window_manager\).md "wikilink")

  - [32](http://wmii.googlecode.com/)

  - [XPwm](../Page/XPde.md "wikilink")（for
    [XPde](../Page/XPde.md "wikilink")，Windows XP Look alike）

  - [Xmonad](../Page/Xmonad.md "wikilink")（平铺窗口管理器）
    [33](http://xmonad.org/)

  - [XWEM](../Page/XWEM.md "wikilink")
    [34](https://web.archive.org/web/20130605083134/http://www.xemacs.org/Documentation/packages/html/xwem.html)

## 參閱

  - [Re-parenting window
    manager](../Page/Re-parenting_window_manager.md "wikilink") for a
    popular implementation technique
  - [X Window System protocols and
    architecture](../Page/X_Window_System_protocols_and_architecture.md "wikilink")
    for context
  - [Compositing manager](../Page/Compositing_manager.md "wikilink") for
    another kind of manager in X
  - [Compositing window
    manager](../Page/Compositing_window_manager.md "wikilink") that
    combines two roles in one program
  - [Windowing system](../Page/Windowing_system.md "wikilink") for other
    platforms than the X Window System

## 外部連結

  - [*Window Managers for
    X*](https://web.archive.org/web/20040805030657/http://xwinman.org/)
    by Matt Chapman
  - [*The Other Window
    Managers*](http://www.gilesorr.com/papers/otherwm/book1.html) -
    extensive review of window managers (2003)
  - [*Window
    Managers*](https://web.archive.org/web/20070504233626/http://uebb.cs.tu-berlin.de/~magr/wm-review.en.html)
    - list of window managers with minimal comments (2004)
  - [*Software List:Window
    Managers*](http://www.linuxsoft.cz/en/sw_list.php?id_kategory=5) -
    list of window managers with summaries
  - [名詞解釋：Matchbox](https://web.archive.org/web/20070927213651/http://www.emb-kb.com/doku.php/%E8%A9%9E%E8%A7%A3/matchbox)

[cs:Window manager](../Page/cs:Window_manager.md "wikilink")
[fi:Ikkunointiohjelma](../Page/fi:Ikkunointiohjelma.md "wikilink")

[Category:X_視窗管理器](https://zh.wikipedia.org/wiki/Category:X_視窗管理器 "wikilink")
[Category:X_Window系統](https://zh.wikipedia.org/wiki/Category:X_Window系統 "wikilink")
[Category:圖形用戶界面](https://zh.wikipedia.org/wiki/Category:圖形用戶界面 "wikilink")