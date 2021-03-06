**MiniGUI**是一款面向嵌入式系统的高级窗口系统（Windowing System）和图形用户界面（Graphical User Interface，GUI）支持系统，由魏永明先生于 1998 年底开始开发。2002 年，魏永明先生创建北京飞漫软件技术有限公司，为 MiniGUI 提供商业技术支持，同时也继续提供开源版本，飞漫软件是中国地区为开源社区贡献代码最多的软件企业。最后一个采用 GPL 授权的 MiniGUI 版本是 1.6.10，从 MiniGUI 2.0.4 开始 MiniGUI 被重写并增加商业授权。

经过十几年的发展， MiniGUI 已经支持Linux/uClinux、eCos、 uC/OS-II、VxWorks、ThreadX、Nucleus 、pSOS、OSE 等操作系统和数十种 SoC 芯片，已验证的硬件平台包括 ARM-based SoCs 、MIPS based SoCs 、IA-based SoCs 、PowerPC、M68K(DragonBall /ColdFire)、Intel x86 等，广泛应用于通讯、医疗、工控、电力、机顶盒、多媒体终端等领域。

使用 MiniGUI 成功开发产品的企业有华为、中兴通讯 等。这些用户广泛分部在中国大陆、台湾、新加坡、韩国、美国、德国、意大利、印度、以色列等国家和地区。

在 MiniGUI 的基础上，飞漫软件研发了 mDolphin (基于开源的浏览器核心 WebKit 的嵌入式浏览器)、mPeer (为使用 Java 技术的嵌入式设备提供高效的 J2SE AWT/Swing 实现支持)，并且开发了基于 Eclipse CDT 的可视化集成开发环境，为开发人员提供所见即所得(WYSIWYG)的界面设计环境。

2010年，飞漫软件把最新版的 MiniGUI、mDolphin、mPeer、mStudio 等系统整合在一起，推出了合璧操作系统(HybridOS)解决方案。

截止2010年9月，MiniGUI 的最新版本是3.0.10， MiniGUI 将作为合璧操作系统(HybridOS)的一个组成部分而不断演进。

## 特点优势

MiniGUI 为嵌入式 Linux 系统提供了完整的图形系统支持，是全球针对嵌入式 Linux仅有的两个商用嵌入式GUI系统之一。MiniGUI为嵌入式Linux 系统提供了完整的多进程支持；可以 MiniGUI-Processes、MiniGUI-Threads或者MiniGUI-Standalone 三种运行模式运行。

MiniGUI 的主要技术特性描述如下：

  - 硬件适配性：
      - 可运行于各种含有 MMU(内存管理单元)的 32 位处理器架构之上，如 ix386、ARM、MIPS、PowerPC 等。
      - 支持低端显示设备(比如单色 LCD)和高端显示设备(8 位色及以上显示设备)。通过 MiniGUI 的图形抽象层及图形引擎技术，还可以支持特殊的显示设备，比如 YUV 显示设备。对显示设备分辨率无最大和最小限制。
      - 副屏支持。当系统中有多个视频设备时，可将一个作为 MiniGUI 的主屏，实现完整的多窗口系统；而其它设备作为副屏，在其上通过 MiniGUI 的图形接口来实现文字渲染、图形显示等功能。
      - 可支持各种输入设备，如 PC 键盘、PC 鼠标、小键盘(Keypad)、触摸屏、遥控器等等。
      - 多种键盘布局的支持。MiniGUI 除支持常见的美式 PC 键盘布局之外，还支持法语、德语等西欧语种的键 盘布局。

<!-- end list -->

  - 资源消耗:
      - MiniGUI 的静态存储随配置选项的不同而不同，最少需占用 1MB 静态存储空间。
      - MiniGUI 启动后，初始占用 1MB 动态存储空间。建议系统内存为 8MB 以上。

<!-- end list -->

  - 操作系统适配性:
      - 支持 Linux 操作系统(非 uClinux 操作系统)，可以 MiniGUI-Processes、MiniGUI-Threads 或者 MiniGUI-Standalone 三种运行模式运行。
      - 内建资源支持。可以将 MiniGUI 所使用的资源，诸如位图、图标和字体等编译到函数库中，该特性可提高 MiniGUI 的初始化速度，并且非常适合无文件系统支持的实时嵌入式操作系统。
      - 针对嵌入式系统的特殊支持，包括一般性的 I/O 流操作，字节序相关函数等。

