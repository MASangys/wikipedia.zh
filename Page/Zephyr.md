**Zephyr**是一个小型的[实时操作系统](../Page/实时操作系统.md "wikilink")\[1\]，用于资源受限的嵌入式互聯设备，支持多种体系并在[Apache许可证
2.0下发行](../Page/Apache许可证.md "wikilink")。它有一个BSD许可证的仿品出现在来自Intel的[Arduino](../Page/Arduino.md "wikilink")
101软件资源包中\[2\]。

## 历史

Zephyr最初是[风河系统公司在](../Page/溫瑞爾系統.md "wikilink")2015年11月推出的为[物联网](../Page/物联网.md "wikilink")（IoT）设备开发的“Rocket内核”\[3\]\[4\]\[5\]，更早时称为“Microkernel
Profile for [VxWorks](../Page/VxWorks.md "wikilink")”，代码移植于2001年并购Eonic
Systems得来的Virtuoso [DSP](../Page/數位訊號處理器.md "wikilink")
RTOS\[6\]。在2016年2月，它成为[Linux基金会的项目而改称现名](https://zh.wikipedia.org/wiki/Linux基金会 "wikilink")\[7\]\[8\]。

## 简介

Zephyr内核是小型的并设计用于资源受限的系统，预期目标是用于从简单的嵌入式环境[传感器和](../Page/传感器.md "wikilink")[LED](https://zh.wikipedia.org/wiki/LED "wikilink")，到复杂的[智能手表和](../Page/智能手表.md "wikilink")[IoT](https://zh.wikipedia.org/wiki/IoT "wikilink")。Zephyr的建造系统支持Zephyr
SDK之外的第三方[工具链](https://zh.wikipedia.org/wiki/工具链 "wikilink")\[9\]。Zephyr计划设立了专门机制来维护或改进安全性\[10\]。

Zephyr计划的成员和支持者包括：[Intel](https://zh.wikipedia.org/wiki/Intel "wikilink")、[Linaro](../Page/Linaro.md "wikilink")、[NXP半导体](../Page/恩智浦半导体.md "wikilink")、[Nordic半导体](http://www.nordicsemi.com/)，和[Synopsys](../Page/新思科技.md "wikilink")、
[runtime.io](https://runtime.io/)、[DeviceTone](https://www.devicetone.com/)、[Oticon等](https://zh.wikipedia.org/wiki/奥迪康 "wikilink")。\[11\]

## 特征

Zephyr内核提供了如下一些特征：内存保护，内核服务，高可配置性，编译时确定资源。\[12\]

### 内存保护

实现可配置的特定于架构的[栈溢出保护](https://zh.wikipedia.org/wiki/栈溢出 "wikilink")，内核对象及设备驱动程序许可权追踪，和线程隔离，采用了在[x86](https://zh.wikipedia.org/wiki/x86 "wikilink")、[ARC和](https://zh.wikipedia.org/wiki/ARC_\(处理器\) "wikilink")[ARM架构上的线程级别](https://zh.wikipedia.org/wiki/ARM "wikilink")[内存保护](https://zh.wikipedia.org/wiki/内存保护 "wikilink")、[用户空间和内存域](https://zh.wikipedia.org/wiki/用户空间 "wikilink")。

对于没有[MMU](../Page/内存管理单元.md "wikilink")/的平台和内存受限的设备，支持把特定应用的代码和一个定制内核组合起来建立一个单体映像，它被装载并执行于系统硬件之上。应用代码和内核代码二者都执行在一个共享的中。

### 内核服务

内核为应用开发提供了一些熟悉的服务，包括：

1.  多[线程服务](../Page/线程.md "wikilink")，兼具基于优先级的、非抢先式的协同线程和基于优先级的、[抢先式线程](https://zh.wikipedia.org/wiki/抢占式多任务处理 "wikilink")，带有可选的[轮流式](https://zh.wikipedia.org/wiki/循环制 "wikilink")[时间片](https://zh.wikipedia.org/wiki/时间片 "wikilink")。包括[POSIX](https://zh.wikipedia.org/wiki/POSIX "wikilink")
    [pthread兼容API支持](https://zh.wikipedia.org/wiki/pthread "wikilink")。
2.  [中断服务](https://zh.wikipedia.org/wiki/中断 "wikilink")，兼具[编译时和](https://zh.wikipedia.org/wiki/编译时 "wikilink")[运行时的中断处理器注册](https://zh.wikipedia.org/wiki/运行时 "wikilink")。
3.  线程间[同步服务](../Page/同步_\(计算机科学\).md "wikilink")，具有二值信号量、计数[信号量](../Page/信号量.md "wikilink")、[互斥信号量](../Page/互斥锁.md "wikilink")。
4.  线程间数据传递服务，具有基本[消息队列](../Page/消息队列.md "wikilink")、增强消息队列和[字节流](https://zh.wikipedia.org/wiki/字节流 "wikilink")。
5.  [内存分配服务](https://zh.wikipedia.org/wiki/内存分配 "wikilink")，具有固定大小或可变大小内存块的动态分配和释放。
6.  [电能管理服务](https://zh.wikipedia.org/wiki/电能管理 "wikilink")，具有比如[无时标空闲和高级的空闲下部构造](../Page/无嘀嗒内核.md "wikilink")。

### 高可配置性

允许应用只合并入它需要的功能，并指定它们的数量和大小。

### 编译时确定资源

要求所有系统资源都在[编译时确定](https://zh.wikipedia.org/wiki/编译时 "wikilink")，这缩减代码大小并增进性能。

## 参见

  - [嵌入式操作系统](https://zh.wikipedia.org/wiki/嵌入式操作系统 "wikilink")

## 引用

## 外部链接

  -
  -
[Category:ARM_操作系统](https://zh.wikipedia.org/wiki/Category:ARM_操作系统 "wikilink")
[Category:嵌入式操作系统](https://zh.wikipedia.org/wiki/Category:嵌入式操作系统 "wikilink")
[Category:自由作业系统](https://zh.wikipedia.org/wiki/Category:自由作业系统 "wikilink")
[Category:微内核](https://zh.wikipedia.org/wiki/Category:微内核 "wikilink")
[Category:实时操作系统](https://zh.wikipedia.org/wiki/Category:实时操作系统 "wikilink")
[Category:使用Apache许可证的软件](https://zh.wikipedia.org/wiki/Category:使用Apache许可证的软件 "wikilink")

1.
2.  [Zephyr Kernel v1.0.0 Release
    Notes](https://www.zephyrproject.org/content/zephyr-kernel-v100-release-notes)

3.   Rocket|website=windriver.com|language=en|access-date=2018-02-23}}
4.
5.  Niheer Patel: [Wind River Welcomes Linux Foundation’s Zephyr
    Project](http://blogs.windriver.com/wind_river_blog/2016/02/wind-river-welcomes-linux-foundations-zephyr-project.html),
    Wind River Systems, 17 February 2016
6.
7.
8.  Zephyr Project: [The Linux Foundation Announces Project to Build
    Real-Time Operating System for Internet of Things
    Devices](https://www.zephyrproject.org/news/linux-foundation-announces-project-build-real-time-operating-system-internet-things-devices),
    Linux Foundation, 17 February 2016
9.
10.
11.
12.