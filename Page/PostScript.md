**PostScript**（**PS**）是主要用于电子产业和[桌面出版](../Page/桌面出版.md "wikilink")领域的一种[页面描述语言](../Page/页面描述语言.md "wikilink")和[编程语言](../Page/编程语言.md "wikilink")。

## 历史

PostScript语言的思想起源于[John Warnock](https://zh.wikipedia.org/wiki/John_Warnock "wikilink")1976年在著名的[计算机图形](../Page/计算机图形.md "wikilink")公司[Evans and Sutherland时的想法](https://zh.wikipedia.org/wiki/Evans_and_Sutherland "wikilink")。当时[John Gaffney正在开发一个解释](https://zh.wikipedia.org/wiki/John_Gaffney "wikilink")[纽约](../Page/纽约.md "wikilink")港大型三维图形数据库的解释器。Gaffney设计了非常类似于[Forth编程语言的](https://zh.wikipedia.org/wiki/Forth编程语言 "wikilink")**Design System**语言来处理图形。

1978年Evans and Sutherland要求Warnock离开[旧金山湾到](https://zh.wikipedia.org/wiki/旧金山湾 "wikilink")[犹他州](../Page/犹他州.md "wikilink")总部去，但是他并不想搬家到那里去。于是他后来加入了[Xerox PARC与](https://zh.wikipedia.org/wiki/Xerox_PARC "wikilink")[Martin Newell一起工作](https://zh.wikipedia.org/wiki/Martin_Newell_\(computer_graphics\) "wikilink")。他们重写了Design System开发出了用于[VLSI设计和字体与图形打印研究的](https://zh.wikipedia.org/wiki/VLSI "wikilink")**JaM**（John and Martin）系统。这项工作后来发展成为一个名为[InterPress的扩展系统](https://zh.wikipedia.org/wiki/InterPress "wikilink")。

在1982年12月Warnock和[Chuck Geschke一起离开创建了](https://zh.wikipedia.org/wiki/Chuck_Geschke "wikilink")[Adobe Systems公司](https://zh.wikipedia.org/wiki/Adobe_Systems "wikilink")。他们开发了一种类似于InterPress名为PostScript的更简单的语言，这种产品在1984年推向市场。大概在这个时候，[Steve Jobs参观了他们的工作](https://zh.wikipedia.org/wiki/Steve_Jobs "wikilink")，他敦促他们改进PostScript作为驱动[激光打印机](../Page/激光打印机.md "wikilink")的语言，它添加到[Canon打印机诞生了](../Page/佳能.md "wikilink")[LaserWriter](https://zh.wikipedia.org/wiki/LaserWriter "wikilink")。

1985年3月，[Apple](https://zh.wikipedia.org/wiki/Apple_Computer "wikilink") LaserWriter是第一款带有PostScript的打印机，这也带来了二十世纪八十年代中期的[桌面印刷革命](https://zh.wikipedia.org/wiki/桌面印刷 "wikilink")。它的技术优点和广泛应用使得PostScript成为打印应用领域影像输出的一个选择。直到二十世纪九十年代，PostScript语言[解释器](https://zh.wikipedia.org/wiki/解释器 "wikilink")，有时称作[Raster image processor](https://zh.wikipedia.org/wiki/光柵圖像處理器 "wikilink")，曾经一度成为[激光打印机](../Page/激光打印机.md "wikilink")的一个普通组成部分。

随着使用电子方式发布文档最终版本成为事实上的标准，PostScript就在这个领域不断地被它的后续版本Portable Document Format也就是[PDF所超越](https://zh.wikipedia.org/wiki/Portable_Document_Format "wikilink")，到了2001年更少有打印机支持PostScript，这主要是由于来自于非PostScript的廉价喷墨打印机的不断加剧的竞争（PostScript解释器将大幅度地增加打印机成本），以及在计算机上使用软件渲染PostScript图像的新方法可以用于任何的打印机，PDF就是这种方法之一。然而使用PostScript的激光打印机仍然可以大幅度地减少计算机在打印、从计算机到打印机传输渲染出的PostScript图像方面的工作量。

PostScript经历了两次主要的更新。第一版称为PostScript Level 1在1984年发布。PostScript Level 2在1991年发布，它有几项增强的特性：提升了速度和可靠性；支持RIP内的分割；支持解压缩，这就意味着如[JPEG](../Page/JPEG.md "wikilink")这样的图像能够直接在PostScript程序中进行处理；支持复合字体以及缓存重用内容的Form机制。PostScript Level 3在1997年年底出现，许多旧版操作符变成了基于字典的新版本，它提供了更好的颜色处理以及新的允许在程序内进行压缩和解压的过滤器、程序chunking以及先进的错误处理。

## 在打印中的应用

### PostScript之前

在PostScript出现之前，打印机设计成将字符——通常是[ASCII](../Page/ASCII.md "wikilink")字符——打印出来。有许多技术用于这项工作，但是大多数都有一个共性也就是[字符](../Page/字符.md "wikilink")在物理上很难更改，就像在[打字机键上的金属或者光学平板那样的条带](https://zh.wikipedia.org/wiki/打字机 "wikilink")。

随着[点阵打印机的流行发生的一些变化](https://zh.wikipedia.org/wiki/点阵打印机 "wikilink")，在这些系统上字符是用一系列的点“画”出来的，这些点在打印机中定义为[字体](../Page/字体.md "wikilink")表。随着他们越来越复杂，点阵打印机开始包含有几种内置的字体，用户可以选择所用字体，有一些型号甚至允许用户下载自己的字符图形到打印机中。

点阵打印机也带有打印[光栅图形的能力](https://zh.wikipedia.org/wiki/光栅图形 "wikilink")，图形在计算机上进行解释并且使用一系列的[转义序列将它们按照一系列的点发送到打印机](https://zh.wikipedia.org/wiki/转义序列 "wikilink")。这种[打印机控制语言随着打印机的不同而不同](https://zh.wikipedia.org/wiki/打印机控制语言 "wikilink")，这就要求程序员创建许许多多的[驱动程序](../Page/驱动程序.md "wikilink")。

真正的图形打印是名为[绘图仪的特殊的设备所完成的](https://zh.wikipedia.org/wiki/绘图仪 "wikilink")，绘图仪的确是共用一种常见的语言——[HPGL](https://zh.wikipedia.org/wiki/HPGL "wikilink")，但是除了打印图形之外并没有多大用途。另外，它们通常价格昂贵，速度较慢，所以使用很少。

### PostScript打印

PostScript将打印机和绘图仪的优点组合在一起从而打破了传统。同绘图仪一样，PostScript具有高质量的曲线处理能力并且控制语言简单能够用于不同品牌的打印机；同点阵打印机一样，PostScript提供了一个生成文本和光栅图形的简单方法。与它们二者不同的是，PostScript能够将所有这些不同的内容放在同一页上，这样就比以前的打印机或者绘图仪提供了更具灵活性。

PostScript已经超出了普通的打印机控制语言，并成为一个完善的编程语言。许多应用程序能够将文档传送到一个PostScript程序中，它的输出结果就是原始文档。这个程序能够发送到打印机中的[解释器上得到打印文档](https://zh.wikipedia.org/wiki/解释器 "wikilink")，或者发送到另外一个应用程序在屏幕上显示文档。由于文档程序与目的地无关，所以就被称为“与设备无关”。

PostScrip也非常擅长于实现[栅格化](../Page/栅格化.md "wikilink")；所有的东西，甚至是文本都可以用直线和三阶[贝塞尔曲线表示](https://zh.wikipedia.org/wiki/贝塞尔曲线 "wikilink")，贝塞尔曲线以前只有在[CAD应用中才能见到](https://zh.wikipedia.org/wiki/CAD "wikilink")，它允许任意的缩放、旋转或者其他变换。当解释PostScript程序的时候，解释器将这些指令转换成所需的点形成输出内容。

### 字体处理

  - 參見：*[PostScript字体](https://zh.wikipedia.org/wiki/PostScript字体 "wikilink")*

同PostScript一样复杂的是它的[字体](../Page/字体.md "wikilink")处理。丰富的字体系统使用PS[基本图形将字符画成](https://zh.wikipedia.org/wiki/基本图形 "wikilink")[艺术线条](https://zh.wikipedia.org/wiki/艺术线条 "wikilink")，艺术线条能够在任意的[分辨率](../Page/分辨率.md "wikilink")生成。尽管这听起来是很直观的概念，但是需要考虑许许多多的[拓扑图形问题](https://zh.wikipedia.org/wiki/拓扑 "wikilink")。

其中一个问题是字体在小尺寸的时候实际上并不是进行线性缩放，如果那样的话字体的某些部分就会不成比例地过大或者过小从而字体看起来不太正确。PostScript使用与字形曲线保存在一起的*隐含信息*（Hints）避免了这个问题的发生，它们基本上是水平或者竖直方向条带上一些附加信息，用以标识光栅图像生成器需要维护的字体中的重要特征。甚至在很低的分辨率的时候字体也是非常好看；通称为Adobe的**Type 1 Font**。Type 1是一个高效的仅仅用来保存字形信息的简化PS系统，而不是一个完善的语言，PDF也是一种类似的情况。Adobe向那些打算在自己的字体中添加隐含信息的厂商征收高额的Type 1技术授权使用费用。那些不愿意使用隐含信息或者不愿支付费用的用户只能使用**Type 3 Font**。Type 3字体允许使用除了标准的隐含信息之外的PostScript语言的所有复杂特性，后来又添加了一些其他的不同特点。

许多人认为授权的费用过于高昂，并且Adobe也不愿采用更具吸引力的费率，这样就导致了Apple在1991年左右开发了他们自己的系统[TrueType](../Page/TrueType.md "wikilink")。紧随着TrueType的发布，Adobe就公开了Type 1字体的规范。如Altsys [Fontographer](https://zh.wikipedia.org/wiki/Fontographer "wikilink")（1995年1月被[Macromedia](../Page/Macromedia.md "wikilink")收购，自从2005年5月归[FontLab所有](https://zh.wikipedia.org/wiki/FontLab "wikilink")）这样的零售系统加入了创建Type 1字体的能力。从那时开始，就出现了许多免费Type 1字体，例如[TeX](../Page/TeX.md "wikilink")排版系统中所用字体就是这种格式。

在二十世纪九十年代早期还有其他几种基于字形的字体系统，如[Bitstream和](https://zh.wikipedia.org/wiki/Bitstream_Inc. "wikilink")[METAFONT](../Page/METAFONT.md "wikilink")开发的系统，但是它们都不包括通用的打印解决方案，所以并没有得到广泛应用。

在二十世纪九十年代，Adobe和微软公司一同开发[OpenType](../Page/OpenType.md "wikilink")，它基本上是Type 1和TrueType格式功能的超集。当打印到PostScript输出设备的时候，OpenType字体中不需要的部分就会被丢弃，驱动程序送到设备的内容与传送TrueType或者Type 1字体完全一样，根据OpenType字体中的外形不同而有所不同。

### 其他实现

在二十世纪八十年代，Adobe利润的绝大部分都来自于用于打印机的PostScript实现（称为[光栅图像处理器或者](https://zh.wikipedia.org/wiki/光栅图像处理器 "wikilink")*RIP*）的高昂授权费用。RIP相当昂贵，并且通常只在少数一些特定的硬件上运行。二十世纪八十年代中期随着许多基于[RISC的新平台出现](../Page/精简指令集.md "wikilink")，Adobe经常是在支持新机器方面落后一步。

因此第三方的PostScript实现变得很普遍，尤其是在授权费用是关键症结的低端打印机或者新硬件激发更快速度要求的高端排版设备领域更加常用。一方面，微软公司和苹果公司联合起来努力将Adobe从独霸打印机的位置拉下马，微软公司将它购买的[TrueImage](https://zh.wikipedia.org/wiki/TrueImage "wikilink") PostScript解释器授权给苹果公司，苹果公司将它的新字体格式[TrueType](../Page/TrueType.md "wikilink")授权给微软公司。（苹果公司终止了与Adobe保持一致以及它的打印机使用Adobe公司真正的PostScript的策略，但是TrueType在微软视窗和Macintosh上都成为了标准的[outline font](https://zh.wikipedia.org/wiki/outline_font "wikilink")。）一些第三方的PostScript的克隆产品仍在广泛使用，尤其是在作为惠普黑白激光打印机标准[Phoenix Page的中仍在广泛使用](https://zh.wikipedia.org/wiki/Phoenix_Page "wikilink")。

许多基本的廉价激光打印机不支持PostScript，它们的驱动程序根本不使用PostScript。当需要在这样的打印机上使用PostScript时可以使用名为[Ghostscript](../Page/Ghostscript.md "wikilink")的PostScript解释器，这是一个[自由软件](../Page/自由软件.md "wikilink")。Ghostscript使用主计算机的[CPU进行光栅化处理](https://zh.wikipedia.org/wiki/CPU "wikilink")、将结果作为一个大幅的位图发送到计算机这样一种方式在非PostScript打印机上打印PostScript文档。Ghostscript也可以在计算机显示器上预览PostScript文档以及将PostScript转换成如[TIFF](../Page/TIFF.md "wikilink")和[PNG](../Page/PNG.md "wikilink")这样的[光栅图形或者如](https://zh.wikipedia.org/wiki/光栅 "wikilink")[PDF这样的矢量格式](https://zh.wikipedia.org/wiki/Portable_Document_Format "wikilink")。

分辨率非常高的设备，如[imagesetter或者](https://zh.wikipedia.org/wiki/imagesetter "wikilink")[CTP](https://zh.wikipedia.org/wiki/Computer_to_plate "wikilink") [platesetter超过](https://zh.wikipedia.org/wiki/platesetter "wikilink")2500dpi的分辨率也很常见，仍然需要带有大量内存和磁盘空间的外部光栅图像处理器。许多称为数字印刷的高端激光打印机系统也使用外部光栅图像处理器将容易升级的计算机系统与特定的打印硬件分开。如[EFI](http://www.efi.com)和[Xitron](http://www.xitron.com)这样的公司专业从事这样的光栅图像处理器软件开发。

## 作为显示系统的应用

随着PostScript成为打印输出的事实标准，很自然人们也希望将它用来描述[屏幕输出](https://zh.wikipedia.org/wiki/屏幕输出 "wikilink")。二十世纪八十年代后期[CPU性能的快速提升以及人们对于视窗系统兴趣的逐渐增加](https://zh.wikipedia.org/wiki/CPU "wikilink")，促使人们多次试图开发使用PostScript作为主要的显示技术的显示系统。

使用PS作为显示系统有许多优点，其中之一就是在其他系统上用户不仅仅要为屏幕显示保留位图，而且要为打印机保留Type 1字体，在显示器上使用PS只需要保留一套从而可以弥补这个缺点。另外一个优点是就是允许“dumbling down”打印机。当LaserWriter发布的时候它是苹果公司产品线中功能最为强大也是最为昂贵的机器，这样它就需要相当大的处理能力和内存以在合理的时间内生成高达300[dpi分辨率的页面](https://zh.wikipedia.org/wiki/Dots_per_inch "wikilink")。与之形成对比的是，使用[NeXT](../Page/NeXT.md "wikilink")平台的400dpi打印机根本都没有CPU，相反它是使用计算机的CPU进行页面生成，然后将生成的页面[位图](../Page/位图.md "wikilink")传送到打印机。

但是使用PostScript作为视窗系统的一个更为主要的优点是他让用户使用一组图形处理子程序就可以开发[桌面印刷和其他大量使用图形的应用程序](https://zh.wikipedia.org/wiki/桌面印刷 "wikilink")，在视窗上进行描画的程序同样也可以不经任何转换直接在打印机上描画。传统系统上的桌面印刷应用程序要求程序员在各个平台的图形系统上构建[图形用户界面](../Page/图形用户界面.md "wikilink")（如[Macintosh上的](https://zh.wikipedia.org/wiki/Apple_Macintosh "wikilink")[QuickDraw和](https://zh.wikipedia.org/wiki/QuickDraw "wikilink")[微软视窗上的](https://zh.wikipedia.org/wiki/微软视窗 "wikilink")[图形设备接口](https://zh.wikipedia.org/wiki/图形设备接口 "wikilink")（GDI））编辑器，然后编写另外的程序将图形转换成正确的PostScript语言用于打印。这样的工作通常就会消耗项目的大部分编程工作，并且是程序错误的主要来源。

使用PostScript作为显示技术的两个主要的例子是[Display PostScript](https://zh.wikipedia.org/wiki/Display_PostScript "wikilink")（*DPS*）和[NeWS](https://zh.wikipedia.org/wiki/NeWS "wikilink")，它们两者戏剧性地在在哪里应用显示逻辑发生了分歧，在DPS中view系统留给了OS去处理，然而在NeWS上整个显示系统是用用PS写成的并且在一个单一的复杂解释器中运行。

## PostScript语言

PostScript是一种[图灵完全的编程语言](https://zh.wikipedia.org/wiki/图灵完全 "wikilink")，通常PostScript程序不是人为生成的，而是由其他程序生成的。然而，仍然可以使用手工编制的PostScript程序生成图形或者进行计算。

PostScript是一种[基于堆栈的解释语言](https://zh.wikipedia.org/wiki/基于堆栈 "wikilink")（例如[stack language](https://zh.wikipedia.org/wiki/stack_language "wikilink")），它类似于[Forth语言但是使用从](https://zh.wikipedia.org/wiki/Forth语言 "wikilink")[Lisp语言派生出的数据结构](https://zh.wikipedia.org/wiki/Lisp语言 "wikilink")。这种语言的语法使用[逆波兰表示法](https://zh.wikipedia.org/wiki/reverse_Polish_notation "wikilink")，这就意味着不需要括号进行分割，但是因为需要记住堆栈结构，所以需要进行训练才能阅读这种程序。大部分*运算符*（其他程序中称为*函数*）从堆栈中读取变量，并且将运算结构放到堆栈中。如数字这样的*符号*具有将它们自身副本放到堆栈的效果。

### 算法

例如：

` 3 4 add 5 1 sub mul`

将执行 (3 + 4) × (5 - 1)这样的计算。

让我们详细地分析一下这是如何完成的：

3和4都是符号，它们将自己放到堆栈中，在这两个命令之后，堆栈将变成这样：

`4`
`3`

**add**是一个运算符，它将堆栈中最上面的两个元素取出（在我们的例子中是3和4）、将它们相加、然后将结果放到堆栈上：

`7`

下面又是两个符号，它们将把堆栈变成这样（需要注意的是操作仅仅局限在堆栈顶部，下面的元素不受影响）：

`1`
`5`
`7`

另外一个运算符**sub**，从堆栈顶取出两个元素、第二个减去第一个、然后将结果放到堆栈：

`4`
`7`

很显然**mul**同其他两个运算符一样，从堆栈取出两个元素、将它们的乘积放到堆栈：

`28`

### Named variables

上面的例子只是一个古老的[逆波兰表示法](../Page/逆波兰表示法.md "wikilink")计算，当然PostScript也使用变量。详细地说就是它有一个*字典*用来查找所有不是符号的东西；如果查到的话，那个名字下保存的值就会压缩到栈中（或者更应该说是*执行*——参见后面的内容）；找不到就返回错误。将一个变量放到字典中需要使用*def*运算符，它用一个名字和一个值作为参数，通过在前面使用斜线构建一个名字。因此

` /x1 15 def`

首先将名字“x1”放到堆栈上、然后是值15、然后执行**def**，它将从堆栈中取出“x1”和15，并且将15写到字典中“x1”的下面。后面出现的“x1”（注意不要与“／x1”混淆）将会将15放到堆栈而变量并不改变。下面的代码会将x1的值增加2：

`/x1 x1 2 add def`

### 堆栈运算符

PostScript有几个操作符用于重组或者控制堆栈：复制（**dup**）、丢弃（**pop**）和交换（**exch**）在堆栈顶部进行操作，然而**roll**旋转堆栈中的某一部分，**copy**复制某个特定的部分，**index**允许象数组那样访问堆栈。

### 处理过程定义

「**{**」和「**}**」提供了一些编程的工具。「**{**」将解释器切换到*延迟运行*模式，所有的东西甚至是运算符和其他的可执行对象都放到堆栈中，其中一个例外就是「**}**」，它将堆栈中从「**{**」开始的所有内容，绑定成一个（匿名）处理过程，然后将它放到堆栈上。

这种结构有几种不同的用途，如子程序定义（匿名程序赋给一个变量）、循环、条件等等：

`x1 0 eq { 0 } { 1 x1 div } ifelse`

这段代码首先使用**eq**测试x1是否是0；根据结果的不同将*真*或者*假*放到堆栈上。在此之后，将两个过程放到堆栈上，然后执行**ifelse**，它从堆栈中取出三个参数，如果第三个参数是*真*就执行第二个否则就执行第一个。总之，如果x1是0结果就是0， 其他情况结果就是1/x1。

### 图形操作

在生成图形的时候，PostScript使用普通的[笛卡尔坐标系](../Page/笛卡尔坐标系.md "wikilink")。

`100 200 moveto 300 400 lineto stroke`

将“光标”移到坐标点（100, 200）然后画线到（300, 400）。

`50 70 moveto 100 200 50 80 100 100 curveto stroke`

生成一个从（50, 70）到（100, 100）的立方[贝塞尔曲线](https://zh.wikipedia.org/wiki/贝塞尔曲线 "wikilink")，控制点是（100, 200）和（50, 80）。

`250 250 moveto (Wikipedia) show`

在位置（250, 250）使用预先选择的字体画出文本“Wikipedia”，字体选择可以使用例如`/Courier findfont 12 scalefont setfont`这样的命令串。

图形最初在“[用户坐标系](https://zh.wikipedia.org/wiki/用户坐标系 "wikilink")”中创建，在复制到确定最后输出的“[设备坐标系](https://zh.wikipedia.org/wiki/设备坐标系 "wikilink")”之前它们可以进行旋转、缩放或者扭曲等变换。

` 200 300 translate 45 rotate`

将用户坐标系中的内容上移200点、右移300点并且复制到设备坐标系时旋转45度。

字符“%”用来在PostScript程序中表示注释。作为一个通用的约定，每个PostScript都以字符“%\!”开始这样所有的设备都会将它解释为PostScript。

## 参考文献

## 外部链接

  - [*PostScript语言手册*第三版](https://web.archive.org/web/20060614215453/http://partners.adobe.com/public/developer/en/ps/PLRM.pdf)（*PLR3*），以及[*补充*](https://web.archive.org/web/20060603154650/http://partners.adobe.com/public/developer/en/ps/PS3010and3011.Supplement.pdf)，是事实上规范性文件，根据它的封面颜色通常称为“红皮书”。第一版包括PostScript Level 1，第二版包括称为PostScript Level 2的扩展版本以及[Display PostScript的文档](https://zh.wikipedia.org/wiki/Display_PostScript "wikilink")，第三版包括PostScript 3（这一版Adobe放弃了名字中的“level”）但是不再包括DPS。
  - [*PostScript语言教程与手册*](http://www-cdf.fnal.gov/offline/PostScript/BLUEBOOK.PDF)是相应的入门图书，根据封面封面颜色通常称为“蓝皮书”。
  - [*PostScript入门导引*](http://www.cs.indiana.edu/docproject/programming/postscript/postscript.html)介绍PostScript系统入门书籍。
  - [*数学图表：几何与PostScript手册*](http://www.math.ubc.ca/~cass/graphics/manual/)—Bill Casselman著。
  - [*Thinking in PostScript*](https://web.archive.org/web/20090122202205/http://rightbrain.com/pages/books.html)，1990年Glenn Reid, Addison-Wesley著—available online courtesy of the author.这是一个详尽的教程。
  - [PS-to-PDF转换器](http://www.ps2pdf.com/convert/convert.cgi)，使用Ghostscript将Postscript转换成PDF的在线转换器。
  - [Type 1字体格式](https://web.archive.org/web/20150321034514/http://partners.adobe.com/public/developer/en/font/T1_SPEC.PDF)，PDF格式。
  - [*T.Greer PrintForum*](https://web.archive.org/web/20060615040457/http://tgreer.com/printforum/)，PostScript编程论坛和讨论社区。
  - <http://www.planiglobe.com/> free (CC by/sa) PostScript Maps

### PostScript hacks

  - [Life in PostScript](http://www.tjhsst.edu/~edanaher/pslife/) - a PostScript version of [Conway's Game of Life](https://zh.wikipedia.org/wiki/Conway's_Game_of_Life "wikilink")
  - [PS-HTTPD](https://web.archive.org/web/20060618041725/http://public.planetmirror.com/pub/pshttpd/) - a webserver written in PostScript
  - [PostScript fractals](http://www.pvv.ntnu.no/~andersr/fractal/PostScript.html)
  - [PostScript barcodes](https://web.archive.org/web/20060613211944/http://www.terryburton.co.uk/barcodewriter/)
  - [PostScript HTML renderer](http://www.terryburton.co.uk/htmlrenderer/)
  - [A PostScript raytracer](https://web.archive.org/web/20060526093825/http://web.umr.edu/~johns/raytracer/rtn/rtnews4a.html#art7)，from *Ray Tracing News*, September 5 1988, Volume 1, Number 8 .

[Category:數碼字體排印](https://zh.wikipedia.org/wiki/Category:數碼字體排印 "wikilink") [Category:程序设计语言](https://zh.wikipedia.org/wiki/Category:程序设计语言 "wikilink") [Category:矢量图形](https://zh.wikipedia.org/wiki/Category:矢量图形 "wikilink") [Category:PostScript](https://zh.wikipedia.org/wiki/Category:PostScript "wikilink") [Category:Adobe_Systems](https://zh.wikipedia.org/wiki/Category:Adobe_Systems "wikilink") [Category:字体格式](https://zh.wikipedia.org/wiki/Category:字体格式 "wikilink")