<!-- end list -->

  - 窗口子系统特性：
      - 完备的多窗口机制和消息传递机制。使用 MiniGUI-Threads 运行模式时，可在不同线程中创建主窗口，并支持线程间的消息传递；使用 MiniGUI-Processes 运行模式时，支持完整的多进程窗口系统。
      - 对话框和消息框支持。
      - 提供常用的控件类，包括静态文本框、按钮、单行和多行编辑框、列表框、组合框、菜单按钮、进度条、滑块、属性页、工具栏、树型控件、月历控件、旋钮控件、酷工具栏、网格控件、动画控件等。
      - 其它 GUI 元素，包括菜单、加速键、插入符、定时器等。

<!-- end list -->

  - 图形子系统特性：
      - 提供有增强 GDI 函数，包括光栅操作、复杂区域处理、椭圆、圆弧、多边形以及区域填充等函数。在提供有兼容于 C99 规范的数学库平台上，还提供有高级二维绘图函数，可设置线宽、线型以及填充模式等。通过 MiniGUI 的图形抽象层及图形引擎技术，也可以让上述高级 GDI 接口在低端显示屏上实现。
      - 各种流行图像文件的支持，包括 Windows BMP、GIF、JPEG、PNG等(JPEG 及 PNG的支持通过 libjpeg 及 libpng 函数库提供)。
      - Windows 的资源文件支持，如位图、图标、光标等。
      - 多字符集和多字体支持，目前支持 ISO8859-1～ISO8859-15、GB2312、GBK、GB18030、BIG5、EUC-JP、Shift-JIS、EUC-KR、UNICODE(UTF-8、UTF-16 编码)等字符集，支持等宽点阵字体、变宽点阵字体、Qt/Embedded 使用的嵌入式字体 QPF、TrueType矢量字体(对 TrueType 的支持通过 freetype 1.3 函数库提供)。
      - 输入法支持，用于提供各种可能的输入形式；内建有适合 PC 平台的汉字(GB2312)输入法支持，包括内码、全拼、智能拼音、五笔及自然码等。

MiniGUI 的技术优势 和其它针对嵌入式产品的图形系统相比，MiniGUI 在对系统的需求上具有如下几大优势：

  - 可伸缩性强。MiniGUI 丰富的功能和可配置特性，使得它既可运行于 CPU 主频只有 60MHz 的低端产品中，亦可运行于高端嵌入式设备中，并使用 MiniGUI 的高级控件风格及皮肤界面等技术，创建华丽的用户界面。MiniGUI 的跨操作系统特性，使得 MiniGUI 可运行在最简单的嵌入式操作系统之上，如 uC/OS-II，也可以运行在具有现代操作系统特性的嵌入式操作系统之上，如 Linux，而且 MiniGUI 为嵌入式 Linux 系统提供了完整的多窗口图形环境。这些特性，使得 MiniGUI 具有非常强的可伸缩性。可伸缩性是 MiniGUI 从设计之初就考虑且不断完善而来的。这个特性使得 MiniGUI 可应用于简单的行业终端，也可应用于复杂的消费类电子产品。
  - 轻型、占用资源少。MiniGUI 是一个定位于轻量级的嵌入式图形库，对系统资源的需求完全考虑到了嵌入式设备的硬件情况，如 MiniGUI 库所占的空间最小可以裁剪到 500K 左右，对目前的嵌入式设备来说，满足这一条件是绰绰有余的。此外，测试结果表明，MiniGUI 能够在 CPU 主频为 30 MHz，仅有 4M RAM 的系统上正常运行(使用 uClinux 操作系统)，这是其它针对嵌入式产品的图形系统所无法达到的。
  - 高性能、高可靠性。MiniGUI 良好的体系结构及优化的图形接口，可确保最快的图形绘制速度。在设计之初，就充分考虑到了实时嵌入式系统的特点，针对多窗口环境下的图形绘制开展了大量的研究及开发，优化了 MiniGUI 的图形绘制性能及资源占用。MiniGUI 在大量实际系统中的应用，尤其在工业控制系统的应用，证明 MiniGUI 具有非常好的性能。从 1999 年 MiniGUI 的第一个版本发布以来，就有许多产品和项目使用 MiniGUI，MiniGUI 也不断从这些产品或者项目当中获得发展动力和新的技术需求，逐渐提高了自身的可靠性和健壮性。有关 MiniGUI 的最新成功案例，您可以访问飞漫公司网站的典型案例部分：http://www.minigui.com/
  - 可配置性。为满足嵌入式系统各种各样的需求，必须要求 GUI 系统是可配置的。和 Linux 内核类似，MiniGUI 也实现了大量的编译配置选项，通过这些选项可指定 MiniGUI 库中包括哪些功能而同时不包括哪些功能。大体说来，可以在如下几个方面对 MiniGUI 进行定制配置：
      - 指定 MiniGUI 要运行的硬件平台。
      - 指定 MiniGUI 要运行的操作系统。
      - 指定生成基于线程的 MiniGUI-Threads 运行模式还是基于进程的 MiniGUI-Processes 运行模式，或者只是最简单的 MiniGUI-Standalone 运行模式。
      - 指定需要支持的 GAL 引擎和 IAL 引擎，以及引擎相关选项。
      - 指定需要支持的字体类型。
      - 指定需要支持的字符集。
      - 指定需要支持的图像文件格式。
      - 指定需要支持的控件类。
      - 指定控件和窗口的整体风格，可以通过指定不同的渲染器完成。这些配置选项大大增强了 MiniGUI 的灵活性，对用户来讲，可针对具体的应用需求量体裁衣，开发最适合产品需求的应用软件。

