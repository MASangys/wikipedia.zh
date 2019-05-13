**ARM Cortex-A15 MPCore**是一个32位的处理器核心，由ARM国际科技许可，实现ARM
v7-A体系结构。它是一个多核處理器，带有脫序的超標量（out-of-order
superscalar）流水线，運行速度高達2.5GHz。

## 特點

  - 40位元大物理地址擴展（Large Physical Address Extensions, LPAE）尋址高達1TB的內存
  - 15-stage 管道（pipeline）
  - 4 cores 每叢集（cluster）
  - VFPv4 內建浮點單元（每個核心）
  - [DSP](https://zh.wikipedia.org/wiki/DSP "wikilink") 與 NEON
    [SIMD](https://zh.wikipedia.org/wiki/SIMD "wikilink") extensions
    onboard (per core).
  - 硬件虛擬化支持
  - TrustZone 安全性延伸.
  - [Jazelle](https://zh.wikipedia.org/wiki/Jazelle "wikilink") DBX 針對
    Java execution 進行支援.
  - [Jazelle RCT](https://zh.wikipedia.org/wiki/Jazelle_RCT "wikilink")
    針對 JIT complilation
  - Program Trace Macrocell 與 CoreSight Design Kit
  - 32kB data + 32kB 指令 L1 快取（每核）
  - 整合低延遲 level-2 cache controller, 達到 4 MB（每叢集）

## Cortex-A15 SoC 列表

| 型號                                                          | [半導體技術](https://zh.wikipedia.org/wiki/半導體技術 "wikilink") | CPU 指令集 | CPU                                                                  | GPU                                                                                                                                            | 記憶體技術                                                              | Wireless Radio Technologies | Availability | 應用                                                                                                                                       |
| ----------------------------------------------------------- | ------------------------------------------------------- | ------- | -------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------ | --------------------------- | ------------ | ---------------------------------------------------------------------------------------------------------------------------------------- |
| Nvidia Tegra 4 T40                                          | 28 nm HPL                                               | ARMv7   | 1.8 GHz四核+节电核心                                                       | Nvidia GPU 72核（支持[DirectX](../Page/DirectX.md "wikilink") 11+、[OpenGL](../Page/OpenGL.md "wikilink") 4.X及[PhysX](../Page/PhysX.md "wikilink")） |                                                                    |                             | Q1 2013      |                                                                                                                                          |
| Nvidia Tegra 4 T43                                          | 28 nm HPL                                               | ARMv7   | 2.0 GHz四核+节电核心                                                       | Nvidia GPU 72核（支持[DirectX](../Page/DirectX.md "wikilink") 11+、[OpenGL](../Page/OpenGL.md "wikilink") 4.X及[PhysX](../Page/PhysX.md "wikilink")） |                                                                    |                             | Q3 2013      |                                                                                                                                          |
| Nvidia Tegra 4 AP40\[1\] (the "Wayne" design for 2012)\[2\] | 28 nm HPL                                               | ARMv7   | 1.2-1.8 GHz四核+节电核心                                                   | Nvidia GPU 72核（支持[DirectX](../Page/DirectX.md "wikilink")、[OpenGL](../Page/OpenGL.md "wikilink") 4.X及[PhysX](../Page/PhysX.md "wikilink")）     |                                                                    |                             | Q3 2013      |                                                                                                                                          |
| Samsung Exynos 5250                                         | 32 nm HKMG                                              | ARMv7   | 1.7 GHz双核                                                            | [ARM](https://zh.wikipedia.org/wiki/ARM "wikilink") [Mali-T604](../Page/Mali_\(GPU\).md "wikilink")（四核）                                        | 32位双频800 MHz LPDDR3/DDR3 or 533 MHz LPDDR2                         |                             | Q4 2012      | [Arndale Board](https://zh.wikipedia.org/wiki/Arndale_Board "wikilink"), [Samsung Chromebook](../Page/Chromebook.md "wikilink")          |
| Samsung Exynos 5410                                         | 28 nm                                                   | ARMv7   | 1.8 GHz四核+1.2 GHz四核 ARM Cortex-A15 MPCore+A7 MPCore (ARM big.LITTLE) | [PowerVR](../Page/PowerVR.md "wikilink") SGX 544MP3                                                                                            |                                                                    |                             | Q2 2013      | [Galaxy S IV](https://zh.wikipedia.org/wiki/Samsung_Galaxy_S_IV "wikilink")，[Meizu MX3](https://zh.wikipedia.org/wiki/魅族_MX3 "wikilink") |
| ST-Ericsson Nova A9600\[3\]                                 | 28 nm                                                   | ARMv7   | 2.5 GHz双核                                                            | [PowerVR](../Page/PowerVR.md "wikilink") 6系列 (Rogue)                                                                                           |                                                                    |                             | 2013         |                                                                                                                                          |
| Texas Instruments OMAP5430\[4\]                             | 28 nm                                                   | ARMv7   | 2.0 GHz双核                                                            | [PowerVR](../Page/PowerVR.md "wikilink") SGX544MP2 @ 532 MHz + dedicated 2D graphics accelerator                                               | 32位双频532 MHz LPDDR2                                                |                             | Q3 2012      |                                                                                                                                          |
| Texas Instruments OMAP5432                                  | 28 nm                                                   | ARMv7   | 2.0 GHz双核                                                            | PowerVR SGX544MP2 @ 532 MHz + dedicated 2D graphics accelerator                                                                                | 32位双频532 MHz [DDR3](https://zh.wikipedia.org/wiki/DDR3 "wikilink") |                             | Q3 2012      |                                                                                                                                          |
|                                                             |                                                         |         |                                                                      |                                                                                                                                                |                                                                    |                             |              |                                                                                                                                          |

## 注釋

[Category:ARM架構](https://zh.wikipedia.org/wiki/Category:ARM架構 "wikilink")

1.
2.  [28nm implies cortex
    a15](http://www.tomshardware.com/news/Tegra-Kal-El-Tegra-2-Snapdragon-ARM-CPU,12229.html)
3.
4.