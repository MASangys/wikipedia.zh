[Windows_2000_architecture.svg](https://zh.wikipedia.org/wiki/File:Windows_2000_architecture.svg "fig:Windows_2000_architecture.svg")

**Windows
NT體系結構**是指一系列[微軟設計及製造](https://zh.wikipedia.org/wiki/微軟 "wikilink")，由[Windows
NT所衍生出的視窗作業系統架構](../Page/Windows_NT.md "wikilink")。Windows
NT採用[用戶模式與](https://zh.wikipedia.org/wiki/使用者空間 "wikilink")[核心模式的分層設計並且是](https://zh.wikipedia.org/wiki/使用者空間 "wikilink")[搶佔式和](https://zh.wikipedia.org/wiki/搶占式多任務處理 "wikilink")[可重入的](../Page/可重入.md "wikilink")。可運行在單處理器或[對稱多處理器](https://zh.wikipedia.org/wiki/對稱多處理 "wikilink")（SMP）上，並利用[I/O請求包與異步I](https://zh.wikipedia.org/wiki/I/O請求包 "wikilink")/O來處理所有的I/O請求。在[Windows
2000](../Page/Windows_2000.md "wikilink")（含）之前採用的Windows
NT皆為32位元版本的，第一个基于[IA-64的](https://zh.wikipedia.org/wiki/IA-64 "wikilink")64位元Windows
NT首先用於64位元的[Windows
XP](https://zh.wikipedia.org/wiki/Windows_XP版本列表#64.E4.BD.8D.E7.89.88 "wikilink")，而第一个基于[x86-64的](https://zh.wikipedia.org/wiki/x86-64 "wikilink")64位Windows
NT则为[Windows Server 2003](../Page/Windows_Server_2003.md "wikilink")。

用戶模式下的程式與子系統僅能存取其可存取的資源，核心模式下的程式則可以存取所有資源與外部裝置。Windows
NT採用的[核心是屬於](https://zh.wikipedia.org/wiki/核心 "wikilink")[混合核心](../Page/混合核心.md "wikilink")。其體系結構包括[簡單內核](https://zh.wikipedia.org/wiki/簡單內核 "wikilink")、[硬體抽象層](../Page/硬體抽象層.md "wikilink")（HAL）、驅動程式、服務（總稱為[執行體](https://zh.wikipedia.org/wiki/#執行體 "wikilink")）,
這些均屬於核心模式。

Windows NT的用戶模式子系統可以透過核心模式中的I/O
Manager傳遞I/O請求給同樣在核心模式中合適的[驅動程式](https://zh.wikipedia.org/wiki/驅動程式 "wikilink")。Windows
NT的用戶模式包括了兩個子系統：環境子系統（在不同作業系統類型下執行應用程式）；集成子系統（Integral
subsystem）執行一些系統相關的函數。在Windows
NT中，在核心模式的程式可以存取電腦所有的硬體和系統資源，且在核心模式的程式可以在用戶模式下執行的服務與應用程式存取到臨界區（critical
areas）時終止他們，以避免存取到不該存取的記憶體空間。

[執行體提供了大部分的系統服務功能](https://zh.wikipedia.org/wiki/#執行體 "wikilink")。位於硬體抽象層與[執行體之間的Windows](https://zh.wikipedia.org/wiki/#執行體 "wikilink")
NT的核心模式部分提供了*多處理器同步*、執行緒、中斷排程與分派、例外處理、例外分派的功能。核心還負責在啟動時初始化裝置驅動程式。核心模式驅動程式分為三層：高層驅動程式、中層驅動程式、低層驅動程式。[Windows驅動程式模型](../Page/Windows_Driver_Model.md "wikilink")（WDM）是存在於中層驅動程式，主要用於二進位檔與原始碼相容於[Windows
98與](../Page/Windows_98.md "wikilink")[Windows
2000的驅動程式](../Page/Windows_2000.md "wikilink")。低層驅動程式也可以是舊式Windows
NT的設備驅動程式，或是[PnP匯流排](https://zh.wikipedia.org/wiki/即插即用 "wikilink")。

## 用戶模式

Windows NT作業系統的用戶模式部分包括兩個子系統：環境子系統與集成子系統。

環境子系統執行依據不同作業系統API而寫的程式，有三個環境子系統：[Win32子系統](https://zh.wikipedia.org/wiki/Win32 "wikilink")、[OS/2子系統](https://zh.wikipedia.org/wiki/OS/2 "wikilink")、[POSIX子系統](https://zh.wikipedia.org/wiki/微軟POSIX子系統 "wikilink")。\[1\]

  - **Win32環境子系統**可執行32位元的Windows應用程式，並為其他環境子系統提供具備純文字介面、關閉以及硬體錯誤(hard
    error)管理的主控台介面(console)，以及支援讓Windows
    NT執行[MS-DOS與](../Page/MS-DOS.md "wikilink")16位元[Windows程式的](https://zh.wikipedia.org/wiki/Win16 "wikilink")(VDMs)，其中有一個VDM擁有專屬的位址空間，專門用來模擬在[Intel
    80486平台上運行的MS](../Page/Intel_80486.md "wikilink")-DOS
    5.0環境。Win32環境子系統行程([csrss.exe](https://zh.wikipedia.org/wiki/客戶端/服務器運行時子系統 "wikilink"))還包含了[視窗管理員以處理像是由鍵盤或滑鼠觸發的輸入事件](https://zh.wikipedia.org/wiki/視窗管理員 "wikilink")(event)，並將事件訊息(message)傳送至等待輸入回應的應用程式，應用程式則根據事件訊息作出相應的動作，例如繪制或刷新其視窗。
  - **OS/2環境子系統**支援基於文字介面的16位元OS/2應用程式，或虛擬出來的OS/2 1.x。但執行在x86平台上OS/2
    2.x(含)之後的非32位元或圖形化OS/2應用程式則不被支援。\[[http://www.microsoft.com/resources/documentation/windowsnt/4/workstation/reskit/en-us/os2comp.mspx?mfr=true\]若要執行圖形化的OS/2](http://www.microsoft.com/resources/documentation/windowsnt/4/workstation/reskit/en-us/os2comp.mspx?mfr=true%5D若要執行圖形化的OS/2)
    1.x程式，則需要安裝Windows NT Add-On Subsystem for Presentation
    Manager。\[[http://www.microsoft.com/resources/documentation/windowsnt/4/workstation/reskit/en-us/os2comp.mspx?mfr=true\]最後一個具有OS/2子系統的是](http://www.microsoft.com/resources/documentation/windowsnt/4/workstation/reskit/en-us/os2comp.mspx?mfr=true%5D最後一個具有OS/2子系統的是)[Windows
    2000](../Page/Windows_2000.md "wikilink")，從[Windows
    XP開始則不再包含](../Page/Windows_XP.md "wikilink")，但可透過在Windows
    XP上安裝Microsoft Virtual PC
    2004取得OS/2程式的執行環境。[1](http://support.microsoft.com/kb/308259)[2](http://brianreiter.org/2010/08/24/the-sad-history-of-the-microsoft-posix-subsystem/)
  - **POSIX環境子系統**支持嚴格遵照POSIX.1標準及與[ISO](https://zh.wikipedia.org/wiki/ISO "wikilink")/[IEC相關標準所寫的程式](https://zh.wikipedia.org/wiki/IEC "wikilink")。這一子系統已經被替代，屬於的一部分。[3](http://support.microsoft.com/kb/308259)

集成子系統包括安全子系統、工作站服務與伺服器服務。安全子系統處理安全令牌，基於資源許可授予或拒絕用戶帳戶訪問，處理登入請求與初始化登入驗證，以及管理[Active
Directory](../Page/Active_Directory.md "wikilink")。工作站服務提供API給實作遠端網路存取的功能。\[2\]伺服器服務則提供與網路服務相關的API。\[3\]

## 核心态

Windows
NT的[核心态能访问所有硬件资源](https://zh.wikipedia.org/wiki/核心态 "wikilink")，在保护内存区上执行代码。\[4\]
控制了调度、线程优先级、内存管理、硬件交互；禁止了用户态的程序与服务访问关键资源，用户态进程必须请求核心态执行这类操作。

[x86硬件体系结构支持四种CPU优先级](https://zh.wikipedia.org/wiki/x86 "wikilink")：0到3。仅有0与3这两种优先级被Windows操作系统使用。用户态程序运行在优先级3，核心态运行在优先级0（特权级别）。也分别称作「ring
3」与「ring
0」。这使得具有了只有2个优先级的[RISC平台的可移植性](https://zh.wikipedia.org/wiki/RISC "wikilink")。\[5\]但是打破了[OS/2应用程序包含的I](https://zh.wikipedia.org/wiki/OS/2 "wikilink")/O特权段的兼容性\[6\]

核心态的操作系统包含了由许多功能模块组成的执行体服务、内核驱动程序、一个[（微）内核及一个硬件抽象层](../Page/内核.md "wikilink")（HAL）。\[7\]

### 执行体

Windows执行体服务建立于低层核心态程序之上，包含在文件[NTOSKRNL.EXE中](https://zh.wikipedia.org/wiki/ntoskrnl.exe "wikilink")。\[8\]
负责处理I/O、对象管理、安全、进程管理，划分为几个子系统,
包括缓存管理、配置管理、I/O管理、[本地过程调用](../Page/本地过程调用.md "wikilink")（LPC）、内存管理、[对象管理](../Page/Windows对象管理.md "wikilink")、进程结构与安全引用监视（SRM）。这些子系统一起构成了执行体服务。系统服务，即[系统调用也是在这一级别上实现](https://zh.wikipedia.org/wiki/系统调用 "wikilink")，除了极少特例为了高性能而直接调用了内核层。

上下文中的术语「service」是指可调用的例程，或一整套可调用的例程。这不同于「服务进程」（service
process）。服务进程是用户态下的程序，类似于[类Unix系统的](../Page/类Unix系统.md "wikilink")[守护进程](../Page/守护进程.md "wikilink")。

  - 对象管理器
    *[对象管理器](../Page/Windows对象管理.md "wikilink")*是一个执行体的子系统，所有其他的执行体子系统，特别是系统调用必须通过它来获得对Windows
    NT资源的访问，这使得对象管理器成为资源管理的基础设施。 对象管理器用来避免在其他子系统中管理资源带来的冗余与不安全。
    在对象管理器视角，每个资源都是一个对象，不论是物理资源（如文件系统或外设），还是逻辑资源（如一个互斥锁）。

<!-- end list -->

  - 缓存控制器
    Windows Cache
    Manager与内存控制器、I/O控制器、I/O驱动一起为正常的文件I/O提供缓存。这种文件缓存是针对文件块，对本地文件与远程文件提供了一致的服务。实际上这是特殊的文件内存映射。

<!-- end list -->

  - 配置管理器
    实现了Windows [注册表](../Page/注册表.md "wikilink")。

<!-- end list -->

  - I/O管理器
    允许用户态程序与设备的通信。I/O管理器把用户态程序的读写请求翻译给硬件。例如，I/O管理器接收文件系统I/O请求，翻译为对相关设备的调用，与低层设备驱动程序合作执行硬件读写操作。还包括了I/O操作的cache管理。

<!-- end list -->

  - 本地过程调用（LPC）
    提供了一种进程间通信端口机制。是的基础。

<!-- end list -->

  - 内存管理
    管理[虚拟内存](../Page/虚拟内存.md "wikilink"),
    控制内存保护，以及物理内存与二级存储之间的[分页调度](https://zh.wikipedia.org/wiki/分页 "wikilink"),
    以及物理内存的分配。还能分析[PE格式可执行程序](https://zh.wikipedia.org/wiki/Portable_Executable "wikilink")，以便映射入或卸载这些程序。

<!-- end list -->

  - 进程结构
    处理[进程与](https://zh.wikipedia.org/wiki/进程 "wikilink")[线程的创建与终止](../Page/线程.md "wikilink")，实现了[作业概念](../Page/作業_\(電腦\).md "wikilink")（从[Windows
    2000开始](../Page/Windows_2000.md "wikilink")）。

<!-- end list -->

  - 即插即用管理器
    处理[即插即用](https://zh.wikipedia.org/wiki/即插即用 "wikilink")，支持在启动时的设备检测与安装，按需停止或启动一个设备。它的大部分实际上是在用户态的
    「Plug and Play」服務中实现。

<!-- end list -->

  - 电源管理
    处理电源事件（关机、睡眠stand-by、休眠等），通知受影响的驱动程序。

<!-- end list -->

  - 安全引用监视（SRM）
    强制实行安全规则的子系统。\[9\]
    通过[访问控制表](https://zh.wikipedia.org/wiki/访问控制表 "wikilink")（ACLs）确定一个对象或资源可以被访问。访问控制表由访问控制条目(ACEs)组成。ACE包含了[安全标识符](../Page/安全标识符.md "wikilink")（SID）与授予的操作列表，使得用户帐户、用户组账号、登录会话\[10\]具有对资源的允许、不允许、审核（audit）等权限.\[11\]

<!-- end list -->

  - GDI
    [图形设备接口是负责画线](https://zh.wikipedia.org/wiki/图形设备接口 "wikilink")、字体绘制、处理调色板等。在[Windows
    NT
    3.x系列操作系统](https://zh.wikipedia.org/wiki/Windows_NT_3.x "wikilink")，GDI属于用户态。从[Windows
    NT
    4.0](../Page/Windows_NT_4.0.md "wikilink")，GDI移入了核心态，以提高图形性能。\[12\]

### 內核

内核（kernel）在HAL与执行体之间，实际上是“微内核”的理念下设计实现出来的。负责多处理器同步，线程与中断的调度与分派，自陷处理，异常分派，在启动时初始化设备驱动程序等。

### 核心态驱动

Windows
NT使用核心态的[设备驱动程序与硬件交互](../Page/驱动程序.md "wikilink")。用户态下的程序看到的设备都是I/O管理器下的文件对象；而I/O管理器自身看到的设备是设备对象。核心态驱动程序分为3个层次：
最高层驱动程序，中层驱动程序，低层驱动程序。最高层驱动程序，如[FAT或](../Page/FAT.md "wikilink")[NTFS的文件系统驱动程序](../Page/NTFS.md "wikilink")，依赖于中层驱动程序。中层驱动程序由功能驱动（function
driver）组成。功能驱动依赖于总线驱动，即服务于总线控制器、适配器（adapter）、桥（bridge）的驱动。[Windows
Driver Model](../Page/Windows_Driver_Model.md "wikilink")
(WDM)存在于中层。低层驱动直接控制硬件，不依赖于任何其他驱动程序。

### 硬件抽象层（HAL）

硬件抽象是一套软件子程序（routine），模拟了特定平台有关细节，使得程序不必直接访问硬件资源。因而可以写独立于设备的、高性能代码，通过操作系统访问硬件。
例如，编译器屏蔽了CPU指令集的细节，应用程序作者无需考虑与CPU相关的指令。操作系统的硬件抽象使得程序只需调用操作系统级的操作，而屏蔽了硬件具体细节，使得程序具有了可移植性。

操作系统的硬件抽象层位于硬件与软件之间。对操作系统内核隐藏了硬件的大部分差异，使得核心态代码基本不需要改变即可运行于不同硬件配置的计算机上。硬件抽象大都是硬件驱动程序。被屏蔽的硬件信息包括I/O界面、中断设置、多处理器通信机制等。\[13\]

## 内核源码参考

可从下述渠道获得Windows内核的实现源码的参考：

  - [ReactOS](https://zh.wikipedia.org/wiki/ReactOS "wikilink")：\[14\]
    类Windows的开源操作系统，与Windows在 API级别兼容
  - [wine](https://zh.wikipedia.org/wiki/wine "wikilink")：\[15\]在非Windows系统上运行Win32程序的开源中间层，逻辑上与Windows在
    API 级别兼容
  - [Windows Research
    Kernel](https://zh.wikipedia.org/wiki/Windows_Research_Kernel "wikilink")：\[16\]Microsoft向高校和政府开放的用于研究的部分内核源码

## 参见

  - [Windows NT](../Page/Windows_NT.md "wikilink")

  - [Windows library files](../Page/Windows系統函式庫.md "wikilink")

  -
  - [Linux architecture](../Page/Linux内核.md "wikilink")

  -
  -
  - [User-Mode Driver
    Framework](https://zh.wikipedia.org/wiki/UMDF "wikilink")

  - [Kernel-Mode Driver
    Framework](https://zh.wikipedia.org/wiki/KMDF "wikilink")

  - [ReactOS](https://zh.wikipedia.org/wiki/ReactOS "wikilink")

## 延伸阅读

  - Martignetti, E.; *What Makes It Page?: The Windows 7 (x64) Virtual
    Memory Manager* (ISBN 978-1479114290)
  - Russinovich, Mark E.; Solomon, David A.; Ionescu, A.; *Windows
    Internals, Part1: Covering Windows Server 2008 R2 and Windows 7*
    (ISBN 978-0735648739)
  - Russinovich, Mark E.; Solomon, David A.; Ionescu, A.; *Windows
    Internals, Part2: Covering Windows Server 2008 R2 and Windows 7*
    (ISBN 978-0735665873)

## 注释与参考文献

  - Notes

<!-- end list -->

  - References

<!-- end list -->

  -
  -
  -
  -
  -
  -
  -
## 外部链接

  - [Microsoft's official Windows 2000
    site](http://www.microsoft.com/windows2000/)
  - [Windows 2000 Plug and Play
    architecture](http://www.microsoft.com/technet/prodtechnol/windows2000pro/evaluate/featfunc/plugplay.mspx)
  - [Memory management in the Windows XP
    kernel](http://www.reactos.org/wiki/Techwiki:Memory_management_in_the_Windows_XP_kernel)

[Category:Windows_NT体系结构](https://zh.wikipedia.org/wiki/Category:Windows_NT体系结构 "wikilink")

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

13. [Windows NT Hardware Abstraction Layer
    (HAL)](http://support.microsoft.com/kb/99588/en-us)

14. [毛德操](https://zh.wikipedia.org/wiki/毛德操 "wikilink")：《Windows
    内核情景分析—采用开源代码ReactOS(上、下册)》,电子工业出版社, 2009-5 ISBN
    9787121081149

15. wine官网的《Wine Developers Guide》

16. [潘爱民](https://zh.wikipedia.org/wiki/潘爱民 "wikilink"):《Windows内核原理与实现》,电子工业出版社,2013年5月第1版ISBN
    9787121200564