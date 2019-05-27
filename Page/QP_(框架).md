**QP** ("**Quantum Platform**")
是一个用来构建模块化实时应用程序的开源框架。它采取[事件驱动的方式来调度系统中的各个操作发起者](https://zh.wikipedia.org/wiki/事件驱动 "wikilink")。

## 系统总览

QP编程框架家族包括了QP/C，QP/C++，和QP-nano。它们都经由良好的质量控制，并且既有GPLv2开源协议，也可以进行商业许可\[1\]
。这些框架都能在单片机上运行并能够替代一个传统的RTOS，并对每一种常见的MCU都提供了移植好的底层接口。QP/C and
QP/C++也能和一个传统的OS或RTOS一起使用，比如[POSIX](https://zh.wikipedia.org/wiki/POSIX "wikilink")
([Linux](../Page/Linux.md "wikilink"),
[QNX](../Page/QNX.md "wikilink"))，[Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")，
[VxWorks](../Page/VxWorks.md "wikilink")，[ThreadX](../Page/ThreadX.md "wikilink")，[uC/OS](https://zh.wikipedia.org/wiki/MicroC/OS-II "wikilink")，[FreeRTOS等等](../Page/FreeRTOS.md "wikilink")。

QP中各个[活动对象](https://zh.wikipedia.org/wiki/活动对象 "wikilink")（actors）是由层次化状态机（[UML状态图](https://zh.wikipedia.org/wiki/UML状态图 "wikilink")）来表征的。QP框架支持由C或者C++编写的[UML状态机](https://zh.wikipedia.org/wiki/UML状态机 "wikilink")，也支持由免费的QM建模工具直接进行自动代码生成。\[2\]

## 设计背景

活动对象原生支持并自动保证以下[并发编程中的最佳实践](https://zh.wikipedia.org/wiki/并发编程 "wikilink")：\[3\]

  - 保证所有的任务数据都应当是本地的，私有的，并且无法从系统的其他部分访问。
  - 任务键的通信应当使用中间事件对象异步进行。使用异步通信可以使各任务真正互相独立并不互相阻塞。
  - 在任务的整个生命周期中它都应当响应事件，因此其主要部分应该是一个[事件循环](https://zh.wikipedia.org/wiki/事件循环 "wikilink")。
  - 任务应当每次处理一个事件，并在处理完毕之前不应响应其他事件，因此在任务之中没有[竞争冒险](https://zh.wikipedia.org/wiki/竞争冒险 "wikilink")。

使用活动对象使得思考并发编程变得容易。相反，直接使用RTOS任务有很多不利之处，尤其因为他们对使用方式不加限制，也不提供自动进行并发最佳实践的机制。\[4\]
使用活动对象使抽象程度提高了一个层次，并且能让编程者更好地表达意图和提高生产率。

活动对象并不能凭空产生，这往往需要一个软件框架来为每个活动对象提供一个线程，提供事件排队服务以及基于事件的定时服务。在资源受限的嵌入式系统中，可扩展性和效率是此类框架的最大着力点之一。那些传统上建立在RTOS之上的建模工具和各类框架增加了内存消耗和CPU开销。

QP框架在设计时就着眼于效率和小内存占用，而且在独立构型中不需要一个RTOS。事实上，和传统的RTOS比起来，QP框架提供较少的RAM和ROM占用。这是有可能的；因为活动对象不需要阻塞，因此传统RTOS中的大部分阻塞机制（如[信号量等](../Page/信号量.md "wikilink")）是不需要的。

这些特性使得事件驱动框架适用于[单片机](../Page/单片机.md "wikilink")。比起原始的RTOS任务，[事件驱动框架是一个更高层次的抽象](https://zh.wikipedia.org/wiki/事件驱动框架 "wikilink")，并且资源占用率和能量消耗也低。这是由于事件驱动模型仅在处理事件时激活CPU，而在绝大多数时间CPU处于低功耗模式。

## QP架构和组件

QP由一个合乎UML规范的事件处理器（QEP），一个可移植的事件驱动实时框架（QF），一个小型化的运行至完成的内核（QK）和一个软件跟踪系统（QS）组成.

[518x518像素](https://zh.wikipedia.org/wiki/File:Qp_components.jpg "fig:518x518像素")

**QEP**（Quantum Event
Processor）是一个合乎UML规范的事件处理器。它使得UML状态机的直接编码（使用UML状态图）成为可能，并能生成高度可维护的C/C++代码。每一个状态机元素都精确无歧义地对应到唯一的代码片段。QEP完全支持层次化状态嵌套，这方便了子状态机的复用而无需重复进行编码。

**QF**（Quantum
Framework）是一个高度可移植的、事件驱动的实时应用程序框架。它是专为[实时嵌入式系统中](https://zh.wikipedia.org/wiki/实时嵌入式系统 "wikilink")[状态机的并发执行设计的](https://zh.wikipedia.org/wiki/状态机 "wikilink")。

**QK**（Quantum
Kernel）是一个小型的、非阻塞式的[运行至完成](https://zh.wikipedia.org/wiki/运行至完成 "wikilink")（Run-to-completion）的内核。它是专门为执行运行至完成的[状态机设计的](https://zh.wikipedia.org/wiki/状态机 "wikilink")。

**QS**（Quantum
Spy）是一个软件跟踪系统，它能在只占用极少系统资源的前提下监视事件驱动的QP应用程序，并不会导致应用程序出线显著速度降低或者卡顿。

## 支持的处理器

所有的QP框架（QP/C，QP/C++和QP-nano）都可以很容易地被移植到各种[微处理器和](../Page/微处理器.md "wikilink")[编译器](https://zh.wikipedia.org/wiki/编译器 "wikilink")，这是由于QP框架从设计之初就考虑到方便移植。下列的移植现在可用：

  - [ARM
    Cortex-M4F](https://zh.wikipedia.org/wiki/ARM_Cortex-M4F "wikilink")
    (TI Stellaris)
  - [ARM
    Cortex-M3](https://zh.wikipedia.org/wiki/ARM_Cortex-M3 "wikilink")
    (TI Stellaris, ST
    [STM32](https://zh.wikipedia.org/wiki/STM32 "wikilink"), NXP LPC)
  - [ARM
    Cortex-M0](https://zh.wikipedia.org/wiki/ARM_Cortex-M0 "wikilink")
    (NXP LPC1114)
  - [ARM](https://zh.wikipedia.org/wiki/ARM_architecture "wikilink")7/9
    (Atmel AT91R4x, AT91SAM7, NXP LPC, ST STR912)
  - [Atmel AVR](../Page/Atmel_AVR.md "wikilink") Mega
  - [Atmel AVR32](https://zh.wikipedia.org/wiki/Atmel_AVR32 "wikilink")
    UC3-A3
  - [TI MSP430](https://zh.wikipedia.org/wiki/TI_MSP430 "wikilink")
  - [TI
    TMS320C28x](https://zh.wikipedia.org/wiki/Texas_Instruments_TMS320#C2000_series "wikilink")
  - [TI
    TMS320C55x](https://zh.wikipedia.org/wiki/Texas_Instruments_TMS320 "wikilink")
  - [Renesas
    Rx600](https://zh.wikipedia.org/wiki/Renesas_Electronics "wikilink")
  - [Renesas
    R8C](https://zh.wikipedia.org/wiki/Renesas_Electronics "wikilink")
  - [Renesas
    H8](https://zh.wikipedia.org/wiki/Renesas_Electronics "wikilink")
  - [Freescale
    Coldfire](https://zh.wikipedia.org/wiki/Freescale_Coldfire "wikilink")
  - [Freescale
    68HC08](https://zh.wikipedia.org/wiki/Freescale_68HC08 "wikilink")
  - [Altera Nios II](../Page/Nios_II.md "wikilink")
  - [8051](https://zh.wikipedia.org/wiki/Intel_MCS-51 "wikilink")
    (Silicon Labs)
  - [80251](https://zh.wikipedia.org/wiki/Intel_MCS-51 "wikilink")
    (Atmel)
  - [Microchip
    PIC24/dsPIC](https://zh.wikipedia.org/wiki/PIC_microcontroller "wikilink")
  - [Cypress PSoC1](../Page/PSoC.md "wikilink")
  - [80x86 real mode](https://zh.wikipedia.org/wiki/80x86 "wikilink")

## 支持的操作系统

QP/C和QP/C++框架可以和下列的传统操作系统和[实时操作系统一起使用](../Page/实时操作系统.md "wikilink")。当前，QP支持下列操作系统和实时操作系统：

  - [Linux](../Page/Linux.md "wikilink")（POSIX）
  - [Win32](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")（所有的桌面版Windows和Windows
    CE）
  - [VxWorks](../Page/VxWorks.md "wikilink")
  - [ThreadX](../Page/ThreadX.md "wikilink")
  - [FreeRTOS](../Page/FreeRTOS.md "wikilink")
  - [MicroC/OS-II](https://zh.wikipedia.org/wiki/MicroC/OS-II "wikilink")
  - [QNX](../Page/QNX.md "wikilink")（POSIX）
  - [INTEGRITY](../Page/INTEGRITY_\(操作系统\).md "wikilink")（POSIX）

## 授权协议

所有的QP框架都采取双重授权，既可以采取GPLv2也可以采取传统的闭源商业授权。那些希望在嵌入式设备中闭源使用QP的公司可以获得一个商业授权。

## 另请参见

  - [参与者模式](https://zh.wikipedia.org/wiki/Actor_model "wikilink")
  - UML状态机
  - [实时操作系统](https://zh.wikipedia.org/wiki/Embedded_operating_system "wikilink")
  - [嵌入式操作系统](https://zh.wikipedia.org/wiki/Real-time_operating_system "wikilink")

## 参考文献

## 外部链接

  - [state-machine.com](http://www.state-machine.com)
  - [QP project on SourceForge.net](http://sourceforge.net/projects/qpc)
  - [qf4net: Quantum Framework for
    .Net](http://www.hessmer.org/dev/qhsm)
  - [qfj: Quantum Framework for Java on
    SourceForge.net](http://sourceforge.net/projects/qfj)
  - [Miros: a hierarchical state machine module in
    Python](https://github.com/jjjesus/miros_py)
  - [Miros: a hierarchical state machine module in
    Lua](https://github.com/jjjesus/miros)
  - [State-Oriented Programming
    (Groovy)](https://web.archive.org/web/20110719004558/http://homepages.fh-regensburg.de/~mpool/mpool08/submissions/Sterkin.pdf)
  - [ACCU Overload Journal \#64 "Yet Another Hierarchical State
    Machine"](http://accu.org/index.php/journals/252)
  - [C/C++ Users Journal "Who Moved My
    State?"](http://www.drdobbs.com/184401643)
  - [C/C++ Users Journal "Deja Vu"](http://www.drdobbs.com/184401665)
  - [Research on Open CNC System Based on Quantum
    Framework](http://www.scientific.net/KEM.392-394.309)
  - [Active Objects by
    Schmidt](https://www.webcitation.org/6Av3crC4V?url=http://www.cs.wustl.edu/~schmidt/PDF/Act-Obj.pdf)

[Category:实时操作系统](https://zh.wikipedia.org/wiki/Category:实时操作系统 "wikilink")
[Category:嵌入式操作系统](https://zh.wikipedia.org/wiki/Category:嵌入式操作系统 "wikilink")
[Category:开源操作系统](https://zh.wikipedia.org/wiki/Category:开源操作系统 "wikilink")
[Category:面向对象编程](https://zh.wikipedia.org/wiki/Category:面向对象编程 "wikilink")

1.
2.
3.
4.