> 本文内容由[Quartz Compositor](https://zh.wikipedia.org/wiki/Quartz_Compositor)转换而来。


**Quartz Compositor**是在[Mac OS X中负责界面的](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")[视窗系统](https://zh.wikipedia.org/wiki/视窗系统 "wikilink")。在Mac上，Quartz Compositor可以在处理程序列表中被看到的，它叫做**Window Manager**，或是在最近的版本改为是**WindowServer**。

Quartz Compositor主要执行两种的功能：

  - 维护和合成视窗
  - 事件传递

在Mac OS X下，每个视窗都以位置（包含深度）、透明度、反锯齿信息的方式储蓄。拥有该视窗的应用程序绘制视窗內容到适当的图形，使用任何有支持的绘图模式（例如[Quartz 2D](../Page/Quartz_2D.md "wikilink")，[QuickDraw](https://zh.wikipedia.org/wiki/QuickDraw "wikilink")，[OpenGL](../Page/OpenGL.md "wikilink")）。Quartz Compositor会得到每个视窗的图形，使用关联的信息來把他们合成在一起來建立显示画面。

这样允许Mac OS X视窗系統是"*不可知论的绘图模式*"（agnostic in terms of a drawing model，与实现细节无关的绘图模型\[1\]），且建立令人印象深刻的视觉效果，例如视窗最小化到[Dock時的](https://zh.wikipedia.org/wiki/Dock_\(电脑\) "wikilink")*神奇效果*。

Quartz Compositor也有视窗管理員的一面，它有一個可以从I/O Kit接收事件（键盘按鍵，鼠标点击等等）的[事件贮列](https://zh.wikipedia.org/wiki/事件贮列 "wikilink")。Quartz Compositor再从贮列中取出事件，决定那一个进程拥有该事件产生的视窗，然后把事件传递到该行程的贮列。

## Quartz Extreme

从[Mac OS X v10.2开始](../Page/Mac_OS_X_v10.2.md "wikilink")，Quartz Compositor被填充为**Quartz Extreme**，**Quartz Extreme**使用[OpenGL](../Page/OpenGL.md "wikilink")把他們表示为3D內容中的[材质贴图來更快速地绘制荧幕上的显示內容](https://zh.wikipedia.org/wiki/材质 "wikilink")。这样容许利用3D硬件加速来更快速地合成荧幕影响。

要允许Quartz Extreme，[麦金塔必須拥有](https://zh.wikipedia.org/wiki/麦金塔 "wikilink")[AGP](../Page/AGP.md "wikilink")显卡，支持任意材质尺寸和最小16MB的[显存](../Page/显存.md "wikilink")空间。事实上上就是指任何[NVIDIA](https://zh.wikipedia.org/wiki/NVIDIA "wikilink")，[ATI Radeon或是更好的显卡](https://zh.wikipedia.org/wiki/ATI_Radeon "wikilink")。

## 参考

  - [Quartz (绘图层)](https://zh.wikipedia.org/wiki/Quartz_\(绘图层\) "wikilink")
  - [X视窗系统](https://zh.wikipedia.org/wiki/X视窗系统 "wikilink")
  - [Quartz Composer](https://zh.wikipedia.org/wiki/Quartz_Composer "wikilink")

## 外部链接

  - [图形和视窗环境](http://developer.apple.com/documentation/MacOSX/Conceptual/SystemOverview/SystemArchitecture/chapter_3_section_4.html) - 取自Apple's Mac OS X文件
  - [Quartz服务参考资料](https://web.archive.org/web/20080514091049/http://developer.apple.com/documentation/GraphicsImaging/Reference/Quartz_Services_Ref/)

[Category:MacOS](https://zh.wikipedia.org/wiki/Category:MacOS "wikilink") [Category:视窗系统](https://zh.wikipedia.org/wiki/Category:视窗系统 "wikilink")

1.  <http://programmers.stackexchange.com/questions/28484/what-is-language-agnosticism-and-why-is-it-called-that-way>