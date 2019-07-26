**UNIX**，一种多用户、多进程的计算机[操作系统](../Page/操作系统.md "wikilink")，源自于从20世纪70年代开始在美国[AT\&T公司的](../Page/AT&T.md "wikilink")[贝尔实验室开发的](../Page/贝尔实验室.md "wikilink")
[AT＆T](../Page/AT&T.md "wikilink") Unix 。

## 簡介

UNIX操作系统，是一个强大的多用户、多任务操作系统，支持多种处理器架构，按照操作系统的分类，属于分时操作系统，最早由Ken
Thompson、Dennis Ritchie和Douglas
McIlroy于1969年在AT\&T的贝尔实验室开发。目前它的商标权由国际开放标准组织所拥有，只有符合单一UNIX规范的UNIX系统才能使用UNIX这个名称，否则只能称为类UNIX（UNIX-like）。

Unix的前身为1964年開始的[Multics](../Page/Multics.md "wikilink")，[贝尔实验室](../Page/贝尔实验室.md "wikilink")
（Bell Labs）1965年时，加入一项由通用电气（General Electric）和麻省理工学院（MIT）合作
的计划；该计划要建立一套多使用者、多任务、多层次（multi－user、multi－processor、multi－level）的MULTICS操作系统。贝尔实验室参与了这个操作系统的研发，但因为开发速度太慢，1969年贝尔实验室决定退出这个计划。贝尔实验室的工程师，[肯·汤普逊和](../Page/肯·汤普逊.md "wikilink")[丹尼斯·里奇](../Page/丹尼斯·里奇.md "wikilink")，在此时自行开发了Unix。

