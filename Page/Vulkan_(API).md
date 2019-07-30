**Vulkan**是一個低开销、跨平台的[二维、三维图形与计算的](../Page/计算机图形.md "wikilink")[應用程式接口](https://zh.wikipedia.org/wiki/應用程式接口 "wikilink")（API），\[1\]最早由[科納斯組織在](https://zh.wikipedia.org/wiki/科納斯組織 "wikilink")2015年[游戏开发者大会](../Page/游戏开发者大会.md "wikilink")（GDC）上發表。\[2\]\[3\]与[OpenGL](../Page/OpenGL.md "wikilink")类似，Vulkan針對全平台即時3D图形程式（如[電子遊戲和](https://zh.wikipedia.org/wiki/電子遊戲 "wikilink")[交互媒体](https://zh.wikipedia.org/wiki/互動式多媒體 "wikilink")）而設計，并提供高效能与更均衡的[CPU与](../Page/中央处理器.md "wikilink")[GPU占用](../Page/圖形處理器.md "wikilink")，這也是[Direct3D](../Page/Direct3D.md "wikilink") 12和[AMD的](https://zh.wikipedia.org/wiki/AMD "wikilink")[Mantle的目標](../Page/Mantle_\(API\).md "wikilink")。与Direct3D（12版之前）和OpenGL的其他主要区别是，Vulkan是一个底层API，而且能执行并行任务。除此之外，Vulkan还能更好地分配[多个CPU核心的使用](../Page/多核心處理器.md "wikilink")。\[4\]

科納斯最先把Vulkan API稱為「次世代[OpenGL](../Page/OpenGL.md "wikilink")行動」（next generation OpenGL initiative）或「**glNext**」，但在正式宣佈Vulkan之後這些名字就沒有再使用了。\[5\]Vulkan基于[Mantle构建](../Page/Mantle_\(API\).md "wikilink")，AMD将其Mantle API捐赠给科納斯組織，给予该组织开发底层API的基础，使其像OpenGL一样成为行业标准。\[6\]\[7\]\[8\]\[9\]\[10\]\[11\]\[12\]

## 特性

[缩略图](https://zh.wikipedia.org/wiki/File:Division_of_labor_cpu_and_gpu.svg "fig:缩略图")，而CPU执行其他任务。\]\] Vulkan旨在提供更低的CPU开销与更直接的GPU控制，其理念大致与Direct3D 12和Mantle类似。\[13\]

以下是Vulkan相对于上一代API的优势：\[14\]

  - Vulkan API适用于从高性能电脑到移动低功耗设备的显示卡（OpenGL具有名为[OpenGL ES的移动设备API子集](../Page/OpenGL_ES.md "wikilink")，它仍是支持Vulkan设备的备选API）。
  - 相比于Direct3D 12，Vulkan与前身OpenGL类似，受多种操作系统支持。Vulkan已经能在[Windows 7](https://zh.wikipedia.org/wiki/Windows_7 "wikilink")、[Windows 8](https://zh.wikipedia.org/wiki/Windows_8 "wikilink")、[Windows 10](../Page/Windows_10.md "wikilink")、[Tizen](../Page/Tizen.md "wikilink")、[Linux](../Page/Linux.md "wikilink")与[Android](../Page/Android.md "wikilink")上运行（[iOS和](https://zh.wikipedia.org/wiki/iOS "wikilink")[macOS有第三方支持](https://zh.wikipedia.org/wiki/macOS "wikilink")\[15\]）。
  - 通过批量处理（Batching）减少CPU负载，使CPU可以执行更多其他的计算或渲染任务。\[16\]\[17\]
  - 在多核心CPU上，Vulkan能对核心与线程进行优化。Direct3D 11与OpenGL 4最初为单核心CPU设计，尽管后来出现了针对多核心CPU优化的扩展，不过与Vulkan相比，优化仍不是很好。\[18\]
  - 减少了[驱动程序](../Page/驱动程序.md "wikilink")的开销与维护工作。OpenGL使用高级着色语言[GLSL](../Page/GLSL.md "wikilink")编写[着色器](../Page/着色器.md "wikilink")，不同的驱动在程序运行时需要执行自身的GLSL[编译器](../Page/編譯器.md "wikilink")，将程序的着色器转换为GPU可执行的机器代码。而Vulkan驱动将着色器语言预先转化为（Standard Portable Intermediate Representation）的中间二进制格式，其行为类似于[Direct3D](../Page/Direct3D.md "wikilink")的[HLSL着色器](https://zh.wikipedia.org/wiki/HLSL "wikilink")。通过着色器预编译，应用程序加载速度更快，并且3D场景可以使用更多种着色器。Vulkan驱动只需对GPU进行优化并生成代码，这使得驱动程序更容易维护，驱动程序包更小（目前GPU供应商仍需在驱动程序中提供OpenGL与OpenCL的支持）。\[19\]
  - 计算与图形处理的统一管理，因此Vulkan无需与单独的计算API配合使用。

[英伟达](../Page/英伟达.md "wikilink")表示，OpenGL的复杂度和维护难度比Vulkan低很多，在多数情况下也能提供理想的整体性能，现阶段OpenGL仍是个很好的选择。\[20\]

### 计划中的功能

科纳斯在[SIGGRAPH](../Page/SIGGRAPH.md "wikilink") 2016上宣布，Vulkan将提供类似于Direct3D 12的多卡互联功能。\[21\]通过Vulkan，不同型号的显卡也能协同工作，而无需[NVIDIA SLI或](../Page/NVIDIA_SLI.md "wikilink")[AMD Crossfire的支持](../Page/AMD_CrossFire.md "wikilink")。Vulkan多卡互联功能允许API在多个不同的显卡之间智能分配负载，例如，CPU上的集成显卡与高端独立显卡协同工作，能够略微提升显示性能。\[22\]

在OpenCL 2.2规范发布时，科纳斯宣布[OpenCL](../Page/OpenCL.md "wikilink")将在未来融入Vulkan。\[23\]\[24\]

## 历史

2014年6月，科纳斯组织开始了“次世代OpenGL”图形API的计划，并在[Valve公司举行项目启动会议](../Page/威尔乌.md "wikilink")。\[25\]在SIGGRAPH 2014上，项目公之于世。\[26\]2015年2月19日，Vulkan的商标在[美国专利及商标局](../Page/美国专利及商标局.md "wikilink")提交。\[27\]

2015年早些时候，（由Valve资助）开发并展示了一款支持Vulkan API的[Intel HD Graphics](../Page/Intel_HD_Graphics.md "wikilink") 4000系列Linux驱动程序，不过当时的Mesa开源驱动并不完全兼容OpenGL 4.0。\[28\]\[29\]

2016年2月16日，科纳斯组织发布了Vulkan 1.0版规范与开源[软件开发工具包](../Page/软件开发工具包.md "wikilink")（SDK）。\[30\]

## 支持Vulkan的软件

### 电子游戏

参见：

  - 《》——首个支持Vulkan渲染的游戏\[31\]
  - 《[Dota 2](../Page/Dota_2.md "wikilink")》——2016年5月开始支持\[32\]
  - 《[毁灭战士](../Page/毁灭战士_\(2016年游戏\).md "wikilink")》——2016年7月开始支持\[33\]
  - vkQuake——《[雷神之锤](../Page/雷神之锤_\(游戏\).md "wikilink")》的Vulkan[移植版](https://zh.wikipedia.org/wiki/移植_\(軟體\) "wikilink")，于2016年7月发布\[34\]\[35\]

### 游戏引擎

  - [Source 2](../Page/Source引擎.md "wikilink")——2015年3月由Valve公司发布\[36\]\[37\]

  - Serious Engine 4——2016年2月，[Croteam](../Page/Croteam.md "wikilink")宣布支持Vulkan API\[38\]

  - [虚幻引擎](../Page/虚幻引擎.md "wikilink")4——2016年2月Epic Games在[三星Galaxy S7](../Page/三星Galaxy_S7.md "wikilink") Unpack发布会上声明提供Vulkan支持\[39\]\[40\]

  - ——2016年4月，开发者社区宣称将提供Vulkan支持\[41\]\[42\]

  - ——2016年5月[id Software宣布运行于id](https://zh.wikipedia.org/wiki/id_Software "wikilink") Tech 6引擎的《毁灭战士》将支持Vulkan\[43\]

  - [CryEngine](../Page/CryENGINE.md "wikilink")——[Crytek](../Page/Crytek.md "wikilink")计划提供支持\[44\]

  - Xenko——2016年7月加入支持\[45\]

  - Intrinsic——在GitHub上托管的开源跨平台游戏引擎\[46\]

  - [Unity](../Page/Unity_\(游戏引擎\).md "wikilink")——2016年12月，表示其[Unity游戏引擎](../Page/Unity_\(游戏引擎\).md "wikilink")5.6版将支持Vulkan API；\[47\]2017年3月，Unity 5.6提供正式支持\[48\]

  - [Roblox](https://zh.wikipedia.org/wiki/Roblox "wikilink")——自2017年3月起，Roblox支持Vulkan渲染

### 开发工具

  - 3.6，在Windows与Linux平台上支持Vulkan\[49\]

  - ，作为[GTK+](https://zh.wikipedia.org/wiki/GTK+ "wikilink") 3.90的一个组件于2017年3月发布\[50\]

### 操作系统组件

Vulkan[视窗系统接口](../Page/視窗系統.md "wikilink")（Window System Interface，WSI）的作用类似于[OpenGL ES的](../Page/OpenGL_ES.md "wikilink")。\[51\]EGL能使OpenGL ES程序跟原生视窗系统相通，并控制、[缓冲器绑定与](https://zh.wikipedia.org/wiki/緩衝器 "wikilink")[渲染](../Page/渲染.md "wikilink")同步等。

## 兼容性

初版Vulkan规范指出，Vulkan能在支持OpenGL ES 3.1或OpenGL 4.x及更高版本的显卡上运行。\[52\]但Vulkan API本身依赖于新版显卡驱动程序，而且并非所有符合Vulkan规范的显卡都能收到厂商提供的驱动程序更新。

2016年8月22日，[Google](../Page/Google.md "wikilink")发布的[Android Nougat](../Page/Android_Nougat.md "wikilink")（Android 7.x）提供对Vulkan的支持。\[53\]

苹果公司没有对iOS和macOS提供官方Vulkan支持，而Molten公司开发的MoltenVK运行于苹果[Metal API](../Page/Metal_\(API\).md "wikilink")，提供Vulkan第三方支持。\[54\]

## 参见

  - [OpenGL](../Page/OpenGL.md "wikilink")，科納斯組織的另一个图形API
  - [OpenCL](../Page/OpenCL.md "wikilink")，科納斯組織的一个[异构计算框架](https://zh.wikipedia.org/wiki/异构计算 "wikilink")
  - [Mantle](../Page/Mantle_\(API\).md "wikilink")，AMD的底层图形与计算API，Vulkan的前身
  - [Direct3D](../Page/Direct3D.md "wikilink")，Windows和Xbox专有的图形API
  - [Metal](../Page/Metal_\(API\).md "wikilink")，iOS和macOS的一个底层图形与计算API

## 參考資料

## 外部链接

  - [Vulkan 1.0规范](https://www.khronos.org/registry/vulkan/specs/1.0/html/vkspec.html)
  - [Vulkan硬件支持数据库](http://vulkan.gpuinfo.org/)

[Category:應用程式接口](https://zh.wikipedia.org/wiki/Category:應用程式接口 "wikilink") [Category:跨平台軟體](https://zh.wikipedia.org/wiki/Category:跨平台軟體 "wikilink") [Category:繪圖函式庫](https://zh.wikipedia.org/wiki/Category:繪圖函式庫 "wikilink") [Category:電子遊戲研發](https://zh.wikipedia.org/wiki/Category:電子遊戲研發 "wikilink") [Category:虛擬現實](https://zh.wikipedia.org/wiki/Category:虛擬現實 "wikilink") [Category:2015年软件](https://zh.wikipedia.org/wiki/Category:2015年软件 "wikilink")

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

15.  Run Vulkan on iOS and OS X|newspaper=Molten|accessdate=2017-02-18|language=en-US}}

16.
17.

18.

19.

20.

21.

22.

23.

24.

25.

26.
27.

28.

29.

30.
31.

32.

33.

34.

35.

36.

37.

38.

39.

40.

41.

42.

43.

44.

45.

46.

47.

48.

49.

50.

51.

52.  p. 19 "Vulkan Status"

53.

54.