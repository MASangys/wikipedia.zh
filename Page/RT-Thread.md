**RT-Thread**是一款开源实时操作系统。它主要包含一个实时内核和与实时应用有关的各种组件。\[1\]它在2017年获得华强聚丰及思必驰天使轮投资。\[2\]\[3\]

## RT-Thread内核

  - 面向对象的实时内核；
  - 8，32或256个优先级的多线程调度。对于同优先级线程使用时间片轮转调度法；
  - 提供信号量，也提供互斥信号量以防止优先级反转；
  - 支持其他高效通信方式，比如邮箱、消息队列和事件标志；
  - 支持静态内存分配方法，也支持线程安全的动态内存管理；
  - 对高层应用提供设备框架。

## FinSH命令行工具

  - 类C的命令解析方式；
  - 可通过命令行直接调用系统核心函数或全局变量；
  - 具备历史命令查找功能。

## 设备文件系统

  - 为小型设备优化的类POSIX API，支持多种文件系统；
  - 支持ELM Chan的FatFS。

## TCP/IP协议栈

[lwIP是一个轻量级的TCP](https://zh.wikipedia.org/wiki/lwIP "wikilink")/IP协议栈，它具备下列功能：

  - 标准的BSD接口；
  - 支持IP, ICMP, UDP和TCP；
  - 支持DNS, DHCP和PPP；
  - 支持TFTP, HTTP和FTP。

## RT-Thread/GUI（Persimmon）

  - 与RT-Thread紧密集成；
  - 支持多线程和多窗口；
  - 支持多种控件，例如标签、按钮、单选框、多选框等等；
  - 支持GB2312中文显示；
  - 支持集成开发环境脚本化开发，类似[Qt](../Page/Qt.md "wikilink")。

## CPU架构支持

RT-Thread支持下列架构：
[ARM](https://zh.wikipedia.org/wiki/ARM_architecture "wikilink")

  - am335x
  - am926
  - amv6
  - AT91SAM7S, AT91SAM7X
  - Cortex: M0, M3, M4, R4, M7
  - dm36x
  - [LPC214x, LPC24xx](https://zh.wikipedia.org/wiki/NXP_LPC "wikilink")
  - s3c24x0
  - s3c44b0
  - SEP4020
  - [Xilinx
    Zynq7000](https://zh.wikipedia.org/wiki/Xilinx_Zynq7000 "wikilink")

[AVR32](https://zh.wikipedia.org/wiki/AVR32 "wikilink")

  - UC3

Blackfin

  - bf53x

IA32(X86)

M16C

  - m16c62p

MIPS

  - LOONGSON 1BC, 1C
  - PIC32
  - xburst

[NIOS](https://zh.wikipedia.org/wiki/Nios_\(processor\) "wikilink")

  - [NIOS II](https://zh.wikipedia.org/wiki/Nios_II "wikilink")

PPC

  - ppc405

RX

unicore32

  - sep6200

[NEC V850](https://zh.wikipedia.org/wiki/NEC_V850 "wikilink")

  - 70f34

[Xilinx](https://zh.wikipedia.org/wiki/Xilinx "wikilink")

  - MicroBlaze

## 版本发布\[4\]

  - 2011年1月27日，RT-Thread 0.4.0发布。
  - 2012年1月1日，RT-Thread 1.0 发布。这个版本修复了多个BUG。
  - 2014年8月1日，RT-Thread 2.0.0 beta发布。
  - 2018年3月8日，RT-Thread 3.0.3发布。这个版本主要修补了一些BUG，也提高了系统的易用性。\[5\]
  - 2018年10月18日，RT-Thread
    4.0.0发布。这个版本主要添加了[对称多处理器支持](https://zh.wikipedia.org/wiki/对称多处理器 "wikilink")。\[6\]

## 另请参见

  - [嵌入式系统](../Page/嵌入式系统.md "wikilink")
  - [微控制器](https://zh.wikipedia.org/wiki/微控制器 "wikilink")
  - [单板计算机](https://zh.wikipedia.org/wiki/单板计算机 "wikilink")

## 参考资料

<references />

  -
  -
  -
[Category:Real-time_operating_systems](https://zh.wikipedia.org/wiki/Category:Real-time_operating_systems "wikilink")
[Category:Embedded_operating_systems](https://zh.wikipedia.org/wiki/Category:Embedded_operating_systems "wikilink")
[Category:ARM_operating_systems](https://zh.wikipedia.org/wiki/Category:ARM_operating_systems "wikilink")

1.
2.
3.
4.
5.
6.