总之，将现代窗口和图形技术带入到嵌入式设备的MiniGUI，是一个非常适合于实时嵌入式设备的高效、可靠、可定制、小巧灵活的图形用户界面支持系统，其主要优点可以总结如下：

  - 支持多种嵌入式操作系统，具备优秀的可移植性；
  - 可伸缩的系统架构，易于扩展；
  - 功能丰富，可灵活剪裁；
  - 小体积高性能间的最佳平衡；
  - 广泛的应用领域。

MiniGUI V3.0 在以前版本的基础上新增了如下新特性：

  - 主窗口双缓冲区(Double Buffering Main Window) 当 MiniGUI 3.0 的主窗口具有双缓冲区时，可以在自定义缓冲区中获得整个主窗口的渲染结果。在此基础上，可以利用高级 2D 图形接口或者 3D 图形接口获得主窗口的各种特殊显示效果，如推拉切换、翻页切换、卷曲效果等等。
  - 外观渲染器(Look and Feel Renderer)支持。MiniGUI V3.0 改变了以往只支持三种控件风格的方式，引入了渲染器(Look and Feel)这一全新的模式。渲染器是定义如何绘制窗口元素的渲染器，是在MiniGUI V2.0.X的基础上继续完善的。窗口元素包括边框、标题栏、标题栏按钮、滚动条、选定项目、无效项目、高亮项目、突出项目、三维对象等；窗口元素的外观属性，包括窗口元素的颜色、尺寸、字体等信息；窗口元素渲染器是对窗口元素进行定制大小、颜色、图形、字体，便于用户设计个性化的外观显示风格。用户可以指定某个主窗口或某个控件使用特定的渲染器，也可定制非客户区渲染器、窗口元素的尺寸、颜色、字体、图标，同时增强资源管理功能，从而获得更加华丽的图形界面。MiniGUI实现了几种默认整体显示风格：Classic 、Flat、Fashion 和Skin。用户可以在配置 MiniGUI 时指定相应的选项来将 MiniGUI 编译成特定的一种显示风格。
      - Classic: 这种风格的界面是标准的Window 95风格界面，也是最广泛使用的风格了。
      - Fashion: 此种风格的界面，采用 MiniGUI 3.0 组件 mGPlus 提供的颜色渐变填充技术，因此，可获得非常炫丽的界面效果；
      - Flat: 此种风格的窗口界面，线条清晰，简洁，因此适用于单色或者灰度显示屏。因为绘制简单，因此该渲染器占用资源最少，运行速度最快；
      - Skin: 上面三种外观渲染器基本上都是由代码绘制出来的，具有小巧灵活的特点。但是，在嵌入式应用领域，设备的差别非常大。有些设备，已经具备了非常高的运算性能。在这种情况下，可以考虑使用皮肤外观渲染器来美化界面。皮肤外观渲染器需要一整套和界面相关的图片，因此需要占用一些存储资源。皮肤外观渲染器的最大的特点是允许用户定制界面，用户可以使用自己设计的图片替换系统原有的图片，展现在用户面前的就将是你自己设计的界面效果。
  - 双向文本(BIDI Text)的显示与输入。大家知道，除了大家熟知的从左向右书写的文字(如英语、汉语等)之外，还有许多语言采用从右向左的书写习惯，如阿拉伯文和希伯来文等。为了支持这些语言，MiniGUI 3.0中增加了对这两种语言所属字符集的处理，并增加了阿拉伯和希伯来键盘布局的支持，从而实现了对双向文本的输入输出处理。阿拉伯文以及希伯来文的显示。
  - 不规则窗口。MiniGUI V3.0实现了不规则窗口与控件，可满足用户对窗口外观各种不同的需求。不规则窗口通过一个Region数据结构来表示可见区域，或者通过8位MYBITMAP中的透明值形成不可见区域。
  - 字体。在 MiniGUI 3.0 中，飞漫软件发明了一种新的 UNICODE 字体文件格式，称为“UPF”字体。这种字体的最大特点，是便于在多进程环境下使用，从而极大地节约了内存的使用。同时，飞漫软件增强了VBF字体格式，将VBF 字体升级到了3.0，扩大了其能适用的字符集范围，以便支持阿拉伯文等语言文字的显示。
  - 其他增强。MiniGUI 3.0实现了桌面的可定制。通过桌面的外部编程接口，用户可以在桌面放置图标并响应桌面事件，实现类似Windows桌面的界面效果。除此之外，MiniGUI 3.0 还增强了透明控件的实现，使之效率更高，且不依赖于控件的内部实现代码。MiniGUI 3.0 还提供独立的滚动条控件，提供统一的虚拟帧缓冲区程序支持等等。 另外最新的MiniGUI V3.0新增加了两个新的组件：mGUtils和mGPlus，把字体、位图、图标、光标等资源进行统一管理，资源的内嵌和非内嵌方式并不影响模块的组成，由此抽象出系统资源管理模块。

