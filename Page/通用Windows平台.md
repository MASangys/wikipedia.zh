**通用Windows平台**（**Universal Windows
Platform**，简称**UWP**）是[微软公司建立并在](../Page/微软.md "wikilink")[Windows
10中首次引入的一个同性質應用程式架构平台](https://zh.wikipedia.org/wiki/Windows_10 "wikilink")。此软件平台的目的是帮助发展[Metro样式的應用程式](https://zh.wikipedia.org/wiki/Metro-style_apps "wikilink")，便于軟體可以在[Windows
10和](https://zh.wikipedia.org/wiki/Windows_10 "wikilink")[Windows 10
Mobile上執行且无需重新編寫](https://zh.wikipedia.org/wiki/Windows_10行動版 "wikilink")。它支援使用[C++](../Page/C++.md "wikilink")、[C\#](../Page/C♯.md "wikilink")、[VB.NET或](../Page/Visual_Basic_.NET.md "wikilink")[XAML开发的](../Page/XAML.md "wikilink")[Windows應用程式](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")。API采用C++实现，并支持C++、VB.NET、C\#和[JavaScript](../Page/JavaScript.md "wikilink")。\[1\]UWP在[Windows
Server 2012和](../Page/Windows_Server_2012.md "wikilink")[Windows
8中作为一个](https://zh.wikipedia.org/wiki/Windows_8 "wikilink")[Windows
Runtime平台的扩展被首次引入](../Page/Windows_Runtime.md "wikilink")，允许开发者创建可潜在运行在多种设备类型上的应用程序。\[2\]

## 兼容性

UWP是Windows 10和Windows 10
Mobile的一部分。UWP應用程式不能在早期的[Windows版本上執行](../Page/微軟作業系統列表.md "wikilink")。

应用程序能使用[Visual Studio
2015进行此平台的原生开发](../Page/Microsoft_Visual_Studio.md "wikilink")。而面向[Windows
8.1](../Page/Windows_8.1.md "wikilink")、[Windows Phone
8.1及其两者](../Page/Windows_Phone_8.1.md "wikilink")（通用8.1）的旧版Metro應用程式需要一些修改才能迁移到UWP。\[3\]\[4\]

