> 本文内容由[PhysX](https://zh.wikipedia.org/wiki/PhysX)转换而来。


**PhysX**是一套由[AGEIA](../Page/AGEIA.md "wikilink")设计的执行复杂的物理运算的[PPU](https://zh.wikipedia.org/wiki/物理处理单元 "wikilink")，又可以代表一款[物理引擎](https://zh.wikipedia.org/wiki/物理引擎 "wikilink")。AGEIA声称，PhysX将会使设计师在开发游戏的过程中使用复杂的物理效果，而不需要像以往那样耗费漫长的时间开发一套物理引擎。以往使用了物理引擎，还会使一些配置较低的电脑无法流畅运行遊戲。AGEIA更宣称，PhysX执行物理运算的效率比当前的[CPU与物理处理软件的组合高出](https://zh.wikipedia.org/wiki/CPU "wikilink")100倍。游戏设计语言[Dark Basic Pro将会支持PhysX](https://zh.wikipedia.org/wiki/Dark_Basic_Pro "wikilink")，并允许其用户利用PhysX执行物理运算。2005年7月20日，[索尼電腦娛樂同意在即将发售的](https://zh.wikipedia.org/wiki/索尼電腦娛樂 "wikilink")[PlayStation 3中使用PhysX和它的](../Page/PlayStation_3.md "wikilink")[SDK](https://zh.wikipedia.org/wiki/SDK "wikilink")——[NovodeX](https://zh.wikipedia.org/wiki/NovodeX "wikilink")。現時，AGEIA公司己被[NVIDIA收購](https://zh.wikipedia.org/wiki/NVIDIA "wikilink")，相關的顯示卡亦可以加速該物理引擎。

## APEX PhysX

Nvidia在GDC 2009上介绍了APEX PhysX，它允许艺术家更高效的创作物理内容。\[1\]

## PPU（Physics Processing Unit）

**[物理處理器](../Page/物理處理器.md "wikilink")**，即**PPU**，是一种特别为减轻[CPU计算](https://zh.wikipedia.org/wiki/CPU "wikilink")，尤其是[物理运算部分的处理器](https://zh.wikipedia.org/wiki/物理 "wikilink")。这概念类似于对上之前的[GPU](https://zh.wikipedia.org/wiki/GPU "wikilink")。在现代[计算机中](https://zh.wikipedia.org/wiki/计算机 "wikilink")，[GPU用于处理](https://zh.wikipedia.org/wiki/GPU "wikilink")[矢量图形](../Page/矢量图形.md "wikilink")，并且延伸到[3D图形](https://zh.wikipedia.org/wiki/3D图形 "wikilink")。但GPU对物理处理无能为力，故目前大部分物理处理都交给[CPU处理](https://zh.wikipedia.org/wiki/CPU "wikilink")，这无疑是加重了CPU本来就不轻的负担。尽管最近[nVidia和](https://zh.wikipedia.org/wiki/nVidia "wikilink")[ATi纷纷发布了利用](https://zh.wikipedia.org/wiki/ATi "wikilink")[GPU进行物理计算的新技术](https://zh.wikipedia.org/wiki/GPU "wikilink")，但在单显卡处理能力有限，在复杂场景同时进行画面处理和物理效果处理时显得捉襟见肘；而通过[SLi或](https://zh.wikipedia.org/wiki/SLi "wikilink")[CrossFire技术进行多显卡处理](https://zh.wikipedia.org/wiki/CrossFire "wikilink")，尽管效果不错，但成本较高。所以，不少人认为只有[AGEIA](../Page/AGEIA.md "wikilink")的**PhysX**才能解决这个局面。

### PhysX物理加速卡规格

  - 内存：128 [MB](https://zh.wikipedia.org/wiki/MB "wikilink") [GDDR3](https://zh.wikipedia.org/wiki/GDDR3 "wikilink") [RAM](https://zh.wikipedia.org/wiki/隨機存取記憶體 "wikilink")，[华硕版据说会有](https://zh.wikipedia.org/wiki/华硕 "wikilink")256 [MB](https://zh.wikipedia.org/wiki/MB "wikilink") [GDDR3](https://zh.wikipedia.org/wiki/GDDR3 "wikilink") [RAM](https://zh.wikipedia.org/wiki/隨機存取記憶體 "wikilink")
  - 接口界面：[PCI和](https://zh.wikipedia.org/wiki/PCI "wikilink")[PCI Express](../Page/PCI_Express.md "wikilink")
  - [球体碰撞能力](https://zh.wikipedia.org/wiki/球体 "wikilink")：5.3亿次每秒（最大能力）
  - 浮點運算能力：530,000次 每秒（最大能力）
  - 价格：220英镑 300美元 2000人民币 9500台幣（估计）
      - [BFG推出的PhysX扩展卡售价为](../Page/BFG科技.md "wikilink")2000人民币

### 加速卡生产厂家

  - [BFG科技](../Page/BFG科技.md "wikilink")
  - [華碩](https://zh.wikipedia.org/wiki/華碩電腦 "wikilink")

## GPU（Graphics Processing Unit）

由於AGEIA公司已被NVIDIA收購，相關的物理引擎技術亦同時歸後者所有。NVIDIA將PhysX物理引擎，利用[CUDA](../Page/CUDA.md "wikilink")技術，由顯示核心加速運算\[2\]。現時，支援[CUDA](../Page/CUDA.md "wikilink")技術的顯示卡，理論上都可以支援PhysX物理加速。而NVIDIA亦透過第三開發者，有意讓[ATI的顯示卡支援PhysX運算](https://zh.wikipedia.org/wiki/ATI "wikilink")。現時，AMD官方尚未對此表態。較早前，AMD宣佈旗下產品，將會被[Havok物理引擎優化](https://zh.wikipedia.org/wiki/Havok "wikilink")。它是PhysX物理引擎的競爭對手。

## 測試軟體

網站oZone3D.net已推出相關的測試[軟體](https://zh.wikipedia.org/wiki/軟體 "wikilink")，名為**FluidMark**，用來考察電腦的物理計算性能。\[3\]

## 外部链接

  - [Official Product Site](http://www.nvidia.com/object/physx_new.html)
  - [Projects using PhysX SDK](http://physxinfo.com/)
  - ["PS Meeting 2005: Sony Hooks Up with AGEIA"](http://ps3.ign.com/articles/635/635492p1.html) - IGN News Story
  - [The Unofficial AGEIA PhysX Links & Info Page](http://personal.inet.fi/atk/kjh2348fs/ageia_physx.html)
  - [Official BFG Technologies Product Site](https://web.archive.org/web/20060510072857/http://www.bfgtech.com/physx/index.htm)
  - [动态逼真！NV超震撼物理加速视频赏析](http://www.pcpop.com/doc/0/313/313539.shtml)
  - [部分对PhysX技术的质疑](https://web.archive.org/web/20091228024838/http://www.enet.com.cn/article/2009/1221/A20091221589554.shtml)

## 注释

[Category:PlayStation_3](https://zh.wikipedia.org/wiki/Category:PlayStation_3 "wikilink") [Category:物理引擎](https://zh.wikipedia.org/wiki/Category:物理引擎 "wikilink") [Category:英伟达](https://zh.wikipedia.org/wiki/Category:英伟达 "wikilink")

1.
2.  [PhysX物理加速](http://www.hardspell.com/doc/hard/78212.htm)
3.  [首款PhysX物理基准测试工具：FluidMark 1.0.0](http://news.mydrivers.com/1/113/113739.htm)