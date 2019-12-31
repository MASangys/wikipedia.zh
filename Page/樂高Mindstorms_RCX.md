> 本文内容由[樂高Mindstorms RCX](https://zh.wikipedia.org/wiki/樂高Mindstorms_RCX)转换而来。


**RCX**是[乐高RCX系列](https://zh.wikipedia.org/wiki/乐高 "wikilink")[机器人](../Page/机器人.md "wikilink")的控制核心，是一个[可编程控制器](https://zh.wikipedia.org/wiki/可编程控制器 "wikilink")，[MindStorms系统的一个组件](https://zh.wikipedia.org/wiki/MindStorms "wikilink")。 RCX有三个版本，分别为：1.0、1.5、2.0

## 面板

RCX使用的微型控制器，是[日立H](https://zh.wikipedia.org/wiki/日立 "wikilink")8/3292系列的H8/300单片机，属于H8/3297系列。芯片具有[计算机的三个主要功能](https://zh.wikipedia.org/wiki/计算机 "wikilink")：[处理器](https://zh.wikipedia.org/wiki/处理器 "wikilink")、[存储器和输入](https://zh.wikipedia.org/wiki/存储器 "wikilink")／输出。它们通过芯片内的地址／数据／[控制总线连接在一起](https://zh.wikipedia.org/wiki/控制总线 "wikilink")。 [LegoMindstormsRCX.jpg](https://zh.wikipedia.org/wiki/File:LegoMindstormsRCX.jpg "fig:LegoMindstormsRCX.jpg")

### RCX主要参数

#### [CPU](https://zh.wikipedia.org/wiki/CPU "wikilink")

H8/300 CPU（8位）。工作频率16 百萬赫，有八个通用16 位寄存器（r0 - r7, r7 作为堆栈指针(sp) 使用）， 16 位程序寄存器（[pc](https://zh.wikipedia.org/wiki/pc "wikilink")），和一个8位[状态寄存器](https://zh.wikipedia.org/wiki/状态寄存器 "wikilink")(cc) 。状态寄存器显示算术状态（如[进位](../Page/进位.md "wikilink")，[溢出](https://zh.wikipedia.org/wiki/溢出 "wikilink")，[和零](https://zh.wikipedia.org/wiki/和零 "wikilink")）和中断屏蔽与使能。指令集包括[暂存器](https://zh.wikipedia.org/wiki/暂存器 "wikilink")-暂存器运算，如16 位加法、16 位减法、8位乘法和16 位／8 位除法），及常见的逻辑操作如「异或」、「或」、「与」、「非」、「移位」、「位操作」、「子程序」的调用与返回和使RCX进入节电模式的「sleep指令」。数据类型包括「位」、「4位[BCD码](https://zh.wikipedia.org/wiki/BCD码 "wikilink")」、「[字节](../Page/字节.md "wikilink")」和「字」（2 个字节）

#### 储存器

RCX的H8/3292芯片拥有32K的[RAM](https://zh.wikipedia.org/wiki/隨機存取記憶體 "wikilink")，但是实际能使用的仅有10K左右（因为固件本身也要占用一定的内存）。整个RCX内只能储存5个编译程序（即使程序占用内存不到10K），另外，如果程序较大，则可能实际储存不足5个编译程序。

#### 输入／输出

RCX支持的输入设备（传感器）有：「接触传感器」、「光感传感器」、「角度传感器」、「温度传感器」以及「火焰传感器」。但是在没有安装固件时传感器将不能工作，也不能执行编译的程序。仅可以运行固化在硬件内的默认程序。输出接口只能接到[LEGO专用马达](https://zh.wikipedia.org/wiki/LEGO "wikilink")（标准马达和微型马达）以及[扬声器](https://zh.wikipedia.org/wiki/扬声器 "wikilink")。RCX可以同时控制所有输入／输出设备

#### 电源供应

RCX使用6节5号电池，安装于背部凹槽。也可以使用9\~12[伏的外接直流电](https://zh.wikipedia.org/wiki/伏 "wikilink")。当RCX没电时，其内部储存的所有数据都会消失，包括固件和已编译的程序。位于顶部的[红外线](../Page/红外线.md "wikilink")数据接口是RCX唯一的数据来源，RCX与外界一切通讯都通过此接口与LEGO专用红外线接收器（接口分别为[COM和](https://zh.wikipedia.org/wiki/COM "wikilink")[USB](../Page/USB.md "wikilink")）进行数据交换，通讯频率为38500[Hz](https://zh.wikipedia.org/wiki/Hz "wikilink")。

## 程式語言

樂高支援的語言：

  - [RCX Code](https://zh.wikipedia.org/wiki/RCX_Code "wikilink")，包含在玩具版本
  - [ROBOLAB](https://zh.wikipedia.org/wiki/ROBOLAB "wikilink")，[塔夫斯大學基於](https://zh.wikipedia.org/wiki/塔夫斯大學 "wikilink")[LabVIEW](../Page/LabVIEW.md "wikilink")所開發

熱門的第三方語言：

  - [BrickOS](https://zh.wikipedia.org/wiki/BrickOS "wikilink")，以前叫 [LegOS之下使用](https://zh.wikipedia.org/wiki/LegOS "wikilink")[C語言和](https://zh.wikipedia.org/wiki/C語言 "wikilink")[C++](../Page/C++.md "wikilink")
  - 在[leJOS或](https://zh.wikipedia.org/wiki/leJOS "wikilink")[TinyVM之下使用](https://zh.wikipedia.org/wiki/TinyVM "wikilink")[Java](../Page/Java.md "wikilink")
  - [NQC](https://zh.wikipedia.org/wiki/NQC "wikilink")，類似C
  - [pbFORTH](https://zh.wikipedia.org/wiki/pbFORTH "wikilink")，延伸自[Forth](../Page/Forth.md "wikilink")語言
  - [pbLua](https://zh.wikipedia.org/wiki/pbLua "wikilink")，一個為了[Lua](../Page/Lua.md "wikilink")語言的NXT API
  - [Visual Basic](../Page/Visual_Basic.md "wikilink")
  - [RobotC](https://zh.wikipedia.org/wiki/RobotC "wikilink")，[NXT適用的新語言](https://zh.wikipedia.org/wiki/NXT "wikilink")
  - [Interactive C](https://zh.wikipedia.org/wiki/Interactive_C "wikilink")，一個用在機器人比賽中類似C的語言
  - [XSLisp](https://zh.wikipedia.org/wiki/XSLisp "wikilink")，專用於RCX (1 + 2)與NXT

## 參見

  - [樂高](../Page/樂高.md "wikilink")
  - [樂高Mindstorms](https://zh.wikipedia.org/wiki/樂高Mindstorms "wikilink")
  - [樂高Mindstorms NXT](../Page/樂高Mindstorms_NXT.md "wikilink")
  - [樂高Mindstorms EV3](../Page/樂高Mindstorms_EV3.md "wikilink")

## 参考文献

1.  RCX手册，Ole Caprani

[Category:樂高](https://zh.wikipedia.org/wiki/Category:樂高 "wikilink")