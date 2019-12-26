**PCSX2**是能夠在[Microsoft Windows和](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")[Linux](../Page/Linux.md "wikilink")[作業系統底下執行](https://zh.wikipedia.org/wiki/作業系統 "wikilink")[PlayStation 2](../Page/PlayStation_2.md "wikilink")（PS2）遊戲与自制程序的[模擬器](https://zh.wikipedia.org/wiki/模擬器 "wikilink")，目前可以运行絕大多數的PS2[遊戲軟體](https://zh.wikipedia.org/wiki/遊戲軟體 "wikilink")。PCSX2目前已完成[軟體測試並推出正式版本](https://zh.wikipedia.org/wiki/軟體測試 "wikilink")，但需要較高等級的[硬體才能達到理想效果](https://zh.wikipedia.org/wiki/硬體 "wikilink")。時至今日，軟件仍無法完美模擬所有[PS2規格軟體](https://zh.wikipedia.org/wiki/PS2 "wikilink")。\[1\]

## 背景与发展

PCSX2最初由[PCSX-Reloaded的開發者Linuzappz與Shadow於](https://zh.wikipedia.org/wiki/PCSX-Reloaded "wikilink")2001年開始開發，之后其他开发者加入，2002年3月發表第一個[測試版本](https://zh.wikipedia.org/wiki/測試版本 "wikilink")0.026版，能够加载一些游戏\[2\]，尽管速度并不理想。经过对核心、BIOS模拟的完善，2006年7月发布0.9.1版。\[3\]

2007年到2011年这五年间，开发者主要提升模拟速度，实现网络对战。0.9.8版于2011年5月发布，该版本带来了使用[wxWidgets重构的](https://zh.wikipedia.org/wiki/wxWidgets "wikilink")[GUI界面](../Page/图形用户界面.md "wikilink")，全新的VU（[向量处理器](https://zh.wikipedia.org/wiki/向量处理器 "wikilink")）重编译器，内存卡编辑器，全新的SPU2-X音频插件等改进，提升了兼容性。\[4\]2012年8月3日發表第一個正式版本1.0.0版\[5\]。

PCSX2就像它的前身[PCSX一樣](https://zh.wikipedia.org/wiki/PCSX "wikilink")，是以[外掛程式](../Page/插件.md "wikilink")（plugin）為基礎的架構，從核心模擬器分門別類出好幾個功能：功能有圖形處理、控制器、[光碟機](https://zh.wikipedia.org/wiki/光碟機 "wikilink")，還有[USB](../Page/USB.md "wikilink")、音效和[IEEE 1394](../Page/IEEE_1394.md "wikilink")（i.Link）埠。不同的外掛程式，在[相容性和功能上可能會產生出不同的效果](https://zh.wikipedia.org/wiki/相容性 "wikilink")。

此外，由於其相關的[版權考量和](https://zh.wikipedia.org/wiki/版權 "wikilink")[法律](../Page/法律.md "wikilink")問題，PCSX2需要自行提供PS2 [BIOS](../Page/BIOS.md "wikilink")文件（从PS2主机提取），開發團隊不提供下載。2016年9月起，PCSX2能够通过PSX模式兼容部分[PlayStation](../Page/PlayStation.md "wikilink")的遊戲。\[6\]

### 64位元延伸

由於[64位元](../Page/64位元.md "wikilink")處理器快速發展和普及化，PCSX2研發團隊積極地開始設計64位元處理器的模擬元件，儘可能地加快PCSX2的執行速度。但目前32位程序能提供更好的性能。\[7\]

### 兼容性

目前的开发版本支持2467个游戏（95.18%，共2592个已测试游戏）。\[8\]这些游戏并不会崩溃，锁死或进入死循环，但仍可能存在着一些错误，比如缺失后处理效果，纹理和阴影。这类错误在硬件渲染模式下尤为显著，通常较慢的软件渲染模式可以解决这些问题。\[9\]\[10\]

## 特性

  - 支持即时存档
  - 使用[动态重编译](../Page/动态重编译.md "wikilink")（JIT）
  - 支持跳过BIOS初始化屏幕，直接载入游戏
  - 使用[插件](../Page/插件.md "wikilink")系统进行功能扩展

### 画质改进（GSdx插件）\[11\]

  - 支持硬件渲染模式下内部[分辨率](../Page/分辨率.md "wikilink")的提升
  - 多种类型抗锯齿：[FXAA](../Page/快速近似抗鋸齒.md "wikilink")，MSAA（只在Direct3D为后端的硬件渲染模式下可用），Edge-AA（只在软件渲染模式下进行模拟）
  - 后处理[像素着色器](https://zh.wikipedia.org/wiki/像素着色器 "wikilink")
  - 纹理映射（使用Insert键切换，Jak系列等游戏正确模拟的需要）
  - [双线性过滤](../Page/双线性过滤.md "wikilink")，[各向异性过滤](../Page/各向异性过滤.md "wikilink")，纹理过滤
  - 宽屏补丁

### 插件系统

为了性能及兼容性的增强，开发者正进一步完善一些插件。

| 插件名称           | 子系统                                            | 注释                                                                                                                                                                                   |
| -------------- | ---------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| GSdx           | 视频                                             | 最快且最为精确的图形插件。需要[Direct3D](../Page/Direct3D.md "wikilink")或[OpenGL](../Page/OpenGL.md "wikilink")支持，可选择插件使用的GPU。GSdx插件与PSX模拟器兼容，但仅限软件渲染。该插件也有非官方的版本，如ToCAEDIT\[12\]和GSdx-Cutie\[13\]。 |
| GSdx FX        | GSdx插件的后处理[着色器](../Page/着色器.md "wikilink")包。   |                                                                                                                                                                                      |
| ZZogl          | 优化较少的图形插件，使用OpenGL处理图像。该插件为ZeroGS KOSMOS插件的分支。 |                                                                                                                                                                                      |
| SPU2-X         | 音频                                             | 最精确的音频插件。                                                                                                                                                                            |
| SSSPSX Pad     | 输入                                             | 简化的输入插件。                                                                                                                                                                             |
| LilyPad        | 支持键盘、鼠标、手柄的高级输入插件。                             |                                                                                                                                                                                      |
| Nuvee          | 支持光枪和USB鼠标的插件。                                 |                                                                                                                                                                                      |
| TwinPad        | 另一个支持键盘和鼠标的插件。                                 |                                                                                                                                                                                      |
| XPad           | 为Xbox 360控制器设计的插件。                             |                                                                                                                                                                                      |
| CDVD           | 光驱                                             | 简单的光驱插件，从本机光驱加载游戏。                                                                                                                                                                   |
| Linuz ISO CDVD | 支持ISO镜像及压缩文件的插件。                               |                                                                                                                                                                                      |
| Dev9           | 硬盘                                             | 模拟PS2硬盘与以太网的插件。                                                                                                                                                                      |
| MegaDev9       | Dev9的高级版本，目前只部分模拟PS2硬盘。                        |                                                                                                                                                                                      |
| Netplay        | 网络对战                                           | 允许特定游戏联机对战的插件。                                                                                                                                                                       |

## 執行效能

[PCSX2_0.9.5_svn377.PNG](https://zh.wikipedia.org/wiki/File:PCSX2_0.9.5_svn377.PNG "fig:PCSX2_0.9.5_svn377.PNG")

PCSX2在早期的時候（2006年之前），由於軟體本身還沒有很完善，所以它運行遊戲的速度不是很快（大約只有2\~15[幀率](../Page/帧率.md "wikilink")，[NTSC制式](../Page/NTSC制式.md "wikilink")的PS2幀率為60），很多遊戲並不能順暢運行，當時模擬速度最快的僅有PS2的BIOS。之後的0.9版本在性能方面已經有很顯著的提升，不少[2D的畫面與選單已經可以接近全速來模擬了](https://zh.wikipedia.org/wiki/2D "wikilink")，且這個版本也開始支援[雙核心](https://zh.wikipedia.org/wiki/雙核心 "wikilink")[處理器](https://zh.wikipedia.org/wiki/處理器 "wikilink")（CPU），讓使用雙核心CPU的電腦能夠獲得更高的幀率。

PCSX2於2006年4月發布0.9版，硬體的性能已有長足提升，運行速度比先前的版本更上一層，更支援[SSE 4.1和](../Page/SSE.md "wikilink")[DirectX 10](https://zh.wikipedia.org/wiki/DirectX#DirectX_10 "wikilink")。若搭載雙核心CPU（[Athlon 64 X2或是](https://zh.wikipedia.org/wiki/Athlon_64_X2 "wikilink")[Core 2 Duo](https://zh.wikipedia.org/wiki/Core_2_Duo "wikilink")）並配合性能不錯的[顯示卡和視頻顯示插件](https://zh.wikipedia.org/wiki/顯示卡 "wikilink")（[Radeon R520系列或是](https://zh.wikipedia.org/wiki/Radeon_R520 "wikilink")[GeForce 7系列](https://zh.wikipedia.org/wiki/GeForce_7 "wikilink")）的電腦，已經能夠執行熱門的3D遊戲，像是《[最終幻想X](https://zh.wikipedia.org/wiki/最終幻想X "wikilink")》、[《戰神》系列等](https://zh.wikipedia.org/wiki/戰神_\(動作遊戲\) "wikilink")；且開發群與試用版使用者皆表示，這些遊戲已能夠完整模擬無誤。而現在PCSX2的團隊仍然還在開發著更有效率的模擬器版本。

PCSX2引入了[动态重编译](../Page/动态重编译.md "wikilink")（[JIT](../Page/即時編譯.md "wikilink")），与[解释器相比](../Page/直譯器.md "wikilink")，执行效率大幅度提升。\[14\]

## 硬件需求

硬件需求很大程度上取决于模拟的游戏。通常情况下，[CPU是性能的瓶颈](../Page/中央处理器.md "wikilink")，而非[GPU](../Page/圖形處理器.md "wikilink")，尤其是在只使用CPU进行模拟的软件渲染模式下。在硬件渲染模式下，GPU的性能要求取决于内部分辨率的大小。代码未优化或使用性能较差的显示卡也会导致部分游戏不能流畅运行。

### 處理器時脈需求

在模擬器方面，PCSX2最常被人詬病的問題是，必須要有一顆能夠超頻到很高時脈的雙核CPU，才能全速來玩大部分PS2的遊戲；而這就是目前PS2模擬器在發展上出現的最主要瓶頸，就是在PC架構上去模擬[多核心的PS](https://zh.wikipedia.org/wiki/多核心 "wikilink")2。PS2主機带有Emotion Engine中央处理器（294.912MHz [MIPS](../Page/MIPS架構.md "wikilink") R5900与兩顆36.384MHz MIPS R3000A[向量處理器](https://zh.wikipedia.org/wiki/向量处理器 "wikilink")），還有一個Graphics Synthesizer圖形處理器。雖然PS2上的每一顆CPU都可以在多核心处理器上完整地模擬出來，但是由於PC的[x86架構與PS](https://zh.wikipedia.org/wiki/x86 "wikilink")2的架構有根本上的不同，再加上多核心在同步性和時脈間的精確度上难以控制，模擬PS2的所有处理器仍是相當複雜的；連[索尼互动娱乐](../Page/索尼互動娛樂.md "wikilink")（SIE）目前也無法完全解決這個問題，可以在[PS3上以軟體模擬方式執行的PS](https://zh.wikipedia.org/wiki/PS3 "wikilink")2遊戲只有約一半。\[15\]从1.0.0版起，MTVU加速功能实现，PCSX2能使用三个核心进行模拟。\[16\]因此，當前要解決模擬器速度問題，最有效的方法就是使用至少三核心的處理器超頻到高時脈。

## 评价

PCSX2一直深受欢迎。的Matthew Humphries称其为“了不起的作品”。\[17\]尽管[PC World的Alex](../Page/PC_World.md "wikilink") Garrett和的David Hayward批评了模拟器设置较为复杂，但仍称之为杰作。\[18\]\[19\]的Brandon Widder将PCSX2列入他的“最佳模拟器”文章中。\[20\]

## 另见

  - [游戏机模拟器列表](https://zh.wikipedia.org/wiki/游戏机模拟器列表 "wikilink")
  - [Dolphin](../Page/Dolphin_\(模擬器\).md "wikilink")，同世代[GameCube模拟器](https://zh.wikipedia.org/wiki/GameCube "wikilink")
  - [RPCS3](../Page/RPCS3.md "wikilink")，[PlayStation 3模拟器](../Page/PlayStation_3.md "wikilink")

## 參考資料

## 外部連結

  - [PCSX2官方網站](http://www.pcsx2.net)

  - [PCSX2官方網站的討論區](http://forums.pcsx2.net/)

  - [PCSX2 Github專案網頁](https://github.com/PCSX2/pcsx2)

  - [PCSX2官方Wiki站](http://wiki.pcsx2.net/index.php/Main_Page)

[Category:遊戲機模擬器](https://zh.wikipedia.org/wiki/Category:遊戲機模擬器 "wikilink") [Category:Linux軟件](https://zh.wikipedia.org/wiki/Category:Linux軟件 "wikilink") [Category:PlayStation_2](https://zh.wikipedia.org/wiki/Category:PlayStation_2 "wikilink") [Category:Windows软件](https://zh.wikipedia.org/wiki/Category:Windows软件 "wikilink") [Category:MacOS軟體](https://zh.wikipedia.org/wiki/Category:MacOS軟體 "wikilink") [Category:开源软件](https://zh.wikipedia.org/wiki/Category:开源软件 "wikilink") [Category:自由仿真软件](https://zh.wikipedia.org/wiki/Category:自由仿真软件 "wikilink")

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
11.
12.
13.
14.
15.
16.
17.
18.
19.
20.