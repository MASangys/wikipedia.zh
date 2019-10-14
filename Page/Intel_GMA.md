[Harumphy.dg965.heatsink.jpg](https://zh.wikipedia.org/wiki/File:Harumphy.dg965.heatsink.jpg "fig:Harumphy.dg965.heatsink.jpg") ****是於2004年至2008年所推出的[顯示核心產品線](https://zh.wikipedia.org/wiki/顯示核心 "wikilink")，用於在[晶片組內內建](https://zh.wikipedia.org/wiki/晶片組 "wikilink")[顯示核心](https://zh.wikipedia.org/wiki/顯示核心 "wikilink")。

這個「集成圖像」方案容許使用者在組裝電腦時無需購買額外的顯示卡，使整個平台的成本下降和功耗更低。GMA[顯示核心多數出現於低階或笔记本电腦](https://zh.wikipedia.org/wiki/顯示核心 "wikilink")。GMA[顯示核心使用會在運行時佔用電腦的部分的](https://zh.wikipedia.org/wiki/顯示核心 "wikilink")[主記憶體](https://zh.wikipedia.org/wiki/主記憶體 "wikilink")，令電腦的效能略為降低，這是由於[中央處理器以及](https://zh.wikipedia.org/wiki/中央處理器 "wikilink")[顯示核心需要同時經同一](https://zh.wikipedia.org/wiki/顯示核心 "wikilink")[匯流排來存取主記憶體所致](https://zh.wikipedia.org/wiki/匯流排 "wikilink")。

## 歷史

GMA[顯示核心用以取代](https://zh.wikipedia.org/wiki/顯示核心 "wikilink")[Intel第一代](https://zh.wikipedia.org/wiki/Intel "wikilink")[內建顯示核心](https://zh.wikipedia.org/wiki/內建顯示核心 "wikilink")[Extreme Graphics](https://zh.wikipedia.org/wiki/Extreme_Graphics "wikilink")，和分離形式的AGP顯示卡[Intel740](https://zh.wikipedia.org/wiki/I740 "wikilink")。

GMA[顯示核心原本架構在硬體內只支援一些功能](https://zh.wikipedia.org/wiki/顯示核心 "wikilink")，並且倚賴主機[中央處理器處理至少一些圖形管線](https://zh.wikipedia.org/wiki/中央處理器 "wikilink")，令電腦效能更進一步減低。然而在2006年，[Intel引進第四代GMA架構](https://zh.wikipedia.org/wiki/Intel "wikilink")（GMA X3000），大多數功能現在被加進，提高了性能。第四代GMA整合了固定的功能與一系列可編程執行單元，提供更佳性能給圖形和影片。大多數新GMA架構的優勢是在執行圖形有關任務或者有關影片任務能靈活改變。當時GMA性能一直被廣泛批評在[電腦遊戲執行太慢](https://zh.wikipedia.org/wiki/電腦遊戲 "wikilink")，最新的GMA應該能令一些中間的玩家關心。

儘管相似，GMA不是基於由[Imagination Technologies授權給](../Page/Imagination_Technologies.md "wikilink")[Intel的](https://zh.wikipedia.org/wiki/Intel "wikilink")[PowerVR](../Page/PowerVR.md "wikilink")技術。[Intel曾在支持](https://zh.wikipedia.org/wiki/Intel "wikilink")[XScale](../Page/XScale.md "wikilink")平台的晶片組上使用低功率的[PowerVR MBX設計](https://zh.wikipedia.org/wiki/PowerVR#MBX "wikilink")，但自从 2006 年 XScale 被售出后，Intel 取得了 PowerVR SGX 授權，用于 Atom 平台上的 [GMA 500](https://zh.wikipedia.org/wiki/#GMA_500 "wikilink") 显示核心。

據報道[Intel已開始設計一種新系列分離式圖形硬體產品](https://zh.wikipedia.org/wiki/Intel "wikilink")，代號為[Intel_Larrabee](../Page/Intel_Larrabee.md "wikilink")。

2010年起，Intel已使用集成于[中央处理器](../Page/中央处理器.md "wikilink")内的[Intel HD Graphics显示核心取代了GMA显示核心](../Page/Intel_HD_Graphics.md "wikilink")。

## 硬件：显卡核心

### GMA 900

**GMA 900**是第一款以Intel图形加速器作为产品名称的显示核心，整合于Intel 910G, 915G，以及915Gx芯片组中。相较于之前的*Extreme 3D*显示核心，GMA 900在性能上有显著的进步，但是与其它的图形加速方案相比，还停留在很基础的层面上。例如，它的3D核心缺乏对于[T\&L和类似的](https://zh.wikipedia.org/wiki/T&L "wikilink")[顶点着色器等](https://zh.wikipedia.org/wiki/顶点着色器 "wikilink")3D加速管线中重要技术的硬件支援，而是改以软件模拟的方式提供支持，降低了3D游戏的兼容性和表现。

GMA 900拥有4条支援DirectX shader model 2.0的像素渲染管线，最高运行频率为333 MHz，不同的芯片组内部运行频率不同。峰值像素填充率为1333 百万像素／秒，与它的前任类似，GMA 900 支援[MPEG-2](../Page/MPEG-2.md "wikilink")运动补偿，色彩空间变换和[DirectDraw](https://zh.wikipedia.org/wiki/DirectDraw "wikilink") overlay。

显存控制器最多能够对224MB的内存寻址，但是随后的一次视频 bios 更新把这个限制在了128 MB。

显示核心用于显示和渲染的时钟发生器是不同的。显示部分包含一个 400MHz [RAMDAC](https://zh.wikipedia.org/wiki/RAMDAC "wikilink")，2个25-200Mpixel/s 的串行 DVO 端口。同时在移动芯片组中，还包括两个18 bit 25-112MHz [LVDS转换器](https://zh.wikipedia.org/wiki/LVDS "wikilink")。

### GMA 950

**GMA 950**是第二款以Intel图形加速器作为产品名称的显示核心，在规格表中也被称作 Intel 的**第3.5代整合图形核心**。它整合于 Intel 940GML, 945G, 945GU 和 945GT 芯片组中。硬件架构中视频解码单元有所增加，同时还包括 VLD、[离散余弦变换](../Page/离散余弦变换.md "wikilink")和双重[video overlay](https://zh.wikipedia.org/wiki/video_overlay "wikilink")。最高时钟频率为 400 MHz（存在于Intel 945G, 945GC, 945GZ）），峰值像素填充率理论上为1600 百万像素／秒。

GMA 950 与 GMA 900 在架构上的弱点相同，即没有硬件几何处理单元，既没有基本的（DX7所包含）硬件T\&L\[1\]，也没有（DX8及以后）高级[顶点着色单元](https://zh.wikipedia.org/wiki/顶点着色器 "wikilink")。

### GMA 3000

946GZ, Q965 和 Q963 芯片组集成的显示核心为**GMA 3000**。\[2\]\[3\] GMA 3000 的3D 核心与 X3000 的完全不同，虽然名称很类似。它更多的基于之前 GMA 900 和 GMA 950 显示核心的体系，并且与它们同属于 "i915" 芯片组家族。它的像素和[顶点渲染单元只支援到shader](https://zh.wikipedia.org/wiki/顶点着色器 "wikilink") model 2.0 的特性，并且顶点渲染单元依旧只是软件模拟的方式工作。另外视频播放的硬件加速，即基于硬件的离散余弦变换，ProcAmp（独立视频流的[色彩校正](https://zh.wikipedia.org/wiki/色彩校正 "wikilink")）和 VC-1 的解码并没有在硬件上实现。在所有集成 GMA 3000 显示核心的芯片组中，只有 Q965 保留了双重独立显示器的支持。规格表中的核心频率为400 MHz，像素填充率为1.6 Gpixel/s，然而在硬件白皮书中它的核心频率却为667 MHz\[4\]。

显存控制单元能够对最大256 MB内存进行寻址。

集成的serial DVO ports最高速率提升到270Mpixel/s。

### GMA 3100

G31, G33, Q33 和 Q35 芯片组中所使用的显示核心为**GMA 3100**，能够支援 DX9 。它的 3D 架构和旧的 GMA 3000 十分相似，同样也缺乏顶点渲染单元的硬件支持。然而 RAMDAC的频率被削减到 350MHz，同时 DVO ports 削减到 225Mpixel/s。顯存控制單元能夠對最大384 MB內存進行尋址。

### GMA 3150

整合 Intel Atom N4xx, N5xx (代號: *[Pineview](https://zh.wikipedia.org/wiki/Pineview_\(microprocessor\) "wikilink")*) 處理器，能夠支援DirectX 9。架構跟 GMA 3000及3100 相近，像素及頂點着色器硬件最高支援為2.0B，而其頂點着色器 3.0 版本同樣缺乏硬件支援(只能以驅動+軟件模擬方式執行)，最高支援384MB 顯示記憶體，Shader Model 3.0，核心频率为400 MHz。支援OpenGL 1.5 (Windows)及 2.1 (Linux)

### GMA X3000

**GMA X3000**与之前的GMA系列相比，在架构上有了戏剧性的变化，最主要的一点即 X3000 将以8个[向量处理器作为执行单元的统一渲染架构作为](https://zh.wikipedia.org/wiki/并行向量處理機 "wikilink") 3D 渲染硬件的基础。每一条管线都能够进行视频，[顶点或是材质的操作](../Page/頂點_\(電腦圖學\).md "wikilink")。一个中枢时序表动态调整管线资源上线程的分派，以达到渲染输出的最大化（同时降低单个管线延迟的影响）。然而由于执行单元架构特性，同一时间仅能在一条管线上处理数据。\[5\] GMA X3000 支援[顶点和像素](../Page/頂點_\(電腦圖學\).md "wikilink") Shader Model 3.0 特性。其中每个向量的渲染达到了 32-bit 浮点精度。各异向性过滤从之前的4次采样上升到16次。

整个核心由不同时钟频率的单元组成，这就意味着整块芯片并不运行在相同的时钟频率上，这会使得衡量它多种功能的峰值输出时引起一些麻烦。更令人混乱的是，在 Intel G965 芯片组的白皮书中，它的核心频率为667 MHz，然而在 Intel G965 的规格表中却为 400 MHz。有多种方式能够定义 IGP 显示核心的能力，最常见的是核心每时钟频率能够进行1.6个像素和3.2个材质渲染。像素渲染的最大潜力为每时钟频率2.0个像素渲染，这只存在于一个"clear"循环中。相类似的，它能够进行每时钟频率4个像素渲染的深度操作，与此同时材质渲染率降低到每时钟频率 3.2个像素。导致当 X3000 工作于 667 MHz 时理论上的填充率为1067 megapixels/s 和 2133 megatexel/s。\[6\]

同样的，Intel增强了它的视频加速功能。X3000能够进行WMV9 ([VC-1](../Page/VC-1.md "wikilink"))的视频加速。但是VC-1加速仅包含解码和运动补偿。

显存控制器能够对最大384 MB 内存进行寻址，但在规格表中仅为 256 MB。

GMA X3000 集成于 Intel G965 芯片组的北桥中。

### GMA X3100

GMA X3100 用于Intel GL960 和 GM965 芯片组，是 GMA X3000 的移动版本。X3100 支持硬件T\&L，渲染单元能够执行 128 条可编程指令，共享显存最大为 256MB 内存。GM965 上的显示核心频率为500 MHz，GL960 上的为400 MHz。X3100 显示单

### GMA X3500

GMA X3500 是 Intel G35芯片组中所集成的显示核心\[7\],显示核心频率为667MHz，渲染单元支援 shader model 4.0 特性，整个显示单元源于GMA X3000。

### GMA X4500

GMA X4500 用于 Intel G45、G43、G41芯片组中，以65nm工艺制造，最高显示核心频率可达800MHz，其移动版本为GMA X4500M，用于GM45、GM47、GS45、GL40芯片组中，最高显示核心频率可达640MHz。与 X3500类似，X4500 能够支援DirectX 10 和 shader model 4.0 特性。Intel 声称在 3DMark06 这款产品比 GMA 3100 (G33) 好上3倍，得分在1000分左右。\[8\] 为了增强性能，将在X4500 中加入一个更新版本的 Intel Clear Video 技术以及对于 HDCP 的支援，增强 HD-DVD 和 Blu-Ray 的流畅回放。 \[9\] \[10\]

### GMA 500

GMA 500 是一款為 [MID](https://zh.wikipedia.org/wiki/MID "wikilink") 和 [netbook](https://zh.wikipedia.org/wiki/netbook "wikilink") 而設計的顯示核心, 配合[Intel Atom](https://zh.wikipedia.org/wiki/Intel_Atom "wikilink") Z5XX系列處理器推出市場。與一般GMA系列不同, 此核心是 [Imagination Technologies](../Page/Imagination_Technologies.md "wikilink") 所設計的 [PowerVR](../Page/PowerVR.md "wikilink") SGX 535, 由於 [PowerVR](../Page/PowerVR.md "wikilink") 的開源合作計劃甚少, 在 linux 平台上只有過時的閉源驅動程式。因核心設計以省電為目標, GMA 500 的3D效能會比 GMA 950 更低, 但新技術支援 [DirectX](../Page/DirectX.md "wikilink") 10.1, [OpenGL](../Page/OpenGL.md "wikilink") 2.0 和各種硬體影片解碼器。

## GMA核心与集成芯片规格表

<table>
<thead>
<tr class="header">
<th><p>显示核心</p></th>
<th><p>GMA 500</p></th>
<th><p>GMA 900</p></th>
<th><p>GMA 950</p></th>
<th><p>GMA 3000</p></th>
<th><p>GMA 3100</p></th>
<th><p>GMA 3150</p></th>
<th><p>GMA X3000</p></th>
<th><p>GMA X3100</p></th>
<th><p>GMA X3500</p></th>
<th><p>GMA X4500M</p></th>
<th><p>GMA X4500</p></th>
<th><p>GMA 4500</p></th>
<th><p>GMA X4500HD</p></th>
<th><p>GMA X4500MHD</p></th>
<th><p>HD Graphics</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><a href="../Page/芯片组.md" title="wikilink">芯片组</a></p></td>
<td><p>UL11L, US15L, US15W</p></td>
<td><p>910GL, 915G,<br />
915GL, 915GV</p></td>
<td><p>915GM</p></td>
<td><p>945GU</p></td>
<td><p>945GM</p></td>
<td><p>945G,<br />
945GZ,<br />
945GC</p></td>
<td><p>946GZ</p></td>
<td><p>Q963</p></td>
<td><p>Q965</p></td>
<td><p>G31,<br />
Q33,<br />
Q35</p></td>
<td><p>G33</p></td>
<td><p>Atom D4xx</p>
<p>D5XX</p></td>
<td><p>Atom N4XX</p>
<p>N5XX</p></td>
<td><p>G965</p></td>
<td><p>GL960</p></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/频率" title="wikilink">频率</a>（<a href="../Page/赫兹.md" title="wikilink">MHz</a>）</p></td>
<td><p>100 (UL11L) 200 (US15L,W)</p></td>
<td><p>333[11]</p></td>
<td><p>200[12]</p></td>
<td><p>133[13]</p></td>
<td><p>250[14]</p></td>
<td><p>400[15]</p></td>
<td><p>400</p></td>
<td><p>667 [16]</p></td>
<td><p>667 [17]</p></td>
<td><p>400</p></td>
<td><p>400</p></td>
<td><p>400</p></td>
<td><p>400</p></td>
<td><p>667 [18]</p></td>
<td><p>400</p></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/顶点着色器" title="wikilink">顶点着色器</a></p></td>
<td><p>3.0</p></td>
<td><p>2.0</p></td>
<td><p>2.0(HW)/3.0(SW)</p></td>
<td><p>4.0</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/像素着色器" title="wikilink">像素着色器</a></p></td>
<td><p>3.0</p></td>
<td><p>2.0</p></td>
<td><p>3.0</p></td>
<td><p>4.0</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/像素管线" title="wikilink">像素管线</a></p></td>
<td><p>NA</p></td>
<td><p>4</p></td>
<td><p>2</p></td>
<td><p>NA</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/统一渲染架构" title="wikilink">统一渲染架构</a></p></td>
<td><p>4</p></td>
<td><p>NA</p></td>
<td><p>8</p></td>
<td><p>10</p></td>
<td><p>12</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>硬件 <a href="../Page/着色器.md" title="wikilink">着色器</a></p></td>
<td><p>Yes</p></td>
<td><p>No</p></td>
<td><p>Yes</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>峰值 <a href="https://zh.wikipedia.org/wiki/显存带宽" title="wikilink">显存带宽</a> (GB/s)</p></td>
<td><p>3.2 (UL11L) 4.2 (US15L,W)</p></td>
<td><p>8.5</p></td>
<td><p>10.7</p></td>
<td><p>12.8</p></td>
<td><p>6.4</p></td>
<td><p>5.3</p></td>
<td><p>12.8</p></td>
<td><p>12.8(DDR2)<br />
17.06(DDR3)</p></td>
<td><p>21.33</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>最大 <a href="../Page/显存.md" title="wikilink">显存</a></p></td>
<td><p>256MB</p></td>
<td><p>128MB[19]</p></td>
<td><p>256MB</p></td>
<td><p>384MB</p></td>
<td><p>1.7GB[20]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="../Page/OpenGL.md" title="wikilink">OpenGL</a> 支持[21]</p></td>
<td><p>2.0</p></td>
<td><p>1.4</p></td>
<td><p>1.5 (Windows) 2.1</p>
<p>(Linux)</p></td>
<td><p>1.5</p></td>
<td><p>2.0[22]</p></td>
<td><p>2.1</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="../Page/DirectX.md" title="wikilink">DirectX</a> 支持</p></td>
<td><p>9.0c</p></td>
<td><p>9.0</p></td>
<td><p>9.0c</p></td>
<td><p>10.0</p></td>
<td><p>10.0</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="../Page/MPEG-2.md" title="wikilink">MPEG-2</a> 硬解码[23]</p></td>
<td><p>Full HW</p></td>
<td><p>HW MC[24]</p></td>
<td><p>Full HW Acceleration MPEG2 Video Decode</p></td>
<td><p>VLD + iDCT + MC[25]</p></td>
<td><p>Full HW Acceleration MPEG2 Video Decode[26]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="../Page/VC-1.md" title="wikilink">VC-1</a> 硬解码[27]</p></td>
<td><p>Full HW</p></td>
<td><p>No</p></td>
<td><p>MC + In Loop Filter - WMV9 Only[28]</p></td>
<td><p>MC + In Loop Filter[29][30]</p></td>
<td><p>Full HW Acceleration VC1 Decode[31]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/H.264/AVC" title="wikilink">H.264/AVC</a> 硬解码</p></td>
<td><p>Full HW</p></td>
<td><p>No</p></td>
<td><p>MC + In Loop Filter</p></td>
<td><p>Full HW Acceleration AVC Decode[32]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

This table is derived from these sources: \[33\] \[34\] \[35\] \[36\] <ref name="IntelGraphics">{{ cite web

`|url=`<http://download.intel.com/products/graphics/intel_graphics_guide.pdf>` `
`|title=Intel Graphics - Built for mainstream Desktop and Mobile PC Users `
`|accessdate=2009-07-14 `
`|deadurl=yes `
`|archiveurl=`<https://web.archive.org/web/20071128133825/http://download.intel.com/products/graphics/intel_graphics_guide.pdf>` `
`|archivedate=2007-11-28 `

}}</ref> \[37\] \[38\] \[39\] \[40\] \[41\] \[42\] \[43\] \[44\] \[45\] \[46\] \[47\] \[48\] \[49\] \[50\]

Notes:

  - VLD: [Variable-length code](https://zh.wikipedia.org/wiki/Variable-length_code "wikilink") (sometimes referred to as slice-level acceleration)
  - iDCT: inverse [离散余弦变换](../Page/离散余弦变换.md "wikilink")
  - MC: [运动补偿](../Page/运动补偿.md "wikilink")
  - WMV9: [Windows Media Video 9](../Page/Windows_Media_Video.md "wikilink") codec
  - NA: Not Applicable

## 软件支持

### Mac OS X

[Mac OS X 10.4](https://zh.wikipedia.org/wiki/Mac_OS_X_10.4 "wikilink") 支持 GMA 950
[Mac OS X 10.5](https://zh.wikipedia.org/wiki/Mac_OS_X_10.5 "wikilink") 支持 GMA X3100
[Mac OS X 10.6](https://zh.wikipedia.org/wiki/Mac_OS_X_10.6 "wikilink") 支援 GMA 950/X3100 (32Bit)

### FreeBSD

最新的FreeBSD 7.1版本已支持的晶片組: G945/GME945/Q965/GM965/GME965/G33/Q33/Q35/G35/G45/Q45.

## 參考資料

## 外部連結

  - [1](http://www.intel.com/products/graphics/index.htm)
  - [2](http://www.intel.com/design/chipsets/applnots/313343.htm)
  - [3](http://www.intel.com/support/graphics/sb/CS-023606.htm)
  - [4](http://www.intellinuxgraphics.org/)
  - [5](https://web.archive.org/web/20071211145913/http://www.xbitlabs.com/articles/chipsets/display/ig965-gf6150_12.html)
  - [The Register: *Intel vs AMD - integrated graphics shoot-out*](http://www.reghardware.co.uk/2006/12/15/review_intel_vs_amd_integrated/)

[Category:显示技术](https://zh.wikipedia.org/wiki/Category:显示技术 "wikilink") [Category:顯示卡](https://zh.wikipedia.org/wiki/Category:顯示卡 "wikilink") [Category:英特爾產品](https://zh.wikipedia.org/wiki/Category:英特爾產品 "wikilink")

1.  Case, Loyd. [Intel GMA950 Integrated Graphics Core](http://www.extremetech.com/article2/0,1697,1821808,00.asp), Extremetech, May 31, 2005.

2.

3.  {{ cite web | url = <http://www.intel.com/products/chipsets/gma3000/gma3000.pdf> | title = Intel’s Next Generation Integrated Graphics Architecture – Intel® Graphics Media Accelerator X3000 and 3000 | accessdate = 2007-06-08 }}

4.

5.  Gasior, Geoff. [Intel's G965 Express chipset](http://www.techreport.com/reviews/2007q2/intel-g965/index.x?pg=1), Tech Report, April 5, 2007.

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
21.
22.
23.
24.
25.
26.
27.
28.
29.
30.
31.
32.
33.
34.
35.
36. [Intel G35 Product Brief](http://download.intel.com:80/products/chipsets/G35/317363.pdf)

37. [Intel GMA 950 Graphics Product Brief](http://www.intel.com/products/chipsets/gma950/gma950.pdf), Intel, accessed June 28, 2007.

38. [Intel Graphics Media Accelerator 900](http://www.intel.com/design/chipsets/applnots/30262403.pdf), Intel, accessed June 28, 2007.

39. Romanchenko, Vladimir. [Intel Centrino Duo: new-generation mobility](http://www.digital-daily.com/mobile/centrino_duo/index02.htm), Digital Daily, January 24, 2006.

40. [Intel 946 Express Chipset Family Datasheet](http://download.intel.com/design/chipsets/datashts/31308301.pdf), Intel, accessed June 28, 2007.

41. Case, Loyd. [Intel GMA950 Integrated Graphics Core](http://www.extremetech.com/article2/0,1697,1821808,00.asp), Extremetech, May 31, 2005.

42. [Intel 3 Series Chipsets Datasheet](http://download.intel.com/design/chipsets/datashts/31696601.pdf), Intel, accessed June 29, 2007.

43. [Mobile Intel 915PM/GM/GME/GMS and 910GML/GMLE Express Chipset Datasheet](http://download.intel.com/design/mobile/datashts/30526402.pdf), Intel, accessed June29, 2007.

44. [Mobile Intel 945 Express Chipset Family Datasheet](http://download.intel.com/design/mobile/datashts/30921904.pdf), Intel, accessed July3, 2007.

45. [Intel G35 Express Chipset Datasheet](http://download.intel.com/design/chipsets/datashts/31760701.pdf), Intel, accessed August16, 2007.

46. [Mobile Intel 965 Express Chipset Family Datasheet](http://download.intel.com/design/mobile/datashts/31627303.pdf), Intel, accessed August16, 2007.

47. [Intel 82G965 Graphics and Memory Controller Hub (GMCH) OpenGL Support](http://www.intel.com/support/graphics/intelg965/sb/CS-023713.htm)

48. [Intel HD Graphics quick reference guide](http://software.intel.com/file/24575.pdf), Intel, accessed September18, 2010.

49. [Intel GMA features and benefits](http://www.intel.com/technology/graphics/gma.htm), Intel, accessed November6,2010.

50. [quick reference guide](http://software.intel.com/zh-cn/articles/quick-reference-guide-to-intel-integrated-graphics/), Intel, accessed December20,2010.