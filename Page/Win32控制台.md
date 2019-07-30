[右](https://zh.wikipedia.org/wiki/File:Windows_PowerShell_1.0_PD.png "fig:右")上使用Win32控制台窗口的[Windows PowerShell](../Page/Windows_PowerShell.md "wikilink")。\]\] [右](https://zh.wikipedia.org/wiki/File:GNU_Midnight_Commander_4.1.36_Windows_Vista.png "fig:右") 在Win32控制台中使用[方框绘制字符](../Page/方框绘制字符.md "wikilink")。\]\] **Win32控制台**（）是[Windows API系统内运行](../Page/Windows_API.md "wikilink")[控制台应用程序](../Page/控制台应用程序.md "wikilink")的的实现。每个Win32控制台有一个[屏幕缓冲区和一个](https://zh.wikipedia.org/wiki/屏幕缓冲区 "wikilink")[输入缓冲区](https://zh.wikipedia.org/wiki/緩衝器 "wikilink")，并可在[視窗](../Page/視窗.md "wikilink")或的屏幕下使用，使用Alt+Enter键可在两者间切换。

Win32控制台通常用于不需要显示图像但可能使用颜色的应用程序。以[命令行界面](../Page/命令行界面.md "wikilink")工具举例：命令行解释器有[Windows命令行提示符](../Page/命令提示字元.md "wikilink")、[Windows PowerShell](../Page/Windows_PowerShell.md "wikilink")；[文件管理器有](https://zh.wikipedia.org/wiki/檔案管理器 "wikilink")和；编辑器有。

## 窗口与全屏模式

Win32控制台应用程序可以在两种模式下运行。

一种模式是文字在一个[視窗](../Page/視窗.md "wikilink")中，用户使用操作系统的[字体光栅化](../Page/字体光栅化.md "wikilink")。这种模式下，应用程序的[人机交互](../Page/人机交互.md "wikilink")接口由窗口系统控制。这类似[X Window系統的应用程序](../Page/X_Window系統.md "wikilink")，例如[xterm](https://zh.wikipedia.org/wiki/xterm "wikilink")。

全屏模式下的Win32控制台使用硬件的文本模式，上传[计算机字体](../Page/计算机字体.md "wikilink")到[显示卡](../Page/显示卡.md "wikilink")。这类似文本。全屏将使用Windows内置的[VGA驱动程序](../Page/视频图形阵列.md "wikilink")，而不会使用任何已安装的显卡驱动程序，除非那个驱动程序为VGA兼容。\[1\]因此，它只支持VGA兼容的文本模式，最大字符[分辨率为](https://zh.wikipedia.org/wiki/显示分辨率列表 "wikilink")80、28行。\[2\]这与其他操作系统中的兼容控制台存在差异（例如），它们可以使用不同的驱动程序显示更高的分辨率。因为已停止支持VGA模式，此模式在[Windows Vista的](../Page/Windows_Vista.md "wikilink")[Windows Display Driver Model](../Page/Windows_Display_Driver_Model.md "wikilink")（WDDM）中已不再使用。\[3\]通过安装Windows XP的显示驱动程序可能规避此问题，\[4\]但[Windows 8及之后的版本只接受WDDM驱动程序](https://zh.wikipedia.org/wiki/Windows_8 "wikilink")。\[5\]

使用组合键可以在这两种模式间切换。在[类Unix系统](../Page/类Unix系统.md "wikilink")系统的文本环境中通常没有这样的功能。

## 细节

输入缓冲区是一个存储事件的队列，事件来自[键盘](https://zh.wikipedia.org/wiki/键盘 "wikilink")、[鼠标](../Page/鼠标.md "wikilink")等。输出缓冲区是一个存储字符以及其属性的网格矩阵。一个控制台窗口可能有多个输出缓冲区，但同一时刻只有一个能处于活动状态（即显示）。

控制台窗口可能会在桌面上显示为一个正常窗口，或在显卡驱动程序允许所选的屏幕尺寸时切换到全屏以使用真正的硬件文本模式。在后台非活动模式时显示模式会被锁定，因此闪烁不会有效。另外，不能使用下划线属性。

程序可以通过高级函数（例如`ReadConsole`和`WriteConsole`）或底层函数（例如`ReadConsoleInput`和`WriteConsoleOutput`）访问Win32控制台。这些高级函数比Win32[图形用户界面](../Page/图形用户界面.md "wikilink")（GUI）受到更多限制。例如，程序不可能更改[调色板](https://zh.wikipedia.org/wiki/调色板 "wikilink")，也不可能使用这些函数修改控制台使用的[字体](../Page/字型.md "wikilink")。\[6\]

Win32控制台程序经常被误认为是[MS-DOS](../Page/MS-DOS.md "wikilink")应用程序，在[Windows 9x系列上尤为常见](../Page/Windows_9x.md "wikilink")。但是，Win32控制台应用程序只是本地Win32应用程序的一种特殊形式。32位元Windows可以通过使用（NTVDM）在Win32控制台中运行MS-DOS程序。

早期版本的Windows中没有对控制台的原生支持，这是因为[Windows 3.1及更早版本的Windows只是MS](https://zh.wikipedia.org/wiki/Windows_3.1 "wikilink")-DOS的一个图形界面，在早期Windows版本上运行的大多数文本程序实质上是在窗口中运行的MS-DOS程序。为简化将应用程序移植到Windows的任务，早期版本的[Visual C++是随在常规窗口中实现基本控制台的库](../Page/Microsoft_Visual_C++.md "wikilink")一起提供。面向Borland C++类似的库被称为EasyWin。

## 实现

### Windows 9x

与[Windows NT相比](../Page/Windows_NT.md "wikilink")，[Windows 9x支持较差](../Page/Windows_9x.md "wikilink")，因为它的控制台窗口运行在中，并因此对Win32控制台应用程序的键盘输入是直接由运行DOS虚拟机的**conagent.exe**挂钩（Hook）截取。`conagent.exe`然后调用**Vcond** （一个[VxD](../Page/VxD.md "wikilink")）**，Vcond**然后必须将键盘输入传递给系统虚拟机，并最终到达Win32控制台应用程序。除了性能问题，这种实现还有一个问题，DOS虚拟机不能看到Win32控制台应用程序本应看到的本地驱动器，这可能引致混乱。

在Windows 9x上，屏幕缓冲区反映了的结构，每个字符用两个[字节](../Page/字节.md "wikilink")存储：字符代码一个字节，属性一个字节（字符必须在中，属性表示高强度背景/不闪烁）。如果使用真实的VGA文本模式，操作速度将大大加快。

### Windows NT和Windows CE

Windows NT家族的操作系统上是由[客户端/服务器运行时子系统负责Win](https://zh.wikipedia.org/wiki/客户端/服务器运行时子系统 "wikilink")32控制台窗口，\[7\]但从[Windows Vista开始](../Page/Windows_Vista.md "wikilink")，它已将大部分工作卸任至单独的[可执行文件](https://zh.wikipedia.org/wiki/可执行文件 "wikilink")“conhost.exe”。

在Windows NT和Windows CE上，屏幕缓冲区为每个字符使用四个字节：字符代码两个字节，属性两个字节。字符使用[Unicode](https://zh.wikipedia.org/wiki/Unicode "wikilink")（[UCS-2](https://zh.wikipedia.org/wiki/UTF-16 "wikilink")）的16位子集编码。\[8\]为了[向后兼容](https://zh.wikipedia.org/wiki/向后兼容 "wikilink")，控制台API有两个版本：Unicode和非Unicode。非Unicode版本API可以使用[代码页](../Page/代码页.md "wikilink")切换以扩展字符显示的范围（但仅在该控制台窗口使用扩展可用代码范围的[TrueType](../Page/TrueType.md "wikilink")字体时）。[UTF-8](../Page/UTF-8.md "wikilink")甚至可以“代码页65001”使用（仅显示完整Unicode的UCS-2子集）。

## 参见

  - [命令行界面](../Page/命令行界面.md "wikilink")

  - [殼層](../Page/殼層.md "wikilink")（Shell）

  -
  -
  -
## 注释

## 外部链接

  - [MSDN控制台API参考资料](http://msdn2.microsoft.com/library/ms682087.aspx)

[Category:文本用户界面](https://zh.wikipedia.org/wiki/Category:文本用户界面 "wikilink") [Category:Windows管理](https://zh.wikipedia.org/wiki/Category:Windows管理 "wikilink")

1.
2.
3.
4.
5.
6.  A hack is available: [SetConsolePalette](http://www.catch22.net/sites/default/source/files/setconsoleinfo.c)
7.
8.