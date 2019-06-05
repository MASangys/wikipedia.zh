**Emacs**（，源自**E**ditor
**MAC**ro**S**，[宏编辑器](https://zh.wikipedia.org/wiki/宏 "wikilink")），是一个[文本编辑器家族](../Page/文本编辑器.md "wikilink")，具有强大的可扩展性，在[程序员和其他以技术工作为主的计算机用户中广受欢迎](../Page/程序员.md "wikilink")。最初由[Richard
Stallman於](https://zh.wikipedia.org/wiki/Richard_Stallman "wikilink")1975年在[MIT协同](../Page/MIT.md "wikilink")[蓋伊·史提爾二世共同完成](https://zh.wikipedia.org/wiki/蓋伊·史提爾二世 "wikilink")。这一创意的灵感来源于TECO宏编辑器TECMAC和TMACS，它们是由[蓋伊·史提爾二世](https://zh.wikipedia.org/wiki/蓋伊·史提爾二世 "wikilink")、[Dave
Moon](https://zh.wikipedia.org/wiki/Dave_Moon "wikilink")、[Richard
Greenblatt](https://zh.wikipedia.org/wiki/Richard_Greenblatt_\(programmer\) "wikilink")、[Charles
Frankston等人编写的宏文本编辑器](https://zh.wikipedia.org/wiki/Charles_Frankston "wikilink")。

自诞生以来，Emacs演化出了众多分支，其中使用最广泛的两种分别是：1984年由[理查·斯托曼发起并由他维护至](https://zh.wikipedia.org/wiki/理查·斯托曼 "wikilink")2008年的**GNU
Emacs**，以及1991年发起的[XEmacs](https://zh.wikipedia.org/wiki/XEmacs "wikilink")。XEmacs是GNU
Emacs的分支，至今仍保持着相当的兼容性。它们都使用了[Emacs
Lisp这种有着极强扩展性的](../Page/Emacs_Lisp.md "wikilink")[编程语言](../Page/编程语言.md "wikilink")，从而实现了包括[编程](https://zh.wikipedia.org/wiki/编程 "wikilink")、[编译乃至网络浏览等等功能的扩展](https://zh.wikipedia.org/wiki/编译 "wikilink")。

在[Unix文化裡](https://zh.wikipedia.org/wiki/Unix "wikilink")，Emacs是[黑客们关于](../Page/黑客.md "wikilink")[编辑器之战的两大主角之一](../Page/编辑器之战.md "wikilink")，它的对手是[vi](https://zh.wikipedia.org/wiki/vi "wikilink")（[Vim](../Page/Vim.md "wikilink")）。

## 历史

Emacs在1970年代诞生于[MIT人工智能实验室](https://zh.wikipedia.org/wiki/MIT计算机科学与人工智能实验室 "wikilink")（MIT
AI
Lab）。在此之前，人工智能实验室的[PDP-6和](https://zh.wikipedia.org/wiki/PDP-6 "wikilink")[PDP-10电脑上运行的](https://zh.wikipedia.org/wiki/PDP-10 "wikilink")[ITS操作系统的默认编辑器是一个叫](https://zh.wikipedia.org/wiki/ITS "wikilink")[TECO](https://zh.wikipedia.org/wiki/TECO "wikilink")（Text
Editor and
Corrector）的[行编辑器](https://zh.wikipedia.org/wiki/行编辑器 "wikilink")。与现代的文本编辑器不同，TECO将击键、编辑和文本显示按照不同的模式进行处理，稍晚出现的vi与它有些类似。在TECO上击键并不会直接将这些字符插入到文档裡去，必须先输入一系列相应的TECO指令，而被编辑的文本在输入命令的时候是不会显示在屏幕上的。在如今还在使用的[UNIX编辑器](../Page/UNIX.md "wikilink")[ed上](https://zh.wikipedia.org/wiki/ed "wikilink")，我们还能看到类似的工作方式。

1970年代初，[理查德·斯托曼访问](../Page/理查德·斯托曼.md "wikilink")[斯坦福大學人工智能实验室](https://zh.wikipedia.org/wiki/斯坦福大學人工智能实验室 "wikilink")（Stanford
AI Lab）时见到了那裡的"E"
editor。这种编辑器有着[所见即所得的直观特点](https://zh.wikipedia.org/wiki/所见即所得 "wikilink")，深深打动了斯托曼，后来成为了大部分现代文本编辑器都具有的特性。后来斯托曼回到MIT，那时候MIT
AI lab的[黑客Carl](../Page/黑客.md "wikilink")
Mikkelsen已经给TECO加上了称作“Control-R”的编辑显示模式，使得屏幕能跟随用户的每次击键刷新显示。斯托曼重写了这一模式，使它运行得更有效率，后来又加入了[宏](https://zh.wikipedia.org/wiki/宏 "wikilink")，允许用户重新定义运行TECO程序的键位。

这一新版的TECO立刻在AI实验室流行开来，并且很快积累起了大量自定义的宏，这些宏的名字通常就以“MAC”或者“MACS”结尾，意为“宏”（macro）。两年后，[蓋伊·史提爾二世承担起统一当时存在的各种键盘命令集的工作](https://zh.wikipedia.org/wiki/蓋伊·史提爾二世 "wikilink")。史提爾和斯托曼经过一夜奋战，最终由斯托曼完成了这一任务，包括一套扩展和注释新的宏包的工具。这个完成的系统被称作EMACS，代表“Editing
MACroS”，也代表“E with MACroS”。

根据斯托曼的说法，他采用这个名字是“因为当时\<E\>在ITS裡还没有被当作缩写用过”\[1\]。也有说法指出，当时[波士顿在MIT附近有家名为](../Page/波士顿.md "wikilink")“”的商店出售的[冰淇淋很受欢迎](../Page/冰淇淋.md "wikilink")，[Dave
Moon是那裡的老主顾](https://zh.wikipedia.org/wiki/Dave_Moon "wikilink")，他就将ITS上一个给文本排版的程序命名为BOLIO，然而斯托曼并不喜欢甚或根本不知道那种冰淇淋，此事后来成了黑客界的一桩公案。

斯托曼意识到过多的定制、在开发过程中事实上的分支以及针对特殊用途的限制，威胁着Emacs的发展。后来他写道：

最初的Emacs同TECO一样-{只}-能运行在PDP系列的电脑上。Emacs虽然是在TECO的基础上发展起来的，不过它已经足以被认为是一个新的文本编辑器了。很快，Emacs就成为ITS上的标准编辑程序，接着由Michael
McMahon从ITS[移植到](https://zh.wikipedia.org/wiki/移植_\(軟體\) "wikilink")[Tenex和](https://zh.wikipedia.org/wiki/TOPS-20 "wikilink")[TOPS-20操作系统上](https://zh.wikipedia.org/wiki/TOPS-20 "wikilink")。其他Emacs早期的贡献者还包括[Kent
Pitman](https://zh.wikipedia.org/wiki/Kent_Pitman "wikilink")、[Earl
Killian和](https://zh.wikipedia.org/wiki/Earl_Killian "wikilink")[Eugene
Ciccarelli](https://zh.wikipedia.org/wiki/Eugene_Ciccarelli "wikilink")。到了1979年，Emacs已经是MIT人工智能实验室和它的计算机科学实验室的主流编辑器了。

### 其他早期实现

后来几年，程序员们写了很多类Emacs的编辑器。其中包括Michael McMahon和[Daniel
Weinreb为](https://zh.wikipedia.org/wiki/Daniel_Weinreb "wikilink")[Lisp机器写的](../Page/Lisp机器.md "wikilink")[EINE](https://zh.wikipedia.org/wiki/EINE "wikilink")（“EINE
Is Not
EMACS”）和[ZWEI](https://zh.wikipedia.org/wiki/ZWEI "wikilink")（“ZWEI
Was EINE Initially”），还有Owen Theodore
Anderson写的Sine。Weinreb的[EINE是第一个以Lisp实现的Emacs](https://zh.wikipedia.org/wiki/EINE "wikilink")。1978年，[Bernard
Greenberg写了](https://zh.wikipedia.org/wiki/Bernard_Greenberg "wikilink")[Multics
Emacs](https://zh.wikipedia.org/wiki/Multics_Emacs "wikilink")，大部分由Multics
Lisp实现。Multics Emacs后来由[Richard
Soley维护](https://zh.wikipedia.org/wiki/Richard_Soley "wikilink")。很多Emacs的变种，包括GNU
Emacs，后来都将Lisp作为自己的扩展语言。

[詹姆斯·高斯林](../Page/詹姆斯·高斯林.md "wikilink")，在1981年写了[Gosling
Emacs](https://zh.wikipedia.org/wiki/Gosling_Emacs "wikilink")，他后来还发明了[NeWS和](https://zh.wikipedia.org/wiki/NeWS "wikilink")[Java](../Page/Java.md "wikilink")。作为第一个在[Unix上运行的类Emacs编辑器](https://zh.wikipedia.org/wiki/Unix "wikilink")，Gosling
Emacs由[C语言实现](https://zh.wikipedia.org/wiki/C语言 "wikilink")，并且以[Mocklisp作为扩展语言](https://zh.wikipedia.org/wiki/Mocklisp "wikilink")。1984年，Gosling
Emacs成为[专有软件](../Page/专有软件.md "wikilink")。

### GNU Emacs

1984年，斯托曼开始致力于开发[GNU
Emacs](https://zh.wikipedia.org/wiki/GNU_Emacs "wikilink")，这将是一个[自由软件](../Page/自由软件.md "wikilink")，以代替专有的Gosling
Emacs。最初GNU Emacs是在Gosling
Emacs的基础上开发的，不过斯托曼后来用一个真正的Lisp解释器代替了原来的Mocklisp解释器，由于Lisp解释器在此软件中的核心地位，这意味着实际上重写了几乎全部代码。GNU
Emacs是[GNU计划的第一个项目](../Page/GNU.md "wikilink")，以C语言编写，将[Emacs
Lisp](../Page/Emacs_Lisp.md "wikilink")（其解释器由C实现）作为扩展语言。GNU
Emacs最早广泛发布的版本是15.34，出现于1985年。实际上版本2到12并不存在，GNU
Emacs的早期版本都是以“1.x.x”的形式编号，直到1.12版时开发人员放弃了这一记法，因为他们认为主版本号是不应该改动的，所以版本号从“1”跳跃到了“13”。因此，Version
13是第一个public release，它发布于1985年3月20日。

GNU Emacs后来被移植到了Unix系统上。它比Gosling
Emacs拥有更多的的功能，尤其是它有一个真正的Lisp作为扩展语言。结果，GNU
Emacs很快就取代了Gosling Emacs，成为Unix系统上預設的Emacs编辑器。

到1999年为止，GNU
Emacs的开发工作基本是在封闭的情况下进行。这种开发方式在《[大教堂和市集](../Page/大教堂和市集.md "wikilink")》中被称为“大教堂模式”。从那以后，GNU
Emacs项目建立了公共开发邮件列表和匿名CVS代码访问，开发工作在一个CVS代码仓库中进行。2008年，Emacs开始使用Bazaar进行[版本控制](../Page/版本控制.md "wikilink")。

斯托曼是GNU Emacs的主要维护者，但他曾经有几次把维护工作交给别人。他于2008年将代码的维护工作交给了[Stefan
Monnier和](https://zh.wikipedia.org/wiki/Stefan_Monnier "wikilink")[Chong
Yidong](https://zh.wikipedia.org/wiki/Chong_Yidong "wikilink")\[2\]。他在mail
list上發出以下內容：

### XEmacs

1991年，Lucid公司的[Jamie
Zawinski等人以GNU](https://zh.wikipedia.org/wiki/Jamie_Zawinski "wikilink")
Emacs 19的一个早期alpha版为基础，添加了一些新的特性，开发出Lucid Emacs。很快，Lucid Emacs的开发与GNU
Emacs渐行渐远，最终双方的团队放弃了将两者合并的努力。Lucid
Emacs被重新命名为XEmacs；至今为止，XEmacs仍然是最流行的Emacs变种之一。

### 其他GNU Emacs的衍生版本

其他的衍生版本，包括：

  - [Meadow](https://zh.wikipedia.org/wiki/Meadow "wikilink") -
    一个Windows下的日语版本
  - [SXEmacs](https://zh.wikipedia.org/wiki/SXEmacs "wikilink") - Steve
    Youngs实现的衍生版本，基于XEmacs
  - [Aquamacs](https://zh.wikipedia.org/wiki/Aquamacs "wikilink") -
    一个致力于与苹果的[OS
    X整合的Emacs版本](https://zh.wikipedia.org/wiki/OS_X "wikilink")

### 其他Emacs变种

除上述编辑器以外，还有很多不基于GNU Emacs的编辑器，有些项目的目标是创建一个精简版的Emacs。在1980年代，GNU
Emacs只能在很高端的电脑上运行，这就为精简版的Emacs实现的出现奠定了基础。还有一些Emacs变种是为了克隆一个完整的Emacs，但是使用不同的Lisp方言或者其他的编程语言。比如：

  - [MicroEMACS](https://zh.wikipedia.org/wiki/MicroEMACS "wikilink")，原作者是Dave
    Conroy，后来由Daniel Lawrence进一步开发，有很多变种。
  - [Mg](https://zh.wikipedia.org/wiki/Mg "wikilink")，原名MicroGNUEmacs，是一个MicroEMACS的公共领域分支，比MicroGNUEmacs更加接近于GNU
    Emacs。现在默认安装在[OpenBSD上](../Page/OpenBSD.md "wikilink")。
  - NotGNU，一个小型、快速的Emacs实现，是免费软件，支持DOS、Win16、Win32和GNU/Linux，作者为Julie
    Melbin。
  - [JOVE](https://zh.wikipedia.org/wiki/JOVE "wikilink")（Jonathan's Own
    Version of Emacs），Jonathan
    Payne为[类Unix系统写的Emacs不可编程的Emacs实现](../Page/类Unix系统.md "wikilink")。
  - [Zile是](https://zh.wikipedia.org/wiki/GNU_Zile "wikilink")*<u>Z</u>ile
    <u>I</u>s <u>L</u>ossy
    <u>E</u>macs*的递归缩写，以[C语言编写](https://zh.wikipedia.org/wiki/C语言 "wikilink")。
  - [Climacs](https://zh.wikipedia.org/wiki/Climacs "wikilink")，以[Common
    Lisp编写的Emacs变种](../Page/Common_Lisp.md "wikilink")。
  - [QEmacs](https://zh.wikipedia.org/wiki/QEmacs "wikilink")，一个由[Fabrice
    Bellard编写的小型编辑器](https://zh.wikipedia.org/wiki/Fabrice_Bellard "wikilink")，支持UTF-8，可以快速编辑上百兆大小的文件。
  - Epsilon，一个由Lugaru
    Software开发的Emacs变种。支持MS-DOS、MS-Windows、GNU/Linux、FreeBSD、O/S
    2等操作系统。它使用了一个与C语言语法类似的非Lisp语言作为扩展语言。
  - [EmACT](https://zh.wikipedia.org/wiki/EmACT "wikilink")，1986年由Christian
    Jullien从MicroEmacs衍生而来，源代码可以在SourceForge获取。
  - [Hemlock](https://zh.wikipedia.org/wiki/Hemlock "wikilink")，最初以[Spice
    Lisp实现](https://zh.wikipedia.org/wiki/Spice_Lisp "wikilink")，后来改为[Common
    Lisp](../Page/Common_Lisp.md "wikilink")。Hemlock是[CMU Common
    Lisp的一部分](https://zh.wikipedia.org/wiki/CMU_Common_Lisp "wikilink")，受到了[Zmacs的影响](https://zh.wikipedia.org/wiki/Zmacs "wikilink")。

### 可以模拟Emacs的编辑器

  - [Yi](https://zh.wikipedia.org/wiki/Yi "wikilink")，以[Haskell语言编写](../Page/Haskell.md "wikilink")，内置一个Emacs模拟器。
  - [Joe's Own
    Editor内置一个Emacs模拟器](https://zh.wikipedia.org/wiki/Joe's_Own_Editor "wikilink")。
  - [JED内置一个Emacs模拟器](https://zh.wikipedia.org/wiki/JED "wikilink")。

## 版权

Emacs的版权遵从[GNU通用公共许可证](../Page/GNU通用公共许可证.md "wikilink")，赋予他人自由地对包括C和Lisp在内的Emacs源文件进行修改和再发行的权利。较早版本的GNU
Emacs文档是在一种点对点（ad-hoc）的许可下发布的，要求所有修改过的副本都要包含某些特定的文字。例如，GNU
Emacs的用户手册中必须包含如何获得GNU
Emacs的说明，以及理查·史托曼的文章——《[GNU宣言](../Page/GNU宣言.md "wikilink")》。作为较早版本的GNU
Emacs的分支，XEmacs的手册也采用相同的使用许可。较新版本的GNU
Emacs文档则采用《[GNU自由文档许可证](../Page/GNU自由文档许可证.md "wikilink")》，以使用“不变段落”（"invariant
sections"）的形式包含有同样的文本，并且要求这些文档自我声明为“GNU手册”（*GNU Manuals*）。

## 功能特点

Emacs不仅仅是一个编辑器，它是一个整合环境，或可称它为[集成开发环境](../Page/集成开发环境.md "wikilink")，这些功能如让使用者置身于全功能的操作系统中。Emacs可以：

  - 收发[电子邮件](../Page/电子邮件.md "wikilink")、上[新闻组](../Page/新闻组.md "wikilink")（Gnus）
  - 無縫直接编辑远程档案（Tramp）
  - 通过[Telnet登录远程主机](../Page/Telnet.md "wikilink")
  - 操作[殼層](../Page/殼層.md "wikilink")（M-x EShell，Term）
  - 結合git, mercurial等版本控制系統並直接操作（Magit，VC）
  - 上Twitter（Twittering-mode）
  - \-{zh-hans:登陆;
    zh-hant:登錄;}-[IRC和朋友交流](../Page/IRC.md "wikilink")（M-x
    ERC，rcirc）
  - 电子数据表
  - 模拟其他编辑器，如vi（Evil-mode）、WordStar、EDT、TPU等
  - 编辑Wiki (Wikipedia-mode)
  - 对多种[编程语言的](../Page/编程语言.md "wikilink")[编辑](https://zh.wikipedia.org/wiki/编辑 "wikilink")，如C/C++、[Perl](../Page/Perl.md "wikilink")、[Python](../Page/Python.md "wikilink")、[Lisp等等](https://zh.wikipedia.org/wiki/Lisp "wikilink")
  - [调试程序](https://zh.wikipedia.org/wiki/调试程序 "wikilink")，结合[GDB](https://zh.wikipedia.org/wiki/GNU除錯器 "wikilink")，EDebug等。
  - 玩游戏
  - 计算器
  - 心理咨询（M-x doctor）
  - [煮咖啡](../Page/超文本咖啡壶控制协议.md "wikilink")
  - 记笔记、日记（Org-mode）
  - 管理日程，Task，待辦事項（ToDo），约会等GTD（Org-mode）
  - 寫作與出版（Org-mode，Muse-mode）
  - 目录管理（Dired）
  - 文件比较、合并（Ediff）
  - 阅读info和man文档（M-x info，woman）
  - 浏览网站（M-x eww）
  - 为各种程序（[TeX](../Page/TeX.md "wikilink")、[LaTeX等](https://zh.wikipedia.org/wiki/LaTeX "wikilink")）提供统一的操作界面
  - ……

此外Emacs还有如下特点：

1.  实时编辑器
2.  Self-documenting
3.  可定制性
4.  可扩展性（集成Lisp语言）

### 可定制性

GNU
Emacs几乎所有的功能都可以定制，有的可以通过[C语言实现](https://zh.wikipedia.org/wiki/C语言 "wikilink")，有的可以通过一个[Lisp的方言](https://zh.wikipedia.org/wiki/Lisp "wikilink")——[Emacs
Lisp来实现](../Page/Emacs_Lisp.md "wikilink")。在Lisp环境中，[变量和](https://zh.wikipedia.org/wiki/变量 "wikilink")[子程序可以在不重新编译](../Page/子程序.md "wikilink")/启动Emacs的前提下被修改。Emacs用户可以根据自身的需要和偏好对编辑器进行定制。强大而自由的个人定制功能是Emacs受到广泛欢迎的重要原因之一。定制Emacs主要有三种方法：

1.  使用Emacs的交互式定制功能（即**customize**）。Emacs提供了图形化的交互界面，使用户能够对可定制的公共变量进行设置，也可以定制配色主题。这种方法使Emacs的初学者不需要接触Emacs
    Lisp代码即可完成定制。
2.  将一系列按键记录为宏，调用这一宏可以自动重复进行已经记录的一系列复杂操作。宏可以保存并命名，以便按名调用，不过同一时刻-{只}-能存在一个匿名的宏。
3.  通过使用Emacs
    Lisp完成Emacs的定制。这种方法最为复杂，但是也提供了更多的灵活性和更强大的功能。用户通常将个人定制的Emacs
    Lisp代码保存在一个名为`.emacs(.el)`（或init.el）的配置文件中，Emacs程序运行之初便读取这一文件，完成用户要求的配置。用户可以通过`.emacs`文件重设变量、重新定义按键的绑定（key
    bindings）、以及定义新的命令，以方便用户个人的使用。很多高级用户的`.emacs`文件的个性化配置长达数百行甚至更多，这些个人的定制使他们的Emacs不仅与默认配置的功能不同，每个人的Emacs之间也千差万别。这种差异能很好的满足不同个性的偏好和不同工作的需求。

如果一段Emacs
Lisp代码确实有用，它通常会被打包并发布给其他用户。在[因特网上能找到很多这样来自第三方的Emacs](https://zh.wikipedia.org/wiki/因特网 "wikilink")
Lisp库，例如能用于编辑[维基百科条目的](../Page/维基百科.md "wikilink")[wikipedia-mode](https://zh.wikipedia.org/wiki/Wikipedia:Wikipedia-mode.el "wikilink")。[Usenet上的](../Page/Usenet.md "wikilink")[新闻组](../Page/新闻组.md "wikilink")[gnu.emacs.sources](news://gnu.emacs.sources)专门发布新的Emacs
Lisp库。有些第三方代码最终还成为了Emacs的一部分。

手工配置安装各种Emacs Lisp代码毕竟有些麻烦。为了解决这个问题，Emacs
24自带包管理器[ELPA](https://zh.wikipedia.org/wiki/ELPA "wikilink")（package.el）。用户可以方便的浏览可用的包（M-x
package-list-packages）和自动下载安装包（M-x package-install）。详细信息可以参考Emacs
Wiki上的[ELPA词条](http://www.emacswiki.org/emacs/ELPA)。

### 性能

在GNU Emacs刚诞生时，它比相同系统上的其他编辑器运行速度要慢很多，但是现代的电脑可以很快地运行GNU Emacs。早期的GNU
Emacs可以处理256 MB以下的文件，GNU Emacs 23.2将这一限制提升到512 MB，而在64位系统的GNU Emacs
24中，这个限制是大约2 EiB。

### 平台

Emacs是目前世界上最具可移植性的重要软件之一，能够在当前绝大多数[操作系统上运行](../Page/操作系统.md "wikilink")，包括各种[类Unix系统](../Page/类Unix系统.md "wikilink")（[GNU/Linux](../Page/Linux.md "wikilink")、[FreeBSD](../Page/FreeBSD.md "wikilink")、[NetBSD](../Page/NetBSD.md "wikilink")、[OpenBSD](../Page/OpenBSD.md "wikilink")、[Solaris](../Page/Solaris.md "wikilink")、[AIX](https://zh.wikipedia.org/wiki/AIX "wikilink")、[OS
X等](https://zh.wikipedia.org/wiki/OS_X "wikilink")）、[MS-DOS](../Page/MS-DOS.md "wikilink")、[Microsoft
Windows等](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")。甚至在Android和诺基亚的Maemo上，Emacs也能运行。

GNU
Emacs既可以在[文本终端也可以在](https://zh.wikipedia.org/wiki/文本终端 "wikilink")[图形用户界面环境下运行](../Page/图形用户界面.md "wikilink")。在类Unix系统上，GNU
Emacs使用[X-Window产生GUI](https://zh.wikipedia.org/wiki/X-Window "wikilink")，或者直接使用“框架”（widget
toolkit），例如[Motif](../Page/Motif.md "wikilink")、[LessTif或](https://zh.wikipedia.org/wiki/LessTif "wikilink")[GTK+等等](https://zh.wikipedia.org/wiki/GTK+ "wikilink")。Emacs也能够利用OS
X和Microsoft
Windows的本地图形系统产生GUI。用GUI环境下的Emacs能提供[菜单栏](https://zh.wikipedia.org/wiki/菜单栏 "wikilink")（Menubar）、工具栏（toolbar）、[滚动条以及](https://zh.wikipedia.org/wiki/滚动条 "wikilink")[环境菜单](https://zh.wikipedia.org/wiki/环境菜单 "wikilink")（context
menu）等交互方式。

### 编辑模式

#### 主模式

Emacs采取的编辑方式是对不同类型的文本进入相应的编辑模式，即“主模式”（major
mode）。Emacs针对多种文档定义了不同的主模式，包括普通[文本文件](../Page/文本文件.md "wikilink")、各种[编程语言的](../Page/编程语言.md "wikilink")[源文件](https://zh.wikipedia.org/wiki/源文件 "wikilink")、[HTML文档](../Page/HTML.md "wikilink")、[TEX与](https://zh.wikipedia.org/wiki/TEX "wikilink")[LaTeX文档](https://zh.wikipedia.org/wiki/LaTeX "wikilink")，以及其他类型的文本文件等等。

每种主模式都有特殊的Emacs Lisp变量和函数，使用户在这种模式下能更方便的处理这一特定类型的文本。例如，各种编程语言的主模式通常会提供：

  - [语法高亮](https://zh.wikipedia.org/wiki/语法高亮 "wikilink")（“font
    lock”）：对源文件文本中的关键字、注释加以不同的字体和颜色（“faces”）。
  - 自动缩进，用来维护文件的格式一致。
  - 自动插入文件所需要的结构元素，如空格、换行以及括号。
  - 特殊的编辑命令，比如跳转到函数的开头或者结尾，或者（在类似于XML的标记语言中）验证文档还有插入关闭标签。

#### 次模式

Emacs还能进一步定义“次模式”（minor mode），用以深度定制Emacs。一个GNU
Emacs的缓冲区（buffer）-{只}-能关联于一种主模式，却能同时关联多个次模式。比如，编写C语言的主模式可以同时定义多个次模式，每个次模式有着不同的缩进风格（indent
style）。

### 国际化

Emacs支持对多种[文字的文本编辑](../Page/文字.md "wikilink")，加上对多种字符集、字母系统、书写系统，以及不同文化的书写习惯都提供了支持，使得世界上大多数语言的使用者都能通过Emacs进行文本处理。Emacs还能通过调用诸如[Aspell这样的外部程序](https://zh.wikipedia.org/wiki/Aspell "wikilink")，实现多种语言的拼写检查。GNU
Emacs 24添加了对双向文字的支持。

Emacs支持包括[UTF-8在内的诸多编码系统](../Page/UTF-8.md "wikilink")。GNU
Emacs从23开始以UTF-8作为自身的编码系统，而在之前的版本，Emacs拥有一种特殊的内部编码系统MULE（MULti-language
Environment），在读写文件时进行编码和解码。XEmacs编码系统和GNU Emacs相似，但具体的实现方法不完全一样。

一个叫做[Emacspeak的子系统可以通过音频反馈](https://zh.wikipedia.org/wiki/Emacspeak "wikilink")，让拥有视觉障碍的用户和盲人用户使用Emacs。

## 使用Emacs

### 命令

在普通的编辑模式下，GNU
Emacs和其他文本编辑器一样，允许用户通过按下键盘上的键插入其相对应的字符，也可以使用键盘上的方向键来移动光标。使用各种[修饰键](../Page/修饰键.md "wikilink")（如\[Ctrl\]、\[Alt\]、\[Shift\]等）和其它的普通键配合可以调用Emacs
Lisp函数和宏。

某些GNU
Emacs命令会调用外部程序，比如使用Aspell进行拼写检查或者使用[GCC进行程序编译](../Page/GCC.md "wikilink")，解析被调用的外部程序的输出，并将结果显示出来。习惯[IBM
Common User
Access的用户可以使用](https://zh.wikipedia.org/wiki/IBM_Common_User_Access "wikilink")“cua-mode”，“cua-mode”曾经是一个第三方插件，从GNU
Emacs 22开始被包含在Emacs中。

下表给出了一些基本命令。\[Ctrl\]键以大写*C*表示，\[Meta\]键\[Alt\]键以大写*M*表示。

| 命令                        | 快捷键                    | 功能                        |
| ------------------------- | ---------------------- | ------------------------- |
| `forward-word`            | `M-f`                  | 向前移动一个单词。                 |
| `isearch-forword`         | `C-s`                  | 递增搜索                      |
| `undo`                    | `C-/`                  | 撤销最后一次操作，如果多次执行则取消以前的操作。  |
| `keyboard-quit`           | `C-g`                  | 取消当前的命令。                  |
| `find-file`               | `C-x C-f`              | 在一个新的缓冲区里访问某个文件（用户给定文件名）。 |
| `save-buffer`             | `C-x C-s`              | 将缓冲区的内容保存到文件。             |
| `save-some-buffers`       | `C-x s`                | 保存所有的缓冲区                  |
| `save-with-newname`       | `C-x C-w`              | 将缓冲区的内容另存为一个新的文件。         |
| `save-buffers-kill-emacs` | `C-x C-c`              | 提示是否保存文件，然后退出Emacs。       |
| `set-mark-command`        | `C-[空格]`<sup>`注`</sup> | 设定标记，用于剪切或复制。             |
| `kill-region`             | `C-w`                  | 剪切标记到当前光标所在处的文本。          |
| `kill-ring-save`          | `M-w`                  | 复制标记到当前光标所在处的文本。          |
| `yank`                    | `C-y`                  | 从Emacs的剪贴板中粘贴文本。          |
| `kill-buffer`             | `C-x k`                | 关闭当前buffer。               |

注：中文系统C-\[空格\]一般为系统输入法，可使用C-@代替。

### 小缓冲

Emacs使用“小缓冲”（通常在最下面一行）显示信息提示以及输入命令和命令参数。在合适的情况下，小缓冲支持使用制表键或空格键补全。每个frame只有一个小缓冲。

### 文件管理与显示

Emacs将文本存放在[缓冲区中](https://zh.wikipedia.org/wiki/缓冲区 "wikilink")。用户可以创建新的缓冲区，也可以关闭不需要的缓冲区，Emacs可以同时存在很多缓冲区。大部分的缓冲区的文本来自[文本文件](../Page/文本文件.md "wikilink")，用户可以编辑缓冲区的内容，并且保存到磁盘上。缓冲区也可以保存临时文本，比如“help”库显示的文档字符串。

### Emacs小拇指

很多Emacs用户都有过[重複使力傷害的经历](https://zh.wikipedia.org/wiki/重複使力傷害 "wikilink")，原因是Emacs强烈依赖Ctrl键和Meta键，也由于Ctrl键在现代键盘中的位置。

解决方法有软件方法，也有硬件方法。软件方法包括：

  - 使用 ergoemacs-mode 定制键盘布局。\[3\]
  - 定制键盘布局，使Ctrl和大寫鎖定键交换位置。其他相似的方法包括将大写锁定键定义为Ctrl，或交换Ctrl和Meta键。
  - god-mode 可以让 Emacs 不用修饰键就触发命令。
  - 使用 evil-mode，一个高级的 Vim 模拟层。
  - Emacs有一个内置的“Viper-mode”，允许用户使用[vi的键绑定来进行基本的文本编辑](https://zh.wikipedia.org/wiki/vi "wikilink")，而使用Emacs本身的键绑定来进行更高级的操作。
  - 让一个更容易按的键（如[空格键](https://zh.wikipedia.org/wiki/空格键 "wikilink")）拥有多种功能，当那个键和其他键一起按下时，功能为Ctrl键的。
  - 使用语音输入控制Emacs。
  - 很多软件，如[xwrits](https://zh.wikipedia.org/wiki/xwrits "wikilink")，可以提醒用户进行定期的休息。

硬件方法包括使用特殊的键盘，如Kinesis键盘的修饰键放在[大拇指很容易按到的位置](https://zh.wikipedia.org/wiki/大拇指 "wikilink")，或者[微软自然键盘](https://zh.wikipedia.org/wiki/微软自然键盘 "wikilink")，它的修饰键对称的放置在键盘的两边，并且可以使用手掌按下。脚控踏板也是一种方法。

如果使用普通鍵盤，可以在按Ctrl組合鍵時手掌下移，用無名指擊Ctrl，以規避小指過度利用。

“Emacs小拇指”是近些年才出现的。在Emacs诞生时，键盘的Ctrl键非常大，并且在空格键的旁边，使用大拇指很容易按。

[Vim](../Page/Vim.md "wikilink") 的拥护者经常以Emacs小拇指作为切换编辑器的原因，虽然有些 Vim
用户（因为相似的原因）也会交换模式转换键和大小写转换键的功能。\[4\]

## 外部链接

  - [GNU Emacs官方网站](http://www.gnu.org/software/emacs/emacs.html)，包括：
      - [GNU
        Emacs常见问题解答](http://www.gnu.org/software/emacs/emacs-faq.text)
      - [GNU Emacs for
        Windows常见问题解答](http://www.gnu.org/software/emacs/windows/ntemacs.html)
  - [A paper on the design of the original
    Emacs](http://www.gnu.org/software/emacs/emacs-paper.html)，by
    Stallman
  - ["Multics Emacs: The History, Design and
    Implementation"](http://www.multicians.org/mepap.html) by B.
    Greenberg
  - ["Emacs Timeline"](http://www.jwz.org/doc/emacs-timeline.html) by J.
    Zawinski
  - ["List of Emacs
    implementations"](https://www.webcitation.org/5nDdzxTLd?url=http://www.finseth.com/~fin/emacs.html)
    by C. Finseth
  - [Reviewed entry](http://directory.fsf.org/wiki/Emacs) in the [Free
    Software
    Directory](https://zh.wikipedia.org/wiki/Free_Software_Directory "wikilink")
  - [Emacs实现列表](http://www.finseth.com/emacs.html)
  - [WikEmacs](http://www.wikemacs.org/index.php)
  - [Emacs中文网](http://emacser.com)
  - [中文Emacs User's
    Guide](https://web.archive.org/web/20030626193707/http://www.cbi.pku.edu.cn/chinese/documents/csdoc/emacs/)
  - [IBM
    dw教程：生活在Emacs中](https://web.archive.org/web/20090207193326/http://www.ibm.com/developerworks/cn/views/linux/tutorials.jsp?cv_doc_id=84932)
  - [Emacs
    Wiki](http://emacswiki.org/)：一个关于**Emacs**的[wiki](https://zh.wikipedia.org/wiki/wiki "wikilink")。网站上有[英语](../Page/英语.md "wikilink")、[汉语等多种语言](../Page/汉语.md "wikilink")。EmacsWiki主要是提供一些Emacs的使用教程、技巧和用户贡献的配置文件\[5\]\[6\]\[7\]。像其他wiki一样，所有人都可以编辑。不过EmacsWiki没有[注册的制度](https://zh.wikipedia.org/wiki/注册 "wikilink")，不需要[账户就可以编辑整个wiki](https://zh.wikipedia.org/wiki/账户 "wikilink")。\[8\]

## 参考文献

  - 注：本文第一部分，部分引用自遵守[GFDL的](https://zh.wikipedia.org/wiki/GFDL "wikilink")《Emacs用户指南》汉译版

## 参见

  - [文本编辑器列表](https://zh.wikipedia.org/wiki/文本编辑器列表 "wikilink")
  - [文本编辑器比较](https://zh.wikipedia.org/wiki/文本编辑器比较 "wikilink")
  - [使用Emacs編輯維基百科](https://zh.wikipedia.org/wiki/Wikipedia:文本编辑器支持#GNU_Emacs "wikilink")
  - [GNU TeXmacs](../Page/GNU_TeXmacs.md "wikilink")

{{-}}

[Category:Emacs](https://zh.wikipedia.org/wiki/Category:Emacs "wikilink")
[Category:檔案比較工具](https://zh.wikipedia.org/wiki/Category:檔案比較工具 "wikilink")
[Category:Unix文本编辑器](https://zh.wikipedia.org/wiki/Category:Unix文本编辑器 "wikilink")
[Category:1976年软件](https://zh.wikipedia.org/wiki/Category:1976年软件 "wikilink")
[Category:自由整合開發環境](https://zh.wikipedia.org/wiki/Category:自由整合開發環境 "wikilink")
[Category:用C编程的自由软件](https://zh.wikipedia.org/wiki/Category:用C编程的自由软件 "wikilink")
[Category:用Lisp語言編輯的自由軟件](https://zh.wikipedia.org/wiki/Category:用Lisp語言編輯的自由軟件 "wikilink")
[Category:自由文本编辑器](https://zh.wikipedia.org/wiki/Category:自由文本编辑器 "wikilink")
[Category:GNU计划软件](https://zh.wikipedia.org/wiki/Category:GNU计划软件 "wikilink")
[Category:十六进制编辑器](https://zh.wikipedia.org/wiki/Category:十六进制编辑器 "wikilink")
[Category:Linux集成开发环境](https://zh.wikipedia.org/wiki/Category:Linux集成开发环境 "wikilink")
[Category:Linux文本编辑器](https://zh.wikipedia.org/wiki/Category:Linux文本编辑器 "wikilink")
[Category:OS_X文本编辑器](https://zh.wikipedia.org/wiki/Category:OS_X文本编辑器 "wikilink")
[Category:OpenVMS文本编辑器](https://zh.wikipedia.org/wiki/Category:OpenVMS文本编辑器 "wikilink")
[Category:文本编辑器](https://zh.wikipedia.org/wiki/Category:文本编辑器 "wikilink")
[Category:Windows文本编辑器](https://zh.wikipedia.org/wiki/Category:Windows文本编辑器 "wikilink")

1.  原文：because \<E\> was not in use as an abbreviation on ITS at the
    time.
2.  ，参见["Stallman on handing over GNU Emacs, its future and the
    importance of
    nomenclature"](http://www.networkworld.com/community/node/25360)
3.
4.
5.
6.
7.
8.