## 软件架构

MiniGUI 由如下几个模块组成： MiniGUI软件架构图

  - 图形抽象层(Graphics Abstraction Layer，GAL)。图形抽象层将来自不同操作系统或设备的图形接口进行抽象，为 MiniGUI 上层提供统一的图形接口。在图形抽象层内，包含有针对 Linux FB 设备、eCos LCD 设备等的软件组成部分。这些软件组成部分通过调用底层设备的接口来实现具体的图形抽象层操作，如打开设备、设置分辨率及显示模式、关闭设备等。将这些用于适配图形抽象层接口的软件组成部分称为“引擎(engine)”，其概念和操作系统中的设备驱动程序类似。
  - 输入抽象层(Input Abstraction Layer，IAL)。和 GAL 类似，输入抽象层将 MiniGUI 涉及的所有输入设备，如键盘(keyboard)、小键盘(keypad)、鼠标(mouse)、触摸屏(touch screen)等抽象了出来，为上层提供一致的接口。要支持不同的键盘、触摸屏或者鼠标接口，则通过为 IAL 编写不同的输入引擎实现。MiniGUI 通过 IAL 及其输入引擎，提供对 Linux 控制台(键盘及鼠标)、触摸屏、遥控器、小键盘等输入设备的支持。
  - 图形设备接口(Graphics Device Interfaces，GDI)。该模块基于图形抽象层为上层应用程序提供图形相关的接口，如绘制曲线、输出文本、填充矩形等等。图形设备接口中含包含其他比较独立的子模块，如字体字符集(font and charset)支持、图像(image)支持等。
  - 消息处理模块(Messaging Module)。该模块在输入抽象层基础上，实现了 MiniGUI 的消息处理机制，为上层提供了完备的消息管理接口。众所周知，几乎所有的GUI 系统本质上都是事件驱动的，系统自身的运行，以及GUI 应用程序的运行，都依赖于消息处理模块。
  - 多窗口处理模块(Windowing Module)和控件(Control 或 Widget)。基于图形设备接口和消息处理模块，MiniGUI 实现了多窗口处理模块。该模块为上层应用程序提供了创建主窗口和控件的基本接口，并负责维护控件类。控件类是用来实现控件代码重用的重要概念，利用控件类(control class)，可以创建属于某个控件类的多个控件实例(instance)，从而让这些控件实例使用同一个控件类的代码，这样，就实现了类似 C++ 那样的类和实例概念，从而可以最大程度上重复利用已有代码，并提高软件的可维护性。MiniGUI 的控件模块实现了常见的 GUI 控件，如静态框、按钮、编辑框、列表框、下拉框等等。
  - 外观支持(Look and Feel)。这个模块是 MiniGUI V3.0 提供给上层应用程序的接口，可用来定制 MiniGUI 窗口、控件的绘制。在 MiniGUI V3.0 之前的版本中，对主窗口和控件的定制能力，还没有被抽离出来形成独立的模块，但仍然可以通过配置选项让 MiniGUI 的主窗口、控件具有三种显示风格，分别是：类似 PC 的三维风格(PC3D)、平板风格(FLAT)、流行风格(FASHION)。在 MiniGUI 3.0 中，主窗口和控件的外观可完全由应用程序自行定制，在创建主窗口或者控件时，指定外观渲染器(renderer)的名称，就可以让主窗口或者控件具有各自不同的外观。

