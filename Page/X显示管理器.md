[Screenshot_of_the_KDE_Display_Manager.jpg](https://zh.wikipedia.org/wiki/File:Screenshot_of_the_KDE_Display_Manager.jpg "fig:Screenshot_of_the_KDE_Display_Manager.jpg")（[KDE显示管理器](../Page/KDE.md "wikilink")）显示的登录界面\]\]
显示管理器（display manager）建基於[X
Window系统](../Page/X_Window系统.md "wikilink")，調用[X
Window系统用作以](../Page/X_Window系统.md "wikilink")[GUI登入以及登入後顯示](../Page/GUI.md "wikilink")[GUI畫面](../Page/GUI.md "wikilink")，以及以GUI切換使用者。GNU/Linux下的tty7預設開啟显示管理器，tty1～6則為文字列介面

在[X
Window系统中](../Page/X_Window系统.md "wikilink")，作为程序运行的**X显示管理器**允许你在本地**X服务器**或远程**X服务器**上开始一个会话。

显示管理器呈现给用户一个登录界面并提示输入用户和密码。当用户成功输入正确的用户和密码，显示管理器会开始一个会话。

当显示管理器在用户电脑上运行时，它会在显示登录界面前开启**X服务器**，并能在用户登出后任意的重复运行。在这种情况下，显示管理器在[X
Window系统中实现](../Page/X_Window系统.md "wikilink")[`init`](../Page/init.md "wikilink")，[`getty`](../Page/getty_\(Unix\).md "wikilink")和在[字符类型终端下](../Page/命令行界面.md "wikilink")`登录`的功能。当显示管理器运行在远程计算机时，它扮演类似[telnet服务器的角色](../Page/telnet.md "wikilink")，需要用户名和密码才开始一个远程会话。

1988年10月X11 Release
3引入了显示管理器，它的目标是在市场上支持独立的**X终端机**。多种显示管理器继续一成不变的在运行X系统的独立的工作站上提供图形化登录提示。1989年12月X11R4引入**[X显示管理器控制协议](../Page/X显示管理器控制协议.md "wikilink")**（**[XDMCP](../Page/XDMCP.md "wikilink")**）来修复由X11R3带来的问题。

## 本地和远程显示管理

显示管理器可以运行在用户面前的计算机上也可以运行在远程计算机上。第一种情况，显示管理器会自动开始一个或多个X服务器，并显示登录界面。第二种情况，显示管理器要通过**XDMCP**协议工作。

[Xserver_and_display_manager.svg](https://zh.wikipedia.org/wiki/File:Xserver_and_display_manager.svg "fig:Xserver_and_display_manager.svg")

XDMCP协议要求X服务器能自发的启动并连接到显示管理器。在[X
Window系统范例中](../Page/X_Window系统.md "wikilink")，X服务器运行的那台计算机提供显示和输入设备。X服务器能够连接（使用XDMCP协议）到另一台运行显示管理器的计算机，并请求开始会话。在这种情况下，X服务器扮演类似图形化[telnet客户端的角色](../Page/telnet.md "wikilink")，而显示管理器类似[telnet服务器](../Page/telnet.md "wikilink")：用户启动的程序是运行在显示管理器那台计算机，而它们的输入和输出是工作在X服务器（用户面前）那台计算机上。

管理员可以配置X服务器连接到某个指定的显示管理器，或显示运行**X显示管理器**的主机列表。**XDMCP选择器**程序允许用户选择下面其中一个能连接到的主机：

1.  一个预先定义好的主机列表，它们有各自的网络地址；
2.  一个主机列表（工作于本地IP网段），它们的XDMCP服务器可以通过广播地址找到。

XDMCP服务器经常出现在这个列表中。当用户从列表中选中一个主机，工作于本地计算机的X服务器会连接选中的远程计算机的**X显示管理器**。

## X显示管理器控制协议（XDMCP）

X显示管理器控制协议使用[UDP](../Page/UDP.md "wikilink") 177
[端口](../Page/端口.md "wikilink")。需要显示管理器开始一个会话时，X服务器需要向其发送`Query`包。如果显示管理器允许X服务器的访问，它会向X服务器返回`Willing`包作为回应。（X服务器也可以发送`BroadcastQuery`或`IndirectQuery`包来开始一个会话，这种机制类似于使用[DHCP来获得IP地址](../Page/DHCP.md "wikilink")。）

显示管理器必须向X服务器进行认证。为做到这一点，X服务器发送`Request`包给显示管理器，显示管理器返回一个`Accept`包。如果`Accept`包包含了X服务器期望的响应，则显示管理器通过认证。举例来说，为生成正确的响应可能需要显示管理器访问一个[密钥](../Page/密码学.md "wikilink")。如果认证成功，X服务器会发送`Manage`包来告诉显示管理器。然后，显示管理器会作为一个常规的X客户端向连接的X服务器显示登录界面。

在会话期间，X服务器会间隔的向显示管理器发送`KeepAlive`包。如果显示管理器在一段时间内没有回应`Alive`包，X服务器会假定显示管理器停止运行，并终止该连接。

XDMCP有一个问题，类似[telnet](../Page/telnet.md "wikilink")，认证时是不加密的并且如果能够嗅探，这会让系统易受到攻击。比较安全的方法是对X通信使用[ssh通道](../Page/SSH.md "wikilink")。[1](http://www.gnome.org/projects/gdm/docs/2.14/security.html)

## 历史

[XDM是在X](../Page/X_Display_Manager_\(implementation\).md "wikilink")11R3中引入的。这个版本出现了几个问题，最显著的一个是当用户打开X终端电源时。在X11R3中，XDM只能通过`Xservers`文件得知一个X终端，但是只有在启动时XDM才会读取这个文件。因此，每次用户打开X终端电源时，系统管理员不得不发送[SIGHUP信号给XDM指示它重新读取Xservers文件](../Page/SIGHUP.md "wikilink")。

X11R4（1989年10月）引入了XDMCP。使用XDMCP时，X服务器必须主动请求一个显示管理器连接。当X服务器使用XDMCP时就不再需要`Xservers`文件。

## 一些实例

[X
Window系统使用](../Page/X_Window系统.md "wikilink")[XDM做为它标准的显示管理器](../Page/X_Display_Manager_\(implementation\).md "wikilink")。

也有其他X显示管理器被开发出来，有商业有开源，在基本的显示管理上提供了附加的功能。

  - [Qingy](http://qingy.sourceforge.net/)在X
    Window中超轻型和可配置的图形化登录管事器（使用[DirectFB](../Page/DirectFB.md "wikilink")）
  - `scologin`（由[SCO Open
    Desktop提供](../Page/SCO_OpenServer.md "wikilink")）能检查过期密码和执行一些管理任务
  - [GDM](../Page/GNOME显示管理器.md "wikilink")（由[GNOME提供](../Page/GNOME.md "wikilink")）
  - [KDM](../Page/KDM.md "wikilink")（由[KDE提供](../Page/KDE.md "wikilink")）允许用户在登录界面图形化的选择某个[窗口管理器或](../Page/X窗口管理器.md "wikilink")[桌面环境](../Page/桌面环境.md "wikilink")
  - [XDM是](../Page/X_Display_Manager_\(implementation\).md "wikilink")[X
    Window系统的默认显示管理器](../Page/X_Window系统.md "wikilink")
  - LDM，[Linux Terminal Server
    Project的](../Page/Linux_Terminal_Server_Project.md "wikilink")（远程）显示管理器
  - [dtlogin](../Page/dtlogin.md "wikilink")（工作于[CDE](../Page/Common_Desktop_Environment.md "wikilink")）
  - [WINGs Display
    Manager](../Page/WINGs_Display_Manager.md "wikilink")（使用WINGs
    widget-set，用于[Window Maker](../Page/Window_Maker.md "wikilink")）
  - [entranced/entrance](../Page/entrance_\(display_manager\).md "wikilink")
    (employs the architecture used in
    [Enlightenment](../Page/Enlightenment_\(window_manager\).md "wikilink")
    v.17, on hiatus since 2005)
  - [LXDM](../Page/LXDE.md "wikilink")，一个轻量级的显示管理器http://wiki.lxde.org/en/LXDM
  - [SLiM](../Page/SLiM.md "wikilink")，一个独立的登录管理器
  - [CDM](https://web.archive.org/web/20100809225958/http://cdm.ghost1227.com/X11/)，一个Linux下的超轻量级控制台显示管理器
  - [xlogin](http://www.jonshouse.co.uk/xlogin.cgi)，X
    Window登录和独立的XDMCP服务器
  - [Enter](http://enter.sf.net)，轻量级的图形登录管理器
  - [Orthos](https://web.archive.org/web/20090920062114/http://e-x-a.org/?view=orthos)，另一个轻量级的解决方案附带真正的结构化主题
  - [nodm](https://web.archive.org/web/20100127214135/http://www.enricozini.org/sw/nodm/)，针对收款机、电器和移动电话的自动登录的显示管理器
  - [LightDM](../Page/LightDM.md "wikilink")，[Canonical公司开发的轻量级](../Page/Canonical公司.md "wikilink")、模块化、跨桌面，完全更换主题的桌面管理器

在大多数Linux发行版中，系统默认的显示管理器由/etc/X11/default-display-manager文件选择（注：本条已不适用使用Gnome或KDE的现代Linux发行版）

## 参见

  - [X Window系统的协议和架构](../Page/X_Window系统的协议和架构.md "wikilink")

## 参考文献

## 外部链接

  - [Linux XDMCP
    HOWTO](http://www.tldp.org/HOWTO/XDMCP-HOWTO/index.html)
  - [驯服X显示管理器](http://www.rru.com/~meo/pubsntalks/xrj/xdm.html)
  - [X Display
    Manager](http://www.freebsd.org/doc/en_US.ISO8859-1/books/handbook/x-xdm.html)，来自\*[FreeBSD手册](http://www.freebsd.org/doc/en_US.ISO8859-1/books/handbook/)
  - [从Windows中使用XDMCP登录Linux](https://web.archive.org/web/20080330074444/http://blogs.ittoolbox.com/linux/locutus/archives/linux-login-with-a-windows-box-and-xdmcp-15547)使用Windows登录Linux。

[Category:X_Window系统](https://zh.wikipedia.org/wiki/Category:X_Window系统 "wikilink")
[Category:X显示管理器](https://zh.wikipedia.org/wiki/Category:X显示管理器 "wikilink")