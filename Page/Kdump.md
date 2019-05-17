**kdump**是[Linux内核的一个功能](../Page/Linux内核.md "wikilink")，可在发生[内核错误时创建](../Page/内核错误.md "wikilink")[核心转储](https://zh.wikipedia.org/wiki/核心转储 "wikilink")。当被触发时，kdump会导出一个内存映像（也称为vmcore），该映像可用于[调试和确定崩溃的原因](https://zh.wikipedia.org/wiki/调试 "wikilink")。
[主内存的转储映像作为](https://zh.wikipedia.org/wiki/主内存 "wikilink")[可执行与可链接格式](../Page/可執行與可鏈接格式.md "wikilink")（ELF）对象导出，可以在处理内核崩溃时通过`/proc/vmcore`直接访问，也可以自动保存到本地可访问的[文件系统](../Page/文件系统.md "wikilink")、 [裸设备或通过](https://zh.wikipedia.org/wiki/裸设备 "wikilink")[网络访问的远程系统](../Page/计算机网络.md "wikilink")。\[1\]\[2\]

## 内部

[右](https://zh.wikipedia.org/wiki/File:Kdump.svg "fig:右")
在内核崩溃的情况下，kdump通过引导另一个[Linux内核](../Page/Linux.md "wikilink")（称为转储捕获内核）并使用它来导出和保存内存转储来保持系统一致性。因此，系统将会启动到一个干净、可靠的环境，而不是依赖已经崩溃的内核，（继续使用已崩溃的内核）这可能会导致各种问题，例如在写入内存转储文件时导致文件系统损坏。为了实现这个“双内核”布局，kdump在内核崩溃后立即使用[kexec引导到转储捕获内核](https://zh.wikipedia.org/wiki/kexec "wikilink")，使用kexec引导“覆盖”当前运行的内核，同时避免执行[bootloader和硬件初始化系统固件](../Page/啟動程式.md "wikilink")（[BIOS或](../Page/BIOS.md "wikilink")[UEFI](../Page/統一可延伸韌體介面.md "wikilink")）。转储捕获内核可以是专门为此目的而构建的单独的Linux[内核映像](../Page/内核.md "wikilink")，也可以在支持可重定位内核的[系统架构上重用主内核映像](https://zh.wikipedia.org/wiki/体系结构 "wikilink")。\[3\]\[4\]\[5\]\[6\]

通过预先保留少量RAM来引导并运行转储捕获内核时，主内存（RAM）的内容得以保留，转储捕获内核预先加载到此内存中，因此主内核使用的RAM都不是在处理内核崩溃时被覆盖。这些保留的RAM仅由转储捕获内核使用，在正常系统操作期间未被使用。某些架构（包括[x86和](https://zh.wikipedia.org/wiki/x86 "wikilink")[ppc64](https://zh.wikipedia.org/wiki/ppc64 "wikilink")）需要RAM的一个小的固定位置部分来引导内核，而不管它在哪里加载；在这种情况下，kexec会创建该部分RAM的副本，以便转储捕获内核也可以访问它。RAM保留部分的大小和可选位置通过[内核启动参数crashkernel指定](../Page/Linux启动进程.md "wikilink")，并且在主内核启动之后使用kexec[控制台应用程序来将转储捕获内核映像及其关联的](../Page/控制台应用程序.md "wikilink")[initrd映像预加载到保留部分的RAM](https://zh.wikipedia.org/wiki/initrd "wikilink")。\[7\]\[8\]\[9\]

除了作为Linux内核一部分的功能外，其他用户空间实用程序也支持kdump机制，包括上述的kexec实用程序。 除了作为kexec用户空间实用程序套件的补丁提供的官方实用程序外，某些[Linux发行版还提供了其他实用程序](../Page/Linux发行版.md "wikilink")，可简化kdump操作的配置，包括自动保存内存转储文件的设置。\[10\]\[11\]\[12\] 可以使用[GNU
Debugger](../Page/GNU侦错器.md "wikilink")（gdb）或Red
Hat的专用崩溃实用程序分析创建的内存转储文件。\[13\]\[14\]

## 历史

kdump功能与kexec一起被合并到内核版本2.6.13的Linux内核主线中，该版本于2005年8月29日发布 \[15\]

## 参见

  - Linux一个专门为调试目的而设计的基于RAM的文件系统

  - 用于查看由ktrace实用程序生成的跟踪文件的BSD实用程序

  - [Linux内核oops](../Page/Linux内核oops.md "wikilink")
    一个潜在的非致命性偏离正确的行为Linux内核

## 参考文献

## 外部链接

  -
  - [Kdump, a Kexec-based Kernel Crash Dumping
    Mechanism](http://lse.sourceforge.net/kdump/documentation/ols2oo5-kdump-paper.pdf),
    [IBM](../Page/IBM.md "wikilink"), 2005, by Vivek Goyal, Eric W.
    Biederman, and Hariprasad Nellitheertha

[Category:用C編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用C編程的自由軟體 "wikilink")
[Category:Linux内核功能](https://zh.wikipedia.org/wiki/Category:Linux内核功能 "wikilink")
[Category:Unix编程工具](https://zh.wikipedia.org/wiki/Category:Unix编程工具 "wikilink")

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

13.

14.

15.