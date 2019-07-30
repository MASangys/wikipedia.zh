**`CPUID`**是一个面向[x86架构的](https://zh.wikipedia.org/wiki/x86 "wikilink")，它的名称衍生自[CPU识别](../Page/中央处理器.md "wikilink")，作用是允许软件发现处理器的详细信息。它由[英特尔](../Page/英特尔.md "wikilink")在1993年引入[奔騰](../Page/奔騰.md "wikilink")和[SL增强486处理器](../Page/Intel_80486.md "wikilink")。\[1\]

通过使用`CPUID`操作码，软件可以确定处理器的类型和特性支持（例如[MMX](../Page/MMX.md "wikilink")/[SSE](../Page/SSE.md "wikilink")）。`CPUID`操作码为`0Fh、A2h`（双字节形式，`A20Fh`为单字(`word`)）形式，值位于EAX寄存器中，某些情况下ECX寄存器用于指定要返回的信息。

## 历史

在`CPUID`指令普遍可用前，程序员需要编写深奥的[机器语言](../Page/机器语言.md "wikilink")利用CPU行为的微小差异来确定处理器的情况和型号。\[2\]\[3\]

在x86系列之外，开发人员大多仍然需要使用深奥的过程来确定CPU设计存在的差异。虽然`CPUID`指令针对x86架构，但其他架构（例如ARM）通常提供可供读取的片上寄存器来获取与此指令提供的相同种类的信息。

## 调用CPUID

在[汇编语言](../Page/汇编语言.md "wikilink")中，`CPUID`指令不使用参数，因为`CPUID`隐式使用EAX寄存器来确定返回信息的主类别。在英特尔最新的术语中，这被称为CPUID leaf。`CPUID`的调用应该以`EAX = 0`开始，这将在EAX寄存器中返回CPU支持的最高EAX调用参数（leaf）。

## x86外的特定CPU识别信息

一些非x86的CPU架构也提供了有关处理器能力的某种形式的结构化信息，通常作为一组特殊寄存器：

  - [ARM架構有一个](https://zh.wikipedia.org/wiki/ARM架構 "wikilink")`CPUID`协处理器寄存器。\[4\]

  - 大型机处理器自1983年的起支持“Store CPU ID”（`STIDP`）指令\[5\]，用于查询处理器ID。\[6\]

  - [MIPS32架构定义了一个强制性的](../Page/MIPS架構.md "wikilink")*Processor Identification*（`PrId`）和一系列菊花链“配置寄存器”。\[7\]

  - [PowerPC](../Page/PowerPC.md "wikilink")处理器有32位只读的`PVR`寄存器来识别使用的处理器型号。.\[8\]

## 参见

  - [CPU-Z](../Page/CPU-Z.md "wikilink")，一个使用`CPUID`等信息识别系统配置的Windows实用工具

## 参考资料

[Category:X86架構](https://zh.wikipedia.org/wiki/Category:X86架構 "wikilink") [Category:机器码](https://zh.wikipedia.org/wiki/Category:机器码 "wikilink")

1.
2.
3.
4.
5.
6.
7.
8.