在 MiniGUI 核心(Core)接口之上，还为应用程序提供若干组件，这些组件分别为应用程序提供某些特殊的功能特性：

  - mGi 是 MiniGUI 的输入法组件，该组件目前提供了软键盘输入法和手写输入法框架，并提供给用户管理输入法的容器，通过这个容器，用户还可以添加自定义的输入法。
  - mGp 是针对 MiniGUI 应用程序的一个打印组件，该组件使用户的 MiniGUI 程序具有打印输出功能，可以将 MiniGUI 程序中的位图或文字输出到打印机。
  - mG3d 是一个为 MiniGUI 的应用程序提供 3D 接口的组件，通过这些接口，用户可以给自己的应用程序添加三维图像、文字渲染、场景渲染等效果，从而可以具有三维效果的人机界面。
  - mGUtils 组件为用户提供了一些常用的对话框模板，有了这些模板，用户就不用为一些常用的功能编写重复代码了。本组件提供的功能模板有：普通文件对话框、颜色设置对话框、字体设置对话框、信息设置对话框等。
  - mGPlus 组件是对 MiniGUI 图形绘制接口的一个扩充和增强，主要提供对二维矢量图形和高级图形算法的支持，如路径、渐变填充和颜色组合等。
  - mGEff 组件提供通常的页面特效支持。

## 运行模式

和 Linux 这样的类 UNIX 操作系统相比，一般意义上的传统嵌入式操作系统具有一些特殊性。举例而言，诸如 uClinux、uC/OS-II、eCos 等操作系统，通常运行在没有 MMU(内存管理单元，用于提供虚拟内存支持)的 CPU 上；这时，往往就没有进程的概念，而只有线程或者任务的概念，这样，MiniGUI 的运行环境也就大相径庭。因此，为了适合不同的操作系统环境，可将 MiniGUI 配置成三种不同的运行模式：

  - MiniGUI-Threads。运行在 MiniGUI-Threads 上的程序可以在不同的线程中建立多个窗口，但所有的窗口在一个进程或者地址空间中运行。这种运行模式主要用来支持大多数传统意义上的嵌入式操作系统，比如 VxWorks、ThreadX、Nucleus、OSE、pSOS、uC/OS-II、eCos等等。当然，在 Linux 和 uClinux 上，MiniGUI 也能以 MiniGUI-Threads 的模式运行。
  - MiniGUI-Processes。和 MiniGUI-Threads相反，MiniGUI-Processes 上的每个程序是单独的进程，每个进程也可以建立多个窗口，并且实现了多进程窗口系统。MiniGUI-Processes 适合于具有完整 UNIX 特性的嵌入式操作系统，比如嵌入式 Linux。该运行模式在 MiniGUI V2.0 中提供。
  - MiniGUI-Standalone。这种运行模式下，MiniGUI 可以以独立任务的方式运行，既不需要多线程也不需要多进程的支持，这种运行模式适合功能单一的应用场合。比如在一些使用 uClinux 的嵌入式产品中，因为各种原因而缺少线程支持，这时，就可以使用 MiniGUI-Standalone 来开发应用软件。

