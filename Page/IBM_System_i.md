[右](https://zh.wikipedia.org/wiki/File:I5-570.jpg "fig:右") **IBM System i**是IBM的上一代中端计算机系统,是面向 [IBM i](../Page/IBM_IntelliStation系列.md "wikilink") 的用户的产品，随后于2008年4月被 [IBM Power Systems的取代](https://zh.wikipedia.org/wiki/IBM_Power_Systems "wikilink")。该平台于1988年6月21日首次作为**AS/400**（Application System/400）推出，后来在2000年更名为 eServer **iSeries**。该系统曾作为2006年IBM系统品牌推广计划的一部分，后它又被重命名为**System i**。**AS/400** 项目的代号为“Silver Lake”，其代号来源于[明尼苏达州罗切斯特市中心的湖泊](https://zh.wikipedia.org/wiki/明尼蘇達州 "wikilink")，目前该系统的开发工作正在进行中。

2008年4月，IBM宣布该系统与[System p平台集成](https://zh.wikipedia.org/wiki/System_p "wikilink")。 统一产品系列称为IBM Power Systems，该系列支持[IBM i](../Page/IBM_IntelliStation系列.md "wikilink")（以前称为i5/OS或OS/400），[AIX和](../Page/IBM_AIX.md "wikilink")[GNU](../Page/GNU.md "wikilink")/[Linux](../Page/Linux.md "wikilink")操作系统。

## 摘要

AS/400的前身 [IBM System/38](https://zh.wikipedia.org/wiki/IBM_System/38 "wikilink") 于1979年8月首次推出，并作为一般商务和部门使用的小型机销售。 它与其他产品系列一起销售，而每个产品系列都有不同的架构（如: [System/3](https://zh.wikipedia.org/wiki/IBM_System/360 "wikilink"), [System/32](https://zh.wikipedia.org/wiki/System/32 "wikilink"), [System/34](https://zh.wikipedia.org/wiki/System/34 "wikilink"), [System/36](https://zh.wikipedia.org/wiki/IBM_System/360 "wikilink") ）。

IBM认识到与遗留代码编写的数千个程序兼容的重要性后，于1988年推出了AS/400中端计算机系列.AS代表“应用系统(**Application System** )”。并在开发AS/400期间付出了巨大努力，目的是使System/34和System/36编写的程序能够移动到AS/400。 之后的System/38上的程序可与新的AS/400直接兼容（在操作系统“重新封装”之后）。

2000年，根据IBM的[eServer initiative规则](https://zh.wikipedia.org/wiki/eServer_initiative "wikilink")，AS/400系列更名为**eServer iSeries**。 2006年，再次被重新命名为**IBM System i**。 2008年，在推出近20年后，[System i和](https://zh.wikipedia.org/wiki/Ibm_System_i "wikilink")[System p产品线被合并为](https://zh.wikipedia.org/wiki/IBM_System_p "wikilink")[IBM Power Systems系列的新产品线](https://zh.wikipedia.org/wiki/IBM_Power_Systems "wikilink")。\[1\]

AS/400操作系统最初命名为OS/400（遵循[OS/360的开始的模式](https://zh.wikipedia.org/wiki/OS/360 "wikilink")，然后是[OS/2](https://zh.wikipedia.org/wiki/OS/2 "wikilink")）。 操作系统经历了名称更改以及IBM服务器阵容的重新命名。 操作系统更名为 i5/OS，为了与 [POWER5的处理器的引入以及被重新命名的](../Page/IBM_POWER.md "wikilink")**eServer iSeries**硬件相对应。 在6.1版本中，操作系统再次重命名为**IBM i**。

操作系统是基于对象的。 功能包括[RDBMS](https://zh.wikipedia.org/wiki/RDBMS "wikilink") ([DB2/400](https://zh.wikipedia.org/wiki/DB2/400 "wikilink"))，菜单驱动的界面，支持多个用户，面向块的终端支持（[IBM 5250](https://zh.wikipedia.org/wiki/IBM_5250 "wikilink")）和打印机。 IBM i具有内置的安全性，支持通信和基于Web的应用程序，可以在可选的[IBM WebSphere Application Server](../Page/IBM_WebSphere_Application_Server.md "wikilink") 的内部执行，也可以在[Apache web server的服务器的本机端口内作为](https://zh.wikipedia.org/wiki/Apache_web_server "wikilink")[PHP](../Page/PHP.md "wikilink")/[MySQL](../Page/MySQL.md "wikilink")的应用程序执行。\[2\]

与[Unix及其衍生产品的](../Page/UNIX.md "wikilink")“[everything is a file](https://zh.wikipedia.org/wiki/everything_is_a_file "wikilink")”的功能不同，在IBM i上，一切都是对象（具有内置的持久性和垃圾收集）。 IBM i使用集成文件系统提供类Unix文件目录。\[3\] [Java](../Page/Java.md "wikilink")的兼容性是通过[Java虚拟机](../Page/Java虚拟机.md "wikilink")的本机端口实现的。

与IBM的大型机操作系统一样，IBM i使用的[EBCDIC](../Page/EBCDIC.md "wikilink")作为固有编码。\[4\]

OS/400版本4中，版本4（V4R4）引入了[LPARs (logical partitions)](https://zh.wikipedia.org/wiki/LPARs_\(logical_partitions\) "wikilink") ，允许多个虚拟系统在单个硬件占用空间上运行。

## 功能

IBM **System i**平台使用集成的[DB2](../Page/IBM_DB2.md "wikilink") [关系数据库](../Page/关系数据库.md "wikilink")扩展了基于对象的系统的[System/38体系结构](https://zh.wikipedia.org/wiki/IBM_System_/_38 "wikilink")。同样重要的是[虚拟机和](https://zh.wikipedia.org/wiki/虚拟机 "wikilink")[单级存储概念](https://zh.wikipedia.org/wiki/单层商店 "wikilink")，它将平台建立为高级商用计算机。

### 指令系统

促进IBM System i平台使用寿命的一个特性是其高级[指令集](../Page/指令集架構.md "wikilink")（IBM称为“技术独立机器接口”的**TIMI**），它无需重新编译直接允许应用程序利用硬件和软件的优势。 TIMI是一个独立于CPU底层机器指令集的[虚拟指令集](https://zh.wikipedia.org/wiki/虚拟指令集 "wikilink")。 用户模式程序包含TIMI指令和CPU的机器指令，从而确保硬件独立性。 这在概念上有点类似于[Smalltalk](../Page/Smalltalk.md "wikilink")，[Java](../Page/Java.md "wikilink")和[.NET等编程环境的虚拟机架构](../Page/.NET框架.md "wikilink")。 关键的区别是它深深地嵌入到AS/400的设计中，以使应用程序在不同的处理器系列中有效地二进制兼容。

与在[运行时解释虚拟指令的其他一些虚拟机体系结构不同](https://zh.wikipedia.org/wiki/运行时 "wikilink")，TIMI指令永远不会被解释。它们构成一个中间[编译时步骤](https://zh.wikipedia.org/wiki/编译时 "wikilink")，并作为最终编译步骤[转换为处理器的指令集](https://zh.wikipedia.org/wiki/转换为处理器的指令集 "wikilink") 。除可执行机器指令外，TIMI指令还存储在最终程序对象中。这是在一个处理器系列（例如，原始[CISC](../Page/复杂指令集.md "wikilink") AS/400 48位处理器）上编译的应用程序对象可以如何移动到新处理器（例如， [PowerPC](../Page/PowerPC.md "wikilink") 64位）而无需重新编译。从旧的48位平台保存的应用程序可以简单地还原到新的64位平台上，操作系统会丢弃旧的机器指令并将TIMI指令重新转换为新处理器的64位指令。

系统的指令集将所有指针定义为128位。这是20世纪70年代中期[System/38](https://zh.wikipedia.org/wiki/IBM_System_/_38 "wikilink") （S/38）的原始设计特性，计划将来使用更快的处理器，内存和扩展的地址空间。在将来出现128位通用处理器的时候，IBM i已经完全支持128位。原始AS/400 CISC模型使用与S/38相同的48位地址空间。地址空间在1995年扩展，当时[RISC](../Page/精简指令集.md "wikilink") [PowerPC](../Page/PowerPC.md "wikilink") [RS64](https://zh.wikipedia.org/wiki/RS64 "wikilink") 64位CPU处理器取代了48位CISC处理器。

对于64位PowerPC处理器，虚拟地址位于指针最右边的64位，而S/38和CISC AS/400中则为48位。 64位地址空间将主存储器和磁盘作为单个地址集引用，这是单级存储概念。

### 软件

IBM System i包含基于库的[操作系统](../Page/操作系统.md "wikilink") [IBM i](https://zh.wikipedia.org/wiki/IBM_i "wikilink") ，并且还能够支持[AIX](../Page/IBM_AIX.md "wikilink") ， [Linux](../Page/Linux.md "wikilink") ， [Lotus Domino](../Page/IBM_Lotus_Notes.md "wikilink") ， [Microsoft](../Page/微软.md "wikilink") [Windows 2000和](../Page/Windows_2000.md "wikilink")[Windows Server 2003多个实例](../Page/Windows_Server_2003.md "wikilink")。虽然[POWER处理器支持](../Page/IBM_POWER.md "wikilink")[IBM i](https://zh.wikipedia.org/wiki/IBM_i "wikilink") ，[AIX](../Page/IBM_AIX.md "wikilink") ， [Linux](../Page/Linux.md "wikilink") 和 [Lotus Domino](../Page/IBM_Lotus_Notes.md "wikilink") ，但只有单处理器的内部刀片服务器（IXS）或者是外部链接的多处理器服务器（IXA和iSCSI）在Windows下支持。 其中iSCSI还支持IBM Bladecenters的附件。 其连接的服务器也支持Windows，Linux和VMware ESX（VI3）。

IBM [大型计算机](../Page/大型计算机.md "wikilink")引入的一项功能是[LPAR](https://zh.wikipedia.org/wiki/LPAR "wikilink") （逻辑分区），其目的是使多个操作系统可以在一台IBM System i设备上同时运行。各种不同的操作系统可在配置有LPAR的系统上的不同的分区上运行。为每个LPAR通过权重系统获得一部分系统资源（如:内存，硬盘空间和CPU时间），而这些系统通过权重可以确定在任何给定时间内分配未使用资源的位置，确保了一个操作系统将无法占用另一个操作系统的内存或资源运行。该方案支持（和常用）的操作系统是[IBM i](../Page/IBM_IntelliStation系列.md "wikilink")， [AIX和](../Page/IBM_AIX.md "wikilink")[Linux](../Page/Linux.md "wikilink") 。

其他功能还包括一个集成 [DB2](../Page/IBM_DB2.md "wikilink") [数据库](../Page/数据库.md "wikilink")管理系统，一个菜单驱动接口， [多用户](https://zh.wikipedia.org/wiki/多用户 "wikilink") 的支持，非可编程的终端([IBM5250](https://zh.wikipedia.org/wiki/IBM5250 "wikilink"))和打印机、安保、通信、客户–服务器和基于网络的应用程序。 许多包含在IBM的系统上的必要软件运行在基本的操作系统上。

常见的[客户端 - 服务器系统被IBM](../Page/主從式架構.md "wikilink") System i支持，如[ODBC](../Page/ODBC.md "wikilink")和[JDBC，用于从客户端软件](../Page/Java数据库连接.md "wikilink")（如[Java](../Page/Java.md "wikilink") ，Microsoft [.NET语言等](../Page/.NET框架.md "wikilink")）访问其数据库。

### 程序设计

RPG ， [汇编语言](../Page/汇编语言.md "wikilink") ， [C](https://zh.wikipedia.org/wiki/C语言 "wikilink") ， [C++](../Page/C++.md "wikilink") ， [Pascal](../Page/Pascal_\(程式語言\).md "wikilink") ， [Java](../Page/Java.md "wikilink") ， [EGL](https://zh.wikipedia.org/wiki/EGL（编程语言） "wikilink") ， [Perl](../Page/Perl.md "wikilink") ， [Smalltalk](../Page/Smalltalk.md "wikilink") ， [COBOL](../Page/COBOL.md "wikilink") ， [SQL](../Page/SQL.md "wikilink") ， [BASIC](../Page/BASIC.md "wikilink") ， [PHP](../Page/PHP.md "wikilink") ， [PL/I](https://zh.wikipedia.org/wiki/PL/I "wikilink") ， [Python](../Page/Python.md "wikilink")和[REXX](../Page/REXX.md "wikilink") 编程语言可用于AS/400系统平台上。[CASE工具可用的有](https://zh.wikipedia.org/wiki/電腦輔助軟體工程 "wikilink")： [CA Plex](https://zh.wikipedia.org/wiki/CA_Plex "wikilink")（以前的[AllFusion Plex](https://zh.wikipedia.org/wiki/AllFusion_Plex "wikilink")） ， [Synon](https://zh.wikipedia.org/wiki/Synon "wikilink") ， [IBM Rational Business Developer Extension](https://zh.wikipedia.org/wiki/Rational_Business_Developer "wikilink") ， [Accelerator](https://zh.wikipedia.org/wiki/加速器（软件） "wikilink") ， [LANSA](https://zh.wikipedia.org/wiki/LANSA（开发环境） "wikilink") ， [Uniface和](https://zh.wikipedia.org/wiki/Uniface（编程语言） "wikilink")[GeneXus](https://zh.wikipedia.org/wiki/GeneXus "wikilink") 。

ILE（ [集成语言环境](https://zh.wikipedia.org/wiki/综合语言环境 "wikilink") ）编程环境允许用任何其他ILE语言编写的相同可执行程序或者调用到程序中绑定。而这些程序都来自ILE兼容语言（C，C ++，COBOL，RPG，Fortran和CL）

IBM System i支持[Java](../Page/Java.md "wikilink")语言，包括32位和64位[Java虚拟机](../Page/Java虚拟机.md "wikilink") （JVM）。

使用键盘F4功能键可以提示[控制语言（CL）中的命令](https://zh.wikipedia.org/wiki/IBM_i控制语言 "wikilink")，并且大多数提供光标敏感的帮助以使指定命令参数更简单。所有命令名称和参数关键字都基于动词和主题的统一标准化和大多数3个字母的缩写，使应用程序开发人员能够轻松呈现和解释，而不是其他操作系统通常具有相关功能的隐藏或不一致的命令名称或命令参数开关。例如，将文本描述应用于要创建或更改的任何对象的参数关键字对所有此类命令的拼写方式相同。

例子：

  - CRTUSRPRF，DSPUSRPRF，CHGUSRPRF，DLTUSRPRF - 创建，显示，更改和删除用户配置文件
  - CRTLIB，DSPLIB，CHGLIB，DLTLIB - 创建，显示，更改和删除库
  - ADDLIBLE，RMVLIBLE，CHGLIBL - 添加或删除库列表条目或更改库列表
  - CPYF，CRTF，DSPF，CHGF，DLTF - 复制，创建，显示，更改和删除文件
  - WRKACTJOB - 使用活动作业
  - WRKSYSSTS - 使用系统状态
  - STRSST，STRPASTHR，STRSBS - 启动系统服务工具，开始通过（远程登录），启动子系统
  - VRYCFG - 改变配置，使接口上升或下降
  - PWRDWNSYS - 断电系统
  - WRKSPLF - 使用假脱机文件

对于传统的业务编程语言（如RPG，COBOL和C），IBM System i提供了集成数据库的接口，允许这些语言像处理[ISAM或](https://zh.wikipedia.org/wiki/ISAM "wikilink")[VSAM文件的其他平台一样处理数据库表](https://zh.wikipedia.org/wiki/VSAM "wikilink")。

对5250显示操作的支持是通过提供显示文件，工作站，键盘和显示器以及交互式应用程序之间的接口，而不是在很少或没有用户交互的情况下进行批处理。 ASCII终端和PC工作站同样受到良好支持，并且可通过互联网或[LAN网络进行远程访问](../Page/局域网.md "wikilink")，其通信由IBM或非IBM通信软件补充，例如[TELNET或](../Page/Telnet.md "wikilink")[TELNET 5250](../Page/Telnet.md "wikilink") 。

IBM系统也可能带有开发和编程软件，如[Programming Development Manager](https://zh.wikipedia.org/wiki/编程开发经理 "wikilink") 。

## 历史

IBM System i，当时称为AS/400，是[System/38数据库机器架构的延续](https://zh.wikipedia.org/wiki/IBM_System_/_38 "wikilink")（IBM于1978年10月宣布并于1979年8月交付）。 AS/400删除了[基于能力的寻址](https://zh.wikipedia.org/wiki/基于能力的寻址 "wikilink") 。 \[5\] AS/400增加了与[System/36的源兼容性](https://zh.wikipedia.org/wiki/系统/_36 "wikilink")，结合了[IBM Rochester工厂生产的两台主计算机](https://zh.wikipedia.org/wiki/IBM罗切斯特 "wikilink")。 System/36是IBM最成功的迷你电脑，但架构已达到极限。第一个AS/400系统（开发代号名称为Silverlake和Olympic）于1988年以“Best of Both Worlds”为标志交付，自那时起产品线不断更新。 Inventive [Designers的](https://zh.wikipedia.org/wiki/创新设计师 "wikilink") Guy Dehond是Silverlake的测试人员之一。在[OS/400](https://zh.wikipedia.org/wiki/OS_/_400 "wikilink") （AS/400的操作系统）上工作的程序员没有UNIX背景。首席架构师[Frank Soltis博士表示](https://zh.wikipedia.org/wiki/弗兰克索尔蒂斯 "wikilink")，这是这个与任何其他操作系统之间的主要区别。

AS/400是第一个获得[NSA](../Page/美国国家安全局.md "wikilink") C2安全评级的通用计算机系统之一（ [Gould](https://zh.wikipedia.org/wiki/系统工程实验室 "wikilink") UTX/C2，基于UNIX的系统于1986年被打上\[6\] ），并于1995年扩展到雇用[64位处理器和操作系统](../Page/64位元.md "wikilink")。

1995年从48位转换到64位要求所有程序都是“可观察的”，即调试信息没有从编译代码中删除。这对那些购买了没有来源且没有可观察性的第三方产品的人造成了问题。在2008年，V6R1的引入引发了类似的问题，尽管这次IBM更倾向于将其称为“刷新”。 \[7\]

2000年，IBM将AS/400重命名为iSeries，作为其电子服务器品牌推广计划的一部分。随着i5服务器的推出，该产品线在2004年进一步扩展，这是第一个使用IBM [POWER5处理器的服务器](https://zh.wikipedia.org/wiki/POWER5 "wikilink")。该系统的体系结构允许将来实现128位处理器。

尽管在1988年宣布，但AS/400仍然是IBM最近在内部开发的主要架构转变。自1993年[Lou Gerstner的到来以来](https://zh.wikipedia.org/wiki/小路易斯·V·格斯特納 "wikilink")， [IBM](../Page/IBM.md "wikilink")认为这种巨大的内部发展风险太大。相反，IBM现在更倾向于通过收购（例如， [Lotus软件和](../Page/蓮花軟體.md "wikilink")[Rational软件的收购](https://zh.wikipedia.org/wiki/Rational軟體 "wikilink")）来实现关键产品的进步，并支持开放标准的开发，特别是Linux。值得注意的是，在1993年首席执行官[约翰·阿克斯离职后](https://zh.wikipedia.org/wiki/约翰阿克斯 "wikilink")，当IBM看起来可能被拆散时， [比尔盖茨评论说微软唯一感兴趣的部分是AS](../Page/比尔·盖茨.md "wikilink")/400部门。 （当时，微软的许多商业和金融系统都运行在AS/400平台上，1999年左右，随着[Windows 2000的引入](../Page/Windows_2000.md "wikilink")，情况就不再那么。 \[8\] \[9\] \[10\] ）

### 分布式文件和关系数据库服务

1986年，System/38宣布支持[分布式数据管理架构](https://zh.wikipedia.org/wiki/分布式数据管理架构 "wikilink") （DDM）。这使程序能够在运行CICS的远程System/36，System/38和IBM大型机系统上创建，管理和访问面向记录的文件。这种支持已扩展到AS/400及其后续工作中。它得到了增强，可以支持DDM定义的其他服务，并支持DDM允许的AS/400特定扩展。

1990年，基于DDM的[分布式关系数据库架构被AS](https://zh.wikipedia.org/wiki/DRDA "wikilink")/400宣布支持 。

## 硬件

AS/400最初基于定制的IBM CISC [CPU](../Page/中央处理器.md "wikilink") ，它具有指令集架构，称为内部微程序接口（IMPI），类似于[IBM System/370](https://zh.wikipedia.org/wiki/IBM_System_/_370 "wikilink") 。 \[11\]后来迁移到基于POWER的[RISC](../Page/精简指令集.md "wikilink") CPU系列，最终称为[RS64](https://zh.wikipedia.org/wiki/RS64 "wikilink") 。\[12\]

### AS/400，iSeries，i5，Power Systems中的CPU

该系统的i5使用 [POWER](../Page/IBM_POWER.md "wikilink") Cpu。 这些Cpu是开发和制造都是IBM。 POWER4/5/5+芯片包含有两个核心。 有 [多芯片模块](../Page/多晶片模組.md "wikilink") (MCM)。 他们有2个Cpu(4个核心)或4Cpu(8个核心)在一个MCM。

<table>
<thead>
<tr class="header">
<th><p>中央处理器</p></th>
<th><p>年</p></th>
<th><p>时钟速度</p></th>
<th><p>服务器型号</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>眼镜蛇（A10）</p></td>
<td><p>自1995年以来</p></td>
<td><p>55或75  兆赫</p></td>
<td><p>4xx，5xx</p></td>
</tr>
<tr class="even">
<td><p>马斯基（A25/A30）</p></td>
<td><p>自1996年以来</p></td>
<td><p>125或154  兆赫</p></td>
<td><p>53X</p></td>
</tr>
<tr class="odd">
<td><p>Apache （RS64）（A35）</p></td>
<td><p>自1997年以来</p></td>
<td><p>125  兆赫</p></td>
<td><p>6xx，150</p></td>
</tr>
<tr class="even">
<td><p>NorthStar （RS64 II）</p></td>
<td><p>自1998年以来</p></td>
<td><p>200,255或262  兆赫</p></td>
<td><p>170,250,7xx，650，S40，SB1 [13]</p></td>
</tr>
<tr class="odd">
<td><p>脉冲星 （RS64 III）</p></td>
<td><p>自1999年以来</p></td>
<td><p>450  兆赫</p></td>
<td><p>270,820</p></td>
</tr>
<tr class="even">
<td><p>伊斯塔</p></td>
<td><p>自2000年以来</p></td>
<td><p>400,500,540或600  兆赫</p></td>
<td><p>820,830,840，SB2，SB3</p></td>
</tr>
<tr class="odd">
<td><p>SStar （RS64 IV）</p></td>
<td><p>自2000年以来</p></td>
<td><p>540,600或750  兆赫</p></td>
<td><p>270,800,810,820,830,840</p></td>
</tr>
<tr class="even">
<td><p>POWER4</p></td>
<td><p>自2001年以来</p></td>
<td><p>1.1或1.3  千兆赫</p></td>
<td><p>890</p></td>
</tr>
<tr class="odd">
<td><p>POWER4 +</p></td>
<td><p>自2003年以来</p></td>
<td><p>1.9  千兆赫</p></td>
<td><p>825,870</p></td>
</tr>
<tr class="even">
<td><p>POWER5</p></td>
<td><p>自2004年以来</p></td>
<td><p>1.5或1.9  千兆赫</p></td>
<td><p>i5-520; i5-550; i5-570; i5-595</p></td>
</tr>
<tr class="odd">
<td><p>POWER5 +</p></td>
<td><p>自2005年以来</p></td>
<td><p>1.5   GHz（2005）<br />
<br />
<br />
<br />
1.9  千兆赫（2005）<br />
<br />
<br />
<br />
2.2  千兆赫<br />
<br />
<br />
<br />
2.3  千兆赫</p></td>
<td><p>i5-520，i5-550，i5-515，i5-525<br />
<br />
<br />
<br />
i5-570</p></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/POWER6" title="wikilink">POWER6</a></p></td>
<td><p>自2007年以来</p></td>
<td><p>3.5  千兆赫<br />
<br />
<br />
<br />
4.2  千兆赫<br />
<br />
<br />
<br />
4.7  千兆赫</p></td>
<td><p>BladeCenter JS12，JS22<br />
<br />
<br />
<br />
i5-570（MMA）<br />
<br />
<br />
<br />
M50，M25和M15</p></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/POWER6" title="wikilink">POWER6 +</a></p></td>
<td><p>自2009年以来</p></td>
<td><p>3.6  千兆赫<br />
<br />
<br />
<br />
3.8  千兆赫<br />
<br />
<br />
<br />
4  千兆赫<br />
<br />
<br />
<br />
4.2  千兆赫<br />
<br />
<br />
<br />
4.4  千兆赫<br />
<br />
<br />
<br />
5  千兆赫</p></td>
<td><p>BladeCenter JS12，JS22，JS23，JS43<br />
<br />
<br />
<br />
Power 520,550,560,570,575,595</p></td>
</tr>
<tr class="even">
<td><p>POWER7</p></td>
<td><p>自2010年以来</p></td>
<td><p>3.3  千兆赫<br />
<br />
<br />
<br />
3.6  千兆赫<br />
<br />
<br />
<br />
3.7  千兆赫<br />
<br />
<br />
<br />
4.2  千兆赫</p></td>
<td><p>BladeCenter PS701，PS702，PS703，PS704<br />
<br />
<br />
<br />
PureSystem计算节点p260，p460，p24L<br />
<br />
<br />
<br />
PowerLinux 7R1,7R2<br />
<br />
<br />
<br />
功率710,720,730,740,750,755,760,770,780,795</p></td>
</tr>
<tr class="odd">
<td><p>POWER7 +</p></td>
<td><p>自2012年以来</p></td>
<td><p>3.7  千兆赫<br />
<br />
<br />
<br />
4.2  千兆赫<br />
<br />
<br />
<br />
4.4  千兆赫</p></td>
<td><p>BladeCenter PS701，PS702，PS703，PS704<br />
<br />
<br />
<br />
PureSystem计算节点p260，p460，p24L<br />
<br />
<br />
<br />
PowerLinux 7R1,7R2<br />
<br />
<br />
<br />
功率710,720,730,740,750,755,760,770,780,795</p></td>
</tr>
<tr class="even">
<td><p>POWER8</p></td>
<td><p>自2014年起</p></td>
<td><p>2.5   GHz到5.0  千兆赫</p></td>
<td><p>电源S812L，S814，S822，S822L，S824，S824L，S812LC，S821LC，S822LC<br />
<br />
<br />
<br />
Power E850，E870，E880</p></td>
</tr>
<tr class="odd">
<td><p>POWER9</p></td>
<td><p>自2017年以来</p></td>
<td><p>4  千兆赫</p></td>
<td><p>电源AC922，L922，S914，S922，S924，H922，H924，E980</p></td>
</tr>
</tbody>
</table>

### AS/400，iSeries，i5系统的型号

| 模型                                                          | 年                 | CPU组                    | 基地 - CPW       |
| ----------------------------------------------------------- | ----------------- | ----------------------- | -------------- |
| B10，B20，B30，B35，B40，B45，B50，B60，B70                         | 1988年，1989年       | P10，P20                 | 2,9 - 20       |
| C04，C06，C10，C20，C25                                         | 1990年             | P10                     | 3,1 - 6,1      |
| D02，D04，D06，D10，D20，D25，D35，D45，D50，D60，D70，D80             | 1991年             | P10，P20，P30             | 3,8 - 56,6     |
| E02，E04，E06，E10，E20，E25，E35，E45，E50，E60，E70，E80，E90，E95     | 1992年             | P10，P20，P30，P40         | 4,5 - 116,6    |
| F02，F04，F06，F10，F20，F25，F35，F45，F50，F60，F70，F80，F90，F95，F97 | 1993年             | P05，P10，P20，P30，P40     | 5,5 - 177,4    |
| P01，P02，P03                                                 | 1993年，1994年，1995年 | P05                     | 7,3 - 16,8     |
| 150                                                         | 1996年             | P05                     | 10,9 - 35,0    |
| S10，S20，S30，S40                                             | 1997年             | P05，P10，P20，P30，P40，P50 | 45,4 - 4550    |
| SB1，SB2，SB3                                                 | 1997年，2000年       | P30，P40                 | 1794 - 16500   |
| 10S，100,135,140                                             | 1995年，1993年       | P05，P10，P20             | 17,15,6,6      |
| 170                                                         | 1998年             | P05，P10，P20，            | 30 - 1090      |
| 200,20S，236                                                 | 1994年             | P05，P10                 | 7,3 - 17,17    |
| 250                                                         | 2000              | P05                     | 50-75          |
| 270                                                         | 2000              | P05，P10，P20             | 50 - 2350      |
| 300,30S，310                                                 | 1994年             | P10，P20，P30，P40         | 11,6 - 177,4   |
| 400,40S，436                                                 | 1995年             | P05，P10                 | 13,8 - 91,0    |
| 500,50S，510,530,53S                                         | 1995年             | P10，P20，P30，P40         | 18,7 - 650     |
| 600,620,640,650                                             | 1997年             | P05，P10，P20，P30，P40，P50 | 22,7 - 4550    |
| 720                                                         | 1999年             | P10，P20，P30             | 240 - 1600     |
| 730                                                         | 1999年             | P20，P30，P40             | 560 - 2890     |
| 740                                                         | 1999年             | P40，P50                 | 3660 - 4550    |
| 800                                                         | 2003              | P05，P10                 | 300 - 950      |
| 810                                                         | 2003              | P10，P20                 | 750 - 2700     |
| 820                                                         | 2000年，2001年       | P05，P10，P20，P30，P40     | 100 - 3700     |
| 825                                                         | 2003              | P30                     | 3600 - 6600    |
| 830                                                         | 2000年，2002年       | P20，P30，P40，P50         | 1850 - 7350    |
| 840                                                         | 2000,2001,2002    | P40，P50                 | 10000 - 20200  |
| 870                                                         | 2002年             | P40，P50                 | 7700 - 20000   |
| 890                                                         | 2002年             | P50，P60                 | 20000 - 37400  |
| 520                                                         | 2004-2006         | P05，P10，P20             | 500 - 7100     |
| 550                                                         | 2004-2006         | P20                     | 3300 - 14000   |
| 570                                                         | 2004-2006         | P30，P40                 | 3300 - 58500   |
| 595                                                         | 2004-2006         | P50，P60                 | 24500 - 216000 |
| 515                                                         | 2007年             | P05                     | 3800 - 7100    |
| 525                                                         | 2007年             | P10                     | 3800 - 7100    |
| 570                                                         | 2007年             | P40                     | 16700 - 58500  |
| MMA（9406）                                                   | 2007年             | P30                     | 5500 - 76900   |
| M15                                                         | 2008年             | P05                     | 4300           |
| M25                                                         | 2008年             | P10                     | 4300 - 8300    |
| M50                                                         | 2008年             | P20                     | 4800 - 18000   |
| MMA                                                         | 2008年             | P30                     | 8150 - 76900   |
| JS12                                                        | 2008年             | P05                     | 7100           |
| JS22                                                        | 2008年             | P10                     | 13800          |
| JS23                                                        | 2008年             |                         |                |
| JS43                                                        | 2008年             |                         |                |
| 570（9117）                                                   | 2008年             | P30                     | 104800         |
| 595（9119）                                                   | 2008年             | P60                     | 294700         |

## 也可以看看

  - IBM i控制语言
  - AS/400库
  - AS/400图书馆清单
  - AS/400对象
  - IBM i
  - IBM 5250
  - IBM智能打印机数据流 （IPDS）
  - iSeries QSHELL
  - 共同
  - IBM System p
  - PureSystems中
  - 分布式数据管理架构 （DDM）
  - 分布式关系数据库体系结构 （DRDA）

## 参考

## 外部链接

  - [IBM的Power Systems产品页面](http://www.ibm.com/systems/power/)

  -
  - [MidrangeWiki](http://wiki.midrange.com)

  - IBM Archives： [IBM AS/400和iSeries的简史](http://www-03.ibm.com/ibm/history/documents/pdf/as400.pdf)

  - [IBM AS400 A技术介绍](https://www.ibm.com/developerworks/community/files/basic/anonymous/api/library/7cd1e29f-0699-4929-a741-516ce47295a8/document/745425bf-c00a-4a8d-bd8f-1f8e14ef9e65/media)

  - [RPGPGM。](http://www.rpgpgm.com/) COM - 提供System i（IBM i）编程示例的大量文章资源

[Category:IBM_server_computersAS](https://zh.wikipedia.org/wiki/Category:IBM_server_computersAS "wikilink") [Category:AS/400](https://zh.wikipedia.org/wiki/Category:AS/400 "wikilink")

1.
2.
3.
4.
5.  Frank G. Soltis *[Fortress Rochester: The Inside Story of the IBM ISeries](https://books.google.com/books?id=ypJmzqt7JdUC)* p.119
6.
7.
8.
9.
10.
11.
12.
13.