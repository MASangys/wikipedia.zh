**Intel Westmere**（原名Nehalem-C）是Nehalem微架构的32nm制程版本，基于Westmere微架构的处理器于2010年1月7日首发。

## 技术特点

Westmere相对于Nehalem的改进：

  - 原生六核心（代号Gulftown）和原生十核心（代号Westmere-EX）。\[1\]\[2\]
  - 新增[AES](https://zh.wikipedia.org/wiki/AES "wikilink")（Advanced Encryption Standard，高级加密标准）指令集，与此前相比AES加密/解密之性能高出3倍。\[3\]
      - AES指令集或AES-NI提供了7条实现AES加密/解密算法的指令。其中一条称为PCLMULQDQ（参见CLMUL指令集）以实现密码乘法。\[4\]这些指令集将使处理器可实现[硬件加速](../Page/硬件加速.md "wikilink")的[加密](../Page/加密.md "wikilink")/[解密而不必像此前的处理器使用慢速的软件加速](https://zh.wikipedia.org/wiki/解密 "wikilink")，同时也可实现对[可运行程序的攻击保护](https://zh.wikipedia.org/wiki/可执行文件 "wikilink")。
  - 集成[图形处理核心](https://zh.wikipedia.org/wiki/GPU "wikilink")（GPU）。但并不是整个显示核心像[AMD Fusion](https://zh.wikipedia.org/wiki/AMD_Fusion "wikilink")（APU）一样GPU与CPU完全集成进一块芯片上，而是GPU核心和CPU核心是分立于两块[晶片](https://zh.wikipedia.org/wiki/晶片 "wikilink")，并封装于同一块[印刷電路板上](https://zh.wikipedia.org/wiki/印刷電路板 "wikilink")，两者之间用QPI总线互联。\[5\]因为这样的设计被AMD以及不少人和媒体组织戏称为“胶水集成”。集成有[顯示核心的是代号Arrandale和Clarkdale的双核心处理器](https://zh.wikipedia.org/wiki/顯示核心 "wikilink")，显示核心为[Intel HD Graphics 1000](../Page/Intel_HD_Graphics.md "wikilink")。
  - 改进虚拟化的延时。\[6\]
  - 新的虚拟化功能：“VMX无限制模式支持（VMX Unrestricted mode support）”，这允许[16位元](https://zh.wikipedia.org/wiki/16位元 "wikilink")[應用程式在这些处理器上运行](https://zh.wikipedia.org/wiki/應用程式 "wikilink")（即使是实模式或增强实模式）。
  - 支持1GB的“大标签页”（Huge Pages）。

## 处理器列表

{{-}}

## 继任微架构

Intel遵循[Tick-Tock策略](../Page/Intel_Tick-Tock.md "wikilink")，于2011年第一季度发布了[Intel Sandy Bridge微架构](https://zh.wikipedia.org/wiki/Intel_Sandy_Bridge "wikilink")，正式取代Intel Nehalem微架构以及其制程改进版Intel Westmere微架构。

## 参见

  - [Intel Core](https://zh.wikipedia.org/wiki/Intel_Core "wikilink")
  - [Intel Nehalem](https://zh.wikipedia.org/wiki/Intel_Nehalem "wikilink")
  - [Intel Sandy Bridge](https://zh.wikipedia.org/wiki/Intel_Sandy_Bridge "wikilink")
  - [Intel Ivy Bridge](https://zh.wikipedia.org/wiki/Intel_Ivy_Bridge "wikilink")
  - [Intel Haswell](https://zh.wikipedia.org/wiki/Intel_Haswell "wikilink")
  - [AMD Bulldozer](../Page/AMD_Bulldozer.md "wikilink")
  - [AMD Piledriver](../Page/AMD_Piledriver.md "wikilink")
  - [AMD Steamroller](../Page/AMD_Steamroller.md "wikilink")

## 参考资料

## 外部链接

[Category:X86架構](https://zh.wikipedia.org/wiki/Category:X86架構 "wikilink") [Category:Intel處理器架構](https://zh.wikipedia.org/wiki/Category:Intel處理器架構 "wikilink")

1.
2.  [產品 (原名 Westmere EX)](http://ark.intel.com/zh-tw/products/codename/33175/westmere-ex)  - Intel.com.tw
3.
4.
5.  [Nehalem普及神器 酷睿i5核心技术解析](http://cpu.zol.com.cn/146/1467851.html) - zol.com.cn
6.