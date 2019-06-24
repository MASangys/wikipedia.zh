[Linux_Graphics_Stack_2013.svg](https://zh.wikipedia.org/wiki/File:Linux_Graphics_Stack_2013.svg "fig:Linux_Graphics_Stack_2013.svg")：X
Server與Wayland Compositor\]\]
[Free_and_open-source-software_display_servers_and_UI_toolkits.svg](https://zh.wikipedia.org/wiki/File:Free_and_open-source-software_display_servers_and_UI_toolkits.svg "fig:Free_and_open-source-software_display_servers_and_UI_toolkits.svg")

**Wayland**是一个[通信协议](https://zh.wikipedia.org/wiki/通信协议 "wikilink")，規定了[顯示伺服器與其](https://zh.wikipedia.org/wiki/顯示伺服器 "wikilink")[客戶機之間的通信方式](https://zh.wikipedia.org/wiki/客戶機 "wikilink")，而使用这个协议的显示服务器称为Wayland
Compositor。它由Kristian
Høgsberg於2008年发起，目标是用更简单的现代化[视窗系统取代](https://zh.wikipedia.org/wiki/视窗系统 "wikilink")[X
Window
System](https://zh.wikipedia.org/wiki/X_Window_System "wikilink")。Wayland协议的参考实现称为Weston，由Wayland项目组使用C语言开发。\[1\]

Wayland與X Window
System的最大不同在於，它規定由客戶機自身負責窗口邊框和裝飾的繪製，並且客戶機能夠通過[EGL以及一些Wayland特定的EGL擴展直接在顯存中渲染自己的緩衝區](https://zh.wikipedia.org/wiki/Open_GL "wikilink")。窗口管理器简化成显示管理服务，专门负责渲染那些屏幕上的程序。这比X
Window
System中的[窗口管理器要更简单](https://zh.wikipedia.org/wiki/窗口管理器 "wikilink")、高效。\[2\]\[3\]

Wayland项目的源码使用[MIT許可證釋出](../Page/MIT許可證.md "wikilink")。现有的Compositor例如[Compiz](../Page/Compiz.md "wikilink")，[KWin和](../Page/KWin.md "wikilink")[Mutter对Wayland都有着不同程度的支持](https://zh.wikipedia.org/wiki/Mutter "wikilink")。

## 歷史

Wayland的创始人Kristian Høgsberg是[X.Org
Server开发者](../Page/X.Org_Server.md "wikilink")，曾参与过和的开发。他在2008年供职于[红帽时发起了Wayland作为业余项目](https://zh.wikipedia.org/wiki/红帽 "wikilink")，目标是让“每一个帧都完美无瑕，也就是说应用程序要能充分地控制图形的渲染，使我们完全无法察觉任何的撕裂、延迟、重画及闪烁”。这一灵感浮现时他正开车经过马萨诸塞州的韦兰，也就由此决定了项目的名字。

2010年10月，Wayland加入了[Freedesktop.org项目](../Page/Freedesktop.org.md "wikilink")。在迁移过程中，邮件列表wayland-devel代替了原先的[Google
group邮件组](https://zh.wikipedia.org/wiki/Google_group "wikilink")，用于讨论项目的开发。

Wayland是[自由软件](../Page/自由软件.md "wikilink")，它的库(libwayland-server和libwayland-client)以[MIT
License授权](https://zh.wikipedia.org/wiki/MIT_License "wikilink")，示例程序和Compositor一开始以GPLv2授权。现在整个项目都是以[MIT
License授权](https://zh.wikipedia.org/wiki/MIT_License "wikilink")。直到2010年11月份，Wayland还仅仅只能在[Intel](https://zh.wikipedia.org/wiki/Intel "wikilink")、[Nvidia和](https://zh.wikipedia.org/wiki/Nvidia "wikilink")[AMD的开源驱动上运行](https://zh.wikipedia.org/wiki/AMD "wikilink")。

## 设计

[Wayland_display_server_protocol.svg](https://zh.wikipedia.org/wiki/File:Wayland_display_server_protocol.svg "fig:Wayland_display_server_protocol.svg")
Wayland运用既有的[Linux核心技术](../Page/Linux内核.md "wikilink")，像是Direct
Rendering Manager（DRM），Kernel Mode-Setting（KMS）以及Graphics Execution
Manager（GEM）以提供一個最小化的显示管理服务。Wayland混合器（compositor）在2010年6月已从桌面常用的[OpenGL改为](../Page/OpenGL.md "wikilink")[OpenGL
ES](../Page/OpenGL_ES.md "wikilink")\[4\]</ref>。這個專案也開發支援Wayland顯示的[Qt](../Page/Qt.md "wikilink")，而不需要X。大部分應用程式都有望獲得透過函式庫，無需修改程式即可支援Wayland。

近些年来，GNU/Linux桌面图形开发者将许多与渲染有关的接口从X
server移动到内核中。现在，已经有许多功能被移入内核（[内存管理](https://zh.wikipedia.org/wiki/内存管理 "wikilink")、[任务调度](https://zh.wikipedia.org/wiki/任务调度 "wikilink")、[模式设置](https://zh.wikipedia.org/wiki/模式设置 "wikilink")（KMS）等等）或是程序库（cairo、pixman、freetype、fontconfig、pango等等），所以窗口系统需要做的事情大大减少了。但是X11协议十分巨大、庞杂，并且它包括了许多已经过时的模块。虽然开发者们为了使X
server适应现代化的计算机体系结构而开发出了XRandR、XRender、Composite等一些额外扩展，但这终究是治标不治本，同时这也会增加维护的难度。

Wayland是一款协议，但与X
server不同的是，Wayland只做它必须要做的事情。下面以「鼠标点击按钮引发按钮更新动作」为例来说明一下Wayland和X
server的区别：

[X-architecture.png](https://zh.wikipedia.org/wiki/File:X-architecture.png "fig:X-architecture.png")
**在X中**：

1.  内核捕获鼠标点击事件并发送给X server。
2.  X server会计算该把这一事件发送给哪个窗口（事实上，窗口位置是由Compositor控制的，X
    server并不能够正确的计算Compositor做过特效变化之后的按钮的正确位置）。
3.  应用程序对此事件进行处理（将引发按钮更新动作）。但是，在此之前它得向X server发送绘制请求。
4.  X server接收到这条绘制请求，然后把它发给视频驱动来渲染。X还计算了更新区域，并且这条「垃圾信息」发送给了Compositor。
5.  这时，Compositor知道它必须要重新合成屏幕上的一块区域。当然，这还是要向X server发送绘制请求的。
6.  开始绘制。但是X server还会去做一些不必要的本职工作（窗口重叠计算、窗口剪裁计算等）。

[Wayland-architecture.png](https://zh.wikipedia.org/wiki/File:Wayland-architecture.png "fig:Wayland-architecture.png")
**在Wayland中**：

1.  内核捕获鼠标点击事件并发送给Wayland Compositor。
2.  由于是直接发给Wayland Compositor的，所以Wayland
    Compositor会正确地计算出按钮的位置。同时它会把这一事件发送给按钮所在的应用程序来处理。
3.  应用程序直接渲染，无需向Wayland Compositor请求。只需在绘制完成之后向Wayland
    Compositor发送一条信息表明这块区域被更新了。
4.  Wayland Compositor收到这条信息后，立即重新合成整个桌面。

目前，Wayland使用OpenGL
ES而不是传统的OpenGL。“从长远来看，我们需要完整的OpenGL支持，但问题是libGL会带来X的依赖性......”\[5\]另一方面，使用OpenGL
ES会使得Wayland更容易支持移动设备\[6\]。Wayland目前并不支持网络透明性，但未来可能会支持\[7\]。

## 媒体关注

Phoronix於2008年11月發表了一篇标题為「Wayland: A New X Server For
Linux」的文章\[8\]，披露Wayland這項新的项目。Kristian透過他的網誌對此關注作出回應，他告示大眾Wayland並非一個新的X
server而是一個顯示伺服器，並聲明這個新興的專案尚處於未成熟的階段。

## 使用

### Arch Linux

[Arch Linux本身不具有Wayland](../Page/Arch_Linux.md "wikilink")。但实际上，安装
Enlightenment 或 KDE 等桌面環境时，可以選用Wayland安裝作为显示服务器。

### Ubuntu

[馬克·沙特爾沃思於](https://zh.wikipedia.org/wiki/馬克·沙特爾沃思 "wikilink")2010年11月4日宣佈Wayland將作為[Ubuntu未來某一未定版本Unity介面的顯示伺服器](../Page/Ubuntu.md "wikilink")\[9\]。但是2013年3月份，Canonical确认他们将开发一个新的显示服务[Mir而不是使用Wayland来替代X](../Page/Mir_\(显示服务器\).md "wikilink")\[10\]</ref>。2017年4月份，Canonical宣佈放棄[Unity與Mir](../Page/Unity_\(使用者介面\).md "wikilink")\[11\]，並於Ubuntu
17.10開始使用Wayland\[12\]。但在18.04LTS版本中因為Wayland無法支持屏幕共享，遠程桌面服務以及GNOME
Shell崩潰的可恢復性更換為X.Org Server。\[13\]\[14\]

### Fedora

[Fedora](../Page/Fedora.md "wikilink") 25整合了​GNOME桌​面​最​新​版​本​
3.22，并将GNOME桌面的版本的显示后端切换至预设为Wayland。

### Qt

[Qt](../Page/Qt.md "wikilink")
5.x提供了QtWayland模塊以支持Wayland協議\[15\]，藉由-platform命令列選項，[Qt應用程式可以在運行時切換圖形後端](../Page/Qt.md "wikilink")，如X與Wayland\[16\]。2011年1月，Wayland支持进入上游Qt版本庫的Lighthouse分支\[17\]。

### KDE

[KWin](../Page/KWin.md "wikilink")，[KDE的視窗管理器加入支持OpenGL](../Page/KDE.md "wikilink")
ES輸出\[18\]，已在[KDE SC
4.7發布](../Page/KDE_Software_Compilation_4.md "wikilink")\[19\]。目前，KWin已經完成Wayland的初步移植\[20\]。在2012年1月發布的KDE
SC 4.8，KDE將支援X下執行Wayland。在2012年夏天發布的KDE SC
4.9，將可以直接執行Wayland，主要用於支援行動設備，也就是Plasma
Active\[21\]。

### GNOME

[GNOME從](../Page/GNOME.md "wikilink")3.10開始支持Wayland\[22\]。

### Compiz

[Compiz开发者们已经把它对X的依赖部分变成了一个可选插件](../Page/Compiz.md "wikilink")。同时，Canonical正在为Compiz添加OpenGL
ES的支持。众所周知，目前Wayland正是使用OpenGL ES，这使将得Compiz能够更容易迁移到Wayland。
註:compiz此項目的主要作者已經離開Canonical，使得此項目進入停止開發的狀態，當然遷移到wayland的計劃也就更遙遙無期。

### Sailfish OS

[Jolla的第一款裝置搭载的](../Page/Jolla.md "wikilink")[Sailfish
OS使用Wayland](../Page/Sailfish_OS.md "wikilink")\[23\]。

## 工具包

截止到2012年3月：

[Clutter对Wayland已经有完整的支持](https://zh.wikipedia.org/wiki/Clutter "wikilink")。

[Enlightenment Foundation
Libraries对Wayland已经有完整的支持](https://zh.wikipedia.org/wiki/Enlightenment_Foundation_Libraries "wikilink")。

QT 5除了对client有一些改动之外，对Wayland已经有完整的支持。

[GTK+](https://zh.wikipedia.org/wiki/GTK+ "wikilink")3.4.0，发布于2012年3月26日，对Wayland的支持有一些缺陷。不过过随着3.4.1更新版本的发布，这个问题得到了缓解。

[SDL的Wayland支持正在开发中](https://zh.wikipedia.org/wiki/SDL "wikilink")。

## 参见

  - [X Window系統](../Page/X_Window系統.md "wikilink")
  - [Mir](../Page/Mir_\(显示服务器\).md "wikilink")
  - [Cairo](https://zh.wikipedia.org/wiki/Cairo_\(繪圖\) "wikilink")

## 參考資料

## 外部連結

  - [官方網站](http://wayland.freedesktop.org/)

[Category:Wayland](https://zh.wikipedia.org/wiki/Category:Wayland "wikilink")
[Category:使用MIT许可证的软件](https://zh.wikipedia.org/wiki/Category:使用MIT许可证的软件 "wikilink")

1.

2.

3.

4.
5.

6.

7.

8.
9.

10.
11.

12.

13.

14.

15.

16.

17.

18.

19.

20.

21.

22.

23.