此後的10年，Unix在學術機構和大型企業中得到了廣泛的應用，當時的UNIX擁有者[AT\&T公司以低廉甚至免費的許可將Unix源碼授權給學術機構做研究或教學之用](../Page/AT&T.md "wikilink")，許多機構在此源碼基礎上加以擴充和改進，形成了所謂的「Unix變種」，這些變種反過來也促進了Unix的發展，其中最著名的變種之一是由[加州大學柏克萊分校開發的](https://zh.wikipedia.org/wiki/加州大學柏克萊分校 "wikilink")[柏克萊軟件套件](https://zh.wikipedia.org/wiki/柏克萊軟件套件 "wikilink")(BSD)產品。

后来[AT\&T意识到了Unix的商业价值](../Page/AT&T.md "wikilink")，不再将Unix源码授权给学术机构，并对之前的Unix及其变种声明了版权权利。BSD在Unix的历史发展中具有相当大的影响力，被很多商业厂家采用，成为很多商用Unix的基础。其不断增大的影响力终于引起了AT\&T的关注，于是开始了一场持久的版权官司，这场官司一直打到AT\&T将自己的Unix系统实验室卖掉，新接手的[Novell采取了一种比较开明的做法](../Page/Novell.md "wikilink")，允许柏克莱分校自由发布自己的Unix变种，但是前提是必须将来自于AT\&T的代码完全删除，于是诞生了4.4
BSD Lite版，由于这个版本不存在法律问题，4.4 BSD
Lite成为了现代柏克莱软件套件的基础版本。尽管后来，非商业版的Unix系统又经过了很多演变，但其中有不少最终都是建立在BSD版本上（[Linux](../Page/Linux.md "wikilink")、[Minix等系统除外](https://zh.wikipedia.org/wiki/Minix "wikilink")）。所以从这个角度上，4.4
BSD 又是所有自由版本Unix的基础，它们和[System
V及Linux等共同构成Unix操作系统这片璀璨的星空](https://zh.wikipedia.org/wiki/System_V "wikilink")。

BSD使用主版本加次版本的方法標識，如4.2、4.3BSD，在原始版本的基礎上還有派生版本，這些版本通常有自己的名字，如4.3BSD-Net/1，4.3BSD-Net/2等。BSD在發展中也逐漸衍生出3個主要的分支：[FreeBSD](../Page/FreeBSD.md "wikilink")、[OpenBSD和](../Page/OpenBSD.md "wikilink")[NetBSD](../Page/NetBSD.md "wikilink")。

此後的幾十年中，Unix仍在不斷變化，其版權所有者不斷變更，授權者的數量也在增加。Unix的版權曾經為[AT\&T所有](../Page/AT&T.md "wikilink")，之後[Novell擁有取得了Unix](../Page/Novell.md "wikilink")，再之後Novell又將版權出售給了[聖克魯茲作業](../Page/聖克魯茲作業.md "wikilink")，但不包括知识产权和专利权（這一事實雙方尚存在爭議）。有很多大公司在取得了Unix的授權之後，開發了自己的Unix產品，比如IBM的[AIX](https://zh.wikipedia.org/wiki/AIX "wikilink")、HP的[HP-UX](../Page/HP-UX.md "wikilink")、SCO的[Openserver](https://zh.wikipedia.org/wiki/Openserver "wikilink")、SUN的[Solaris](../Page/Solaris.md "wikilink")（被Oracle收购）和SGI的[IRIX](../Page/IRIX.md "wikilink")。

Unix因为其安全可靠，高效强大的特点在服务器领域得到了广泛的应用。直到GNU/Linux流行开始前，Unix也是科学计算、大型机、超级计算机等所用操作系统的主流。现在其仍然被应用于一些对稳定性要求极高的数据中心之上。

## 历史

### 初创期

Unix最初受到[Multics计划的启发](../Page/Multics.md "wikilink")。Multics是由[麻省理工学院](../Page/麻省理工学院.md "wikilink")、[通用电气和AT](../Page/通用电气.md "wikilink")\&T底下的[贝尔实验室合作进行的操作系统项目](../Page/贝尔实验室.md "wikilink")，被设计运行在[GE-645大型主机上](https://zh.wikipedia.org/wiki/GE-645 "wikilink")。但是由于整个目标过于庞大，糅合了太多的特性，Multics虽然发布了一些产品，但是性能都很低，AT\&T最终撤出了投入Multics项目的资源，退出这项合作计划。

贝尔实验室最初参与Multics计划的部门为计算器技术研发部门（Computing Techniques Research
Department），部门主管为[道格拉斯·麦克罗伊](https://zh.wikipedia.org/wiki/道格拉斯·麦克罗伊 "wikilink")，其下的工程师，原有[丹尼斯·里奇](../Page/丹尼斯·里奇.md "wikilink")、[布莱恩·柯林汉](https://zh.wikipedia.org/wiki/布莱恩·柯林汉 "wikilink")、[道格拉斯·麦克罗伊](https://zh.wikipedia.org/wiki/道格拉斯·麦克罗伊 "wikilink")、[麦克·列斯克](https://zh.wikipedia.org/wiki/麦克·列斯克 "wikilink")（Mike
Lesk）与[乔伊·欧桑纳](https://zh.wikipedia.org/wiki/乔伊·欧桑纳 "wikilink")（Joe
Ossanna）等人，为了Multics计划，他们又召募了[肯·汤普逊加入其中](../Page/肯·汤普逊.md "wikilink")。[肯·汤普逊进入Multics计划不久](../Page/肯·汤普逊.md "wikilink")，计划就中止了，但因为机器仍然保留在贝尔实验室，他继续在GE-645上开发软件。[肯·汤普逊在GE](../Page/肯·汤普逊.md "wikilink")-645上，写出了一个仿真器，可以让一个文件系统与内存分页机制运作起来。他同时也写了一个程序语言[Bon](https://zh.wikipedia.org/wiki/Bon "wikilink")，编写了一个太空旅行游戏。经过实际运行后，他发现游戏速度很慢而且耗费昂贵，每次运行会花费75美元。在GE-645被搬走后，肯·汤普逊在实验室中寻找没人使用的机器，找到了几台[PDP-7](https://zh.wikipedia.org/wiki/PDP-7 "wikilink")。丹尼斯·里奇的帮助下，汤普逊用[PDP-7的組合語言重写了这个游戏](https://zh.wikipedia.org/wiki/PDP-7 "wikilink")，并使其在[DEC](https://zh.wikipedia.org/wiki/DEC "wikilink")
PDP-7上运行起来。这次经历加上Multics项目的经验，促使汤普逊开始在DEC PDP-7上研究如何开发操作系统。

1969年，肯·汤普逊提议在PDP-7上开发一个新的阶层式操作系统的计划。Multics的原有成员，加上Rudd
Canady，都投入这个计划。肯·汤普逊发现要编写驱动程序来驱动文件系统，进行测试，并不容易，于是开发了一个[壳层](https://zh.wikipedia.org/wiki/壳层 "wikilink")（shell）与一些驱动程序，做出一个操作系统的雏形。在团队合作下，Multics的许多功能都被采纳，重新實作，最终做出了一个[分时多任务操作系统](https://zh.wikipedia.org/wiki/分时多任务 "wikilink")，成为第一版UNIX。因为Multics来自“MULTiplexed
Information and Computing
System”的缩写，在1970年，那部PDP-7却-{只}-能支持两个使用者，[彼得·纽曼](https://zh.wikipedia.org/wiki/彼得·纽曼 "wikilink")（Peter
G. Neumann）戏称他们的系统其实是:“UNiplexed Information and Computing
System”，缩写为“UNICS”。于是这个项目被称为**UnICS**（**Un**iplexed
**I**nformation and **C**omputing **S**ystem）。

因為PDP-7的效能不佳，肯·湯普遜與丹尼斯·里奇決定把第一版UNIX移植到[PDP-11/20的機器上](../Page/PDP-11.md "wikilink")，開發第二版UNIX。在效能提升後，真正可以提供多人同時使用，[布萊恩·柯林漢提議將它的名稱改為](../Page/布萊恩·柯林漢.md "wikilink")**UNIX**。

第一版UNIX是用PDP-7汇编语言编写的，一些应用是由叫做[B语言的](https://zh.wikipedia.org/wiki/B语言 "wikilink")[解释型语言和汇编语言混合编写的](https://zh.wikipedia.org/wiki/解释型语言 "wikilink")。在进行系统编程时不够强大，所以湯普遜和里奇对其进行了改造，并于1971年共同发明了[C语言](https://zh.wikipedia.org/wiki/C语言 "wikilink")。1973年湯普遜和里奇用C语言重写了Unix，形成第三版UNIX。在当时，为了实现最高效率，系统程序都是由汇编语言编写，所以湯普遜和里奇此举是极具大胆创新和革命意义的。用C语言编写的Unix代码简洁紧凑、易移植、易读、易修改，为此后Unix的发展奠定了坚实基础。

### 发展期

1974年，湯普遜和里奇合作在ACM通信上发表了一篇关于UNIX的文章，这是UNIX第一次出现在贝尔实验室以外。此后UNIX被政府机关，研究机构，企业和大学注意到，并逐渐流行开来。

1975年，UNIX发布了4、5、[6三个版本](https://zh.wikipedia.org/wiki/Version_6_Unix "wikilink")。1978年，已经有大约600台计算机在运行UNIX。1979年，[版本7发布](https://zh.wikipedia.org/wiki/Version_7_Unix "wikilink")，这是最后一个广泛发布的研究型UNIX版本。20世纪80年代相继发布的8、9、10版本只授权给了少数大学。此后这个方向上的研究导致了[九号计划的出现](https://zh.wikipedia.org/wiki/贝尔实验室九号计划 "wikilink")，这是一个新的[分布式操作系统](../Page/分布式操作系统.md "wikilink")。

1982年，AT\&T基于版本7开发了[UNIX System
Ⅲ的第一个版本](https://zh.wikipedia.org/wiki/UNIX_System_Ⅲ "wikilink")，这是一个商业版本仅供出售。为了解决混乱的UNIX版本情况，AT\&T综合了其他大学和公司开发的各种UNIX，开发了[UNIX
System V Release
1](https://zh.wikipedia.org/wiki/System_V#SVR1 "wikilink")。

这个新的UNIX商业发布版本不再包含源代码，所以加州大学柏克萊分校继续开发BSD UNIX，作为UNIX System
III和V的替代选择。BSD对UNIX最重要的贡献之一是[TCP/IP](https://zh.wikipedia.org/wiki/TCP/IP "wikilink")。BSD有8个主要的发行版中包含了TCP/IP：4.1c、4.2、4.3、4.3-Tahoe、4.3-Reno、Net2、4.4以及4.4-lite。这些发布版中的TCP/IP代码几乎是现在所有系统中TCP/IP实现的前辈，包括AT\&T
System V
UNIX和[Microsoft](https://zh.wikipedia.org/wiki/Microsoft "wikilink")
[Windows](https://zh.wikipedia.org/wiki/Windows "wikilink")。

其他一些公司也开始为其自己的小型机或工作站提供商业版本的UNIX系统，有些选择System
V作为基础版本，有些则选择了BSD。BSD的一名主要开发者，[比尔·乔伊](../Page/比尔·乔伊.md "wikilink")，在BSD基础上开发了[SunOS](../Page/SunOS.md "wikilink")，并最终创办了[-{zh-hans:昇陽公司;
zh-hant:昇陽公司;}-](https://zh.wikipedia.org/wiki/升阳 "wikilink")。

1991年，一群BSD开发者（Donn Seeley、Mike Karels、Bill Jolitz和Trent
Hein）离开了加州大学，创办了[Berkeley Software Design,
Inc](https://zh.wikipedia.org/wiki/Berkeley_Software_Design,_Inc "wikilink")
(BSDI)。BSDI是第一家在便宜常见的[Intel平台上提供全功能商业BSD](https://zh.wikipedia.org/wiki/Intel "wikilink")
UNIX的厂商。后来Bill
Jolitz离开了BSDI，开始了386BSD的工作。386BSD被认为是[FreeBSD](../Page/FreeBSD.md "wikilink")、[OpenBSD和](../Page/OpenBSD.md "wikilink")[NetBSD](../Page/NetBSD.md "wikilink")、[DragonFlyBSD的先辈](https://zh.wikipedia.org/wiki/DragonFlyBSD "wikilink")。

AT\&T继续为UNIX System
V增加了文件锁定，系统管理，作业控制，流和远程文件系统。1987到1989年，AT\&T决定将[Xenix](../Page/Xenix.md "wikilink")（微软开发的一个x86-pc上的UNIX版本），BSD，SunOS和System
V融合为System V Release 4（SVR4）。这个新发布版将多种特性融为一体，结束了混乱的竞争局面。

1993年以后，大多数商业UNIX发行商都基于SVR4开发自己的UNIX变体了。

### 现况

UNIX System V Release
4发布后不久，AT\&T就将其所有UNIX权利出售给了[Novell](../Page/Novell.md "wikilink")。Novell期望以此来对抗微软的[Windows
NT](../Page/Windows_NT.md "wikilink")，但其核心市场受到了严重伤害，1993年Novell将SVR4的商標权利出售给了[X/OPEN公司](https://zh.wikipedia.org/wiki/X/Open "wikilink")，后者成為定义UNIX标准的機構。1996年，X/OPEN和OSF/1合并，创建了[國際開放標準組織](https://zh.wikipedia.org/wiki/國際開放標準組織 "wikilink")，由它公布的｢[單一UNIX規範](../Page/單一UNIX規範.md "wikilink")」定义着具有什么特徵的作業系統可以冠上UNIX之名，相對地，不符合這些標準但與Unix有類似性的作業系統只能稱為｢類Unix」([unix-like](https://zh.wikipedia.org/wiki/unix-like "wikilink"))。

UNIX代码[著作權则由Novell售給](../Page/著作權.md "wikilink")[聖克魯茲作業](../Page/聖克魯茲作業.md "wikilink")，2001年这家公司的商標與UNIX產品和業務都出售给了Caldera
Systems，交易完成后，Caldera又被重命名为[SCO Group](../Page/SCO_Group.md "wikilink")。

### 1127部門的解散

根據一項
[報導](http://www.unixreview.com/documents/s=9846/ur0508l/ur0508l.html)
指出，當年負責研發UNIX與後續維護工作的貝爾實驗室1127部門已於2005年8月正式宣告解散。肯·湯普遜已退休，現居[加州](https://zh.wikipedia.org/wiki/加州 "wikilink")；[丹尼斯·里奇調到別的部門](../Page/丹尼斯·里奇.md "wikilink")；而則在[達特茅斯學院擔任教授](https://zh.wikipedia.org/wiki/達特茅斯學院 "wikilink")。

## 文化

UNIX不仅仅是一个操作系统，更是一种生活方式。经过几十年的发展，UNIX在技术上日臻成熟的过程中，它独特的设计哲学和美学也深深地吸引了一大批技术人员，他们在维护、开发、使用UNIX的同时，UNIX也影响了他们的思考方式和看待世界的角度。

UNIX重要的设计原则：

  - 简洁至上（[KISS原则](../Page/KISS原则.md "wikilink")）
  - 提供机制而非策略

## 标准

从1980年代开始，[POSIX](https://zh.wikipedia.org/wiki/POSIX "wikilink")，一个开放的操作系统标准就在制定中，[IEEE制定的POSIX标准](https://zh.wikipedia.org/wiki/IEEE "wikilink")（ISO/IEC
9945）现在是UNIX系统的基础部分。

## 自由的类Unix系统

1984年，[Richard
Stallman发起了](https://zh.wikipedia.org/wiki/Richard_Stallman "wikilink")[GNU项目](../Page/GNU.md "wikilink")，目标是创建一个完全自由且向下兼容UNIX的操作系统。这个项目不断发展壮大，包含了越来越多的内容。现在，GNU项目的产品，如[Emacs](../Page/Emacs.md "wikilink")、[GCC等已经成为各种其它自由发布的类UNIX系统中的核心角色](../Page/GCC.md "wikilink")。

1990年，[Linus
Torvalds決定編寫一個自己的](https://zh.wikipedia.org/wiki/Linus_Torvalds "wikilink")[Minix內核](https://zh.wikipedia.org/wiki/Minix "wikilink")，初名為Linus'
Minix，意為Linus的Minix內核，後來改名為[Linux](../Page/Linux.md "wikilink")。此內核於1991年正式发布，并逐渐引起人们的注意。当时GNU操作系统仍未完成，GNU系统软件集与Linux内核结合后，GNU软件构成了这个POSIX兼容操作系统GNU/Linux的基础。今天[GNU/Linux已经成为发展最为活跃的自由](https://zh.wikipedia.org/wiki/GNU/Linux "wikilink")／开放源码的類Unix操作系统。

1994年，受到GNU工程的鼓舞，BSD走上了复兴的道路。BSD的开发也走向了几个不同的方向，并最终导致了[FreeBSD](../Page/FreeBSD.md "wikilink")、[NetBSD](../Page/NetBSD.md "wikilink")、[OpenBSD和](../Page/OpenBSD.md "wikilink")[DragonFlyBSD等基于BSD的操作系统的出现](https://zh.wikipedia.org/wiki/DragonFlyBSD "wikilink")。

## 参考文献

## 外部链接

  - [UNIX的完整历史](http://www.levenez.com/unix/)
  - [UNIX第7版手册](http://plan9.bell-labs.com/7thEdMan/)

{{-}}

[Category:Unix](https://zh.wikipedia.org/wiki/Category:Unix "wikilink")
[Category:操作系统](https://zh.wikipedia.org/wiki/Category:操作系统 "wikilink")