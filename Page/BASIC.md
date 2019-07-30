**BASIC**（來自的縮寫）又譯**培基**，是一種[直譯式](https://zh.wikipedia.org/wiki/直譯語言 "wikilink")[程序设计语言](https://zh.wikipedia.org/wiki/程序设计语言 "wikilink")。名稱的字面意思为“初學者的全方位符式指令代碼”，設計給初學者使用的程式語言，在完成編寫後不須經由[编译及](https://zh.wikipedia.org/wiki/编译 "wikilink")[連結等手續](https://zh.wikipedia.org/wiki/連結 "wikilink")，經過[直譯器](../Page/直譯器.md "wikilink")即可執行，但如果需要單獨執行時仍然需要將其建立成[執行檔](../Page/執行檔.md "wikilink")。

## BASIC的歷史

1964年，两位[美國数学家兼](https://zh.wikipedia.org/wiki/美國 "wikilink")[计算机科学家](https://zh.wikipedia.org/wiki/计算机科学家 "wikilink")[约翰·克米尼和](https://zh.wikipedia.org/wiki/约翰·克米尼 "wikilink")在[FORTRAN语言的基础上创造了一种新的语言](https://zh.wikipedia.org/wiki/FORTRAN "wikilink")——BASIC，BASIC是一种适用于初学者的[人机交互式语言](https://zh.wikipedia.org/wiki/人机交互式语言 "wikilink")。

Basic的名字——Beginner's All-purpose Symbolic Instruction Code（初学者通用的符号指令代码），原来被作者写做BASIC，只是后来被[微软](../Page/微软.md "wikilink")广泛的叫做Basic了。

BASIC语言本来是为校园的大学生们创造的[高级语言](https://zh.wikipedia.org/wiki/高级语言 "wikilink")，目的是使大学生容易使用计算机。尽管初期的BASIC仅有几十条[语句](https://zh.wikipedia.org/wiki/语句 "wikilink")，但由于BASIC在当时比较容易学习，它很快从校园走向社会，成为初学者学习计算机[程序设计](../Page/程序设计.md "wikilink")的首选语言。

随着计算机科学技术的迅速发展，特别是微型计算机的广泛使用，计算机厂商不断地在原由的BASIC基础上进行功能扩充，出现了多种BASIC版本，例如[TRS-80 BASIC](https://zh.wikipedia.org/wiki/TRS-80_BASIC "wikilink")、[Apple BASIC](https://zh.wikipedia.org/wiki/Apple_BASIC "wikilink")、[GWBASIC](https://zh.wikipedia.org/wiki/GWBASIC "wikilink")、IBM BASICA（即[BASICA](../Page/BASICA.md "wikilink")）、[True BASIC](../Page/True_BASIC.md "wikilink")。此时BASIC已经由初期小型、简单的学习语言发展成为功能丰富的使用语言。它的许多功能已经能与其他优秀的计算机高级语言相媲美，而且有的功能（如绘图）甚至在當時超过其他语言。

在[單片機上亦可以使用BASIC編程](https://zh.wikipedia.org/wiki/單片機 "wikilink")（一般是行號類型的BASIC），不過多數情況下要安裝BASIC的ROM。

### 早期的BASIC语言：在大型机和小型机时代

最原始的BASIC语言是在1964年由[约翰·克米尼和](https://zh.wikipedia.org/wiki/约翰·克米尼 "wikilink")设计，并且在他们的指导下由Dartmouth的学生实现的。当时设计BASIC语言的目的是让学生能在Dartmouth的分时操作系统上写程序。这种语言是为了解决以前语言的复杂的问题，而设计的一种新的语言。它特别针对了那些新的要用到[分时系统](https://zh.wikipedia.org/wiki/分时系统 "wikilink")，但是却没有以往学生那样有很深厚的数学功底，又对学习这些数学知识不感兴趣的那些学生。能够使用一台电脑来帮助教学和研究在那个时候是非常新颖的一件事情。在那段时间中，随着其他形式的BASIC语言的出现，人们就把Kemeny和Kurtz的最原始的BASIC语言形式被人们称为Dartmouth BASIC。

BASIC语言的8个设计原则是：

1.  让初学者容易使用。
2.  成为[通用编程语言](../Page/通用编程语言.md "wikilink")。
3.  允许为熟练者添加高级的功能（与此同时对初学者保持简单）。
4.  成为[交互式语言](https://zh.wikipedia.org/wiki/交互式 "wikilink")。
5.  提供清楚的和友好的错误信息。
6.  对小型的程序反应迅速。
7.  不需要对硬件的了解。
8.  将用户和[操作系统](../Page/操作系统.md "wikilink")隔离。

这种语言一部分基于[FORTRAN II](https://zh.wikipedia.org/wiki/FORTRAN_II "wikilink")，一部分基于[ALGOL 60](../Page/ALGOL_60.md "wikilink")，并且在此之上增加了一些东西使之适和于分时功能。（另外拥有这种功能的分时系统有JOSS和CORC，LISP也在较小程度上的支持这种功能）在它之前，Dartmouth研究开发了[DARSIMCO](https://zh.wikipedia.org/wiki/DARSIMCO "wikilink")（1956）和[DOPE](https://zh.wikipedia.org/wiki/DOPE "wikilink")（1962，实现了SAP和DART（1963）一个精简版的FORTRAN II）。最初，BASIC语言致力于简单的数学运算，在它最初的作为批处理语言的实现中就有对矩阵运算的支持，在1965年完整的字符串处理功能被加入其中。BASIC语言最初在支持多个终端的[GE-265大型机上实现](https://zh.wikipedia.org/wiki/GE-265 "wikilink")。在它最初被引入的那段时间中，它是一种[编译型语言](https://zh.wikipedia.org/wiki/编译型语言 "wikilink")，并且效率十分高，在GE-265大型机中的一些具有一定的计算上密集的（至少在当时是如此）的程序，比如用[辛普森法则进行数值积分的计算效率上击败了FORTRAN](https://zh.wikipedia.org/wiki/辛普森法则 "wikilink") II和ALGOL 60。

BASIC语言的设计者为了使这种语言广为传播，决定让人免费获得编译器。他们同时也向汉诺威地区的高校提供了这种语言并且在促进BASIC语言方面花了很大的功夫。结果是有关于BASIC语言的知识传播的非常广泛，并且被很多的制造商实现，逐渐在一些较新的小型机像DEC [PDP系列和](https://zh.wikipedia.org/wiki/PDP "wikilink")[Data General Nova中盛行起来](https://zh.wikipedia.org/wiki/Data_General_Nova "wikilink")。BASIC语言同时也在20世纪60年代末70年代初成为了惠普分时BASIC系统的核心，另外也是[Pick操作系统的核心](https://zh.wikipedia.org/wiki/Pick "wikilink")。在以上这些例子中，BASIC语言趋向于以[解释器的方式实现](https://zh.wikipedia.org/wiki/解释器 "wikilink")，而不是编译器。

在它发行的若干年之后，一些非常有声望的计算机专家，特别是[艾茲赫爾·戴克斯特拉](https://zh.wikipedia.org/wiki/艾茲赫爾·戴克斯特拉 "wikilink")，表达了他们对于使用[GOTO语句的看法](https://zh.wikipedia.org/wiki/GOTO "wikilink")。他们认为，存在于包括BASIC语言在内的很多语言中的GOTO语句，会使编写程序变得很糟糕。有些人同时也嘲笑BASIC语言速度太慢（大多数语言的解释型版本要比同样的编译型的要慢）或者BASIC语言太简单了（许多版本，特别是为小电脑设计的版本，舍去了一些重要的功能以及性能）

### 迅速增长：家用电脑时期

尽管BASIC语言在一些小型机上使用了，但是它真正进入大学是在1975年的[MITS](https://zh.wikipedia.org/wiki/MITS "wikilink") Altair 8800 "kit"微型机的引入。大多数的编程语言需要一个适用的文本编辑器，大量的内存和磁盘空间。但是当时的情况则是，那个时候的微型机没有本地的编辑器，仅有有限的内存以及一般将录音磁带做为磁盘储存数据。所有的这些问题，使得像BASIC那样以解释形式运行以及拥有内置的代码编辑器的语言能够在这些限制下运行。

BASIC语言同时还具有的优势就是它在那些对微型机感兴趣的年轻的设计师和计算机爱好者中相当出名，以及在那个时候的电子工业中BASIC语言被普遍的使用。另外Kemeny和Kurtz在早期在传播BASIC语言这一方面所花的努力也功不可没，在那个时候一些爱好者的杂志中几乎都被一段一段的提及BASIC语言的文章填满，或者差不多全部都在关注一个版本和其他版本的比较。

最先在像[Altair那样](https://zh.wikipedia.org/wiki/Altair "wikilink")8080机器中出现的BASIC语言之一是[Tiny BASIC](https://zh.wikipedia.org/wiki/Tiny_BASIC "wikilink")，一个简单的BASIC语言的的实现，最初由[Li-Chen Wang博士编写](https://zh.wikipedia.org/wiki/Li-Chen_Wang "wikilink")，随后被[Dennis Allison应](https://zh.wikipedia.org/wiki/Dennis_Allison "wikilink")[Bob Albrecht](https://zh.wikipedia.org/wiki/Bob_Albrecht "wikilink")（他随后创建了杂志[Dr. Dobb's Journal](https://zh.wikipedia.org/wiki/Dr._Dobb's_Journal "wikilink")）的要求移植到Altair中。Tiny BASIC的设计和全部的源代码都在1976年于DDJ杂志中被公布出来。

1975年，[MITS发布了](https://zh.wikipedia.org/wiki/MITS "wikilink")[Altair BASIC](https://zh.wikipedia.org/wiki/Altair_BASIC "wikilink")，由[Bill Gates和](https://zh.wikipedia.org/wiki/Bill_Gates "wikilink")[Paul Allen作为一个叫做Micro](https://zh.wikipedia.org/wiki/Paul_Allen "wikilink")-Soft的公司开发，后来Micro-Soft则发展成今天的企业巨头——[微软](../Page/微软.md "wikilink")（Microsoft）。最初的Altair版本由Gates、Allen和Monte Davidoff共同编写。Microsoft BASIC（随后大多被人称作M BASIC或者MBASIC）的一些版本马上被捆绑到最初的基于软盘的[CP/M计算机中](https://zh.wikipedia.org/wiki/CP/M "wikilink")，这种计算机在小的商业环境中被广为使用。随着在CP/M中的BASIC语言知名度的扩张，新的计算机设计中同样也引入了他们自己的BASIC语言的版本，或者干脆叫Micro-Soft把BASIC版本移植到他们的平台中。

当三种新的个人计算机在1977年问世的时候，也就是[Byte Magazine后来称作](https://zh.wikipedia.org/wiki/Byte杂志 "wikilink")"1977 Trinity"的那段时间，所有的这三种的计算机都用BASIC语言作为他们的编程语言和操作环境。[Commodore Business Machines公司一次性的付费买下一个移植到他们PET计算机的](https://zh.wikipedia.org/wiki/Commodore_Business_Machines "wikilink")[6502芯片中Micro](https://zh.wikipedia.org/wiki/6502 "wikilink")-Soft BASIC的一个无限授权版本，于此同时[Apple II和](../Page/Apple_II.md "wikilink")[TRS-80都引入了一个新的](https://zh.wikipedia.org/wiki/TRS-80 "wikilink")，与这种语言极大相似的语言。这种相似性是非常明显的因为它们最开始的50个记号（token）都是一样的。随着新的计算机进入到这个领域中来，其他的BASIC语言版本的加入，微妙的改变了BASIC语言的家族。[Atari的](https://zh.wikipedia.org/wiki/Atari "wikilink")8位机系列有他们自己的，专为烧入8kB的ROM芯片而修改过的Atari BASIC。[BBC发布了BBC](https://zh.wikipedia.org/wiki/BBC "wikilink") BASIC，由[Acorn Computers为他们编写](https://zh.wikipedia.org/wiki/Acorn_Computers "wikilink")，加入了许多额外的结构体的关键字。大多数的二十世纪八十年代的家用计算机都有一个驻留在ROM中的BASIC解释器，以此能让计算机直接引导到BASIC环境。正因为这些原因，BASIC语言有着比其他任何语言都要多的方言（dialects）版本。

因为在这一个时期的BASIC的知名度的上升，一些杂志（就比如美国的[Creative Computing Magazine](https://zh.wikipedia.org/wiki/Creative_Computing_Magazine "wikilink")）刊登了用BASIC语言写的游戏、工具和一些其他程序的完整的代码。BASIC具有的一个天生的优势，就是将杂志上公布的代码输入计算机然后运行是一件非常简单的事情。不同的杂志针对不同的计算机刊登BASIC程序，但是有些BASIC程序是可以在不同的计算机的不同的BASIC运行环境中运行（有些时候只需要一些小小的修改）。在那个时候，检查纠正经常会在杂志的代码中出现的印刷错误也是杂志本身的一个作业。

BASIC程序也同样在成熟的书本中被发布：最初的例子是[David Ahl的](https://zh.wikipedia.org/wiki/David_Ahl "wikilink")[BASIC Computer Games系列](https://zh.wikipedia.org/wiki/BASIC_Computer_Games "wikilink")。后来的书，就比如[Learn to Program BASIC也同样将游戏的程序作为书本导引部分的重点](https://zh.wikipedia.org/wiki/Learn_to_Program_BASIC "wikilink")。

### 成熟的语言：个人电脑时期

早在1979年微软公司就开始和IBM协商给IBM的PC机提供一个烧在BIOS里面的IBM Cassette BASIC（BASIC C）。微软公司后来出售了一些在MS-DOS和PC-DOS上的BASIC语言版本，包括IBM Disk BASIC（BASIC D）、IBM BASICA（BASIC A）、GW-BASIC（一个不需要IBM机器ROM以及与BASICA兼容的版本）和[QuickBASIC](../Page/QuickBASIC.md "wikilink")。发布了Turbo Pascal的Borland公司在1985年发布了[Turbo BASIC 1.0](https://zh.wikipedia.org/wiki/Turbo_BASIC_1.0 "wikilink")（即后来的PowerBASIC）。微软公司同样还编写了一个基于窗口的AmigaBASIC，支持一个在当时非常先进的多任务图形界面的计算机Amiga computers的1.1版本（1985年末，1986年初）。

这些语言引入了许多对原始的家用电脑中BASIC的扩展，比如提供了更加好的字符串操作功能以及对图形的支持，另外还有对文件系统的访问以及一些额外的数据类型。其中更加重要的则是添加了[结构化编程](../Page/结构化编程.md "wikilink")的功能，包括一些原始版本中不存在的流程控制语句和支持本地变量的子程序。新的图形功能同样为个人电脑中的电子游戏打下的基础，类似[DONKEY.BAS的一些BASIC程序展示了个人电脑所具有的功能](https://zh.wikipedia.org/wiki/DONKEY.BAS "wikilink")。

但是在二十世纪八十年代的后半段，新的电脑则是比起以往的电脑拥有更加强大的资源控制能力。于此同时，计算机渐渐的从一个业余爱好者感兴趣的东西过渡到一个人们日常使用的工具（主要用的是别人写的代码），所以编写程序对用户的重要性渐渐地减弱。当然BASIC的重要性也渐渐地减弱起来，尽管依然还有许多的BASIC语言版本。编译型BASIC语言和[CBASIC仍然使用在许多的](https://zh.wikipedia.org/wiki/CBASIC "wikilink")[IBM 4960系统上](https://zh.wikipedia.org/wiki/IBM_4960 "wikilink")。

随着微软公司[Visual Basic的发布BASIC的语言的好运似乎又一次回归了过来](../Page/Visual_Basic.md "wikilink")。很难确切的说[Visual Basic到底是不是BASIC语言](../Page/Visual_Basic.md "wikilink")，因为它较之前的版本有很大的改变——以基于对象以及事件驱动为的设计目标的语言。它唯一显著的与BASIC语言相关的地方就是相似的语法，但是语法本身也不能完全定义这种语言，因为大多数Visual Basic的开发都是使用「拖动－放置」的方法，开发者不需要为一些常用的物件比如按钮和滚动条去写所有的代码。这个可以看成是BASIC语言的一种进化，一些早期的[Dartmouth BASIC的特有的功能被保留了下来](https://zh.wikipedia.org/wiki/Dartmouth_BASIC "wikilink")，比如行号和INPUT关键字等（[Visual Basic仍旧是使用INPUT语句来从文件读取数据](../Page/Visual_Basic.md "wikilink")；行号也同样允许用在所有的VB版本中，甚至是VB.NET，仅管它不能用在一些特定的地方，比如在SUB语句前面）。

有趣的是，BASIC语言最开始的时候是作为一种初学者的语言，微软最初依旧是将[Visual Basic定位于向爱好者提供的一种语言](../Page/Visual_Basic.md "wikilink")，但是在VB 3.0（也是被认为第一个相对稳定的版本）发布之后不久就在小型商业程序的使用中迅速的传播开来。儘管有很多高级的程序员始终在嘲笑它，但是VB正是有效的符合了小型商用程序的要求，即重点是简单的开发，而运行的速度则是次要的因素。在那个时候, [Windows 3.1已经是足够的快了](https://zh.wikipedia.org/wiki/Windows_3.1 "wikilink")，很多商业有关的程序只要不是牵涉到大量的数据，几乎是可以在一眨眼之间完成的，即使使用的是一种非常慢的语言。许多公司的老板发现他们通过很少的一些步骤就可以创建出一个小型的但是有用的程序来满足他们特定的需求。最终，在VB3的冗长的生命周期中，对于Visual Basic知识的掌握成为了一种非常有用的职业技能.这种语言，就像它的前辈[QBASIC](../Page/QBASIC.md "wikilink")一样，同时也成为了业余游戏开发者喜爱的语言之一。

## BASIC語言的種類

以下是同樣的執行結果，但用不同時期的BASIC的方式所寫的範例。

### 行號類型（非結構化）

這是第一代的BASIC，例如早期[BASICA](../Page/BASICA.md "wikilink")、[GW-BASIC](../Page/GW-BASIC.md "wikilink")……等，BASIC直譯器。這類的BASIC程式的特徵，就是每一行的程式碼前面都有一個數字作為「[行號](../Page/行號_\(程式語言\).md "wikilink")」。由於這種類型的BASIC程式的寫法，很容易濫用GOTO的跳躍指令，以及程式碼沒有辦法使用到縮排去區分區段，因此很容易導致[面条式代码](../Page/面条式代码.md "wikilink")。

``` QBasic
10 INPUT "What is your name: ", U$
20 PRINT "Hello "; U$
30 INPUT "How many stars do you want: ", N
40 S$ = ""
50 FOR I = 1 TO N
60 S$ = S$ + "*"
70 NEXT I
80 PRINT S$
90 INPUT "Do you want more stars? ", A$
100 IF LEN(A$) = 0 THEN GOTO 90
110 A$ = LEFT$(A$, 1)
120 IF A$ = "Y" OR A$ = "y" THEN GOTO 30
130 PRINT "Goodbye "; U$
140 END
```

### 無行號類型（結構化）

這是第二代的BASIC，例如[QuickBASIC](../Page/QuickBASIC.md "wikilink")、[PowerBASIC](../Page/PowerBASIC.md "wikilink")。這時期，同時有功能相近的直譯器與編譯器的版本出現。這類的BASIC程式的特徵，是不使用行號，改使用標籤作為跳躍點（仍有GOTO指令，但已可使用其他寫法可完全避開使用GOTO），與使用函數或副程式的方式，以及可使用縮排，將程式結構化。\[1\]

``` QBasic
INPUT "What is your name: ", UserName$
PRINT "Hello "; UserName$
DO
  INPUT "How many stars do you want: ", NumStars
  Stars$ = STRING$(NumStars, "*")
  PRINT Stars$
  DO
    INPUT "Do you want more stars? ", Answer$
  LOOP UNTIL Answer$ <> ""
  Answer$ = LEFT$(Answer$, 1)
LOOP WHILE UCASE$(Answer$) = "Y"
PRINT "Goodbye "; UserName$
```

### 物件導向化

這是第三代的BASIC，例如[Visual Basic](../Page/Visual_Basic.md "wikilink")、[REALbasic](../Page/REALbasic.md "wikilink")、[StarOffice Basic](https://zh.wikipedia.org/wiki/StarOffice_Basic "wikilink")。這類的BASIC程式的特徵，是導入類別（Class）的應用，使用物件導向的繼承與程式碼封裝的寫法。通常也使用「事件驅動」的寫法，雖然下面這個[Visual Basic .NET的範例並不是用到](../Page/Visual_Basic_.NET.md "wikilink")「事件驅動」。

``` vbnet

Public Class StarsProgram
    Public Shared Sub Main()
        Dim UserName, Answer, stars As String, NumStars As Integer
        Console.Write("What is your name: ")
        UserName = Console.ReadLine()
        Console.WriteLine("Hello {0}", UserName)
        Do
            Console.Write("How many stars do you want: ")
            NumStars = CInt(Console.ReadLine())
            stars = New String("*", NumStars)
            Console.WriteLine(stars)
            Do
                Console.Write("Do you want more stars? ")
                Answer = Console.ReadLine()
            Loop Until Answer <> ""
            Answer = Answer.Substring(0, 1)
        Loop While Answer.ToUpper() = "Y"
        Console.WriteLine("Goodbye {0}", UserName)
    End Sub
End Class
```

## 指令

### While指令

### Do指令

### For指令

### Goto指令

Goto是一種程式執行無條件跳躍的指令，在有行號的BASIC裡後面是接要跳躍目的的行號。在無行號的BASIC裡後面則是接要跳躍目的的標記名稱。

### END指令

用于终止一个**BASIC**程序的运行。

它的效果有些类似[C语言里的exit函数](https://zh.wikipedia.org/wiki/C语言 "wikilink")。所不同的是END不带有任何的[参数](https://zh.wikipedia.org/wiki/参数 "wikilink")，仅仅是一条[指令](https://zh.wikipedia.org/wiki/指令 "wikilink")。需要注意的是，在[Visual Basic中end](../Page/Visual_Basic.md "wikilink")（虽然不区分大小写但多习惯用小写）指令用于强制退出整个程序，

## 參考文獻

### 引用

### 標準

  - ANSI/ISO/IEC Standard for Minimal BASIC:
      - ANSI X3.60-1978 "FOR MINIMAL BASIC"
      - ISO/IEC 6373:1984 "DATA PROCESSING - PROGRAMMING LANGUAGES - MINIMAL BASIC"
  - ANSI/ISO/IEC Standard for Full BASIC:
      - ANSI X3.113-1987 "PROGRAMMING LANGUAGES FULL BASIC"
      - [INCITS/ISO/IEC 10279-1991 (R2005) "Information Technology - Programming Languages - Full BASIC"](http://www.iso.org/iso/catalogue_detail.htm?csnumber=18321)
  - ANSI/ISO/IEC Addendum Defining Modules:
      - ANSI X3.113 INTERPRETATIONS-1992 "BASIC TECHNICAL INFORMATION BULLETIN \# 1 INTERPRETATIONS OF ANSI 03.113-1987"
      - ISO/IEC 10279:1991/ Amd 1:1994 "MODULES AND SINGLE CHARACTER INPUT ENHANCEMENT"
  - [ECMA](https://zh.wikipedia.org/wiki/ECMA "wikilink")-116 BASIC *(withdrawn, similar to ANSI X3.113-1987)*

## 外部連結

  -
## 参见

  -
{{-}}

[Category:BASIC程序设计语言家族](https://zh.wikipedia.org/wiki/Category:BASIC程序设计语言家族 "wikilink")

1.