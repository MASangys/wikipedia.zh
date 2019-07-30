**Windows操作系统应用程序接口**（），有非正式的简称法为**WinAPI**，是[微软](../Page/微软.md "wikilink")对于[Windows](https://zh.wikipedia.org/wiki/Windows "wikilink")[操作系统](../Page/操作系统.md "wikilink")中可用的核心[应用程序编程接口的称法](https://zh.wikipedia.org/wiki/API "wikilink")。它被设计为各种语言的程序调用，也是[应用软件与Windows系统最直接的交互方式](https://zh.wikipedia.org/wiki/应用软件 "wikilink")。大多数[驱动程序](../Page/驱动程序.md "wikilink")需要对Windows系统更底层次访问接口，由所用版本的Windows的[Native API来提供接口](https://zh.wikipedia.org/wiki/Native_API "wikilink")。

Windows有一个[软件开发套件](https://zh.wikipedia.org/wiki/Windows_SDK "wikilink")（SDK, software development kit）提供相应的文档和工具，以使程序员开发使用Windows API的软件和利用Windows技术。

## 歷史

Windows API總會為程式設計師提供大量的構建不同 Windows 的底層結構，這有助於為 Windows 程式設計師開發應用程序提供大量的靈活性和功能。但是，它同樣使 Windows 应用程式要負責處理大量底層且有時是繁瑣的與[图形用户界面](../Page/图形用户界面.md "wikilink")（GUI）相關的操作。

[Charles Petzold](https://zh.wikipedia.org/wiki/Charles_Petzold "wikilink")——許多有關Windows API的暢銷書的作者，曾經說過：\[1\]

常用的例子程式[Hello world程式](https://zh.wikipedia.org/wiki/Hello_world程式 "wikilink")，通常是用來示範一個系統上最簡單的程序（即在螢幕上印出一行"Hello World"）。

這些年來，Windows 作業系統已經今非昔比，而Windows API也隨之改變和成長並反映出這種變化。Windows API的[Windows 1.0版本只提供不到](../Page/Windows_1.0.md "wikilink")450個[函數調用](https://zh.wikipedia.org/wiki/函數調用 "wikilink")（Subroutine），而現在的版本提供上千個。然而，整體而言，Windows接口保持了相當好的一致性，古老的Windows 1.0程序對習慣於現在版本Windows API的程式設計師也並不陌生。\[2\]

[微软](../Page/微软.md "wikilink")特别強調維持軟件的[向後兼容性](https://zh.wikipedia.org/wiki/向後兼容性 "wikilink")。為了實現此一目標，有時微軟甚至不惜支持使用了非官方乃至（編程上）非法的API的軟件。[Raymond Chen](https://zh.wikipedia.org/wiki/Raymond_Chen "wikilink")，一位致力於Windows API的Windows開發者，曾提及他：\[3\]

## Windows API分类

Windows API所提供的功能可以归为七类：\[4\]

  - 基础服务（Base Services）\[5\]，提供对Windows系统可用的基础资源的访问接口。比如象：[文件系统](../Page/文件系统.md "wikilink")（file system）、[外部设备](https://zh.wikipedia.org/wiki/外部设备 "wikilink")（device）、，[进程](https://zh.wikipedia.org/wiki/进程 "wikilink")（process）、[线程](../Page/线程.md "wikilink")（thread）以及访问[注册表](../Page/注册表.md "wikilink")（Windows registry）和[错误处理机制](https://zh.wikipedia.org/wiki/错误处理机制 "wikilink")（error handling）。这些功能接口位于，16位元Windows下的`kernel.exe`、`krnl286.exe`或`krnl386.exe`系统文件中；以及32位元Windows下的`kernel32.dll`和`advapi32.dll`中。

<!-- end list -->

  - [图形设备接口](https://zh.wikipedia.org/wiki/图形设备接口 "wikilink")（GDI）\[6\]，提供功能为：输出图形内容到[显示器](../Page/显示器.md "wikilink")、[打印机](../Page/打印机.md "wikilink")以及其他外部输出设备。它位于16位元Windows下的`gdi.exe`；以及32位元Windows下的`gdi32.dll`。

<!-- end list -->

  - 图形化用户界面（[GUI](https://zh.wikipedia.org/wiki/GUI "wikilink")）\[7\]，提供的功能有创建和管理屏幕和大多数基本控件（control），比如[按钮和](https://zh.wikipedia.org/wiki/按钮_\(计算机\) "wikilink")[滚动条](https://zh.wikipedia.org/wiki/滚动条 "wikilink")。接收[鼠标](../Page/鼠标.md "wikilink")和[键盘输入](https://zh.wikipedia.org/wiki/键盘 "wikilink")，以及其他与GUI有关的功能。这些调用接口位于：16位元Windows下的`user.exe`，以及32位元Windows下的`user32.dll`。从[Windows XP版本之后](../Page/Windows_XP.md "wikilink")，基本控件和通用对话框控件（Common Control Library）的调用接口放在`comctl32.dll`中。

<!-- end list -->

  - 通用对话框链接库（Common Dialog Box Library）\[8\]，为应用程序提供标准对话框，比如打开／保存文件对话框、颜色对话框和字体对话框等等。这个链接库位于：16位元Windows下的`commdlg.dll`中，以及32位元Windows下`comdlg32.dll`中。它被归类为User Interface API之下。

<!-- end list -->

  - 通用控件链接库（Common Control Library）\[9\]，为应用程序提供接口来访问操作系统提供的一些高级控件。比如像：[状态栏](https://zh.wikipedia.org/wiki/状态栏 "wikilink")（status bar）、进度条（progress bars）、[工具栏](../Page/工具栏.md "wikilink")（toolbar）和[标签](https://zh.wikipedia.org/wiki/标签 "wikilink")（tab）。这个链接库位于：16位元Windows下的`commctrl.dll`中，以及32位元Windows下`comctl32.dll`中。它被归类为User Interface API之下。使用API函数InitCommonControls或InitCommonControlsEx初始化（即注册）相应的窗口类。InitCommonControlsEx实际注册指定的通用控件的窗口类。注意ICC_WIN95_CLASSES代表12个控件类的集合。InitCommonControls是个空函数，但会使应用程序加载`comctl32.dll`；在`comctl32.dll`加载到进程时会在DLL的入口点调用InitCommonControlsEx注册ICC_WIN95_CLASSES控件类。

<!-- end list -->

  - Windows外壳（Windows Shell）\[10\]\[11\]，作为Windows API的组成部分，不仅允许应用程序访问[Windows外壳提供的功能](https://zh.wikipedia.org/wiki/壳层 "wikilink")，还对之有所改进和增强。它位于16位元Windows下的`shell.dll`中，以及32位元Windows下的`shell32.dll`中（[Windows 95则在](../Page/Windows_95.md "wikilink")`shlwapi.dll`中）。它被归类为User Interface API之下。

<!-- end list -->

  - 网络服务（Network Services）\[12\]，为访问操作系统提供的多种[网络功能提供接口](https://zh.wikipedia.org/wiki/网络 "wikilink")。它包括[NetBIOS](../Page/NetBIOS.md "wikilink")、[Winsock](../Page/Winsock.md "wikilink")、[NetDDE及](https://zh.wikipedia.org/wiki/NetDDE "wikilink")[RPC等](https://zh.wikipedia.org/wiki/RPC "wikilink")。

### Web相关API

[Internet Explorer网页浏览器也提供许多程序接口](../Page/Internet_Explorer.md "wikilink")\[13\]，提供以下接口：

  - 可嵌入的网页浏览器控件（以及 [Trident](https://zh.wikipedia.org/wiki/Trident "wikilink") / [MSHTML](https://zh.wikipedia.org/wiki/MSHTML "wikilink") 引擎），位于`shdocvw.dll`和`mshtml.dll`之中。
  - `urlmon.dll`中的命名服务（URL moniters service），利用COM对象为应用程序提供解析URL服务。应用程序也可以为其他程序提供自己的URL处理程序。
  - WinInet IE的网络层，支持HTTP和HTTPS等协议。
  - 一个支持多种语言文本的链接库（`mlang.dll`）。
  - DirectX Transforms，一组图像过滤组件。
  - [XML](../Page/XML.md "wikilink")支持（MSXML组件）。

和Windows的邮件功能相关的API，例如地址本和邮件API，在Windows 7取消邮件功能之后也随之从Windows API中去除。由于Windows Mail在Windows Vista上取代了Outlook Express，对应的API也随之变化。

### 多媒体相关API

自从[Windows 95 OSR2以来](../Page/Windows_95.md "wikilink")，Microsoft把[DirectX](../Page/DirectX.md "wikilink") API作为Windows安装的一部分。DirectX提供一组松散相关的[多媒体](../Page/多媒体.md "wikilink")和游戏服务，包括：

  - [Direct3D](../Page/Direct3D.md "wikilink")可以作为[OpenGL](../Page/OpenGL.md "wikilink")的替代，来访问3D加速硬件。
  - [DirectDraw提供硬件加速](https://zh.wikipedia.org/wiki/DirectDraw "wikilink")2D framebuffer（帧缓冲）访问接口。自DirectX 9以来，相比Direct3D更倾向于后者，因为Direct3D提供更全面的高性能图形功能（毕竟2D渲染只是3D渲染的（不严格）子集）。已被[Direct2D](../Page/Direct2D.md "wikilink")替代。
  - [DirectSound](../Page/DirectSound.md "wikilink")提供底层次的硬件加速声卡访问。被[XAudio替代](https://zh.wikipedia.org/wiki/XAudio "wikilink")。
  - [DirectInput用来与输入设备](https://zh.wikipedia.org/wiki/DirectInput "wikilink")（[搖桿和gamepad](https://zh.wikipedia.org/wiki/搖桿 "wikilink")）进行通信。已被DirectX 9中引入的[XInput所替代](https://zh.wikipedia.org/wiki/XInput "wikilink")。
  - [DirectPlay](../Page/DirectPlay.md "wikilink")提供一个多人游戏的架构（multiplayer gaming infrastructure）。它已经被DirectX 9所替代，Microsoft不建议用它开发游戏。
  - [DirectShow](../Page/DirectShow.md "wikilink")可以创建和运行通用的多媒体管道（generic multimedia pipelines）。它可以与[GStreamer](../Page/GStreamer.md "wikilink")框架相媲美，并且经常被用来渲染游戏视频和创建媒体播放器（[Windows Media Player及诸如](https://zh.wikipedia.org/wiki/Windows_Media_Player "wikilink")[FFDShow之类的编解码器正是基于此](../Page/Ffdshow.md "wikilink")；但在Windows Vista及更高版本中，DirectShow被[Media Foundation替代](../Page/Media_Foundation.md "wikilink")）。不建议用DirectShow开发游戏。
  - [DirectMusic提供类似](https://zh.wikipedia.org/wiki/DirectMusic "wikilink")[MIDI](../Page/MIDI.md "wikilink")的功能。与DirectSound一起被XAudio替代。

### 程序通信API

Windows API的功能主要通过使作業系統和应用程序之间的交互来实现。为了实现不同Windows应用程序的通信，微軟随着主要Windows API，推出一系列的技术。最初的[DDE](https://zh.wikipedia.org/wiki/DDE "wikilink")（Dynamic Data Exchange）升级为[物件連結與嵌入](https://zh.wikipedia.org/wiki/物件連結與嵌入 "wikilink")（Object Linking and Embedding），再后来是[组件对象模型](../Page/组件对象模型.md "wikilink")（COM）。

### 封装库

微軟利用许多更底层的Windows API函数，开发出许多[封装库](https://zh.wikipedia.org/wiki/封装库 "wikilink")（wrapper），让应用程序以更抽象的方式与Windows API进行交互。[MFC](https://zh.wikipedia.org/wiki/MFC "wikilink")（Microsoft Foundation Class Library）用[C++](../Page/C++.md "wikilink") [類別来封装Windows](https://zh.wikipedia.org/wiki/類_\(計算機科學\) "wikilink") API的功能，因而允许用更為[物件導向的方式与API进行交互](https://zh.wikipedia.org/wiki/物件導向 "wikilink")。[ATL](https://zh.wikipedia.org/wiki/ATL "wikilink")（Active Template Library）是对COM的[面向模板](https://zh.wikipedia.org/wiki/面向模板 "wikilink")（template oriented）的封装。[WTL](https://zh.wikipedia.org/wiki/WTL "wikilink")（Windows Template Library）作为ATL的增强，被用来作为MFC的轻型的替代物。

其他著名的封装库是[Borland](../Page/Borland.md "wikilink")公司的产品，为了与MFC竞争而推出的[OWL](https://zh.wikipedia.org/wiki/OWL "wikilink")（Object Windows Library）提供了类似的物件導向封装。不久Borland又推出[VCL](https://zh.wikipedia.org/wiki/VCL "wikilink")（Visual Component Library）来取而代之。

大多數的Windows [程序框架](https://zh.wikipedia.org/wiki/程序框架 "wikilink")（application framework）是对Windows API的封装，因而[.NET Framework](https://zh.wikipedia.org/wiki/.NET_Framework "wikilink")、[Java](../Page/Java.md "wikilink")以及其他在Windows下的[程序语言](https://zh.wikipedia.org/wiki/程序语言 "wikilink")，都是（或者包含）封装库。

## 其它实现

尽管微软的Windows API实现有版权保护，但被普遍认可的是，根据美国的法律先例，其他厂商仍然可以通过提供一致的API来模拟Windows，而不会侵犯版权。

[Wine](../Page/Wine.md "wikilink")是为[Unix类平台提供Win](https://zh.wikipedia.org/wiki/Unix类 "wikilink")32 API相容層的尝试。[ReactOS走得更远](https://zh.wikipedia.org/wiki/ReactOS "wikilink")，提供了整个Windows操作系统的模拟，与Wine项目紧密结合，以便促进代码重用和兼容。[HX DOS-Extender是另一个模拟Windows](https://zh.wikipedia.org/wiki/HX_DOS-Extender "wikilink") API的项目，允许通过[DOS](../Page/DOS.md "wikilink")命令行来运行简单的Windows程序。

## 编译器支持

为了开发使用Windows API的软件，编译器必须能处理和导入微软相关的DLLs或者COM对象。编译器必须接受一种C或C++方言，或者能够处理揭示了内部API函数名称的[接口定义语言](https://zh.wikipedia.org/wiki/接口定义语言 "wikilink")（Interface description language）文件和头文件及生成的类型库（Type Library）。概括而言，这些预备条件（编译器、开发工具、库和头文件）被统称为[Microsoft Platform SDK](https://zh.wikipedia.org/wiki/Microsoft_Platform_SDK "wikilink")。很长时间以来，包含了[编译器和开发工具的专利产品如](https://zh.wikipedia.org/wiki/编译器 "wikilink")[Microsoft Visual Studio系列和](../Page/Microsoft_Visual_Studio.md "wikilink")[Borland](../Page/Borland.md "wikilink")编译器（尽管至少在Windows下，SDK是可以从整个[IDE环境中剥离出来单独免费下载的](../Page/集成开发环境.md "wikilink")，据[Microsoft Platform SDK Update](https://web.archive.org/web/20061018045905/http://www.microsoft.com/msdownload/platformsdk/sdkupdate/XPSP2FULLInstall.htm)），是仅有的能提供整套开发环境的选择。如今[MinGW](../Page/MinGW.md "wikilink")和[Cygwin](../Page/Cygwin.md "wikilink")也能提供一套这样的开发环境——是基于采用一种独立头文件集合来保证能与微软DLL连接的[GCC](../Page/GCC.md "wikilink")。[LCC-Win32是由Jacob](https://zh.wikipedia.org/wiki/LCC-Win32 "wikilink") Navia维护的一种“非商业用途免费”的C编译器。[Pellesc是由Pelle](https://zh.wikipedia.org/wiki/Pellesc "wikilink") Orinius维护的一种免费C编译器。[MASM32是一个成熟的项目](https://zh.wikipedia.org/wiki/MASM32 "wikilink")，它通过自制或由SDK平台转换的头文件和库，并利用32位微软汇编器来实现支持Windows API。

微软相关的编译器支持也是[异常处理](../Page/异常处理.md "wikilink")（Structured Exception Handling）特性所需要的。这个体制有双重目的：它提供了语言相关的异常处理赖以实现的基础，同时也是内核藉以通知程序发生诸如解除一个非法指针的引用或堆栈溢出之类异常状况的渠道。甫一被引入Windows 95和NT，微软／Borland C++编译器就有使用这种体制的能力，然而实际实现未被公开，而且必须经过反向工程方可用于Wine项目和免费编译器。SEH的运行机制是先把异常的句柄推入堆栈，继而将它们添加到存储于线程本地资源（即线程环境块的首字段）的一个链表里。事实上，每一个未有程序本身处理的异常，都将由会弹出常规Windows崩溃对话框的默认backstop处理器处理。

API在[Visual Basic中的实现示例](../Page/Visual_Basic.md "wikilink")（这个简化的例子使得用户可以让命令按钮在窗体上四处移动）：

``` vb
  Private Const WM_NCLBUTTONDOWN As Long = &HA1&
  Private Const HTCAPTION As Long = 2&
  Private Declare Function ReleaseCapture Lib "user32" () As Long
  Private Declare Function SendMessage Lib "user32" Alias "SendMessageA" (ByVal hWnd&, ByVal wMsg&, wParam As Any, lParam As Any) As Long

  If Command1.MousePointer = 14 Then
    Call ReleaseCapture
    Call SendMessage(Command1.hWnd, WM_NCLBUTTONDOWN, ByVal HTCAPTION, ByVal 0&)
  End If
```

## 注释

## 参考资料

1.  [Diomidis Spinellis](https://zh.wikipedia.org/wiki/Diomidis_Spinellis "wikilink")。[A critique of the Windows application programming interface](http://www.spinellis.gr/pubs/jrnl/1997-CSI-WinApi/html/win.html). *Computer Standards & Interfaces*, 20(1):1–8, November 1998. [<doi:10.1016/S0920-5489(98)00012-9>](http://dx.doi.org/10.1016/S0920-5489\(98\)00012-9)。

## 外部链接

  - [Microsoft Developer Network Windows API development guide](http://msdn.microsoft.com/library/default.asp?url=/library/en-us/winprog/winprog/windows_api_start_page.asp)
  - [The Old New Thing](http://blogs.msdn.com/oldnewthing/) Weblog by Microsoft developer [Raymond Chen](https://zh.wikipedia.org/wiki/Raymond_Chen "wikilink")，who works on the Windows API and posts extensively about it.
  - [Localization in Win32](http://www.lingobit.com/solutions/win32/index.html)
  - [pinvoke.net: the interop wiki\!](http://pinvoke.net) PINVOKE.NET attempts to address the difficulty of calling Win32 or other unmanaged APIs in managed code (languages such as C\# and VB .NET).
  - [Windows API Notes](http://www.cppworld.com/dante/winapinotes/index.htm)
  - [WinapiZone](http://www.winapizone.net) Free tutorials and extensions for Winapi
  - [Stromcode's Win32/C++ tutorial](http://www.stromcode.com/modules.php?name=Glowdot_Tutorials&op=view&tid=1) (formerly Glowdot) an extensive, 20-part tutorial.
  - [Catch22 Tutorials](https://web.archive.org/web/20061023224552/http://www.catch22.net/tuts/) Well documented Win32 API tutorials for developing small, nifty, and efficient programs in Windows.
  - [theForger's Win32 API Tutorial](https://web.archive.org/web/20060820232034/http://www.winprog.net/tutorial/)
  - [Using Win32 API in Visual FoxPro](http://www.news2news.com/vfp/) online reference

[Category:Windows_API](https://zh.wikipedia.org/wiki/Category:Windows_API "wikilink")

1.  [Charles Petzold](https://zh.wikipedia.org/wiki/Charles_Petzold "wikilink") (December 2001). *Programming Microsoft Windows with C\#.* Microsoft Press. Beyond the Console, page 47.
2.  [Charles Petzold](https://zh.wikipedia.org/wiki/Charles_Petzold "wikilink")（November 11, 1998）. *Programming Windows, Fifth Edition.* Microsoft Press. APIs and Memory Models, page 9.
3.  [Raymond Chen](https://zh.wikipedia.org/wiki/Raymond_Chen "wikilink")（October 15, 2003）. *[What about BOZOSLIVEHERE and TABTHETEXTOUTFORWIMPS?](http://blogs.msdn.com/oldnewthing/archive/2003/10/15/55296.aspx)* Retrieved August 27, 2005.
4.  [Microsoft Developer Network](https://zh.wikipedia.org/wiki/Microsoft_Developer_Network "wikilink")（July 2005）. *[Overview of the Windows API.](http://msdn.microsoft.com/library/default.asp?url=/library/en-us/winprog/winprog/overview_of_the_windows_api.asp)* Retrieved August 28, 2005.
5.  [Microsoft Developer Network](https://zh.wikipedia.org/wiki/Microsoft_Developer_Network "wikilink")（July 2005）. *[Base Services.](http://msdn.microsoft.com/library/default.asp?url=/library/en-us/winprog/winprog/base_services.asp)* Retrieved August 28, 2005.
6.  [Microsoft Developer Network](https://zh.wikipedia.org/wiki/Microsoft_Developer_Network "wikilink")（July 2005）. *[Graphics Device Interface.](http://msdn.microsoft.com/library/default.asp?url=/library/en-us/winprog/winprog/graphics_device_interface.asp)* Retrieved August 28, 2005.
7.  [Microsoft Developer Network](https://zh.wikipedia.org/wiki/Microsoft_Developer_Network "wikilink")（July 2005）. *[User Interface.](http://msdn.microsoft.com/library/default.asp?url=/library/en-us/winprog/winprog/user_interface.asp)* Retrieved August 28, 2005.
8.  [Microsoft Developer Network](https://zh.wikipedia.org/wiki/Microsoft_Developer_Network "wikilink")（2005）. *[Common Dialog Box Library.](http://msdn.microsoft.com/library/default.asp?url=/library/en-us/winui/winui/windowsuserinterface/userinput/commondialogboxlibrary.asp)* Retrieved September 22, 2005.
9.  [Microsoft Developer Network](https://zh.wikipedia.org/wiki/Microsoft_Developer_Network "wikilink")（July 2005）. *[Common Control Library.](http://msdn.microsoft.com/library/default.asp?url=/library/en-us/winprog/winprog/common_control_library.asp)* Retrieved August 28, 2005.
10. [Microsoft Developer Network](https://zh.wikipedia.org/wiki/Microsoft_Developer_Network "wikilink")（July 2005）. *[Windows Shell.](http://msdn.microsoft.com/library/default.asp?url=/library/en-us/winprog/winprog/windows_shell.asp)* Retrieved August 28, 2005.
11. [Microsoft Developer Network](https://zh.wikipedia.org/wiki/Microsoft_Developer_Network "wikilink")（2005）. *[Shell Programmer's Guide.](http://msdn.microsoft.com/library/default.asp?url=/library/en-us/shellcc/platform/shell/programmersguide/shell_intro.asp)* Retrieved August 28, 2005.
12. [Microsoft Developer Network](https://zh.wikipedia.org/wiki/Microsoft_Developer_Network "wikilink")（July 2005）. *[Network Services.](http://msdn.microsoft.com/library/default.asp?url=/library/en-us/winprog/winprog/network_services.asp)* Retrieved August 28, 2005.
13. [Microsoft Developer Network](https://zh.wikipedia.org/wiki/Microsoft_Developer_Network "wikilink")（January 2006）. *[Programming and reusing the browser](http://msdn.microsoft.com/library/default.asp?url=/workshop/browser/prog_browser_node_entry.asp) * Retrieved January 22, 2006.