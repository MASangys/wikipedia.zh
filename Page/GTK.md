> 本文内容由[GTK](https://zh.wikipedia.org/wiki/GTK)转换而来。


****（原名****）最初是[GIMP](../Page/GIMP.md "wikilink")的专用开发库（），后来发展为[Unix-like系統下开发](https://zh.wikipedia.org/wiki/Unix-like "wikilink")[图形界面的应用程序的主流开发工具之一](https://zh.wikipedia.org/wiki/图形界面 "wikilink")。GTK是[自由软件](../Page/自由软件.md "wikilink")，并且是[GNU计划的一部分](https://zh.wikipedia.org/wiki/GNU计划 "wikilink")。自2019年2月6日起，GTK+改名为GTK。\[1\]

## 编程语言

GTK使用[C语言开发](https://zh.wikipedia.org/wiki/C语言 "wikilink")，但是其设计者使用面向对象技术。也提供了[C++](../Page/C++.md "wikilink")（[gtkmm](https://zh.wikipedia.org/wiki/gtkmm "wikilink")）、[Perl](../Page/Perl.md "wikilink")、[Ruby](../Page/Ruby.md "wikilink")、[Java](../Page/Java.md "wikilink")和[Python](../Page/Python.md "wikilink")（PyGTK）绑定，其他的绑定有[Ada](../Page/Ada.md "wikilink")、[D](../Page/D語言.md "wikilink")、[Haskell](../Page/Haskell.md "wikilink")、[PHP](../Page/PHP.md "wikilink")和所有的[.NET编程语言](https://zh.wikipedia.org/wiki/.NET "wikilink")。

与其他很多[部件工具箱](../Page/部件工具箱.md "wikilink")不同，GTK并不基于[Xt](https://zh.wikipedia.org/wiki/Xt "wikilink")。这一决策优劣互见：优点是GTK可以应用于其他系统，其灵活性也很强；而缺点就是它无法利用以传统方法为[X11定制的X资源数据库](https://zh.wikipedia.org/wiki/X11 "wikilink")。GTK最早應用於X Window System，如今已移植至其他平台，諸如[Microsoft Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")、[DirectFB](../Page/DirectFB.md "wikilink")，以及[Mac OS X平台上的](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")[Quartz](https://zh.wikipedia.org/wiki/Quartz "wikilink").

[Glade](../Page/Glade.md "wikilink")是一个界面设计工具，但是它也包含了一种描述GUI界面的[XML](../Page/XML.md "wikilink")语言，它和[libglade一起工作就可以直接使用GTK和GNOME控件](https://zh.wikipedia.org/wiki/libglade "wikilink")；新的Glade-3不再直接支持生成编程语言[源代码](../Page/源代码.md "wikilink")。

## 外观和视觉

提供不同的显示引擎使得最终用户可以定制外观和视觉。目前已经有一些可以模仿其他流行的平台或者工具箱（例如[Windows 95](../Page/Windows_95.md "wikilink")、[Motif](../Page/Motif.md "wikilink")、[Qt](../Page/Qt.md "wikilink")或者[NEXTSTEP](https://zh.wikipedia.org/wiki/NEXTSTEP "wikilink")）的引擎。

[gimp2-2.png](https://zh.wikipedia.org/wiki/File:gimp2-2.png "fig:gimp2-2.png")上的[GIMP](../Page/GIMP.md "wikilink") 2.0的快照\]\]

## 使用

  - 使用GTK的環境

<!-- end list -->

  - [GNOME](../Page/GNOME.md "wikilink")是以GTK為基礎，就是說為GNOME編寫的程式使用GTK做為其工具箱。
  - [Xfce](../Page/Xfce.md "wikilink")也基於GTK，但是它的應用程式並不對很多其他程式有依賴。（這就是"GNOME程式"和"GTK程式"的不同。）
  - [LXDE](../Page/LXDE.md "wikilink")也基於GTK，一個盡可能減少套件相依性的桌面環境。
  - [GPE](../Page/GPE.md "wikilink") Palmtop環境和[Nokia的](https://zh.wikipedia.org/wiki/Nokia "wikilink")[互聯網](https://zh.wikipedia.org/wiki/互聯網 "wikilink")[平板電腦](../Page/平板電腦.md "wikilink")的框架[Maemo](../Page/Maemo.md "wikilink")基於GTK。

這只是一部分，另外，GTK也可以運行在[KDE](../Page/KDE.md "wikilink")的環境下。而且GTK也可以在[Microsoft Windows運行](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")，另外還有[DirectFB](../Page/DirectFB.md "wikilink")和[ncurses](https://zh.wikipedia.org/wiki/ncurses "wikilink")。

  - 使用GTK的窗口管理器

<!-- end list -->

  - [Metacity](../Page/Metacity.md "wikilink")和[Xfwm4使用GTK](https://zh.wikipedia.org/wiki/Xfwm4 "wikilink") 2.

### GTK应用程序

以下程序都是使用GTK开发、属于[开源软件](../Page/开源软件.md "wikilink")，可以运行于[Linux](../Page/Linux.md "wikilink")/[Unix](https://zh.wikipedia.org/wiki/Unix "wikilink")，[Windows](https://zh.wikipedia.org/wiki/Windows "wikilink")，[macOS等多种操作系统平台上](https://zh.wikipedia.org/wiki/macOS "wikilink")。

  - [Firefox](../Page/Firefox.md "wikilink")－Mozilla基金會的網頁瀏覽器。
  - [Geany](../Page/Geany.md "wikilink")－代码编辑器
  - [GIMP](../Page/GIMP.md "wikilink")－类似于[Photoshop的图像处理程序](https://zh.wikipedia.org/wiki/Photoshop "wikilink")
  - [Inkscape](../Page/Inkscape.md "wikilink")－类似于[Illustrator](https://zh.wikipedia.org/wiki/Illustrator "wikilink")、[CorelDraw的矢量图形绘制工具](https://zh.wikipedia.org/wiki/CorelDraw "wikilink")
  - [Pidgin](../Page/Pidgin.md "wikilink")－支持多种协议（IRC、Gtalk、Yahoo Talk、MSN等等）的聊天工具
  - [gcin](https://zh.wikipedia.org/wiki/gcin "wikilink")－一種在Linux、Windows系統上常見的輸入法平台

## 版本歷史

<table>
<thead>
<tr class="header">
<th><p>主要版本</p></th>
<th><p>發佈日期</p></th>
<th><p>主要增強</p></th>
<th><p>最後次要版本</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><a href="http://ftp.gnome.org/Public/gimp/gtk/v1.0/">1.0</a></p></td>
<td><p>1998年4月14日</p></td>
<td><p>第一個穩定版本</p></td>
<td><p>1.0.6</p></td>
</tr>
<tr class="even">
<td><p><a href="http://ftp.gnome.org/pub/gnome/sources/gtk+/1.2/">1.2</a></p></td>
<td><p>1999年2月27日</p></td>
<td><p>新增部件（）</p></td>
<td><p><a href="http://mail.gnome.org/archives/gtk-devel-list/2001-April/msg00049.html">1.2.10</a></p></td>
</tr>
<tr class="odd">
<td><p><a href="http://ftp.gnome.org/pub/gnome/sources/gtk+/2.0/">2.0</a></p></td>
<td><p>2002年3月11日</p></td>
<td><p>GObject, <a href="https://zh.wikipedia.org/wiki/Unicode" title="wikilink">Unicode</a>（<a href="../Page/UTF-8.md" title="wikilink">UTF-8</a>）支援</p></td>
<td><p>2.0.9</p></td>
</tr>
<tr class="even">
<td><p><a href="http://ftp.gnome.org/pub/gnome/sources/gtk+/2.2/">2.2</a></p></td>
<td><p>2002年12月22日</p></td>
<td><p>Multihead support</p></td>
<td><p>2.2.4</p></td>
</tr>
<tr class="odd">
<td><p><a href="http://ftp.gnome.org/pub/gnome/sources/gtk+/2.4/">2.4</a></p></td>
<td><p>2004年3月16日</p></td>
<td><p>新增部件（GtkFileChooser、GtkComboBox、GtkComboBoxEntry、GtkExpander、GtkFontButton、GtkColorButton）</p></td>
<td><p><a href="http://mail.gnome.org/archives/gtk-devel-list/2004-December/msg00018.html">2.4.14</a></p></td>
</tr>
<tr class="even">
<td><p><a href="http://ftp.gnome.org/pub/gnome/sources/gtk+/2.6/">2.6</a></p></td>
<td><p>2004年12月16日</p></td>
<td><p>New widgets（GtkIconView, GtkAboutDialog, GtkCellView）.<br />
最後一個支援<a href="../Page/Windows_98.md" title="wikilink">Windows 98</a>/<a href="../Page/Windows_Me.md" title="wikilink">Me的版本</a></p></td>
<td><p><a href="http://mail.gnome.org/archives/gtk-devel-list/2005-August/msg00097.html">2.6.10</a></p></td>
</tr>
<tr class="odd">
<td><p><a href="http://ftp.gnome.org/pub/gnome/sources/gtk+/2.8/">2.8</a></p></td>
<td><p>2005年8月13日</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/Cairo_(graphics)" title="wikilink">Cairo</a> integration</p></td>
<td><p><a href="http://mail.gnome.org/archives/gtk-devel-list/2006-July/msg00002.html">2.8.20</a></p></td>
</tr>
<tr class="even">
<td><p><a href="http://ftp.gnome.org/pub/gnome/sources/gtk+/2.10/">2.10</a></p></td>
<td><p>2006年7月3日</p></td>
<td><p>新增部件（GtkStatusIcon、GtkAssistant、GtkLinkButton、GtkRecentChooser）以及列印支援（GtkPrintOperation）</p></td>
<td><p><a href="http://mail.gnome.org/archives/gtk-devel-list/2007-July/msg00058.html">2.10.14</a></p></td>
</tr>
<tr class="odd">
<td><p><a href="http://ftp.gnome.org/pub/gnome/sources/gtk+/2.12/">2.12</a></p></td>
<td><p>2007年9月14日</p></td>
<td><p>GtkBuilder</p></td>
<td><p><a href="http://mail.gnome.org/archives/gtk-devel-list/2008-September/msg00069.html">2.12.12</a></p></td>
</tr>
<tr class="even">
<td><p><a href="http://ftp.gnome.org/pub/gnome/sources/gtk+/2.14/">2.14</a></p></td>
<td><p>2008年9月4日</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/Jpeg2000" title="wikilink">Jpeg2000</a> load support</p></td>
<td><p><a href="http://mail.gnome.org/archives/gtk-devel-list/2009-January/msg00031.html">2.14.7</a></p></td>
</tr>
<tr class="odd">
<td><p><a href="http://ftp.gnome.org/pub/gnome/sources/gtk+/2.16/">2.16</a></p></td>
<td><p>2009年3月13日</p></td>
<td><p>New GtkOrientable, Caps Lock warning in password Entry.<br />
Improvement on GtkScale, GtkStatusIcon, GtkFileChooser.</p></td>
<td><p><a href="http://mail.gnome.org/archives/gtk-devel-list/2009-August/msg00176.html">2.16.6</a></p></td>
</tr>
<tr class="even">
<td><p><a href="http://ftp.gnome.org/pub/gnome/sources/gtk+/2.18/">2.18</a></p></td>
<td><p>2009年9月23日</p></td>
<td><p>New GtkInfoBar. Improvement on file chooser, printing.<br />
GDK has been rewritten to use 'client-side windows'</p></td>
<td><p><a href="http://mail.gnome.org/archives/gtk-devel-list/2010-March/msg00115.html">2.18.9</a></p></td>
</tr>
<tr class="odd">
<td><p><a href="http://ftp.gnome.org/pub/gnome/sources/gtk+/2.20/">2.20</a></p></td>
<td><p>2010年3月23日</p></td>
<td><p>New GtkSpinner and GtkToolPalette, GtkOffscreenWindow. Improvement on file chooser,<br />
keyboard handling, GDK.Introspection data is now included in GTK</p></td>
<td><p><a href="http://mail.gnome.org/archives/gtk-devel-list/2010-May/msg00004.html">2.20.1</a></p></td>
</tr>
<tr class="even">
<td><p><a href="http://ftp.gnome.org/pub/gnome/sources/gtk+/2.22/">2.22</a></p></td>
<td><p>2010年9月23日</p></td>
<td><p>gdk-pixbuf moved to separate module, most GDK drawing are based on Cairo,<br />
many internal data are now private and can be <em>sealed</em> in preparation to GTK3</p></td>
<td><p><a href="http://mail.gnome.org/archives/ftp-release-list/2010-November/msg00145.html">2.22.1</a></p></td>
</tr>
<tr class="odd">
<td><p><a href="http://ftp.gtk.org/pub/gtk/2.24/">2.24</a></p></td>
<td><p>2011年1月30日</p></td>
<td><p>New simple combo box widget (GtkComboBoxText) added, the cups print backend can send print jobs as PDF,<br />
GtkBuilder has gained support for text tags and menu toolbuttons and many introspection annotation fixes were added</p></td>
<td><p><a href="http://mail.gnome.org/archives/gtk-devel-list/2011-January/msg00042.html">2.24.0</a></p></td>
</tr>
<tr class="even">
<td><p><a href="http://ftp.gtk.org/pub/gtk/3.0/">3.0</a></p></td>
<td><p>2011年2月10日</p></td>
<td><p>Cairo, more X11 agnostic, XInput2, CSS-based theme API</p></td>
<td><p><a href="http://mail.gnome.org/archives/gnome-announce-list/2011-February/msg00022.html">3.0.0</a></p></td>
</tr>
</tbody>
</table>

## 图形无关代码

最初GTK包括一些和图形无关的常规功能，如[链表](../Page/链表.md "wikilink")和[二叉树](../Page/二叉树.md "wikilink")等[数据结构](../Page/数据结构.md "wikilink")。这些基本功能和对象系统GObject已经合并到独立的[库](../Page/函式庫.md "wikilink")[Glib](https://zh.wikipedia.org/wiki/Glib "wikilink")，它被程序员专门用于开发不需要[图形界面的代码](https://zh.wikipedia.org/wiki/图形界面 "wikilink")。

## GTK 2

2002年3月11日，GTK2.0版正式发布。GTK 2是GTK后继版本，其新特性包括使用[Pango](../Page/Pango.md "wikilink")改进的文本渲染、新主题引擎、使用[ATK改进的可达性](https://zh.wikipedia.org/wiki/ATK "wikilink")、完全转换到使用[UTF-8](../Page/UTF-8.md "wikilink")的[Unicode和更灵活的](https://zh.wikipedia.org/wiki/Unicode "wikilink")[API](https://zh.wikipedia.org/wiki/API "wikilink")。但是它和GTK 1不完全兼容，因此必须由程序员做移植工作。由于GTK 1更快、相对更简单或更加适合[嵌入式应用](https://zh.wikipedia.org/wiki/嵌入式应用 "wikilink")，所以还被继续使用。

从GTK 2的2.8版起，它依靠[程式庫](https://zh.wikipedia.org/wiki/程式庫 "wikilink")[Cairo](../Page/Cairo.md "wikilink")完成[渲染](../Page/渲染.md "wikilink")，而这引入了[矢量图形](../Page/矢量图形.md "wikilink")的支持。

## 发展

[Ridley项目正在尝试统一一系列和GTK相关的库](https://zh.wikipedia.org/wiki/Ridley "wikilink")，包括libgnome、libgnomeui、libgnomeprint、libgnomeprintui、libglade、libgnomecanvas、libegg、libeel和gtkglext。

## GTK hello world

GTK [hello world以C撰写](https://zh.wikipedia.org/wiki/hello_world "wikilink")，本程序含有窗口，标题是"Hello, World".

``` c
 #include <gtk/gtk.h>

 int main (int argc, char *argv[])
 {
    GtkWidget *window;
    GtkWidget *label;

    gtk_init (&argc, &argv);

    /* create the main, top level, window */
    window = gtk_window_new (GTK_WINDOW_TOPLEVEL);

    /* give it the title */
    gtk_window_set_title (GTK_WINDOW (window), "Hello World");

    /* Connect the destroy signal of the window to gtk_main_quit
     * When the window is about to be destroyed we get a notification and
     * stop the main GTK loop
     */
    g_signal_connect (window, "destroy",
                      G_CALLBACK (gtk_main_quit), NULL);

    /* Create the "Hello, World" label  */
    label = gtk_label_new ("Hello, World");

    /* and insert it into the main window  */
    gtk_container_add (GTK_CONTAINER (window), label);

    /* make sure that everything, window and label, are visible */
    gtk_widget_show_all (window);

    /* start the main loop, and let it rest there until the application is closed */
    gtk_main ();

    return 0;
 }
```

## GTK Runtime Environment for Windows

由於GTK主要是作為Unix-like系統底下的介面，在Windows使用該系統所開發的軟體時就需要用到GTK執行環境，即GTK Runtime Environment for Windows。這個軟體與GTK不同的地方在於它僅僅是為了執行軟體用途而製作，以解決Windows沒有內建GTK函式庫的問題。

## 参见

  - [Gtk\#](https://zh.wikipedia.org/wiki/Gtk_Sharp "wikilink")，GTK的.NET API。
  - [PyGTK](../Page/PyGTK.md "wikilink")，GTK的Python API。
  - [Qt](../Page/Qt.md "wikilink")
  - [Motif](../Page/Motif.md "wikilink")
  - [wxWidgets](https://zh.wikipedia.org/wiki/wxWidgets "wikilink")

## 參考資料

## 外部链接

  - [GTK主页](http://www.gtk.org)

  -
[Category:应用程序接口](https://zh.wikipedia.org/wiki/Category:应用程序接口 "wikilink") [Category:GNU](https://zh.wikipedia.org/wiki/Category:GNU "wikilink") [Category:GNU計劃軟體](https://zh.wikipedia.org/wiki/Category:GNU計劃軟體 "wikilink") [Category:使用LGPL许可证的软件](https://zh.wikipedia.org/wiki/Category:使用LGPL许可证的软件 "wikilink") [Category:部件工具箱](https://zh.wikipedia.org/wiki/Category:部件工具箱 "wikilink") [Category:软件开发](https://zh.wikipedia.org/wiki/Category:软件开发 "wikilink") [Category:GTK](https://zh.wikipedia.org/wiki/Category:GTK "wikilink")

1.