一般而言，MiniGUI-Standalone 模式的适应面最广，可以支持几乎所有的操作系统(目前只用来提供对 Linux/uClinux 操作系统的支持)；MiniGUI-Threads 模式的适用面次之，可运行在支持多任务的实时嵌入式操作系统，或者具备完整 UNIX 特性的普通操作系统；MiniGUI-Processes 模式的适用面较小，它仅适合于具备完整 UNIX 特性的嵌入式操作系统，比如 Linux。但不论采用哪种运行模式，MiniGUI 为上层应用软件提供了最大程度上的一致性；只有少数几个涉及初始化的接口在不同运行模式上有所不同。

## 使用

  - 使用 MiniGUI 的部分项目案例

<!-- end list -->

  - 大唐移动（现联芯科技）推出采用 MiniGUI 和 Fhas 应用开发平台作为图形显示系统和终端应用开发平台的 TD-SCDMA 3G 手机终端软件标准平台 Arena；
  - 台湾英华达电子技术有限公司选用 MiniGUI 开发出了支持 Skype 功能的可视 IP 电话；
  - 作为美国风河系统公司全球合作伙伴为 VxWorks 提供全面的图形解决方案；
  - AMD 公司在其新发布的 Argon PMP 参考设计方案中采用了 MiniGUI 和 Fhas 作为图形环境；
  - 长虹电器股份有限公司采用 MiniGUI 和嵌入式浏览器 mSpider 进行 DTV 和 IPTV 产品的开发；
  - Intel 采用 MiniGUI 开发家庭数字多媒体网关产品；
  - 联芯科技（大唐移动）采用 MiniGUI 作为商用 TD-SCDMA 手机的 MMI 方案；
  - 华为选择 MiniGUI 作为平台产品，用于机顶盒、手持终端等产品领域；
  - [HappyLinux联想](https://zh.wikipedia.org/wiki/HappyLinux "wikilink") HappyLinux 1.0发行版采用 MiniGUI 开发其安装程序。

### MiniGUI 相关组件及产品

  - [mStudio](https://zh.wikipedia.org/wiki/mStudio "wikilink") 的中文全称为“飞漫可视化软件集成开发平台”，是面向 MiniGUI 3.0 的一款集成开发环境。mStudio 基于 Eclipse 集成开发环境开发，并为用户提供了所见即所得的界面设计工具，可自动生成和维护 MiniGUI 3.0 的应用程序框架，进行代码的编辑、编译、运行、调试，从而加快 MiniGUI 3.0 应用程序的开发，降低使用 MiniGUI 的门槛。
  - [mDolphin](https://zh.wikipedia.org/wiki/mDolphin "wikilink") 是飞漫软件基于开源的浏览器核心 WebKit 开发的嵌入式浏览器产品，并使用 MiniGUI 作为其底层图形系统。mDolphin 的最新版本为 3.0。
  - [mGi](https://zh.wikipedia.org/wiki/mGi "wikilink") 是飞漫软件为 MiniGUI 1.6/2.0/3.0 用户提供的一个输入法组件，该组件目前提供了软键盘输入法和手写输入法框架，并提供给用户管理输入法的容器，通过这个容器，用户还可以添加自定义的输入法。此外，对于软键盘输入法，用户可以自定义显示的键盘位图，并可添加不同的输入翻译方式（自带中文全拼输入法）。
  - [mGp](https://zh.wikipedia.org/wiki/mGp "wikilink") 是飞漫软件针对 MiniGUI 1.6/2.0/3.0 应用程序的一个打印组件，该组件使用户的 MiniGUI 程序具有打印输出功能，可以将 MiniGUI 程序中的位图或文字输出到打印机去。mGp 现已提供对爱普生和惠普等多种打印机的支持。
  - [mG3d](https://zh.wikipedia.org/wiki/mG3d "wikilink") 是一个为 MiniGUI 1.6/2.0/3.0 应用程序提供简单三维（3D）接口的组件，通过这些接口，用户可以给自己的应用程序添加三维图像、场景渲染等效果。
  - [mGUtils](https://zh.wikipedia.org/wiki/mGUtils "wikilink") 组件是在原 MiniGUI 2.0/1.6 的 MiniGUI 扩展库基础上发展而来。这个组件为应用程序提供了一些常见的窗口及对话框框实现，以简化应用程序代码。
  - [mGPlus](https://zh.wikipedia.org/wiki/mGPlus "wikilink") 组件是对 MiniGUI 3.0 图形绘制接口的一个扩充和增强，主要提供对二维矢量图形和高级图形算法的支持，如路径、渐变填充和颜色组合等。mGPlus 用来实现 MiniGUI 的 Fashion 外观渲染器，也用于 mDolphin 浏览器实现高级的图形功能，如 HTML 5 中的 Canvas 标记、SVG 支持等。
  - [mGEff](https://zh.wikipedia.org/wiki/mGEff "wikilink") 组件提供常规的特效支持。

## 版本歷史

  - MiniGUI 3.0 是最新 MiniGUI 版本，该版本提供了众多高级功能特性，将帮助您开发具有更好用户体验的嵌入式产品。
  - MiniGUI 2.0 为嵌入式 Linux 系统提供了完整的图形系统支持，是全球针对嵌入式 Linux仅有的两个商用嵌入式 GUI 系统之一。
  - MiniGUI 1.6 是为各种流行的嵌入式实时操作系统（如 VxWorks、eCos、Nucleus、ThreadX、OSE 等）提供嵌入式图形系统支持的 MiniGUI 版本。

## 发展

MiniGUI 4.0 正在设计开发当中。

## MiniGUI hello world

MiniGUI [hello world以C撰寫](../Page/Hello_World.md "wikilink")，這支程式含有視窗，標題為"Hello, World".

``` c
#include <stdio.h>
#include <minigui/common.h>
#include <minigui/minigui.h>
#include <minigui/gdi.h>
#include <minigui/window.h>

int MiniGUIMain (int argc, const char* argv[])
{
    MSG Msg;
    HWND hMainWnd;
    MAINWINCREATE CreateInfo;

#ifdef _MGRM_PROCESSES
    JoinLayer(NAME_DEF_LAYER , "helloworld" , 0 , 0);
#endif
    CreateInfo.dwStyle =
        WS_VISIBLE | WS_BORDER | WS_CAPTION;
    CreateInfo.dwExStyle = WS_EX_AUTOSECONDARYDC;
    CreateInfo.spCaption = "Hello, World";
    CreateInfo.hMenu = 0;
    CreateInfo.hCursor = GetSystemCursor(0);
    CreateInfo.hIcon = 0;
    CreateInfo.MainWindowProc = DefaultMainWinProc;
    CreateInfo.lx = 0;
    CreateInfo.ty = 0;
    CreateInfo.rx = g_rcScr.right;
    CreateInfo.by = g_rcScr.bottom;
    CreateInfo.iBkColor = COLOR_lightwhite;
    CreateInfo.dwAddData = 0;
    CreateInfo.hHosting = HWND_DESKTOP;

    hMainWnd = CreateMainWindow(&CreateInfo);

    if (hMainWnd == HWND_INVALID)
        return -1;

    while (GetMessage(&Msg, hMainWnd)) {
        TranslateMessage(&Msg);
        DispatchMessage(&Msg);
    }

    MainWindowThreadCleanup (hMainWnd);
    return 0;
}
```

## 参见

  - [嵌入式图形界面](../Page/嵌入式图形界面.md "wikilink")

## 参考来源

1.
2.
3.
## 外部资料

  - [MiniGUI开源版本主页](http://www.minigui.org)
  - [MiniGUI商业版本主页](http://www.minigui.com)
  - [Wiki for MiniGUI](https://web.archive.org/web/20100117202608/http://wiki.minigui.com/bin/view/Products/WebHome)

[Category:用户图形接口](https://zh.wikipedia.org/wiki/Category:用户图形接口 "wikilink") [Category:部件工具箱](https://zh.wikipedia.org/wiki/Category:部件工具箱 "wikilink") [Category:软件开发](https://zh.wikipedia.org/wiki/Category:软件开发 "wikilink") [Category:MiniGUI](https://zh.wikipedia.org/wiki/Category:MiniGUI "wikilink")