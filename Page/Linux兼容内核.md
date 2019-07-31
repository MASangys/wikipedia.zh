**Linux兼容内核（Linux Unified Kernel，亦称 Longene）**，是一个[二进制兼容](https://zh.wikipedia.org/wiki/二进制 "wikilink")[Windows和](https://zh.wikipedia.org/wiki/Windows "wikilink")[Linux](../Page/Linux.md "wikilink")应用软件和设备驱动程序的[计算机](https://zh.wikipedia.org/wiki/计算机 "wikilink")[操作系统](../Page/操作系统.md "wikilink")[内核](../Page/内核.md "wikilink")。它试图在Linux内核的基础上利用Linux内核材料构建MS Windows内核功能模块从而扩充Linux内核的支持能力使之同时支持Linux和Windows的应用程序和设备驱动。

兼容内核主要以[C语言编写](https://zh.wikipedia.org/wiki/C语言 "wikilink")，以[GNU](../Page/GNU.md "wikilink")通用公共许可证授权使用。虽然兼容内核还处在初期开发阶段，但许多Windows程序已经可以在其上运行。與其相反但類似概念的是 [coLinux](https://zh.wikipedia.org/wiki/:Cooperative_Linux "wikilink")。[coLinux](https://zh.wikipedia.org/wiki/:Cooperative_Linux "wikilink") 是在[Windows上運行](https://zh.wikipedia.org/wiki/Windows "wikilink")[Linux](../Page/Linux.md "wikilink")应用软件。

## 特性

兼容内核项目在Linux内核的基础上利用Linux内核材料构建一个Windows内核环境（包括[进程管理](https://zh.wikipedia.org/wiki/进程管理 "wikilink")、[线程管理](https://zh.wikipedia.org/wiki/线程管理 "wikilink")、对象管理、[虚拟内存](../Page/虚拟内存.md "wikilink")管理、同步、系统调用、系统注册机制和设备驱动程序框架等Windows系统内核机制），形成一个新的内核，使Linux和Windows应用程序和设备驱动程序能够直接在其上运行。

兼容内核不是Linux内核和Windows内核的简单堆砌。为了防止兼容内核变得臃肿，如果一个功能可以用利用[ReactOS](https://zh.wikipedia.org/wiki/ReactOS "wikilink")（Windows的开源仿制品）代码实现，也可以利用Linux内核函数通过编程实现（ReactOS、Wine、NDISwrapper代码作为参考），兼容内核倾向采用后一种实现方法。

兼容内核有两套系统调用（syscalls）及其相应的系统调用表（syscall table）：一套为Windows系统调用，另一套为Linux系统调用。Windows应用程序通过软中断“int 0x2e”访问系统调用表进行Windows系统调用。Linux应用软件则通过软中断“int 0x80”访问系统调用表进行Linux系统调用。

兼容内核项目不计划开发Windows和Linux的在用户空间运行的[库文件](https://zh.wikipedia.org/wiki/库文件 "wikilink")（.dll和.so文件）。这些库文件由[Wine](../Page/Wine.md "wikilink")项目（或MS Windows/ReactOS项目）和Linux项目提供。

## 在Linux核内空间实现Windows内核机制方案的优点

  - 开发快速。Linux内核已有成熟的CPU管理、内存管理、磁盘管理和外围硬件管理等功能模块及其实现函数。采用扩充Linux内核，通过嫁接（重定向）或重用Linux内核相关功能函数等方法实现Windows内核功能的方案要比从零开始编码实现Windows内核的方案要快很多。
  - 兼容性好，效率高。在核内空间实现Windows内核机制比在核外实现能够达到更大的兼容性。相比在核外利用宿主操作系统的[API来构建Windows的API](https://zh.wikipedia.org/wiki/API "wikilink")，在核内空间可以利用细小的内核材料来实现Windows的API。因内核函数颗粒度比API小，其灵活性更大仿制能力更强因而能够达到更好的兼容性。另外，Windows进程、线程、系统调用等在核内运行能够避免在核外运行带来的用户空间到内核切换额外的消耗，因而相比更有效率。在核内实现Windows内核机制与原生的Windows内核开发方法是一致的，能够克服核外无法实现Windows某些功能的缺点。
  - 能够实现Windows驱动。
  - 能够使用全套MS Windows库文件。Linux和MS Windows库文件是通过软中断（Linux为“int 0x80”，MS Windows为“int 0x2e”）进入核内进行系统调用的。兼容内核在内核开发能够为之设置与Linux和MS Windows中断号相同的两套独立的系统调用以最大程度兼容MS Windows环境，使得MS Windows系统全套原生的用户空间库文件（.dll）能够在兼容内核上运行。这给开发调试带来方便，也给计划和已经转向Linux系统的持有MS Windows使用许可证的机构和个人带来好处。
  - 兼容内核主要是在Linux的内核模块（LKMs）中实现的，这使它像应用程序的插件一样很容易加载和卸载。
  - 裁剪方便。实现Windows的API和驱动机制后，可以在不影响系统正常运行的情况下裁剪去除与Windows无关的Linux部分而只保留Windows功能，缩减体积以适应某些内存较小的设备。

## 开发

兼容内核是由中国的浙大网新有限公司在2005年9月发起的自由软件项目\[1\]。作为项目负责人，毛德操先生提出了项目的设想和和开发路线。他写了一系列阐述具体实现兼容内核的文章，这些文章的汇编为兼容内核白皮书\[2\]。根据的兼容内核白皮书，兼容内核开发的主要工作是在Linux内核中实现“一个框架和两个界面”：

  - 一个符合Windows设备驱动程序的特征和要求的框架，即Windows设备驱动框架，使得可以把多个Windows设备驱动模块装入内核，并使这些模块间的关系和运行条件跟它们在Windows内核中时相同。
  - 一组由Windows内核导出(Export)函数界面(见Windows DDK)定义的导出函数。对于设备驱动程序而言，这些函数就相当于由内核提供的库函数。
  - Windows的系统调用界面。微软并没有公开它的系统调用界面，但是在“Windows NT/2000 Native API Reference”和其他资料中已经揭开了这个秘密。在Linux内核中实现Windows的系统调用界面，就相当于用汇编语言来实现另一种高级语言。这是因为，在内核里面，可以使用的“砖块”就不再是宏观的Linux系统调用，而是Linux的许多微观的内核函数了。

兼容内核项目的成果为Linux内核补丁。兼容内核的开发者期望这些补丁最终融入Linux标准内核成为Linux内核标准的一部分。那样擅长开发Windows应用程序和设备驱动的开发者就可以很方便地为linux平台开发软件或把他们的产品移植到linux平台。对于Windows软件开发公司来说，只需要开发维护一个代码库就可以实现跨平台，这将降低软件跨平台所带来的成本，增加这些公司把产品移植到Linux平台的意愿。这些公司与Linux用户都将从兼容内核项目直接受益。

### 开发策略和线路

兼容内核采用渐进方式进行开发，它以已经能正常运行的Wine和NDISWrapper为开发始点，通过开发自身的Windows内核功能模块替换Wine中相应的功能模块来实现Windows系统调用相关功能；通过改造和扩充NDISWrapper来实现Windows设备驱动框架；通过利用嫁接（重定向）等方法实现Windows内核导出函数。具体开发策略和线路\[3\] 如下：

  - Windows系统调用

<!-- end list -->

  -
    兼容内核以Wine为开发始点，兼容内核开发在核内运行的内核功能模块来替代Wine中在用户空间运行的功能模块，并通过对Wine打补丁使Windows应用软件转而使用兼容内核功能模块。即是：如果兼容内核已经实现了该功能，则使用兼容内核提供的功能；否则使用Wine提供的功能。每替换了一些Wine的功能模块，经调试测试稳定后就可以发行一个兼容内核版本。这个发行版本又是下一个版本的开发始点，周而复始直到把Wine的所有功能模块被兼容内核模块替代。兼容内核开发不限于替代Wine功能模块，Wine在用户空间受技术限制不能实现的功能兼容内核也要加以实现。

<!-- end list -->

  - Windows设备驱动框架

<!-- end list -->

  -
    NDISWrapper已经在Linux内核中实现了一个WDM的雏形，而ReactOS则已有一个基本可以运行的Windows设备驱动框架。兼容内核将以NdisWrapper为开发始点，借鉴ReactOS的代码对NdisWrapper进行改造和扩充以实现Windows设备驱动框架。

<!-- end list -->

  - Windows内核导出函数

<!-- end list -->

  -
    ReactOS和NdisWrapper已经有一个基本的Windows内核导出函数集合。兼容内核在这个基本集合的基础上逐步实现的自身的Windows内核导出函数。具体实现方法是如果Linux内核中有对应物的可以通过映射(重定向)/嫁接(适配)的方法连接到Linux内核中的对应物上，小部分在Linux内核中没有对应物则需要利用Linux内核材料加以实现。

### 历史版本

一個早期的版本,unifiedkernel-2.6.13,於2006年2月15日發佈。該版本實現了Windows系統調用機制。

| 色彩 | 意義       |
| -- | -------- |
| 紅  | 舊版本; 不支援 |
| 黃  | 舊版本; 仍支援 |
| 綠  | 當前版本     |
| 藍  | 未來版本     |

<table>
<thead>
<tr class="header">
<th><p>版本</p></th>
<th><p>發佈日期</p></th>
<th><p>更新</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>0.1.0</p></td>
<td><p>2006年4月30日</p></td>
<td><ul>
<li>移植kernel-win32</li>
<li>Windows系統調用機制基於"int 2e"</li>
</ul></td>
</tr>
<tr class="even">
<td><p>0.2.0</p></td>
<td><p>2006年12月31日</p></td>
<td><ul>
<li>實現了Windows的進程/線程創建</li>
<li>執行部分Windows的<a href="https://zh.wikipedia.org/wiki/APC" title="wikilink">APC機制</a></li>
</ul></td>
</tr>
<tr class="odd">
<td><p>0.2.1</p></td>
<td><p>2008年2月4日</p></td>
<td><ul>
<li>實現了Windows的進程/線程管理</li>
<li>虛擬內存管理</li>
<li>同步管理</li>
<li>對象管理</li>
<li>加載<a href="https://zh.wikipedia.org/wiki/EXE" title="wikilink">EXE功能</a></li>
</ul></td>
</tr>
<tr class="even">
<td><p>0.2.2</p></td>
<td><p>2008年10月31日</p></td>
<td><ul>
<li><a href="https://zh.wikipedia.org/wiki/Software_token" title="wikilink">Token機制</a></li>
<li><a href="https://zh.wikipedia.org/wiki/GUI" title="wikilink">GUI安裝程序</a></li>
</ul></td>
</tr>
<tr class="odd">
<td><p>0.2.2-1</p></td>
<td><p>2008年12月17日</p></td>
<td><ul>
<li>修正錯誤</li>
</ul></td>
</tr>
<tr class="even">
<td><p>0.2.3</p></td>
<td><p>2009年2月12日</p></td>
<td><ul>
<li>移植<a href="../Page/Wine.md" title="wikilink">Wine</a>的註冊表管理機制</li>
</ul></td>
</tr>
<tr class="odd">
<td><p>0.2.4</p></td>
<td><p>2009年5月22日</p></td>
<td><ul>
<li>移植wine的文件管理系統</li>
<li>實現了一些註冊管理的API</li>
<li>binary packages for popular distributions provided</li>
</ul></td>
</tr>
<tr class="even">
<td><p>0.2.4.1</p></td>
<td><p>2009年8月31日</p></td>
<td><ul>
<li>基於<a href="https://zh.wikipedia.org/wiki/Linux內核" title="wikilink">Linux內核</a>2.6.30</li>
<li>支持新的<a href="https://zh.wikipedia.org/wiki/文件系統" title="wikilink">文件系統</a> (<a href="https://zh.wikipedia.org/wiki/ext4" title="wikilink">ext4及其他</a>)</li>
</ul></td>
</tr>
<tr class="odd">
<td><p>0.3</p></td>
<td><p>2010年5月31日</p></td>
<td><ul>
<li>移植所有<a href="https://zh.wikipedia.org/wiki/wineserver" title="wikilink">wineserver的功能到內核及擺脫wineserver</a></li>
</ul></td>
</tr>
<tr class="even">
<td><p>0.3.1</p></td>
<td><p>2011年2月28日</p></td>
<td><ul>
<li>支持非root用户使用</li>
<li>支持程序中文路径</li>
</ul></td>
</tr>
<tr class="odd">
<td><p>0.3.2</p></td>
<td><p>2011年6月8日</p></td>
<td><ul>
<li>支持wineconsole。Windows平台的console程序，像cmd.exe可以像这样运行了：wineconsole cmd.exe</li>
<li>改进了进程的创建方式，使得windows的native-app 和 wine的一些buitin-app可以互相创建了</li>
</ul></td>
</tr>
<tr class="even">
<td><p>1.0-rc1</p></td>
<td><p>2013年12月31日</p></td>
<td><ul>
<li>完全修改了整个架构，Longene不再需要内核补丁</li>
<li>Longene终于支持了SMP</li>
<li>安装更方便，兼容性更好，稳定性更强</li>
</ul></td>
</tr>
<tr class="odd">
<td><p>1.0-rc2</p></td>
<td><p>2014年1月16日</p></td>
<td><ul>
<li>将wine升级到1.7.10版本</li>
<li>解决普通用户重启后无法使用的问题</li>
<li>解决若干文件权限问题</li>
<li>修改文件加载方式</li>
<li>其他若干BUG</li>
</ul></td>
</tr>
</tbody>
</table>

### 现在和未来的开发

兼容内核正在整合QEMU代码以增加对ARM架构上直接运行Windows应用的x86架构二进制映像的支持。兼容内核开发将有两个分支。一个是1.0分支，这是针对x86架构上的跨操作系统兼容。另一个是2.0分支，这是针对既跨操作系统又跨CPU架构的兼容。1.0分支的进展也体现在2.0分支中。\[4\] 兼容内核开发人员已经对Windows设备驱动框架进行了讨论，NidsWrapper的代码移植到兼容内核的工作已经开展。预计不久将进行实现Windows设备驱动框架的开发工作

## 可利用的资源

兼容内核不是从零开始编程的，它是在其他项目已有的代码基础上进行开发的。它对这些项目进行整合和再发展。兼容内核项目可利用的资源包括Linux kernel、Reactos、Wine、kernel-win32和NDISwrapper等\[5\]，它们都是开源项目源代码可以自由取得。

  - [Linux](../Page/Linux.md "wikilink")

<!-- end list -->

  -
    兼容内核是基于Linux内核的。它在Linux可加载内核模块(LKMs)中实现它的功能。与ReactOS项目从零开始编码实现Windows内核不同，兼容内核是利用Linux内核中丰富的内核功能函数来实现Windows内核功能的。其实现Windows机制的主要途径如下:

<!-- end list -->

1.  Windows系统调用接口的实现——一些Windows的系统调用可以通过嫁接（重定向）到适当的Linux系统调用或部分重用相应的Linux内核函数来实现,,另一些在Linux内核中没有对应物的功能则需要使用Linux低级的核内函数来实现。
2.  Windows设备驱动框架——-基本的设备驱动框架对应着Win2k内核中的I/O管理，以及电源管理、即插即用等机制，也涉及部分对象管理、系统配置、和安全管理方面的功能。。这个框架上面与有关文件操作的系统调用(open()，close()，read()，write()，ioctl()等)相衔接，中间实现基于“IO请求包”IRP（IO Request Packet）的设备驱动机制，下面则融入Linux内核的中断响应/服务机制、包括“软中断”即bh函数的执行机制。主要包括设备驱动程序的动态装入和连接的开发和实现、IRP的生成和传递、以及设备驱动程序的启动、同步、和终结开发和实现、 将设备驱动程序的中断服务登记嫁接到Linux的中断机制上，将设备驱动程序所关心的Windows内核运行状态映射到Linux内核的运行状态上、 将设备驱动程序的DPC请求嫁接到Linux的bh函数机制上。
3.  Windows的设备驱动模块(.sys文件)——微软持有版权的.sys文件基本上是一些标准的、基本的、常用的外部设备，包括磁盘、USB、图形设备、网络设备等的设备驱动模块。Linux实际上已经具备相应的功能，只是需要将Linux内核(包括设备驱动模块)中的这些函数和数据结构与具体.sys的调用界面之间架起桥梁。但是也可能有一些微软的.sys模块在Linux内核中找不到对应物，那就需要仿制了。
4.  Windows设备驱动支撑界面——多数设备驱动界面函数(以及数据结构)在Linux内核中都有对应物，需要做的就是把所需的支撑函数和数据结构通过映射(重定向)/嫁接(适配)落实到相应的Linux内核函数和数据结构上，包括一些适配的工作。也有些函数在Linux内核中没有较为接近的对应物，那就要用Linux内核中的各种素材加以搭建。

<!-- end list -->

  - [ReactOS](https://zh.wikipedia.org/wiki/ReactOS "wikilink")

<!-- end list -->

  -
    ReactOS是一个MS Windows内核的开源仿制品。与兼容内核利用Linux内核材料构建Windows内核的开发路线不同，它是完全从零开始编码制作Windows内核的。和兼容内核一样ReactOS只是一个内核，它依赖Wine项目的用户空间库文件使整个系统能够运行。兼容内核参考ReactOS的代码实现Windows内核的基本机制，包括进程/线程管理机制，内存管理机制，驱动系统框架等。

<!-- end list -->

  - [Wine](../Page/Wine.md "wikilink")

<!-- end list -->

  -
    Wine在用户空间实现了一个把Windows程序对Windows API调用转向Linux API调用的兼容层，这个兼容层还负有Windows内核的进程/线程管理等的职能。虽然Wine和兼容内核均利用内核材料构建Windows API机制，但具体的实现方法是不同的，兼容内核是在内核空间利用Linux内核的核内函数来实现的，而Wine利用的是宿主操作系统的API来实现。另外兼容内核是在核内利用内核函数实现进程管理、线程管理、对象管理、虚拟内存管理、同步、系统调用、系统注册机制和设备驱动程序框架等Windows基本机制的，而Wine是在用户空间实现这些功能的。虽然兼容内核采取的技术线路与Wine的不相同，但Wine的实现方法还是可以能为兼容内核提供借鉴的，而Wine对Windows内核有关数据结构的研究成果则可以直接被兼容内核利用。
    Windows用户空间库文件(.dll文件)虽然不是内核的一部分，但它们是操作系统能够运行应用软件不可或缺的部分。Windows用户空间库文件数量众多，Wine项目花了大量的精力仿制了这些文件。兼容内核只实现Windows内核相关功能，它依赖Wine提供Windows用户空间库文件。大多数Wine的dll文件可以直接用在兼容内核上。
    兼容内核已经实现进程/线程管理、对象管理、虚拟内存管理等功能，但还有部分功能没有实现。在过渡时期，兼容内核利用Wine来提供它还没有实现的功能。

<!-- end list -->

  - [Kernel-win32](http://lkml.indiana.edu/hypermail/linux/kernel/0009.0/1267.html)

<!-- end list -->

  -
    Kernel-Win32是一个试图把Wine的部分模块移入Linux内核以提高Wine的运行效率的项目。兼容内核利用(部分是重实现)kernel-win32项目代码实现了兼容内核的Windows系统调用机制。

<!-- end list -->

  - [NDISwrapper](https://zh.wikipedia.org/wiki/NDISwrapper "wikilink")

<!-- end list -->

  -
    NDISWrapper在Linux内核中实现了Windows内核的一些部件，包括NTOSKRNL API（一个基本的WDM控制器）和一系列诸如把Wireless/NDIS/USB/PnP等的Windows系统调用转向Linux系统调用的封装。NDISWrapper不限于执行NDIS驱动，只要WDM驱动不调用它还未实现的Windows系统调用也是可以运行的。因此可以认为NDISWrapper是一个WDM的雏形。兼容内核可以参考NDISWrapper和ReactOS的WDM实现构建自己的WDM。

## 用户

  - MagicLinux - MagicLinux是一个基于Red Hat Linux的中文Linux发行版。MagicLinux 2.1之兼容内核衍生版是第一个内置兼容内核的发行版，它包含兼容内核0.2.2版本。\[6\]

## 硬件需求

兼容内核最低的硬件需求是:

  - 128MB RAM
  - IDE或SATA 硬盘
  - VGA兼容显示卡
  - PS/2或USB键盘
  - PS/2或USB鼠标

### 架构支持

  - [IA-32](https://zh.wikipedia.org/wiki/IA-32 "wikilink") (支援中)
  - [x86-64](https://zh.wikipedia.org/wiki/x86-64 "wikilink") (不支援, 計劃中)
  - [龍芯](https://zh.wikipedia.org/wiki/龍芯 "wikilink")3 (不支援, 計劃中) -- Loongson 3是一种MIPS-64 64-bit构架的通用CPU，它计划包含二百多条指令以便硬件仿真x86 CPU指令，从而使其能够运行Windows。

## 參考資料

  - [Linux Unified Kernel Aims to Combine Linux, NT Kernel](http://www.osnews.com/story/21573/Linux_Unified_Kernel_Aims_to_Combine_Linux_NT_Kernel)
  - [August 2013 Linux Kernel News](http://www.linuxjournal.com/content/august-2013-linux-kernel-news)

## 外部链接

<http://www.Longene.org/>

[Category:操作系统](https://zh.wikipedia.org/wiki/Category:操作系统 "wikilink") [Category:兼容层](https://zh.wikipedia.org/wiki/Category:兼容层 "wikilink")

1.  [1](http://server.zol.com.cn/21/218764.html) Linux兼容内核项目正式启动，中国工程院院士倪光南、开源软件推进联盟主席陆首群祝贺。
2.  [兼容内核白皮书](http://www.unifiedkernel.com/whitepaper.php)
3.
4.  \[[http://www.longene.org/techdoc/0644167001388447880.html\]写于龙井1.0发布之际](http://www.longene.org/techdoc/0644167001388447880.html%5D写于龙井1.0发布之际)
5.
6.  [Magic Linux 2.1 released (Machine translation)](http://translate.google.cn/translate?u=http%3A%2F%2Fwww.magiclinux.org%2Fnode%2F902&sl=zh-CN&tl=en&hl=zh-CN&ie=UTF-8)