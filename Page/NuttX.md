**NuttX**是一个专注于标准合规和小内存占用的[实时操作系统](../Page/实时操作系统.md "wikilink")（[RTOS](https://zh.wikipedia.org/wiki/RTOS "wikilink")）。它可以在8位到32位的微控制器上部署。NuttX在编写时主要参照了[POSIX和](https://zh.wikipedia.org/wiki/POSIX "wikilink")[ANSI标准](https://zh.wikipedia.org/wiki/ANSI "wikilink")。对于那些标准中没有的部分，如fork()等，则参考了VxWorks或其他RTOS。

NuttX最早是在2007年由Gregory Nutt于BSD协议下释出的。

## 具体实现

NuttX
基本上完全是由C语言实现的，并且通过[Kconfig生成GNU](https://zh.wikipedia.org/wiki/Kconfig "wikilink")
makefile。NuttX的发行版包括了NuttX内核本身和相当一部分的中间件和板级支持包。
NuttX的内核和绝大多数代码完全是由Gregory
Nutt完成的，并由他专门维护。所有的社区贡献都必须经过他批准。

## 关键功能

  - 符合各类重要标准
  - 核心任务管理
  - 模组化的微核心
  - 完全[可抢占(计算机)](https://zh.wikipedia.org/wiki/可抢占\(计算机\) "wikilink")
  - 可扩展，高度可配置
  - 容易移植到各类新的处理器、SoC或者板级架构上
  - 先进先出和时间片轮转调度，并可以采取无节拍内核
  - 实时，具备确定性
  - 具备和POSIX/ANSI类似的任务控制，有名消息队列，计数信号量，时钟、定时器和信号，POSIX线程，环境变量和文件系统
  - 具备和VxWorks类似的任务管理和看门狗定时器
  - 具备和BSD类似的socket接口
  - 可选的进程实现
  - 支持对称多处理器
  - 支持可加载的内核模块
  - 支持线程本地存储（TLS）
  - 支持系统日志
  - 可选实现的系统调用或直接函数调用
  - 内置了可针对各线程配置的CPU负载监控
  - 客制化的NuttX C库
  - 拥有完善的用户手册描述

## 支持架构

  - [ARM](https://zh.wikipedia.org/wiki/ARM_architecture "wikilink")
      - [ARM7TDMI](https://zh.wikipedia.org/wiki/ARM7 "wikilink")
        (德州仪器TMS320 C6571, Calypso, MoxART, NXP LPC214x,
        LPC2378, STMicro STR71x)
      - [ARM9](https://zh.wikipedia.org/wiki/ARM9 "wikilink")20T
        (飞思卡尔i.MX1)
      - [ARM9](https://zh.wikipedia.org/wiki/ARM9 "wikilink")26EJS (德州仪器
        DM320, NXP LPC31xx)
      - [ARM
        Cortex-A](https://zh.wikipedia.org/wiki/ARM_Cortex-A "wikilink")5
        (爱特梅尔SAMA5D2, SAMA5D3, SAMA5D4)
      - [ARM
        Cortex-A](https://zh.wikipedia.org/wiki/ARM_Cortex-A "wikilink")8
        (全志A10)
      - [ARM
        Cortex-A](https://zh.wikipedia.org/wiki/ARM_Cortex-A "wikilink")9
        (NXP/Freescale i.MX6)
      - [ARM
        Cortex-R](https://zh.wikipedia.org/wiki/ARM_Cortex-R "wikilink")4/R4F
        (TI TMS570, Samsung Artik)
      - [ARM
        Cortex-M](https://zh.wikipedia.org/wiki/ARM_Cortex-M "wikilink")0
        (新唐: NUC120, NXP: KL25Z, KL26Z, LPC11xx, Atmel: SAMD20/21,
        SAML21, ST Micro STM32 F0)
      - [ARM
        Cortex-M](https://zh.wikipedia.org/wiki/ARM_Cortex-M "wikilink")3
        ([ST
        Micro](https://zh.wikipedia.org/wiki/STMicroelectronics "wikilink")
        [STM32](https://zh.wikipedia.org/wiki/STM32 "wikilink")
        F1/F2/L4, TI/Stellaris LM3S, NXP LPC17xx, Atmel SAM3U/3X,
        SiliconLabs EFM32)
      - [ARM
        Cortex-M](https://zh.wikipedia.org/wiki/ARM_Cortex-M "wikilink")4
        (有或没有浮点处理器单元：STM32 F3/F4/L4，TI/Stellaris LM4F/TM4C, NXP
        LPC43xx/LPC54xx, Freescale Kinetis K20/K28/K40/60/64/66, Atmel
        SAM4C/4E/4S/4L, Infineon XMC4xxx, Nordic NRF52xxx)
      - [ARM
        Cortex-M](https://zh.wikipedia.org/wiki/ARM_Cortex-M "wikilink")7
        (爱特梅尔SAMV71/SAME70, ST Micro STM32 F7, STM32 H7, NXP i.MX RT)
  - [Atmel AVR](../Page/Atmel_AVR.md "wikilink")
      - Atmel 8-bit AVR (AT90USB, ATmega)
      - [AVR32](https://zh.wikipedia.org/wiki/AVR32 "wikilink")
  - Freescale M68HCS12
  - Intel
      - [80×86](../Page/X86.md "wikilink")
  - MIPS
      - MicroChip PIC32MX (MIPS32 24Kc)
      - MicroChip PIC32MZ (MIPS32 M14k)
  - Misoc
      - LM32 (Qemu)
  - OpenRISC
      - mor1kx
  - Renesas/Hitachi
      - Renesas/Hitachi [SuperH](../Page/SuperH.md "wikilink")
      - Renesas M16C/26
  - [RISC-V](../Page/RISC-V.md "wikilink")
  - Xtensa LX6
      - Expressif ESP32
  - [Zilog](https://zh.wikipedia.org/wiki/Zilog "wikilink")
      - Zilog Z16F
      - [Zilog
        eZ80](https://zh.wikipedia.org/wiki/Zilog_eZ80 "wikilink")
        Acclaim\!
      - [Zilog
        Z8Encore\!](https://zh.wikipedia.org/wiki/Z8_Encore! "wikilink")
      - [Zilog Z80](../Page/Zilog_Z80.md "wikilink")

## 参考资料

## 外部链接

  - [NuttX 主页](http://www.nuttx.org)
  - [Official NuttX用户组 (Yahoo
    Groups)](http://tech.groups.yahoo.com/group/nuttx/)
  - [NuttX官方用户组 (Google
    Groups)](https://groups.google.com/forum/#!forum/nuttx)

[Category:实时操作系统](https://zh.wikipedia.org/wiki/Category:实时操作系统 "wikilink")
[Category:嵌入式操作系统](https://zh.wikipedia.org/wiki/Category:嵌入式操作系统 "wikilink")
[Category:自由作業系統](https://zh.wikipedia.org/wiki/Category:自由作業系統 "wikilink")
[Category:ARM_操作系统](https://zh.wikipedia.org/wiki/Category:ARM_操作系统 "wikilink")
[Category:使用BSD许可证的软件](https://zh.wikipedia.org/wiki/Category:使用BSD许可证的软件 "wikilink")
[Category:微內核](https://zh.wikipedia.org/wiki/Category:微內核 "wikilink")