在[2015
Build期间](../Page/Build_\(开发者大会\).md "wikilink")，微软宣布了一个UWP“桥梁”集，允许[Android和](../Page/Android.md "wikilink")[iOS软件被移植到Windows](https://zh.wikipedia.org/wiki/iOS "wikilink")
10 Mobile。\[5\] Windows Bridge for
Android（代号“Astoria”）将允许使用Java或C++的Android應用程式被移植到Windows
10
Mobile和发布到[Windows應用程式商店](https://zh.wikipedia.org/wiki/Windows商店 "wikilink")。Windows开发者平台的技术总监Kevin
Gallo解释说，该层包含一些限制：Google
Mobile服务和某些核心API将不可用，存在“深度集成到后台服务”的應用程式（如[通信软件](https://zh.wikipedia.org/wiki/即时通信 "wikilink")）也不能在此环境下良好运行。\[6\]\[7\]Windows
Bridge for
iOS（代号“Islandwood”）是一个[开源中间件工具包](../Page/开源软件.md "wikilink")，允许使用[Objective-C开发的](../Page/Objective-C.md "wikilink")[iOS软件使用](https://zh.wikipedia.org/wiki/iOS "wikilink")[Visual
Studio
2015将](../Page/Microsoft_Visual_Studio.md "wikilink")[Xcode代码转换为Visual](../Page/Xcode.md "wikilink")
Studio项目以移植到Windows 10 Mobile。\[8\]\[9\]\[10\]Windows Bridge for
iOS的一个早期版本已使用[MIT许可证在](../Page/MIT許可證.md "wikilink")2015年8月6日发布为一个开源软件，而Android版本仍在内部测试。\[11\]

2016年2月，微软宣布已经收购了位于旧金山的开发软件的公司。\[12\]此次收购后不久，微软宣布将放弃Android
bridge项目，并计划支持在Windows 10上运行Android應用程式。他们的关注重点将主要集中在iOS
bridge。\[13\]

## 开发

UWP是[Windows
Runtime的一个扩展](../Page/Windows_Runtime.md "wikilink")。采用UWP创建的“通用Windows应用程序”在其清单（manifest）构建中不再采用对特定操作系统的写法，相反，它们采用“通用Windows平台桥梁”针对一个或多个设备族群，例如[个人电脑](../Page/个人电脑.md "wikilink")、[智能手机](../Page/智能手机.md "wikilink")、[平板电脑和](../Page/平板電腦.md "wikilink")[Xbox
One](../Page/Xbox_One.md "wikilink")。这些扩展允许应用程序自动利用当前运行设备中可用的功能。\[14\]通用應用程式即可以运行在智能手机上，也可以运行在平板电脑上，并为两者提供适当的体验。如果手机连接到一台桌面电脑或者一个合适的[扩展坞](../Page/扩展坞.md "wikilink")，其上运行的通用應用程式还可能呈现为平板电脑上的体验。\[15\]

## 反响

### 作为游戏平台

UWP的游戏开发会受到技术限制，游戏可能无法做到桌面应用程序的所有功能，包括不兼容多显卡，无法禁用垂直同步，不能支持游戏模组，及不能使用游戏辅助软件如、[Steam游戏内界面和按键管理器等](../Page/Steam.md "wikilink")。\[16\][Epic
Games创办人Tim](../Page/Epic_Games.md "wikilink")
Sweeney批评UWP是一个“[围墙花园](../Page/封閉平臺.md "wikilink")”，默认情况下，UWP软件只能通过[Windows應用程式商店安装](https://zh.wikipedia.org/wiki/Windows商店 "wikilink")，必须更改系统设置才能启用外部應用程式的安装（[Android系统有类似的设计](../Page/Android.md "wikilink")）。此外，某些系统功能只能在UWP中调用，不能在基于[Win32的软件中使用](../Page/Windows_API.md "wikilink")，这包括大多数PC电子游戏。Sweeny表示这些是“微软在以有史以来最激进的动作”，试图将PC转变为一个封闭平台，并且这些举动注定将使[Steam等第三方商店处于劣势](../Page/Steam.md "wikilink")，微软在削减了用户自由安装全功能PC软件的自由，破坏开发者及发行商与其客户之间保持直接关系的权利。因此，Sweeney称[最终用户应该可以直接下载UWP软件并以桌面软件相同的方式安装它](https://zh.wikipedia.org/wiki/最终用户 "wikilink")。\[17\]

在Build 2016期间，微软Xbox部门负责人Phil
Spencer宣布公司正在尝试解决一些问题，以改进UWP对PC游戏的能力。其指出微软正在“致力于达到或超过全屏游戏的性能预期，以及提供包括覆盖层、模组等附加功能的支持。”，同时也宣布提供禁用[垂直同步的支持](https://zh.wikipedia.org/wiki/垂直同步 "wikilink")，以及和技术的支持，这将在[Windows
10的未来更新中添加](https://zh.wikipedia.org/wiki/Windows_10 "wikilink")。\[18\]

## 参考资料

## 外部链接

  - [Guide to UWindows Runtimeniversal Windows Platform (UWP)
    apps](https://msdn.microsoft.com/en-us/library/windows/apps/dn894631.aspx)

[Category:.NET](https://zh.wikipedia.org/wiki/Category:.NET "wikilink")
[Category:Microsoft_Windows](https://zh.wikipedia.org/wiki/Category:Microsoft_Windows "wikilink")
[Category:操作系统技术](https://zh.wikipedia.org/wiki/Category:操作系统技术 "wikilink")

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