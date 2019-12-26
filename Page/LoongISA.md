**LoongISA**（简称LISA）是龙芯中科注册的自主CPU指令集架构（由MIPS指令集拓展而来，采用MIPS的指令集格式）。LoongISA指令集架构包括MIPS Release 2全套指令集和MIPS Release 5中的MSA向量指令模块、DSP指令模块和VZ虚拟化指令模块，以及其他一系列龙芯中科自主扩展的指令集，例如LoongMMI、LoongEXT、LoongVZ、LoongBT等。

## 版本

### LoongISA 1.0

LoongISA 1.0正式公开于在2015年8月18日的发布会，和[龙芯3A2000](https://zh.wikipedia.org/wiki/龙芯3A2000 "wikilink")、[LS464E](https://zh.wikipedia.org/wiki/LS464E "wikilink")、[Loongnix一起发布](https://zh.wikipedia.org/wiki/Loongnix "wikilink")。\[1\]\[2\]\[3\]\[4\] LoongISA指令系统在[MIPS64架构](https://zh.wikipedia.org/wiki/MIPS架构 "wikilink")500多条指令基础上，在基础指令、虚拟机指令、面向X86和ARM的二进制翻译指令、向量指令和核心态等多个方面增加了近1400条新指令，\[5\]其中包括：
148条LoongEXT指令
5条LoongVM指令(也就是LoongVZ)
213条LoongBT指令
1014条LoongSIMD指令
将MIPS原本的527条指令，扩展为1907条。\[6\]

### LoongISA 2.0

LISA 2.0是随着龙芯3A4000产生的新一代自主指令集，相对于LISA 1.0有更多的指令集被添加进去。

## 指令集

### MIPS部分

LoongISA里包括MIPS部分指令集，其中有MIPS Release 2全套指令集和MIPS Release 5中的MSA向量指令模块、DSP指令模块和VZ虚拟化指令模块。

##### 与MIPS的不同点

###### 浮点标准

LoongISA 1.0的浮点遵守IEEE754-1989标准，使用Legacy NaN的QNaN/SNaN定义。但是其MADD指令则按IEEE754-2008的Fused MADD标准实现，与MIPS Release2不同。\[7\]

LoongISA 2.0则全部遵循IEEE754-2008标准，使用IEEE754-2008规定的NaN 2008的QNaN/SNaN定义，依照MIPS Release5实现浮点运算单元。

### LoongMMI

LoongMMI（简称MMI）指令集是龙芯多媒体扩展指令集（MMI即为**M**ulti**M**edia**I**nstruction的缩写）。MMI指令集是128位向量指令集，用于多媒体加速，现已用于龙芯的[ffmpeg媒体编解码库中](https://zh.wikipedia.org/wiki/ffmpeg "wikilink")，[gcc社区也支持了此指令集的优化选项](https://zh.wikipedia.org/wiki/gcc "wikilink")。\[8\]MMI指令集对于多媒体编解码的性能是成倍地提升。\[9\]

### LoongEXT

LoongEXT（简称LEXT）是龙芯通用扩展指令集。LoongEXT现在最新版为3.0，按照指令长度分**LoongEXT32**和**LoongEXT64**两种类别。LoongEXT指令集和LoongMMI指令集同时提交了对[gcc社区的支持](https://zh.wikipedia.org/wiki/gcc "wikilink")，\[10\]可在编译中选用此指令集的优化选项。

### LoongVZ

LoongVZ（简称LVZP）是龙芯针对MIPS Release 5中的VZ虚拟化模块指令集的扩展，现已在[龙芯中科的](https://zh.wikipedia.org/wiki/龙芯中科 "wikilink")[KVM](https://zh.wikipedia.org/wiki/KVM "wikilink")、[QEMU](../Page/QEMU.md "wikilink")和[libvirt库中有所运用](https://zh.wikipedia.org/wiki/libvirt "wikilink")。

## 参考文献

<references />

## 参见

  - [龙芯](../Page/龙芯.md "wikilink")
  - [龙芯中科](https://zh.wikipedia.org/wiki/龙芯中科 "wikilink")
  - [MIPS架构](https://zh.wikipedia.org/wiki/MIPS架构 "wikilink")
  - [精简指令集](../Page/精简指令集.md "wikilink")

[Category:指令集架構](https://zh.wikipedia.org/wiki/Category:指令集架構 "wikilink") [Category:龙芯](https://zh.wikipedia.org/wiki/Category:龙芯 "wikilink")

1.
2.
3.
4.
5.
6.
7.
8.
9.
10.