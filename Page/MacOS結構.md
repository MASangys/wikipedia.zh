[OS X](https://zh.wikipedia.org/wiki/OS_X "wikilink") 是苹果公司 Mac OS
操作系统替代品的产物。 在多次失败的尝试之后，苹果于1994年启动了 Pink 项目（后来和 IBM
进行了合作），这就是 Taligent 和 [Copland](https://zh.wikipedia.org/wiki/Copland_操作系统 "wikilink") ，两年后这一项目取消。
通过收购获得了 [NeXT](../Page/NeXT.md "wikilink") 和其
[NeXTSTEP](../Page/NeXTSTEP.md "wikilink") 操作系统之后，苹果公司开始着手开发他们最新的操作系统
([Mac OS X](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink"))  OS X
首次出现是1999年的 OS X Server 1.0，第一个正式的 OS X 桌面版本发布于2001年3月24日。
从10.5版本开始，OS X 通过了 Open group Unix O3 单一 Unix 规范认证。

2016年6月，苹果公司宣布OS X更名为macOS，以便与苹果其他操作系统如iOS、watchOS和tvOS保持统一的命名风格。

Mac OS X 包含两个主要的部分：以FreeBSD源代码和Mach微核心为基础的
[XNU](../Page/XNU.md "wikilink") 混合内核，并在 XNU 上构建的 Darwin
核心系统；及一个由苹果开发，称为 Aqua 的闭源、独占版权的图形用户界面。
细分的看，Mac OS X 系统可以分成五层结构，每一层有其代表性的技术。

## 开发

### NeXTSTEP

NeXTSTEP 使用基于卡内基梅隆大学开发的 [Mach](../Page/Mach.md "wikilink") 2.5 微内核
[BSD](../Page/BSD.md "wikilink") 4.3 子系统开发的混合内核。 NeXTSTEP
还推出了基于 [DPS](https://zh.wikipedia.org/wiki/Display_PostScript "wikilink") 的窗口系统，通过在显示器和打印机上使用同一种语言以达到更好的所见即所得效果。 NeXT
还包含他们从 StepStone 的收购的面向对象的 Objective-C 的语言和一系列旨在加快软件开发的框架（工具包）。

NeXTSTEP
最初设计运行在跑摩托罗拉68K处理器上，但后来被移植到英特尔的x86，惠普的[PA-RISC和升阳电脑的](https://zh.wikipedia.org/wiki/PA-RISC "wikilink")[SPARC处理器](../Page/SPARC.md "wikilink")。后来，开发工具和框架以OpenStep形式发布，作为一个开发平台，它可以其他操作系统上运行。

### Rhapsody

1997年2月4日，苹果公司收购了NeXT，并着手开发 [Rhapsody](../Page/Rhapsody.md "wikilink")
操作系统。Rhapsody 基于 NeXTSTEP
构建，并将核心系统[移植到了](https://zh.wikipedia.org/wiki/移植_\(軟體\) "wikilink")
[PowerPC](../Page/PowerPC.md "wikilink") 架构上并添加了一个重新设计的用户接口。允许旧 Mac OS
的程序运行在独立的 JAVA 平台上的模拟层称为 Blue Box，而 Objective-C 开发工具和框架被称为 Yellow
Box，Yellow Box
将为 [Windows](https://zh.wikipedia.org/wiki/Windows "wikilink") 独立提供。

Rhapsody 项目的最终结果，以 [OS X Server
1.0](../Page/Mac_OS_X_Server_1.0.md "wikilink") 的形式于1999年发布。

### Mac OS X

[缩略图](https://zh.wikipedia.org/wiki/File:Diagram_of_Mac_OS_X_architecture.svg "fig:缩略图")
在1998年的[苹果全球开发者大会](../Page/苹果全球开发者大会.md "wikilink")(WWDC)上，由于 Macintosh
平台软件开发者对 Rhapsody 上的Yellow Box 和 Blue Box存在诸多不满，苹果公司作出回应，称 Mac OS X
将提供一个不同于 Rhapsody 中现存的、全新的 API。

来自 Macintosh Toolbox 的关键 API 使得 OS X 可以直接运行在 BSD 层上而不需要 Macintosh
模拟层，这个接口被称为 Carbon，是 Mac OS X 中五大主要 API
之一，Carbon 去除了约2000个有问题的 API（系统中 API
总数约8000个）并将之替换为现代操作系统兼容的系统调用\[1\]。

与此同时，苹果宣布将 Mach 部分内核版本号升级到3，BSD
部分的内核将被 [FreeBSD](../Page/FreeBSD.md "wikilink"),
[NetBSD](../Page/NetBSD.md "wikilink") 和
[OpenBSD](../Page/OpenBSD.md "wikilink") 项目所替代.\[2\] 他们还发布了名为 I/O
Kit的新驱动层，用于替代 NeXTSTEP 中的 Driver Kit，针对 Driver Kit
缺少电源管理和热交换特性、自动配置功能匮乏等问题作出了改进。\[3\]

在1999年的 WWDC
上，苹果公司发布了 [Quartz](https://zh.wikipedia.org/wiki/Quartz "wikilink")，一个基于
[便携式文档格式](https://zh.wikipedia.org/wiki/便携式文档格式 "wikilink")
的窗口系统以避免产生（先前 NeXTSTEP 中 DPS 系统中遇到过的）和 Adobe
的版权纠纷和相关费用。

苹果还宣布，Yellow Box 被更名为 [Cocoa](../Page/Cocoa.md "wikilink") 并撤回了 Yellow
Box 将在 Windows 系统上提供的承诺。此次 WWDC 苹果还首次演示了将 Mac OS X
运行在 [HFS+](../Page/HFS+.md "wikilink") 格式的驱动器上 。

第一个面向消费者的 Mac OS X
版本是2000年9月13日发布的[公开预览版](../Page/Mac_OS_X公開測試版.md "wikilink")。

## 结构\[4\]

### 内核和设备服务层

内核和设备服务层包括 XNU 内核、设备驱动和其他底层组件。 XNU是由苹果电脑发展的操作系统内核，被使用于Mac OS
X中。它是Darwin操作系统的一部分，跟随着Darwin一同作为自由及开放源代码软件被发布。其中，XNU 是X is
Not Unix的缩写。 XNU 包括 Mach 和 BSD （libSystem）两个部分，最初版本的 XNU 是 Mach 2.5版本和
BSD 4.3 的混合，随着 OS X 的发布，Mach 版本升级到3，BSD 部分被 FreeBSD 替代。

  - Mach：

Mach
是一个由卡内基梅隆大学开发的计算机操作系统[微内核](https://zh.wikipedia.org/wiki/微内核 "wikilink")，是最早实现微核心操作系统的例子之一，也是许多其它相似的项目的标准。
同UNIX一样，Mach系统也包含了一组丰富的实用工具，并保留了 Unix 中驱动程序的概念用以硬件交互。 在 OS X 中，Mach
内核为系统提供了64位内核和主要驱动支持。

  - BSD：

伯克利软件套件（英语：Berkeley Software Distribution，缩写为 BSD），也被称为伯克利Unix（Berkeley
Unix），是一个操作系统的名称，现在 BSD 也被用于称呼其衍生的各种套件。 BSD
开创了现代计算机的潮流，由于BSD设计出众，代码编写清晰，包括它的文档，BSD
是最早添加库以支持 IP
协议栈和[伯克利套接字的](https://zh.wikipedia.org/wiki/伯克利套接字 "wikilink")
Unix 系统，套接字系统的发明使得计算机系统的网络通信和本地读写一样方便，BSD
。时至今日，BSD仍在学术机构，乃至许多商业或自由产品的高科技实验中，继续被用作试验平台，甚至在嵌入式设备中。
最初的 OS X 的内核 XNU 所使用的是 4.3BSD ，该版本发布于1986年6月。时至今日，OS X 中的许多命令行工具还是来源于
BSD。在 OS X
中，文件系统、网络栈、[IPC](https://zh.wikipedia.org/wiki/进程间通信 "wikilink")、通知机制的支持也来自
BSD。

### 核心系统层（Core OS）

核心系统层的技术和框架是硬件/网络相关的底层服务，这些服务是和内核特性直接相关的。包括以下组件和框架（不完全列举）：

  - 安全措施：（为上层提供支持）包括Gatekeeper、APP 沙盒化、代码签名等。
  - Core OS 框架：包括磁盘管理、硬件加速、OpenCL、系统配置等。
  - Hypervisor：虚拟化支持。

### 核心服务层（Core service）

核心服务层和用户界面的应用程序没有直接联系，但是它们建立在内核和核心系统层上，为APP提供诸如数据处理、字符串控制、封装网络库等核心支持。包括以下组件和框架（不完全列举）：

  - iCloud 存储服务和 CloudKit
  - 社交网络帐号：包括保存在 OS X 内的社交帐户的管理。
  - 文件管理
  - 本地化设置：语言、货币、日期和时间的格式化、编码、字体排版和渲染。
  - 安全认证：包括本地账户、信任的证书、安全传输、密钥串访问等。
  - Time Machine 支持：OS X 的系统备份功能。
  - [Bonjour](../Page/Bonjour.md "wikilink")：局域网下的设备发现服务，是打印机服务和局域网文件共享服务的基础。
  - XML 和 SQLite 支持：系统和 APP 的配置文件使用 XML 格式进行存储，数据使用 SQLite 格式进行保存。
  - [Webkit](https://zh.wikipedia.org/wiki/Webkit "wikilink"): 允许 APP
    进行网页渲染，具有 Web Core 和 JavaScript Core 两个部分。
  - 快速预览：包括在 spotlight 中预览和空格键预览。
  - Store Kit: 为 Mac Appstore 和 iTunes 提供支持，处理相关请求。
  - Core Services Umbrella Framework：包括管理文件打开方式、MIME
    支持、文件元数据管理、SearchKit 搜索支持、词典服务等。
      - [Carbon](https://zh.wikipedia.org/wiki/Carbon_\(API\) "wikilink"):
        Carbon 也是 OS X 上的原生 API，也是 Core Services Umbrella Framework
        的子集\[5\]，和 Cocoa
        不同的是，Carbon是面向过程（Procedural）的编程语言API，也更加接近系统底层，可以使用包括
        C 和 C++ 在内的多种编程语言进行开发，类似 Windows 的 win32 API。Carbon API
        提供了良好的向下兼容性，为开发者快速将旧 MacOS 上的程序移植到 OS X
        提供了便利，但是 Carbon 本身已经处于被苹果不建议使用的状态，也没有64位支持，在 OS X
        10.8 后苹果没有对 Carbon 提供后续更新。

### 媒体层

媒体层负责音频、图像等多媒体文件的处理，2D 和 3D 图像的渲染，各种动画支持。

  - [OpenGL](../Page/OpenGL.md "wikilink")
    ：OpenGL是一个定义了一个跨编程语言、跨平台的应用程序接口（API）的规范，它用于生成二维、三维图像。OpenGL本身与语言和平台无关，它将具体实现交给窗口系统，OS
    X 也提供了OpenGL 的实现。
  - [Metal](../Page/Metal_\(API\).md "wikilink") ：Metal 是一种面向底层的硬件加速
    API，Metal 在单一 API 下提供了类似 OpenGL 和 OpenCL 的功能，旨在为提供和
    Windows上[Direct3D
    12和跨平台的](../Page/Direct3D.md "wikilink")[Vulkan相似的功能和特性](../Page/Vulkan_\(API\).md "wikilink")。
    从10.11开始在 OS X 上提供支持。
  - [Quartz](https://zh.wikipedia.org/wiki/Quartz "wikilink")：Quartz 是
    OS X 上的 UI 绘图层，由 Quartz Compositor（合成视窗系统，管理和合成幕后视窗视频来创建Mac OS
    X用户界面） 和 Quartz 2D（以PDF规范为基础的图形库，用来绘制二维文字和图形，现在被称为 Core
    Graphics）组成。
  - 颜色管理
  - 音视频文件解析：包括QuickTime Kit、Core Media 、Core Video等一系列多媒体处理框架。
  - 字体渲染系统：包括 Cocoa Text 系统和Core Text。

### 图形用户界面（Cocoa 层）

图形用户界面层包括设计和用户交互的 UI、响应用户操作、管理程序的行为。

  - Aqua：Aqua 是承载于 Quartz 上的 GUI 系统和视觉主题，首次发布于2000年。
  - X11（XQuartz）: XQuartz 是 OS X 上
    [X窗口系统的一个实现](https://zh.wikipedia.org/wiki/X窗口系统 "wikilink")，最初和
    OS X 10.2 公开预览版一起提供，从 OS X 10.8 开始不随系统提供。
  - Spotlight：OS X 下的搜索工具。
  - [Cocoa](../Page/Cocoa.md "wikilink"): Cocoa是 Mac OS X
    上原生面向对象的编程环境，建立在 Quartz
    上并由Objective-C语言编写，Cocoa
    程序也主要使用Objective-C语言编写，但是通过桥接技术，也可以使用
    JAVA、Python、Ruby 等语言开发 Cocoa 应用。Cocoa是典型的
    [MVC](../Page/MVC.md "wikilink") 模式。
      - Appkit：直接派生自NeXTSTEP的AppKit的。它包含了程序与图形用户界面交互所需的代码。
      - Foundation 工具包：首先出现在OpenStep中。在Mac OS X中，它是基于Core
        Foundation的。作为通用的面向对象的函数库，Foundation提供了字符串，数值的管理，容器及其枚举，分布式计算，事件循环，以及一些其它的与图形用户界面没有直接关系的功能。
      - [Core Data](../Page/Core_Data.md "wikilink")：Core Data是Mac OS
        X中Cocoa
        API的一部分，它允许按照MVC模型组织APP的数据，并以XML，二进制文件或SQLite数据文件的格式将其序列化。

## 参考文档

## 外部链接

  - [OS X 和 PDF](http://www.prepressure.com/pdf/basics/osx-quartz)
  - [Apple: Mac OS X](http://www.apple.com/macosx/) — OS X 官方页面。
  - [Mac OS X
    (arstechnica.com)](http://arstechnica.com/reviews/os/macosx-10.4.ars/2)
    —  Mac OS X 评测 (10.0 - 10.10)
  - [Mac OS X Internals](http://www.osxbook.com/) The web page
    associated with the book.
  - [OpenGL for OS X](https://developer.apple.com/opengl/) Apple
    developer guide for OpenGL.
  - [Kernel Extension Programming
    Topics](https://developer.apple.com/library/mac/documentation/Darwin/Conceptual/KEXTConcept/KEXTConceptIntro/introduction.html)
    Mac developer library.

[Category:Mac_OS介面](https://zh.wikipedia.org/wiki/Category:Mac_OS介面 "wikilink")

1.

2.
3.

4.

5.