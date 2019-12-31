> 本文内容由[NVIDIA GeForce 2](https://zh.wikipedia.org/wiki/NVIDIA_GeForce_2)转换而来。


**GeForce 2**（核心代號為**NV15**），是由[NVIDIA設計的第二代](https://zh.wikipedia.org/wiki/NVIDIA "wikilink")[GeForce](../Page/GeForce.md "wikilink")[顯示核心](https://zh.wikipedia.org/wiki/顯示核心 "wikilink")，於2000年4月26日推出\[1\]。其後推出了首款應用於[筆記型電腦](../Page/筆記型電腦.md "wikilink")的顯示核心GeForce 2 Go系列\[2\]。

## 產品介紹

### GeForce 2系列

GeForce 2 GTS（NV15）是整个家族第一款顯卡。GTS代表**G**iga**T**exture **S**hader。它的像素填充率達到每秒16亿。由於額外增加了的第二个TMU(texture map unit)，令像素流水線數目達到每个四條。而核心速度亦由[GeForce 256的](https://zh.wikipedia.org/wiki/GeForce_256 "wikilink")120MHz提升到200Mhz。GeForce 2 GTS的性能是前代GeForce 256的3.3倍。其他硬體上的增加包括更新了影像处理管線，名為**HDVP** (high definition video processor)。HDVP支援高解像度動態影像播放，雖然強勁的CPU還是必須的。

在立體標準檢查程式和遊戲中，GTS比前輩（GeForce 256）快40%，而又比GeForce 256 DDR快10%。在[OpenGL](../Page/OpenGL.md "wikilink")遊戲（例如[Quake III](https://zh.wikipedia.org/wiki/Quake_III "wikilink")）中，GTS在16bpp和32bpp真彩顯視模式中，亦勝過[ATi的](https://zh.wikipedia.org/wiki/ATi "wikilink")[Radeon](../Page/Radeon.md "wikilink")和[3dfx的](https://zh.wikipedia.org/wiki/3dfx "wikilink")[Voodoo 5顯卡](https://zh.wikipedia.org/wiki/Voodoo_5 "wikilink")。

但在[Direct3D](../Page/Direct3D.md "wikilink")遊戲中，Radeon有時在32-bit顏色模式中勝出。從"NV1x"結構可看出，GeForce 2的記憶體頻寬是相當不足的。還有，它沒有記憶體頻寬節省技術，而ATi則有[HyperZ優化](https://zh.wikipedia.org/wiki/HyperZ "wikilink")。"NV1x"系列顯卡的記憶體頻寬可謂史上最少，令它達不到應有的性能。而Radeon則比較有效率。當時大部分遊戲都只是單層貼圖，縱使GeForce 2和Radeon支援[DirectX](../Page/DirectX.md "wikilink") 7，但都不能在多材質貼圖得到任何益处。

GeForce 2 GTS核心有三個修正版本，第一個是**GeForce 2 Ultra**， 於2000年尾推出。它的功能與GTS一樣，但Ultra版本的核心和顯示記憶体頻率比較高。它的效能絕對比Radeon和Voodoo 5高，比GeForce 3第一個產品还高。原先的GeForce 3材質填充率比GeForce 2 Ultra低，但在2001年年尾推出的GeForce 3 Ti500就超越了GeForce 2 Ultra。一些人推測GeForce 2 Ultra是用來對抗3DFX的Voodoo 5 6000。其後的測試報告顯示出Ultra的效能絕對比Voodoo 5 6000高，導致Voodoo 5 6000永遠不能接觸消費者市場。其餘的更新版本是**GeForce 2 Pro**和**GeForce 2 Ti**（即"titanium，使用 0.15 制程"）。它們的性能介乎於GTS和Ultra版本。它們的定位是價錢較便宜，但比較低級。這是由於要區分GeForce 3。它並沒有低階市場版本。

由於其纹理处理性能強大，開發者利用纹理环境参数和纹理函数，就可以作出一些數學運算。利用**紋理庫**和**寄存器組合器**，開發者用依赖纹理說可以访问数据，利用寄存器組合器进行计算。這通常用於求数学上[扩散方程](../Page/扩散方程.md "wikilink")的解。這是通用顯示核心（GPGPU）的最早利用。

<table>
<thead>
<tr class="header">
<th><p>GeForce2<br />
核心</p></th>
<th><p>三角形每秒生成率<br />
（百萬）</p></th>
<th><p>像素每秒生成率<br />
（千兆像素）</p></th>
<th><p>記憶體頻寬<br />
(GB/s)</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Ultra</p></td>
<td><p>31</p></td>
<td><p>1.0</p></td>
<td><p>7.3</p></td>
</tr>
<tr class="even">
<td><p>Ti</p></td>
<td><p>31</p></td>
<td><p>1.0</p></td>
<td><p>6.4</p></td>
</tr>
<tr class="odd">
<td><p>Pro</p></td>
<td><p>25</p></td>
<td><p>0.8</p></td>
<td><p>6.4</p></td>
</tr>
<tr class="even">
<td><p>GTS</p></td>
<td><p>25</p></td>
<td><p>0.8</p></td>
<td><p>5.3</p></td>
</tr>
</tbody>
</table>

### GeForce 2 MX系列

最後，GeForce 2系列中最成功的顯示卡就是**GeForce 2 MX**。它是一張經濟級的顯示卡。無論從交易額，或從產品的多元化而論，從來沒有繪圖核心可與GeForce 2 MX匹敵。一部分原因是GeForce 3並沒有經濟級顯示卡，而GeForce 2 MX家族就成了nVidia的主流產品達兩年半之久，一般是一年的。GeForce 2 MX的3D架構和功能與GTS相同，但移除了兩條像素流水線，記憶體頻寬只有GTS的一半。GeForce 2 MX能支援真正的双顯示輸出（TwinView）。（其實GTS也支援双顯示輸出，縱使它能驅動一個分開的電視編碼器，但第二個顯示輸出只是第一個的延伸。）

GeForce 2的有效率設計 - GeForce 2 Go的功耗是4瓦特，令它易於被筆記本電腦市場接受。GeForce 2 GTS是8瓦特，較舊的[GeForce 256則是](https://zh.wikipedia.org/wiki/GeForce_256 "wikilink")16瓦特。對手ATI用[Radeon](../Page/Radeon.md "wikilink") VE對抗（稍後用Radeon 7000），它並不支援[T\&L](https://zh.wikipedia.org/wiki/T&L "wikilink")。而Radeon SDR則稍遲發表，價錢又太貴。除了早發表和極佳的性價比之外，GeForce 2 MX和剩餘的產品線都採用單一而又穩定的驅動程式，而ATI的驅動程式則比較不穩定。

[Canopus_GeForce2_Ultra.png](https://zh.wikipedia.org/wiki/File:Canopus_GeForce2_Ultra.png "fig:Canopus_GeForce2_Ultra.png")

GeForce 2 MX表現得好，使之比GTS（或其他後續形號）更勝任成為主流產品。電腦遊戲方面，MX完全取代舊有的**TNT2**顯示卡。隨後nVidia將MX產品線分拆為MX400和MX200，分別代表效能級和價錢級。MX200的記憶体頻寬是64-bit，採用SD Ram作為顯存，嚴重影響其效能發揮。MX400的記憶体頻寬是128-bit，採用SD Ram作為顯存，DDR版本的記憶体頻寬是64-bit。

GeForce 2 MX的後繼者是[GeForce 4](https://zh.wikipedia.org/wiki/GeForce_4 "wikilink") MX。雖然很多人認為[GeForce 4](https://zh.wikipedia.org/wiki/GeForce_4 "wikilink") MX只不過是GeForce 2 MX的128-bit DDR記憶体頻寬版本，因為它沒有高階顯示核心的規格，但它（除了MX 420）的效能始終比GeForce 2 Ultra優勝。

  - GeForce2 MX
      - 顯示記憶體類型：64或128-bit SDR, 或64-bit DDR
      - 顯示記憶體頻寬：2.7GB/s
      - 填充率（紋理/秒）：700 Million

<!-- end list -->

  - GeForce2 MX 400
      - 顯示記憶體類型：64或128-bit SDR, 或64-bit DDR
      - 顯示記憶體頻寬：2.7GB/s
      - 填充率（紋理/秒）：800 Million

<!-- end list -->

  - GeForce2 MX 200
      - 顯示記憶體類型：64-bit SDR
      - 顯示記憶體頻寬：1.3GB/s
      - 填充率（紋理/秒）：576 Million

[GeForce2_Ultra_GPU.jpg](https://zh.wikipedia.org/wiki/File:GeForce2_Ultra_GPU.jpg "fig:GeForce2_Ultra_GPU.jpg")

### GeForce 2 Go系列

GeForce 2 Go系列是全球首款獨立的高效能筆記型電腦顯示核心，共有三個型號，標準版的GeForce 2 Go，效能級的GeForce 2 Go 200，主流級的GeForce 2 Go 100。

  - GeForce2 Go
      - 顯示記憶體容量：64MB
      - 顯示記憶體位寬：64-bit或128-bit DDR
      - 填充率（紋理/秒）：500 Million

<!-- end list -->

  - GeForce2 Go 200
      - 顯示記憶體容量：32MB
      - 顯示記憶體位寬：64-bit DDR
      - 填充率（紋理/秒）：576 Million

<!-- end list -->

  - GeForce2 Go 100
      - 顯示記憶體容量：16MB
      - 顯示記憶體位寬：32-bit DDR
      - 填充率（紋理/秒）：576 Million

## 相關條目

  - [GeForce 2系列規格列表](https://zh.wikipedia.org/wiki/NVIDIA顯示核心列表#GeForce_2 "wikilink")
  - [GeForce 2 Go系列規格列表](https://zh.wikipedia.org/wiki/NVIDIA顯示核心列表#GeForce_2_Go "wikilink")
  - [Quadro 2](../Page/Quadro_2.md "wikilink")

## 參考鏈接

## 外部連結

  - [NVIDIA GeForce 2主頁](https://web.archive.org/web/20090302084653/http://www.nvidia.com/page/quadro.html)

[Category:GeForce系列](https://zh.wikipedia.org/wiki/Category:GeForce系列 "wikilink") [Category:2000年面世的產品](https://zh.wikipedia.org/wiki/Category:2000年面世的產品 "wikilink")

1.  [NVIDIA Introduces New Groundbreaking GPU](http://www.nvidia.com/object/IO_20010809_4843.html)
2.  [NVIDIA GeForce2 Go Selected by Toshiba America](http://www.nvidia.com/object/IO_20010614_5426.html)