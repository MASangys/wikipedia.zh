[Pentium_mmx.png](https://zh.wikipedia.org/wiki/File:Pentium_mmx.png "fig:Pentium_mmx.png") **MMX**是由[英特尔](../Page/英特尔.md "wikilink")开发的一种**[SIMD](https://zh.wikipedia.org/wiki/单指令流多数据流 "wikilink")**[多媒体](../Page/多媒体.md "wikilink")[指令集](https://zh.wikipedia.org/wiki/指令集 "wikilink")，共有57条指令。它于1996年集成在英特尔[奔腾](https://zh.wikipedia.org/wiki/奔腾 "wikilink")（Pentium）MMX[处理器上](https://zh.wikipedia.org/wiki/处理器 "wikilink")，以提高其多媒体数据的处理能力。

其优点是增加了處理器關於[多媒体](../Page/多媒体.md "wikilink")方面的处理能力，缺点是占用[浮点数](../Page/浮点数.md "wikilink")[寄存器](../Page/寄存器.md "wikilink")进行运算（64位MMX寄存器实际上就是浮点数寄存器的别名）以至于MMX指令和浮点数操作不能同时工作。为了减少在MMX和浮点数模式切换之间所消耗的时间，程序员们尽可能减少模式切换的次数，也就是说，这两种操作在应用上是互斥的。[AMD在此基础上发展出](https://zh.wikipedia.org/wiki/AMD "wikilink")[3D Now\!指令集](../Page/3DNow!.md "wikilink")。

3D Now\!發佈一年後，Intel在MMX基础上发展出[SSE](../Page/SSE.md "wikilink")（Streaming SIMD Extensions）指令集，用來取代MMX。現在，新開發的程式不再僅使用MMX來最佳化軟體執行效能，而是改使用如SSE、3DNOW\!等更容易最佳化效能的新一代多媒體指令集，不過目前的處理器大多仍可以執行針對MMX最佳化的較早期軟體。

## MMX的字面涵义

1997年，Intel公司起诉AMD公司与Cyrix公司非法使用（misuse）了商标MMX。随后这起诉讼庭外和解，AMD公司承认MMX为Intel的商标，Intel允许AMD公司使用MMX作为一项技术的名称。在这起诉讼中，AMD披露MMX是Intel命名的**矩阵数学扩展**（Matrix Math eXtensions）的字母缩写。

## 技术细节

MMX寄存器，称作MM0到MM7，实际上就是处理器内部80比特字长的浮点寄存器栈st（0）到st (7)的尾数部分（64比特长）的复用。由于浮点栈寄存器的高16位未被MMX技术使用，因此这16位都置为1，因此从栈寄存器的角度看，其浮点值为NaN或Infinities，这可用于区分寄存器是处于浮点栈状态还是MMX状态。作为MMX寄存器都是直接访问。利用了装配数据类型（packed data type）的概念，每个MMX寄存器的64比特字长可以看作是2个32位整数、或者4个16位整数、或者8个8位整数，从而可以执行整数SIMD运算。这对于1990年代中期的2D、3D计算的加速还是很有意义的，因为当时的计算机的图形处理器（GPU）还很不发达。但现在MMX整数SIMD运算对于图形运算来说是多余的技术了。不过MMX的**饱和算术运算**（saturation arithmetic operations）对于一些数字信号处理应用还是有用的。

## SIMD技术的发展

继MMX技术之后，Intel又于1999年在Pentium-III处理器上推出SSE技术，引入了新的128位元宽的寄存器集（register file），称作XMM0到XMM7。这些XMM寄存器用于4个单精度浮点数运算的SIMD执行，并可以与MMX整数运算或x87浮点运算混合执行。2001年在Pentium 4上引入了SSE2技术，进一步扩展了指令集，使得XMM寄存器上可以执行8/16/32位宽的整数SIMD运算或双精度浮点数的SIMD运算。这使得SIMD技术基本完善。

## 外部連結

  - [Intel® Pentium® Processors with MMX™ Technology for Embedded Computing - Technical Documents](http://developer.intel.com/design/intarch/mmx/docs_mmx.htm)
  - [The MMX Instruction Set](https://web.archive.org/web/20080602021447/http://webster.cs.ucr.edu/AoA/Windows/HTML/TheMMXInstructionSet.html) from [The Art of Assembly Language](https://web.archive.org/web/20080603204806/http://webster.cs.ucr.edu/AoA/Windows/HTML/AoATOC.html)
  - [IA Software Developer's Manual, Vol 1 (PDF)](https://web.archive.org/web/20090124124345/http://download.intel.com/design/PentiumII/manuals/24319002.PDF)，see chapter 8 for MMX programming

[Category:并发计算](https://zh.wikipedia.org/wiki/Category:并发计算 "wikilink") [Category:X86架構](https://zh.wikipedia.org/wiki/Category:X86架構 "wikilink")