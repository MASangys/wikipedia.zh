**高级向量扩展指令集**（，简称**AVX**）是[x86架构](https://zh.wikipedia.org/wiki/x86架构 "wikilink")[微处理器](../Page/微处理器.md "wikilink")中的[指令集](https://zh.wikipedia.org/wiki/指令集 "wikilink")，由英特尔在2008年3月提出，并在2011年第一季度发布的[Sandy Bridge系列处理器中首次支持](https://zh.wikipedia.org/wiki/Sandy_Bridge "wikilink")\[1\]。AMD在随后的2011年第三季度发布的Bulldozer系列处理器中开始支持AVX\[2\]。AVX指令集提供了新的特性、指令和编码方案。

AVX是[X86](../Page/X86.md "wikilink")指令集的SSE延伸架構，如IA16至IA32般的把暫存器XMM 128bit提升至YMM 256bit，以增加一倍的運算效率。此架構支持了三運算指令（3-Operand Instructions），減少在編碼上需要先複製才能運算的動作。在微碼部分使用了LES LDS這兩少用的指令作為延伸指令Prefix。

AVX2指令集将大多数整数命令操作扩展到256位，并引入了[熔合乘法累积](https://zh.wikipedia.org/wiki/熔合乘法累积 "wikilink")（FMA）运算。则使用新的编码将AVX指令进一步扩展到512位，英特尔于2013年7月在[Knights Landing处理器中首次支持](../Page/至强融核.md "wikilink")，2016年发售\[3\]\[4\]。

## 支援

目前Apple [OS X](https://zh.wikipedia.org/wiki/OS_X "wikilink") 10.6.8（雪豹的更新版本）及更高，Linux 2.6.30 内核以后，以及[Windows 7](https://zh.wikipedia.org/wiki/Windows_7 "wikilink") SP1(Service Pack 1) KB976932，[Windows Server 2008](../Page/Windows_Server_2008.md "wikilink") RC2 SP1 与 [Windows 8](https://zh.wikipedia.org/wiki/Windows_8 "wikilink") 及以上支援AVX。

## 參見

  - [組合語言](https://zh.wikipedia.org/wiki/組合語言 "wikilink")

  - [MMX](../Page/MMX.md "wikilink")

  - [SSE](../Page/SSE.md "wikilink")

  -
## 参考资料

## 外部链接

  - [Intel Intrinsics Guide](https://software.intel.com/sites/landingpage/IntrinsicsGuide/)

[Category:AMD技术](https://zh.wikipedia.org/wiki/Category:AMD技术 "wikilink") [Category:SIMD计算](https://zh.wikipedia.org/wiki/Category:SIMD计算 "wikilink") [Category:X86指令](https://zh.wikipedia.org/wiki/Category:X86指令 "wikilink")

1.
2.
3.
4.