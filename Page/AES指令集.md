**高级加密标准指令集**（或称英特尔**高级加密标准新指令**，简称**AES-NI**）是一个[x86](../Page/x86.md "wikilink")[指令集架构的扩展](../Page/指令集架构.md "wikilink")，用于[Intel和](../Page/英特尔.md "wikilink")[AMD](../Page/超威半导体.md "wikilink")[微处理器](../Page/微处理器.md "wikilink")，由Intel在2008年3月提出。\[1\]该指令集的目的是改进应用程序使用[高级加密标准](../Page/高级加密标准.md "wikilink")（AES）执行加密和解密的速度。

## 新指令

<table>
<thead>
<tr class="header">
<th><p>指令</p></th>
<th><p>描述[2]</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><code>AESENC</code></p></td>
<td><p>执行一轮AES加密流</p></td>
</tr>
<tr class="even">
<td><p><code>AESENCLAST</code></p></td>
<td><p>执行最后一轮AES加密流</p></td>
</tr>
<tr class="odd">
<td><p><code>AESDEC</code></p></td>
<td><p>执行一轮AES解密流<br />
</p></td>
</tr>
<tr class="even">
<td><p><code>AESDECLAST</code></p></td>
<td><p>执行最后一轮AES解密流</p></td>
</tr>
<tr class="odd">
<td><p><code>AESKEYGENASSIST</code></p></td>
<td><p>协助生成AES轮回密钥</p></td>
</tr>
<tr class="even">
<td><p><code>AESIMC</code></p></td>
<td><p>协助AES逆列混合</p></td>
</tr>
<tr class="odd">
<td><p><code>PCLMULQDQ</code></p></td>
<td><p>无进位乘法（）[3]</p></td>
</tr>
</tbody>
</table>

## Intel和AMD x86架构

  - [Intel](../Page/英特尔.md "wikilink")\[4\]
      - Intel [Westmere架构处理器](../Page/Westmere微架构.md "wikilink")，具体如下：
          - Intel [Westmere-EP (Xeon
            56xx)](../Page/Intel_Xeon處理器列表.md "wikilink")（也称Gulftown至强5600系列DP服务器型号）处理器。
          - Intel Clarkdale处理器（酷睿i3、奔腾和赛扬除外）。
          - Intel Arrandale处理器（赛扬、奔腾、酷睿i3、酷睿i5-4XXM除外）。
      - Intel [Sandy Bridge处理器](../Page/Sandy_Bridge微架構.md "wikilink")。
          - 桌面：全部，奔腾、赛扬、酷睿i3除外\[5\]\[6\]
          - 移动：酷睿i7和酷睿i5全部。一些供应商发售的BIOS配置已禁用该扩展\[7\]，需要更新BIOS才能启用它。\[8\]
      - Intel [Ivy Bridge处理器](../Page/Ivy_Bridge微架構.md "wikilink")
          - 仅所有i5、i7、至强和i3-2115C\[9\]。
      - Intel
        [Haswell处理器](../Page/Haswell微架構.md "wikilink")。（i3-4000m\[10\]、奔腾和赛扬除外）
      - Intel在其网站上有一个列表，写明了支持AES-NI的处理器\[11\]
  - [AMD](../Page/超威半导体.md "wikilink")
      - [AMD Ryzen架构处理器](../Page/AMD_Ryzen.md "wikilink")。
      - [AMD Bulldozer架构处理器](../Page/AMD_Bulldozer.md "wikilink")。\[12\]
      - [AMD Piledriver架构处理器](../Page/AMD_Piledriver.md "wikilink")。
      - [AMD Steamroller架构处理器](../Page/AMD_Steamroller.md "wikilink")。
      - [AMD Jaguar架构处理器](../Page/AMD_Jaguar.md "wikilink")。
      - AMD [Puma架构处理器](../Page/Puma.md "wikilink")。

## 其他架构中的硬件加速

在最新的[SPARC处理器](../Page/SPARC.md "wikilink")（T4、T5、M5及之后）和最新的ARM处理器中也有非特权的处理器指令提供AES支持。2011年推出的SPARC
T4处理器有用户级指令实现AES轮回。\[13\]这些指令补充了更高级别的加密命令。2011年宣布的[ARMv8-A处理器架构也有用户级指令实现AES轮回](../Page/ARM架構.md "wikilink")，这包括ARM
Cortex-A53和A57，但不包括以前的v7处理器（如Cortex
A5、7、8、9、11、15）。\[14\]2012年8月，[IBM宣布](../Page/IBM.md "wikilink")\[15\]即将到来的Power7+架构有望提供AES支持。这些架构中的命令不能直接与AES-NI命令兼容，但可实现类似的功能。

IBM z9或更晚的主机处理器支持AES作为单操作码（KM、KMC）AES
ECB/CBC指令，使用IBM的CryptoExpress硬件。\[16\]这些单指令的AES版本比Intel
NI更容易使用，但不能被扩展实现为基于AES轮回函数的其他算法，例如Whirlpool散列算法。

### x86 CPU的支持

[VIA x86 CPU](../Page/威盛電子.md "wikilink")、[AMD
Geode和Marvell](../Page/AMD_Geode.md "wikilink")
Kirkwood（ARM，mv_cesa在Linux中）使用基于驱动程序的AES加速处理（另见）。下列产品支持AES硬件加速，虽然不支持AES-NI指令集：

  - AMD [Geode LX处理器](../Page/AMD_Geode.md "wikilink")。\[17\]
  - VIA
      - [VIA
        PadLock](../Page/威盛電子.md "wikilink")。\[18\]<span contenteditable="false">
        </span>**·** \[19\]
          - [VIA C3 Nehemiah C5P
            (Eden-N)处理器](../Page/VIA_C3.md "wikilink")。\[20\]
          - [VIA C7 Esther
            C5J处理器](../Page/VIA_C7-D.md "wikilink")。\[21\]

