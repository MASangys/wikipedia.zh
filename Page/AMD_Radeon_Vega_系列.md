**Radeon
Vega系列**是[AMD推出的](https://zh.wikipedia.org/wiki/AMD "wikilink")[顯示核心系列](https://zh.wikipedia.org/wiki/顯示核心 "wikilink")。這些卡使用了"Vega"架構，並且搭載[HBM2高頻寬記憶體](https://zh.wikipedia.org/wiki/HBM2 "wikilink")。
\[1\]Vega是第一個使用第五代[GCN架構並且在](https://zh.wikipedia.org/wiki/GCN架構 "wikilink")2018將由[Navi架構接替](https://zh.wikipedia.org/wiki/Navi "wikilink")。\[2\]

使用了14nm
[FinFET製程](https://zh.wikipedia.org/wiki/FinFET "wikilink")\[3\]的「Vega10」產品線在2017/8/14發布，包含RX
Vega 56及RX Vega 64，價位在399美元至499美元不等。

使用了7nm
製程的「Vega20」產品線在2019[CES上發布](https://zh.wikipedia.org/wiki/CES "wikilink")，目前只包含699美元的Radeon
VII。\[4\]

## 歷史

「Vega」系列（前稱「Greenland」）\[5\]是AMD開發中的顯示核心的代號，接替[Radeon Rx
300系列中的Fury系列](https://zh.wikipedia.org/wiki/Radeon_Rx_300 "wikilink")。不過本系列最早的產品預覽是2016年12月AMD展示的[Radeon
Instinct](https://zh.wikipedia.org/wiki/Radeon_Instinct "wikilink")
MI25，使用代號「Vega
10」的GPU。\[6\]展出的樣品參數中，單精度浮點運算效能為12.5[TFLOPS](https://zh.wikipedia.org/wiki/TFLOPS "wikilink")。隨後AMD公佈了「Vega」核心的一些細節，像是新的晶片內互聯架構（與[Zen微架構類似的Infinity](https://zh.wikipedia.org/wiki/Zen微架構 "wikilink")
Fabric）、快取結構、CU的改進、預期運作時脈和每時鐘週期指令數、顯示記憶體的支援（支援HBM2）等。\[7\]\[8\]\[9\]\[10\]

不過，有分析認為AMD公佈的「Draw Stream Binning
Rasterizer」，疑似是準備令「Vega」支援分塊光柵化渲染（tile-based
rasterization）和像素整合讀取（binning），以獲得更充分的流處理器利用效率，並進一步降低CPU分派3D圖像渲染指令包的壓力。當前這兩種圖形處理器技術在行動裝置GPU上大行其道（包括高通的[Adreno系列](../Page/Adreno.md "wikilink")），NVIDIA在推出[GeForce
GTX
750(Ti)起也開始支援](https://zh.wikipedia.org/wiki/GeForce_700 "wikilink")。\[11\]除此以外，[著色器還增加了一級](https://zh.wikipedia.org/wiki/著色器 "wikilink")，以支援原始著色/渲染。\[12\]\[13\]

2017年5月17日，AMD公佈了基於「Vega」顯示核心的Radeon Vega Frontier Edition，擁有與前代Radeon
R9 Fury相似的晶片規模，而浮點效能則與對手NVIDIA TITAN
Xp相似，但採用HBM2作為顯示記憶體。\[14\]不過，本顯示卡是面向專業人士──需要高效能運算的科學家、需要高速3D繪圖以及虛擬現實處理效能的程式設計師或繪圖師等。有分析認為AMD可能遭遇開發資金的擠壓（AMD
Zen微架構的開發與產品的製造），加上HBM2記憶體的成本高企而且產能低下，多重因素導致「Vega」儘管很早就向專業繪圖及高效能運算市場，但面向消費級的遊戲顯示卡卻遲遲未能出席的情況。\[15\]

2019年1月8日，AMD在[CES公佈了基於](https://zh.wikipedia.org/wiki/CES "wikilink")7奈米「Vega20」顯示核心的Radeon
VII，是全球首款 7nm 遊戲顯示卡。基於 Vega 架構設計的 Radeon VII，有著 60 組運算單元與 3840
組流處理器，雖說比起 Vega 64 少了 4 組運算單元，但 GPU 時脈提升到
1.8GHz，比起上一代有著不小的時脈提升，而記憶體則翻倍來到 16GB HBM2，更高達 1TB/s
的記憶體頻寬。\[16\]

## 显示核心列表

主条目：[AMD显示核心列表](../Page/AMD顯示核心列表.md "wikilink")

### 桌面型显示核心

| 型号                                                         | 推出日期                                                       | 核心代号        | 制程 ([nm](https://zh.wikipedia.org/wiki/nm "wikilink"))      | 晶体管数 & 晶粒面积                                                              | 总线 接口                                                    | 核心配置 <sup>SPs:TMUs:ROPs</sup> | 时钟频率配置                                 | 填充率                                                            | 显示存储器配置                                  | [API支持](https://zh.wikipedia.org/wiki/應用程式介面 "wikilink")（版本） | 运算性能 （GFLOPS）                          | [TDP](../Page/热设计功耗.md "wikilink")(W)          | 发售价格                                   |
| ---------------------------------------------------------- | ---------------------------------------------------------- | ----------- | ----------------------------------------------------------- | ------------------------------------------------------------------------ | -------------------------------------------------------- | ----------------------------- | -------------------------------------- | -------------------------------------------------------------- | ---------------------------------------- | ------------------------------------------------------------ | -------------------------------------- | ---------------------------------------------- | -------------------------------------- |
| 默认 ([MHz](https://zh.wikipedia.org/wiki/Hertz "wikilink")) | 加速 ([MHz](https://zh.wikipedia.org/wiki/Hertz "wikilink")) | 存储器 (MT/s)  | 像素 ([GP](https://zh.wikipedia.org/wiki/Pixel "wikilink")/s) | 材质 ([GT](https://zh.wikipedia.org/wiki/Texel_\(graphics\) "wikilink")/s) | 容量 ([MiB](https://zh.wikipedia.org/wiki/MiB "wikilink")) | 总线 类型                         | 总线 宽度 ([比特](../Page/位元.md "wikilink")) | 带宽 ([GB](https://zh.wikipedia.org/wiki/Gigabyte "wikilink")/s) | [DirectX](../Page/DirectX.md "wikilink") | [OpenGL](../Page/OpenGL.md "wikilink")                       | [OpenCL](../Page/OpenCL.md "wikilink") | [Vulkan](../Page/Vulkan_\(API\).md "wikilink") | [半精度浮点数](../Page/半精度浮点数.md "wikilink") |
| <span id="Radeon_RX_470D"></span>Radeon RX Vega 56         | 2017年8月28日                                                 | Vega 10     | 14                                                          | 125亿 486 mm<sup>2</sup>                                                  | PCIe 3.0 ×16                                             | 3584:224:64                   | 1156                                   | 1471                                                           | 1600                                     | 74.0                                                         | 258.9                                  | 8192                                           | HBM2                                   |
| <span id="Radeon_RX_470"></span>Radeon RX Vega 64          | 2017年8月14日                                                 | 4096:256:64 | 1247                                                        | 1546                                                                     | 1890                                                     | 79.8                          | 319.2                                  | 483.8                                                          | 20431                                    | 10215                                                        | 638                                    | 295                                            | $499                                   |
| <span id="Radeon-RX-480"></span>Radeon RX Vega 64 水冷版      | 1406                                                       | 1677        | 90.0                                                        | 359.9                                                                    | 23036                                                    | 11518                         | 720                                    | 345                                                            | $699                                     |                                                              |                                        |                                                |                                        |
| <span id="Radeon_VII"></span>Radeon VII                    | 2019年2月                                                    | Vega 20     | 7                                                           | TBD                                                                      | PCIe 4.0 ×16                                             | 3840:240:64                   | 1400                                   | 1750                                                           | 2000                                     | 98.6-112                                                     | 336-420                                | 16384                                          | HBM2                                   |
|                                                            |                                                            |             |                                                             |                                                                          |                                                          |                               |                                        |                                                                |                                          |                                                              |                                        |                                                |                                        |

## 参考文献

[Category:AMD圖形處理器](https://zh.wikipedia.org/wiki/Category:AMD圖形處理器 "wikilink")

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