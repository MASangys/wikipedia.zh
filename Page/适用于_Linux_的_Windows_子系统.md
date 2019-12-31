> 本文内容由[适用于 Linux 的 Windows 子系统](https://zh.wikipedia.org/wiki/适用于_Linux_的_Windows_子系统)转换而来。


**适用于 Linux 的 Windows 子系统**（，简称**WSL**）是一个为在[Windows 10和](../Page/Windows_10.md "wikilink")[Windows Server 2019上能够原生运行](../Page/Windows_Server_2019.md "wikilink")[Linux](../Page/Linux.md "wikilink")二进制可执行文件（[ELF格式](../Page/可執行與可鏈接格式.md "wikilink")）的[兼容层](../Page/兼容层.md "wikilink")。

## 概览

WSL提供了一个由微软开发的[Linux](../Page/Linux.md "wikilink")兼容的内核接口（不包含[Linux内核](../Page/Linux内核.md "wikilink")代码），\[1\]然后可以在其上运行[GNU](../Page/GNU.md "wikilink")[用户空间](https://zh.wikipedia.org/wiki/用户空间 "wikilink")，例如[Ubuntu](../Page/Ubuntu.md "wikilink")，\[2\]\[3\]\[4\]\[5\][openSUSE](https://zh.wikipedia.org/wiki/openSUSE "wikilink")，\[6\][SUSE Linux Enterprise Server](https://zh.wikipedia.org/wiki/SUSE_Linux_Enterprise_Server "wikilink")，\[7\]\[8\]\[9\][Debian](../Page/Debian.md "wikilink")\[10\]和[Kali Linux](../Page/Kali_Linux.md "wikilink")。\[11\]这样的用户空间可能包含[Bash](../Page/Bash.md "wikilink") shell和命令语言，使用本机GNU/Linux命令行工具（[sed](https://zh.wikipedia.org/wiki/sed "wikilink")，[awk等](https://zh.wikipedia.org/wiki/awk "wikilink")），编程语言解释器（Ruby，Python等），甚至是图形应用程序（使用主机端的[X窗口系统](https://zh.wikipedia.org/wiki/X窗口系统 "wikilink")）。\[12\]

## 简介和可用性

在周年更新中引入时，只有Ubuntu镜像可用。秋季创意者更新将Linux发行版的安装过程移至[Microsoft商店](../Page/Microsoft商店.md "wikilink")，并引入了[Fedora](../Page/Fedora.md "wikilink")和[SUSE](../Page/SUSE.md "wikilink")镜像。\[13\]

WSL仅在版本1607之后的64位版本的Windows 10中可用。它也可在Windows Server 2019中使用。

## 发展

微软首次尝试在Windows上实现类似Unix的兼容性，首先是[微软POSIX子系统](../Page/微软POSIX子系统.md "wikilink")，由Windows Services for UNIX通过MKS/Interix取代，后者最终因[Windows 8.1的发布而被弃用](../Page/Windows_8.1.md "wikilink")。Windows Subsystem for Linux背后的技术起源于未发布的Astoria项目，它使一些[Android](../Page/Android.md "wikilink")应用程序能够在[Windows 10 移动版上运行](https://zh.wikipedia.org/wiki/Windows_10_移动版 "wikilink")。\[14\]它首先在[Windows 10 Insider Preview](../Page/Windows预览体验计划.md "wikilink") build 14316中提供。\[15\]

虽然微软以前的项目和第三方[Cygwin](../Page/Cygwin.md "wikilink")专注于基于[POSIX标准创建自己独特的](https://zh.wikipedia.org/wiki/POSIX "wikilink")[类Unix环境](https://zh.wikipedia.org/wiki/类Unix "wikilink")，但WSL的目标是原生Linux兼容性。WSL不是将非原生功能包装到[Win32](https://zh.wikipedia.org/wiki/Win32 "wikilink")[系统调用中](https://zh.wikipedia.org/wiki/系统调用 "wikilink")，而是利用[NT内核执行程序将Linux程序作为特殊的](../Page/Windows_NT体系结构.md "wikilink")、隔离的最小[进程](https://zh.wikipedia.org/wiki/进程 "wikilink")（称为*“pico-processes”*）作为专用系统连接到内核模式*“pico-providers”*。调用和[异常处理](../Page/异常处理.md "wikilink")程序不同于vanilla NT进程。\[16\]

微软将WSL视为“主要面向开发人员的工具 — 尤其是Web开发人员以及在开源项目上工作或使用开源项目的人员”。\[17\]WSL使用的资源少于完全虚拟化的机器，这是在Windows环境中运行Linux软件的最直接方式，同时还允许用户在同一组文件上使用Windows应用程序和Linux工具。\[18\]

## 体系结构

**LXSS Manager Service**是负责与子系统交互的服务（通过*[驱动程序](../Page/驱动程序.md "wikilink")*和），以及Bash.exe（不要与Linux发行版提供的Shell混淆）的方式启动Linux进程，以及在执行期间处理Linux[系统调用和二进制锁](https://zh.wikipedia.org/wiki/系统调用 "wikilink")。\[19\]

特定用户调用的所有Linux进程都进入“Linux实例”（通常，第一个调用的进程是[init](https://zh.wikipedia.org/wiki/init "wikilink")）。关闭所有应用程序后，将关闭实例。

### 硬件和文件系统访问

由于没有硬件仿真/虚拟化（与coLinux等其他项目不同），WSL直接使用主机文件系统（通过和）\[20\]和硬件的某些部分，例如网络（Web服务器，用于例如，可以通过主机上配置的相同接口和IP地址进行访问，并且对使用需要管理权限的端口或已经被其他应用程序占用的端口共享相同的限制），这保证了互操作性。\[21\]

即使从shell运行[sudo](https://zh.wikipedia.org/wiki/sudo "wikilink")，某些位置（例如系统文件夹）和配置的访问/修改也受到限制。必须启动具有提升权限的实例才能获得“真正的sudo”并允许此类访问。\[22\]

### 局限性

此子系统无法运行所有Linux软件（如32位二进制文件）\[23\]\[24\]或需要在WSL中未实现的特定Linux内核服务的软件。由于WSL中没有“真正的”Linux内核，因此无法运行内核模块（如设备驱动程序）。

可以通过在Windows（主机）环境（例如VcXsrv或[Xming](https://zh.wikipedia.org/wiki/Xming "wikilink")）\[25\]中安装[X窗口系统来运行一些图形](https://zh.wikipedia.org/wiki/X窗口系统 "wikilink")（GUI）应用程序（例如Mozilla [Firefox](../Page/Firefox.md "wikilink")），尽管并非没有警告，例如缺乏音频支持或硬件加速（导致图形性能不佳）。目前还没有实施对[OpenCL](../Page/OpenCL.md "wikilink")和[CUDA](../Page/CUDA.md "wikilink")的支持，尽管计划在将来的版本中使用。\[26\]\[27\]

也就是说，微软明确指出**WSL**面向应用程序的开发者，而不是面向桌面环境或生产服务器，建议使用[虚拟机](https://zh.wikipedia.org/wiki/虚拟机 "wikilink")（[Hyper-V或](https://zh.wikipedia.org/wiki/Hyper-V "wikilink")[Kubernetes](../Page/Kubernetes.md "wikilink")）和[Azure来实现这些目的](../Page/Microsoft_Azure.md "wikilink")。\[28\]

### 性能

在性能测试中，Windows Subsystem for Linux通常接近原生Linux，如Ubuntu，Debian，Intel Clear Linux或其他Linux发行版。I/O在某些测试中是WSL的瓶颈。\[29\] \[30\]

## 截图

<File:WSL> gui Firefox.png|运行于WSL中的[Firefox](../Page/Firefox.md "wikilink") <File:WSL> gui Synaptic.png|运行于WSL中的[Synaptic](https://zh.wikipedia.org/wiki/Synaptic "wikilink")

## 参见

  - [Azure Sphere](https://zh.wikipedia.org/wiki/Azure_Sphere "wikilink")
  - [andLinux](https://zh.wikipedia.org/wiki/andLinux "wikilink")
  - [Cooperative Linux](../Page/Cooperative_Linux.md "wikilink")
  - [Cygwin](../Page/Cygwin.md "wikilink")
  - [FreeBSD](../Page/FreeBSD.md "wikilink")的Linux兼容层
  - [万圣节文件](../Page/万圣节文件.md "wikilink")
  - [SmartOS](../Page/SmartOS.md "wikilink")
  - [Interix](https://zh.wikipedia.org/wiki/Interix "wikilink")
  - [Wine](../Page/Wine.md "wikilink")
  - [Xenix](../Page/Xenix.md "wikilink")

## 参考资料

## 外部链接

  -
  - 微软文档上的[WSL](https://docs.microsoft.com/en-us/windows/wsl/about)页面

  -
  - [*Windows Command Line Tools For Developers* blog](https://blogs.msdn.microsoft.com/commandline/)

  -
[Category:兼容层](https://zh.wikipedia.org/wiki/Category:兼容层 "wikilink") [Category:Ubuntu](https://zh.wikipedia.org/wiki/Category:Ubuntu "wikilink") [Category:Windows_10](https://zh.wikipedia.org/wiki/Category:Windows_10 "wikilink") [Category:Windows组件](https://zh.wikipedia.org/wiki/Category:Windows组件 "wikilink")

1.
2.
3.
4.
5.
6.  [Get openSUSE Leap 42 - Microsoft Store](https://www.microsoft.com/store/apps/9njvjts82tjx)
7.  [Get SUSE Linux Enterprise Server 12 - Microsoft Store](https://www.microsoft.com/store/apps/9p32mwbh6cns)
8.
9.
10.
11.
12.
13.
14.
15.
16.
17.
18.
19.
20.
21.
22.
23.
24.
25.
26.
27.
28.
29.
30.