### ARM架构

  - [Allwinner](../Page/全志科技.md "wikilink")
      - 使用“安全系统”的A10和A20。\[22\]
  - [Broadcom](../Page/博通.md "wikilink")
      - 使用“安全处理器”的BCM5801/BCM5805/BCM5820。\[23\]

### 其他架构

  - [Atmel xmega](../Page/Atmel_AVR.md "wikilink")
    \[24\]（[并行执行的片上加速器](../Page/并行计算.md "wikilink")，不是指令）

## 性能

在《AES-NI 性能分析》中，Patrick Schmid和Achim Roos 指出：“...少数已使用英特尔 AES-NI
进行优化的应用程序表现出了傲人成绩”。 \[25\]
一次使用[函式庫执行的性能分析显示](../Page/函式庫.md "wikilink")，相比没有加速的[Pentium
4](../Page/奔腾4.md "wikilink"),
AES/[GCM的吞吐量从大约每字节](../Page/伽羅瓦/計數器模式.md "wikilink")28.0周期显著提升至每字节3.5周期。
\[26\]\[27\]

## 软件支持

大多数现代编译器能够利用AES指令。

许多安全和加密软件支持AES指令集，包括下列核心基础设施：

  - [Cryptography API: Next Generation
    (CNG)](../Page/Cryptographic_API.md "wikilink")（需要Windows）\[28\]

  -
  - [Java](../Page/Java.md "wikilink") 7
    [HotSpot](../Page/HotSpot.md "wikilink")

  - [Network Security
    Services](../Page/Network_Security_Services.md "wikilink")（NSS）3.13及更高版本
    \[29\]（被[Firefox和](../Page/Firefox.md "wikilink")[Google
    Chrome使用](../Page/Google_Chrome.md "wikilink")）

  - \[30\]从[Solaris](../Page/Solaris.md "wikilink") 10起。

  - [FreeBSD的OpenCrypto](../Page/FreeBSD.md "wikilink") API（aesni(4)
    驱动程序）\[31\]

  - [OpenSSL](../Page/OpenSSL.md "wikilink") 1.0.1及以上\[32\]

  - [FLAM®/FLUC®](http://flam.de/en/technology/products/)
    5.1.08（2015-08-24发布）及以上

## 参考

  - [高级矢量扩展](../Page/AVX指令集.md "wikilink")（AVX）

  -
  - [FMA指令集](../Page/熔合乘法累积指令集.md "wikilink")（FMA3、FMA4）

  - [RdRand](../Page/RdRand.md "wikilink")

## 参考资料

## 外部链接

  - [Intel®高级加密标准指令（AES-NI）](https://software.intel.com/en-us/articles/intel-advanced-encryption-standard-instructions-aes-ni/)
  - [AES指令集白皮书](https://software.intel.com/sites/default/files/article/165683/aes-wp-2012-09-22-v01.pdf)
    (4.4 Mbyte, pdf) // Intel

[Category:X86架構](https://zh.wikipedia.org/wiki/Category:X86架構 "wikilink")
[Category:X86指令](https://zh.wikipedia.org/wiki/Category:X86指令 "wikilink")
[Category:高级加密标准](https://zh.wikipedia.org/wiki/Category:高级加密标准 "wikilink")
[Category:AMD技术](https://zh.wikipedia.org/wiki/Category:AMD技术 "wikilink")

1.
2.
3.
4.  [ARK: Advanced
    Search](http://ark.intel.com/search/advanced/?AESTech=true)
5.  [AnandTech - The Sandy Bridge Review: Intel Core i7-2600K, i5-2500K
    and Core i3-2100
    Tested](http://www.anandtech.com/show/4083/the-sandy-bridge-review-intel-core-i5-2600k-i5-2500k-and-core-i3-2100-tested/2)
6.  [Compare Intel®
    Products](http://ark.intel.com/compare/53415,63913,58667,53480,53481,53482,53483,53484,53485,53490,53491,53492,53416,53414)
7.  [AES-NI support in TrueCrypt (Sandy Bridge
    problem)](http://forum.notebookreview.com/windows-os-software/582628-aes-ni-support-truecrypt-sandy-bridge-problem.html)
8.
9.  [1](http://ark.intel.com/products/68332/Intel-Core-i3-2115C-Processor-\(3MB-Cache-2_00-GHz\))
10. <http://ark.intel.com/products/75104/Intel-Core-i3-4000M-Processor-3M-Cache-2_40-GHz>
11. [Intel® Product Specification Advanced
    Search](https://ark.intel.com/search/featurefilter?productType=873&0_AESTech=True)
12.
13.
14.
15.
16.
17.
18.
19. [Cryptographic Hardware
    Accelerators](http://wiki.openwrt.org/doc/hardware/cryptographic.hardware.accelerators)
    on OpenWRT.org
20.
21.
22. [Security System driver status](http://sunxi.montjoie.ovh/)
23. [Cryptographic Hardware
    Accelerators](http://wiki.openwrt.org/doc/hardware/cryptographic.hardware.accelerators)
    on OpenWRT.org
24.
25.
26.
27.
28.
29.
30.
31.
32. [OpenSSL: CVS Web
    Interface](http://cvs.openssl.org/fileview?f=openssl/CHANGES&v=1.1686)