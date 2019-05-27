[Amd_k6-2_logo.jpg](https://zh.wikipedia.org/wiki/File:Amd_k6-2_logo.jpg "fig:Amd_k6-2_logo.jpg")處理器\]\]
**3DNow\!**（據說是“3D No
Waiting\!”的縮寫）是由[AMD開發的一套](https://zh.wikipedia.org/wiki/AMD "wikilink")[SIMD](https://zh.wikipedia.org/wiki/SIMD "wikilink")[多媒體](https://zh.wikipedia.org/wiki/多媒體 "wikilink")[指令集](https://zh.wikipedia.org/wiki/指令集 "wikilink")，支持單精度[浮點數的矢量運算](https://zh.wikipedia.org/wiki/浮點數 "wikilink")，用於增强[x86架構的電腦在三维圖像處理上的性能](https://zh.wikipedia.org/wiki/x86 "wikilink")。

## 历史

1996年[Intel首先推出了支持](https://zh.wikipedia.org/wiki/Intel "wikilink")[MMX的](../Page/MMX.md "wikilink")[Pentium处理器](https://zh.wikipedia.org/wiki/Pentium "wikilink")，极大地提高了CPU处理多媒体数据的能力，被广泛地应用于[语音合成](../Page/语音合成.md "wikilink")、[语音识别](../Page/语音识别.md "wikilink")、音频视频编解码、[图像处理和](../Page/图像处理.md "wikilink")[串流媒体等领域](https://zh.wikipedia.org/wiki/串流媒体 "wikilink")。但是MMX只支持整数运算，浮点数运算仍然要使用传统的[x87协处理器指令](https://zh.wikipedia.org/wiki/8087协处理器 "wikilink")。由于MMX与x87的[寄存器相互重叠](../Page/寄存器.md "wikilink")，在MMX代码中插入x87指令时必须先执行*EMMS*指令清除MMX状态，频繁地切换状态将严重影响性能。这限制了MMX指令在需要大量浮点运算的程序，如三维几何变换、裁剪和投影中的应用。

另一方面，由于x87古怪的[堆栈式暫存器结构](../Page/堆栈.md "wikilink")，使得硬件上将其[流水线化和软件上合理调度指令都很困难](../Page/流水线_\(计算机\).md "wikilink")，这成为提高x86架构浮点性能的一个瓶颈。

为了解决以上这两个问题，AMD公司于1998年推出了包含21条指令的3DNow\!指令集，并在其[K6-2处理器中实现](https://zh.wikipedia.org/wiki/K6-2 "wikilink")。[K6-2是第一个能执行浮点SIMD指令的x](https://zh.wikipedia.org/wiki/K6-2 "wikilink")86处理器，也是第一个支持水平浮点寄存器模型的x86处理器。借助3DNow\!，K6-2实现了x86处理器上最快的浮点单元，在每个时钟周期内最多可得到4个单精度浮点数结果，是传统x87协处理器的4倍。许多游戏厂商为3DNow\!优化了程序，[微软的](../Page/微软.md "wikilink")[DirectX](../Page/DirectX.md "wikilink")
7也为3DNow\!做了优化，AMD处理器的游戏性能第一次超过Intel，这大大提升了AMD在消费者心目中的地位。K6-2和随后的[K6-III成为市场上的热门货](https://zh.wikipedia.org/wiki/K6-III "wikilink")。

1999年，随着[Athlon处理器的推出](https://zh.wikipedia.org/wiki/Athlon "wikilink")，AMD为3DNow\!增加了5条新的指令，用于增强其在[DSP方面的性能](../Page/数字信号处理.md "wikilink")，它们被称为“扩展3DNow\!”（Extended
3DNow\!）。

为了对抗3DNow\!，Intel公司于1999年推出了[SSE指令集](../Page/SSE.md "wikilink")。SSE几乎能提供3DNow\!的所有功能，而且能在一条指令中处理两倍多的单精度浮点数；同时，SSE完全支持[IEEE
754](../Page/IEEE_754.md "wikilink")，在处理单精度浮点数时可以完全代替x87。这迅速瓦解了3DNow\!的优势。

1999年后，随着主流[操作系统和软件都开始支持SSE并为SSE优化](../Page/操作系统.md "wikilink")，AMD在其2000年发布的代号为“[Thunderbird](https://zh.wikipedia.org/wiki/Athlon#Athlon_Thunderbird "wikilink")”的Athlon处理器中添加了对SSE的完全支持（“经典”的Athlon或[K7只支持SSE中与MMX有关的部分](https://zh.wikipedia.org/wiki/K7 "wikilink")，AMD称之为“扩展MMX”即Extended
MMX）。随后，AMD致力于[AMD64架构的开发](https://zh.wikipedia.org/wiki/AMD64 "wikilink")；在SIMD指令集方面，AMD跟随Intel，为自己的处理器添加[SSE2和](../Page/SSE2.md "wikilink")[SSE3支持](../Page/SSE3.md "wikilink")，而不再改进3DNow\!。

2010年八月，AMD宣布将在新一代处理器中取消除了两条数据预取指令之外3DNow\!指令的支持，并鼓励开发者将3DNow\!代码重新用SSE实现。

## 支持检测

支持3DNow\!的CPU的[CPUID扩展功能字](../Page/CPUID.md "wikilink")（EAX=80000001h时执行CPUID指令得到的EDX的内容）的（从低位到高位）第31位为1。支持扩展3DNow\!的CPU的CPUID扩展功能字的（从低位到高位）第30位为1。

K6-2至Zen之间AMD所有的x86处理器都支持3DNow\!，包括最新的[Athlon
64](https://zh.wikipedia.org/wiki/Athlon_64 "wikilink")、[Opteron和](../Page/Opteron.md "wikilink")[Sempron处理器](https://zh.wikipedia.org/wiki/Sempron "wikilink")；AMD将3DNow\!从Zen支持列表中移除；[Cyrix等一些其他厂家生产的某些处理器也支持](../Page/Cyrix.md "wikilink")3DNow\!；但Intel生产的所有处理器都不支持3DNow\!。

## 执行环境

3DNow\!指令的执行环境与MMX一样，都是将8个x87寄存器ST0～ST7的低64位重命名为MMX寄存器MM0～MM7，并依平坦模式进行操作（即指令可以任意访问这8个寄存器中的任何一个而不必使用堆栈）。

由于3DNow\!使用的寄存器与x87寄存器重叠，[任务切换时](https://zh.wikipedia.org/wiki/任务切换 "wikilink")，保存x87寄存器状态的同时也保存了3DNow\!的状态，所以3DNow\!不需要操作系统的额外支持。只要CPU支持3DNow\!，含有3DNow\!代码的程序可以在只考虑到x87状态的原有的操作系统上不加修改地运行。

由于3DNow\!依平坦模式访问寄存器，对3DNow\!浮点单元的管线化变得容易，这也利于编译器生成高效的浮点代码。

## 3DNow\!指令集

3DNow\!和扩展3DNow\!的26条指令从功能上可以分为以下五类。

### 单精度浮点运算指令

此类指令的操作数均为64位，其高32位和低32位分别是[IEEE
754格式的单精度浮点数](../Page/IEEE_754.md "wikilink")。大部分指令一次可接受两个这样的操作数，并得到两个单精度浮点数的结果。它们的汇编语言助记符都以*PF*开头。

3DNow\!还包含有计算单精度倒数和开方倒数的指令，并可以依程序需要，得到12位精度和24位精度的结果。这些指令一次只能处理一个单精度浮点数。

3DNow\!的一个特色是可以将同一寄存器內的64位操作数中的两个单精度浮点数相加或相乘，这在复数运算和内积运算中非常有用。Intel直到最近才在[SSE3指令集中增加了这项功能](../Page/SSE3.md "wikilink")，称之为“*水平操作*”。

为了保证与旧有操作系统的兼容性，与MMX指令一样，3DNow\!指令不引发任何[算术异常](https://zh.wikipedia.org/wiki/算术异常 "wikilink")。3DNow\!指令不会生成也不能正确处理[NaN和](../Page/NaN.md "wikilink")[非规格化数](../Page/浮点数.md "wikilink")，也不支持指定捨入模式。因此3DNow\!并不是IEEE
754的一个完整实现，即使是只涉及单精度浮点数时也不能完全代替x87。

### 增强的MMX指令

*PAVGUSB*用于求64位紧缩字节（8×8位字节）的平均值，可用于视频编码中的像素平均和图像缩放等。可能是意识到这个功能的重要性，Intel在SSE中添加了功能完全相同的*PAVGB*指令。

*PMULHRW*则用来补充MMX指令*PMULHW*的不足，在紧缩字（4×16位字）相乘时可以得到比后者更准确的结果。Intel直到最近才在[SSSE3中增加了功能相似的指令](../Page/SSSE3.md "wikilink")*PMULHRSW*。

*PSWAPD*指令用于交换紧缩双字（2×32位字）中两个双字数据的位置。

### 数据类型转换指令

*PF2ID*、*PI2FD*等4条指令用于完成整数和单精度浮点数之间的相互转换。

### 数据预取指令

*PREFETCH/PREFETCHW*指令用于把将要使用到的数据从[主記憶體提前載入](https://zh.wikipedia.org/wiki/主記憶體 "wikilink")[快取中](https://zh.wikipedia.org/wiki/快取 "wikilink")，以减少访问主記憶體的指令执行时的延迟。Intel在SSE中添加了类似的*PREFETCHTx*指令

### 快速退出MMX状态指令

*FEMMS*指令与MMX中的*EMMS*功能相同，用于退出MMX状态。在K6-2和K6-III处理器中，*FEMMS*比*EMMS*更快；在Athlon及更新的处理器中，*FEMMS*等同于*EMMS*。

## 外部链接

  - [AMD 3DNow\! Instruction Porting
    Guide](http://www.amd.com/us-en/assets/content_type/white_papers_and_tech_docs/22621.pdf)
  - [3DNow\!™Technology
    Manual](http://www.amd.com/us-en/assets/content_type/white_papers_and_tech_docs/21928.pdf)
  - [AMD Extensions to the 3DNow\!™ and MMX™ Instruction Sets
    Manual](http://www.amd.com/us-en/assets/content_type/white_papers_and_tech_docs/22466.pdf)

[Category:并行计算](https://zh.wikipedia.org/wiki/Category:并行计算 "wikilink")
[Category:微處理器](https://zh.wikipedia.org/wiki/Category:微處理器 "wikilink")
[Category:AMD處理器](https://zh.wikipedia.org/wiki/Category:AMD處理器 "wikilink")
[Category:X86架構](https://zh.wikipedia.org/wiki/Category:X86架構 "wikilink")