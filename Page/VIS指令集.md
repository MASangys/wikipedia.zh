**Visual Instruction Set**（缩写**VIS**），是一个用于[SPARC](../Page/SPARC.md "wikilink")处理器的[SIMD](https://zh.wikipedia.org/wiki/SIMD "wikilink")[多媒体指令集扩展](https://zh.wikipedia.org/wiki/多媒体指令集扩展 "wikilink")。VIS在所有的[UltraSPARC以及较新的](https://zh.wikipedia.org/wiki/UltraSPARC "wikilink")[SPARC64处理器上都有实现](https://zh.wikipedia.org/wiki/SPARC64 "wikilink")。

VIS有三个版本。VIS 1.0和VIS 2.0已在先前的SPARC处理器上得到实现；VIS 3.0 将在[Rock微處理器中首次实现](https://zh.wikipedia.org/wiki/Rock微處理器 "wikilink")。\[1\]

VIS重用了SPARC处理器中的64位长[浮点](https://zh.wikipedia.org/wiki/浮点 "wikilink")[寄存器](../Page/寄存器.md "wikilink")来储存8位，16位或者32位的[整数](../Page/整数.md "wikilink")数值。从这方面来讲，VIS大概更像[MMX](../Page/MMX.md "wikilink")而不怎么像[SSE](../Page/SSE.md "wikilink")／[SSE2](../Page/SSE2.md "wikilink")／[AltiVec](https://zh.wikipedia.org/wiki/AltiVec "wikilink")，后者都具有专用的128位SIMD寄存器。但是，MMX只有8个寄存器可用，而SPARC处理器通常具有数目大得多的寄存器，这是[RISC处理器的特色之一](https://zh.wikipedia.org/wiki/RISC "wikilink")。

作为[RISC处理器的扩展指令集](https://zh.wikipedia.org/wiki/RISC "wikilink")，VIS严格遵守RISC的设计原则--保持指令集的精简与高效。这很不同于[CISC处理器扩展指令集](https://zh.wikipedia.org/wiki/CISC "wikilink")（如MMX/SSE/SSE2/SSE3/SSE4/3D Now\!）的做法。理论上，RISC的设计原则可以保持流水线的简单高效，从而可能带来更大的吞吐量及性能提升。

然而，[Intel](https://zh.wikipedia.org/wiki/Intel "wikilink")／[AMD可以很容易的为x](https://zh.wikipedia.org/wiki/AMD "wikilink")86/x64处理器加入新的指令集扩展，[Sun却必须在这方面非常谨慎](https://zh.wikipedia.org/wiki/升阳 "wikilink")。这可能是[CISC相较于](https://zh.wikipedia.org/wiki/CISC "wikilink")[RISC的优势之一](https://zh.wikipedia.org/wiki/RISC "wikilink")。有时候程序员们不得不组合几条VIS指令来完成MMX/SSE只用一条指令便可完成的某项操作。值得指出的是，更少的指令数目并不一定就会带来更大的性能提升。

VIS包含一系列对图形图像网络等的处理支持，其中大多数只可用于整型数据。

有三种方法可以在程序中使用VIS:

  - 使用[内嵌汇编](https://zh.wikipedia.org/wiki/内嵌汇编 "wikilink")
  - 使用[VSDK中的内嵌模板](https://zh.wikipedia.org/wiki/VSDK "wikilink")，这很类似于使用[编译器原语](https://zh.wikipedia.org/wiki/编译器原语 "wikilink")，使用起来有些像调用C语言函数
  - 使用[mediaLib多媒体函数库](https://zh.wikipedia.org/wiki/mediaLib "wikilink")。这个库提供C函数接口，并在SPARC平台上使用VIS（同时在x86/x64平台上使用MMX/SSE/SSE2）来加速多媒体应用程序

## 参考资料

## 外部链接

  - [Sun网站上的VIS (Visual Instruction Set)](http://sun.com/processors/vis/)
  - [VSDK (VIS Software Developer's Kit) VIS软件开发工具包](http://sun.com/processors/vis/vsdk.html)
  - [VIS Instruction Set 用户手册](https://web.archive.org/web/20120201122223/http://www.nondot.org/sabre/os/files/Processors/VISInstructionSetUsersManual.pdf)

[Category:SIMD计算](https://zh.wikipedia.org/wiki/Category:SIMD计算 "wikilink") [Category:Sun微系统硬件](https://zh.wikipedia.org/wiki/Category:Sun微系统硬件 "wikilink") [Category:SPARC微处理器架构](https://zh.wikipedia.org/wiki/Category:SPARC微处理器架构 "wikilink")

1.