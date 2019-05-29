**NVIDIA GeForce
800系列**，是[輝達研發的](https://zh.wikipedia.org/wiki/輝達 "wikilink")[圖形處理器產品系列](../Page/圖形處理器.md "wikilink")，用於[筆記型電腦平台](../Page/筆記型電腦.md "wikilink")。此代顯示核心將採用新的Maxwell微架構（晶片代號將以『GM』開頭），以[蘇格蘭](../Page/蘇格蘭.md "wikilink")[理論物理學家](https://zh.wikipedia.org/wiki/理論物理學 "wikilink")[詹姆士·克拉克·麥克斯韋的名字命名](https://zh.wikipedia.org/wiki/麥克斯韋 "wikilink")。2014年初悄然發表的行動型顯示核心GeForce
820M，儘管列入GeForce 800系列，但仍採用[GeForce
500系列](https://zh.wikipedia.org/wiki/GeForce_500系列 "wikilink")『Fermi』架構的GF117顯示核心，因此僅僅是舊型號顯示核心更名而已。\[1\]\[2\]首款基於Maxwell微架構的顯示核心實際為GeForce
700系列上的GeForce GTX 750以及750 Ti。\[3\]\[4\]\[5\]後來，NVIDIA也陸續發布行動平台的GeForce
800M系列的其他型號，除GeForce 830M、840M、GTX 850M以及GTX
860M的部分批次以外，其餘的均使用舊有顯示核心。NVIDIA宣佈新一代Maxwell核心的首發兩款產品將被命名為[NVIDIA
GeForce 900系列](../Page/NVIDIA_GeForce_900.md "wikilink")，分別為GTX 970和GTX
980。\[6\]\[7\]而預計GeForce
800系列將使用在[OEM市場](https://zh.wikipedia.org/wiki/OEM "wikilink")，就像之前的[GeForce
100和](https://zh.wikipedia.org/wiki/GeForce_100 "wikilink")[GeForce
300系列](https://zh.wikipedia.org/wiki/GeForce_300 "wikilink")。

## 概觀

用於GeForce 800系列上的『Maxwell』顯示核心架構，是用於[GeForce
600以及](https://zh.wikipedia.org/wiki/GeForce_600 "wikilink")700系列『Kepler』顯示核心架構的下一代，將首次在顯示核心上內建[ARM架構的CPU核心](https://zh.wikipedia.org/wiki/ARM架構 "wikilink")。\[8\]\[9\]NVIDIA的CEO[黃仁勳稱](../Page/黃仁勳.md "wikilink")，這樣做使得GPU更加獨立於主CPU\[10\]。NVIDIA稱『Maxwell』顯示核心架構對比『Kepler』架構，會有更高的圖形處理效能、更簡化的可程式性以及更好的[能效比](../Page/效能功耗比.md "wikilink")。\[11\]

2010年9月NVIDIA宣布下一代顯示核心架構『Maxwell』。\[12\]首款基於『Maxwell』架構的消費級顯示核心的產品將於2014年早期發賣。\[13\]稍後將有基於『Maxwell』顯示核心的[NVIDIA
Tesla運算卡以及](../Page/NVIDIA_Tesla.md "wikilink")[NVIDIA
Quadro專業圖形卡](../Page/NVIDIA_Quadro.md "wikilink")。最後會有供手持式裝置使用的基於該架構的[NVIDIA
Tegra](https://zh.wikipedia.org/wiki/NVIDIA_Tegra "wikilink")[系統單晶片出現](https://zh.wikipedia.org/wiki/系統單晶片 "wikilink")。\[14\]

## 架構特性

初期，Maxwell架構顯示核心，仍採用台積電的28nm製程，核心規模也較為有限。首代Maxwell顯示核心有GM107和GM108，均面向消費級市場，相比Kepler而言僅是多了一些Kepler架構所沒有的附加功能特性，性能、功耗及能效比上與Kepler相去不遠。這些新增的特性主要有：

  - [NVENC效能的加強](https://zh.wikipedia.org/wiki/NVENC "wikilink")。NVENC是NVIDIA開發的視訊解碼器，在初代Maxwell顯示核心上的效能為1.5倍到2倍於Kepler顯示核心，在6到8倍的回放速率使仍能實時解碼。\[15\]
  - [PureVideo效能加強](https://zh.wikipedia.org/wiki/PureVideo "wikilink")。NVIDIA提升了Maxwell的視訊解碼快取和記憶體存取效率，稱在Pure
    Video
    E功能集視訊解碼時，比以往的有8到10倍效能提升。然而，H.265硬體解碼的支援度仍然不完整，需要軟體以及硬體共同執行。\[16\]
  - 新增一個電源模式『GC5』。當顯示核心進行視訊解碼作業時，會進入一個新的『GC5』電源模式，只保留視訊解碼所需的電路單元的電力供應，節省電力。\[17\]

### 顯示記憶體

GM107的L2快取，由GK107的256KB，大幅增加到2MB，大大降低對顯示記憶體的頻寬需求。相應地，NVIDIA僅為GM107的使用128位元的[記憶體控制器位寬](https://zh.wikipedia.org/wiki/記憶體控制器 "wikilink")，而GM107的效能與kepler的192位元記憶體位寬的GK106不相上下，除此以外，減少了記憶體位寬，還會節省電能。\[18\]

### SMM

Kepler時代，CUDA核心/流處理器陣列被NVIDIA稱作SMX，而Maxwell的設計，則改稱SMM。SMM陣列中，各陣列是分離獨立的，因此陣列中的4個排程引擎控制各自所屬的FP32
CUDA核心、載入/存儲單元以及特殊功能單元，不像Kepler那樣一個排程引擎需要共用資源。不過，紋理單元以及FP64
CUDA核心則仍然是共用的。\[19\]SMM提供比SMX更細粒度的資源分配，當負載並非為共用資源最佳化時節省電力。NVIDIA稱128個CUDA核心的SMM可以達到192個CUDA核心的SMX的90%的效能。\[20\]

### 通用運算

相比GK110/GK208支援CUDA 3.5，GM107可以支援CUDA
5.0通用運算庫。在GK110/GK208上現身的動態並行以及HyperQ，基於Maxwell架構的顯示核心會全面支援。Maxwell架構為32位元整數的原子操作提供原生共用記憶體，支援32位元和64位元的數據比較和交換（compare-and-swap，CAS），可實現其它形式的原子操作功能。

### API

Maxwell架構全面支援DirectX 12。\[21\]

## 繼任架構

接替『Maxwell』顯示核心架構的，是NVIDIA於2013年3月宣布的代號『Volta』的顯示核心架構。\[22\]2014年，這個構想的架構被定名為『Pascal』\[23\]\[24\]
『Pascal』將實現片上堆疊式[動態隨機存取記憶體](https://zh.wikipedia.org/wiki/動態隨機存取記憶體 "wikilink")（DRAM），或稱『片上[顯示記憶體](https://zh.wikipedia.org/wiki/顯示記憶體 "wikilink")』，統一記憶體架構以及NVLink。\[25\]\[26\]

## 產品介紹

### 桌上型平台

首款基於Maxwell架構的顯示核心是GM107，但它卻被劃入[GeForce
700系列](https://zh.wikipedia.org/wiki/GeForce_700系列 "wikilink")，是為GeForce
GTX 750和GTX 750 Ti，均使用28奈米製程，\[27\]它們均於2014年2月18日發布。GeForce GTX 750和GTX
750
Ti的[TDP分別僅為](https://zh.wikipedia.org/wiki/熱設計功耗 "wikilink")55瓦和60瓦，這樣使得它們都能直接從[PCIe插槽中獲取足夠的電能而無需輔助供電連接埠](https://zh.wikipedia.org/wiki/PCIe "wikilink")。\[28\]第二款基於Maxwell架構的顯示核心GM204被劃入[GeForce
900系列](https://zh.wikipedia.org/wiki/GeForce_900系列 "wikilink")，是為GeForce
GTX 970和GTX 980，它們均於2014年9月19日發布。

### 行動平台

GeForce 800M的首發產品是GeForce 820M\[29\] -
使用[『Fermi』顯示核心架構的GF](../Page/NVIDIA_GeForce_400.md "wikilink")117顯示核心，僅支援PCI-E
2.0，但支援DirectX 11.2、OpenGL 4.4、OpenCL
1.1、FXAA以及[Optimus雙顯示核心切換](../Page/NVIDIA_Optimus.md "wikilink")，搭載[DDR3顯示記憶體](https://zh.wikipedia.org/wiki/DDR3 "wikilink")。其後發布的GeForce
830M、840M使用規格較低，但基於Maxwell架構的GM108顯示核心。GeForce GTX 850M以及GTX
860M後來推出的批次，採用GM107顯示核心。GeForce GTX
860M早期版本、870M以及880M均使用GK104核心，但各型號的核心配置不一。

## 晶片規格

GeForce 800系列本代僅供筆記型電腦使用，而同架構的桌上型電腦用圖形處理器產品，則為GeForce 900系列以及GeForce GTX
750/750Ti。

  - <sup>1</sup>
    [統一渲染器/流處理器數量](https://zh.wikipedia.org/wiki/統一渲染架構 "wikilink")
    : [紋理映射單元數量](https://zh.wikipedia.org/wiki/紋理映射單元 "wikilink") :
    [渲染輸出單元數量](https://zh.wikipedia.org/wiki/渲染輸出單元 "wikilink")
  - <sup>2</sup>
    畫素填充率的估算：ROP的數量乘以基準核心[時脈速率](https://zh.wikipedia.org/wiki/時脈 "wikilink")（時脈單位Hz），單位畫素數每秒（P/s）
  - <sup>3</sup> 紋理填充率的估算：TMU的數量乘以基準核心時脈速率（時脈單位Hz），單位紋理數每秒（T/s）
  - <sup>4</sup> 全系列可支援Direct3D 12，但功能層級會是更低的Feture Level 11_0
  - <sup>5</sup>
    單精度浮點數處理效能的估算，由著色器時脈乘以CUDA核心/流處理器數量和每時鐘週期CUDA核心/流處理器指令數；雙精度浮點數處理效能的估算：核心代號「GMxxx」的為單精度浮點數的1/32，核心代號「GKxxx」的為單精度浮點數的1/24
  - <sup>6</sup> 時脈資料與實際使用的可能有差別，核心代號「GFxxx」的核心時脈分為兩部分：CUDA核心時脈/著色器時脈

<table>
<thead>
<tr class="header">
<th><p>型號</p></th>
<th><p>推出年分</p></th>
<th><p>晶片代號</p></th>
<th><p>製程<br />
(<a href="https://zh.wikipedia.org/wiki/奈米" title="wikilink">奈米</a>)</p></th>
<th><p>電晶體數<br />
(百萬個)</p></th>
<th><p>晶粒面積<br />
(平方毫米)</p></th>
<th><p>匯流排介面</p></th>
<th><p>核心配置<br />
<sup>SPs:TMUs:ROPs<sub>1</sub></sup></p></th>
<th><p>時脈配置</p></th>
<th><p>填充率</p></th>
<th><p>顯示記憶體配置</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/應用程式介面" title="wikilink">API支援</a>（版本）<sup>4</sup></p></th>
<th><p>運算效能<br />
（GFLOPS）</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/熱設計功耗" title="wikilink">熱設計功耗</a><br />
(W)</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>預設<br />
(<a href="https://zh.wikipedia.org/wiki/Hertz" title="wikilink">MHz</a>)<sup>6</sup></p></td>
<td><p>加速<br />
(<a href="https://zh.wikipedia.org/wiki/Hertz" title="wikilink">MHz</a>)</p></td>
<td><p>記憶體<br />
(<a href="https://zh.wikipedia.org/wiki/Transfer_(computing)" title="wikilink">MT/s</a>)</p></td>
<td><p>像素<br />
(<a href="https://zh.wikipedia.org/wiki/Pixel" title="wikilink">GP</a>/s)<sup>2</sup></p></td>
<td><p>材質<br />
(<a href="https://zh.wikipedia.org/wiki/Texel_(graphics)" title="wikilink">GT</a>/s)<sup>3</sup></p></td>
<td><p>容量<br />
(<a href="https://zh.wikipedia.org/wiki/MiB" title="wikilink">MiB</a>)</p></td>
<td><p>匯流排類型</p></td>
<td><p>匯流排寬度<br />
(<a href="../Page/位元.md" title="wikilink">位元</a>)</p></td>
<td><p>頻寬<br />
(<a href="https://zh.wikipedia.org/wiki/Gigabyte" title="wikilink">GB</a>/s)</p></td>
<td><p><a href="../Page/DirectX.md" title="wikilink">DirectX</a></p></td>
<td><p><a href="../Page/OpenGL.md" title="wikilink">OpenGL</a></p></td>
<td><p><a href="../Page/OpenCL.md" title="wikilink">OpenCL</a></p></td>
<td><p><a href="../Page/Vulkan_(API).md" title="wikilink">Vulkan</a></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/單精度浮點數" title="wikilink">單精度浮點數</a><sup>5</sup></p></td>
</tr>
<tr class="even">
<td><p>GeForce 800M[30][31]</p></td>
<td><p>2014年3月17日</p></td>
<td><p>GF117</p></td>
<td><p>28</p></td>
<td><p>585</p></td>
<td><p>116</p></td>
<td><p>PCIe 2.0 x8</p></td>
<td><p>48:8:8<br />
（1 SM）</p></td>
<td><p>738/1476</p></td>
<td><p>N/A</p></td>
<td><p>1800</p></td>
<td><p>1.476</p></td>
<td><p>5.9</p></td>
<td><p>2048</p></td>
</tr>
<tr class="odd">
<td><p>GeForce 810M (GF117)[32]</p></td>
<td><p>2014年3月24日</p></td>
<td><p>GF117</p></td>
<td><p>28</p></td>
<td><p>585</p></td>
<td><p>116</p></td>
<td><p>PCIe 2.0 x16</p></td>
<td><p>48:8:8<br />
(1 SM)</p></td>
<td><p>738/1476</p></td>
<td><p>N/A</p></td>
<td><p>1800</p></td>
<td><p>1.576</p></td>
<td><p>5.9</p></td>
<td><p>1024<br />
2048</p></td>
</tr>
<tr class="even">
<td><p>GeForce 810M (GK107)[33]</p></td>
<td><p>2015年3月21日</p></td>
<td><p>GK107</p></td>
<td><p>28</p></td>
<td><p>1270</p></td>
<td><p>118</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>384:32:16<br />
(2 SMX)</p></td>
<td><p>810</p></td>
<td><p>未知</p></td>
<td><p>1800</p></td>
<td><p>6.48</p></td>
<td><p>25.92</p></td>
<td><p>1024<br />
2048</p></td>
</tr>
<tr class="odd">
<td><p>GeForce 820M (GF117)[34][35]</p></td>
<td><p>2013年11月27日</p></td>
<td><p>GF117</p></td>
<td><p>28</p></td>
<td><p>585</p></td>
<td><p>116</p></td>
<td><p>PCIe 2.0 x16</p></td>
<td><p>96:16:4<br />
(2 SM)</p></td>
<td><p>625/1250～775/1550</p></td>
<td><p>N/A</p></td>
<td><p>1800</p></td>
<td><p>2.5～3.1</p></td>
<td><p>10～12.4</p></td>
<td><p>1024<br />
2048</p></td>
</tr>
<tr class="even">
<td><p>GeForce 820M (GK107)[36]</p></td>
<td><p>2015年3月21日</p></td>
<td><p>GK107</p></td>
<td><p>28</p></td>
<td><p>1270</p></td>
<td><p>118</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>384:32:16<br />
(2 SMX)</p></td>
<td><p>810</p></td>
<td><p>未知</p></td>
<td><p>1800</p></td>
<td><p>6.48</p></td>
<td><p>25.92</p></td>
<td><p>1024<br />
2048</p></td>
</tr>
<tr class="odd">
<td><p>GeForce 825M[37]</p></td>
<td><p>2014年3月12日</p></td>
<td><p>GK208</p></td>
<td><p>28</p></td>
<td></td>
<td><p>87</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>384:32:16<br />
(2 SMX)</p></td>
<td><p>850</p></td>
<td></td>
<td><p>1800</p></td>
<td><p>6.8</p></td>
<td><p>27.20</p></td>
<td><p>1024<br />
2048</p></td>
</tr>
<tr class="even">
<td><p>GeForce 830M[38]</p></td>
<td><p>2014年3月12日</p></td>
<td><p>GM108</p></td>
<td><p>28</p></td>
<td></td>
<td></td>
<td><p>PCIe 3.0/2.0 x16</p></td>
<td><p>256:16:8<br />
(2 SMM)</p></td>
<td><p>1082</p></td>
<td><p>1150</p></td>
<td><p>1800</p></td>
<td><p>8.66</p></td>
<td><p>17.31</p></td>
<td><p>2048</p></td>
</tr>
<tr class="odd">
<td><p>GeForce 840M [39]</p></td>
<td><p>2014年3月12日</p></td>
<td><p>GM108</p></td>
<td><p>28</p></td>
<td></td>
<td></td>
<td><p>PCIe 3.0/2.0 x16</p></td>
<td><p>384:24:8<br />
(3 SMM)</p></td>
<td><p>1029</p></td>
<td><p>1124</p></td>
<td><p>2000</p></td>
<td><p>8.2</p></td>
<td><p>24.7</p></td>
<td><p>1024<br />
2048</p></td>
</tr>
<tr class="even">
<td><p>GeForce 845M (GM107)[40]</p></td>
<td><p>2015年2月7日</p></td>
<td><p>GM107</p></td>
<td><p>28</p></td>
<td><p>1870</p></td>
<td><p>148</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>512:32:16<br />
(4 SMM)</p></td>
<td><p>863</p></td>
<td></td>
<td><p>2000</p></td>
<td><p>13.81</p></td>
<td><p>27.62</p></td>
<td><p>1024<br />
2048</p></td>
</tr>
<tr class="odd">
<td><p>GeForce 845M (GM108)[41]</p></td>
<td><p>2015年8月26日</p></td>
<td><p>GM108</p></td>
<td><p>28</p></td>
<td></td>
<td></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>384:24:8<br />
(3 SMM)</p></td>
<td><p>1071</p></td>
<td><p>1176</p></td>
<td><p>5000</p></td>
<td><p>17.14</p></td>
<td><p>34.3</p></td>
<td><p>1024<br />
2048</p></td>
</tr>
<tr class="even">
<td><p>GeForce GTX 850M[42]</p></td>
<td><p>2014年3月14日</p></td>
<td><p>GM107</p></td>
<td><p>28</p></td>
<td><p>1870</p></td>
<td><p>148</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>640:40:16<br />
(5 SMM)</p></td>
<td><p>936</p></td>
<td></td>
<td><p>5000</p></td>
<td><p>14.4</p></td>
<td><p>36.1</p></td>
<td><p>2048</p></td>
</tr>
<tr class="odd">
<td><p>GeForce GTX 860M (GK104)[43][44]</p></td>
<td><p>2014年3月10日</p></td>
<td><p>GK104</p></td>
<td><p>28</p></td>
<td><p>3540</p></td>
<td><p>294</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>1152:96:16<br />
(6 SMX)</p></td>
<td><p>797</p></td>
<td><p>915</p></td>
<td><p>5000</p></td>
<td><p>19.13</p></td>
<td><p>76.5</p></td>
<td><p>2048</p></td>
</tr>
<tr class="even">
<td><p>GeForce GTX 860M (GM107)[45][46]</p></td>
<td><p>2015年2月5日</p></td>
<td><p>GM107</p></td>
<td><p>28</p></td>
<td><p>1870</p></td>
<td><p>148</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>640:40:16<br />
(5 SMM)</p></td>
<td><p>1020</p></td>
<td><p>1085</p></td>
<td><p>5000</p></td>
<td><p>16.32</p></td>
<td><p>41.2</p></td>
<td><p>2048</p></td>
</tr>
<tr class="odd">
<td><p>GeForce GTX 870M[47]</p></td>
<td><p>2014年3月12日</p></td>
<td><p>GK104</p></td>
<td><p>28</p></td>
<td><p>3540</p></td>
<td><p>294</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>1344:112:32<br />
(7 SMX)</p></td>
<td><p>941</p></td>
<td><p>967</p></td>
<td><p>5000</p></td>
<td><p>30.1</p></td>
<td><p>105.4</p></td>
<td><p>3072</p></td>
</tr>
<tr class="even">
<td><p>GeForce GTX 880M[48]</p></td>
<td><p>2014年3月12日</p></td>
<td><p>GK104</p></td>
<td><p>28</p></td>
<td><p>3540</p></td>
<td><p>294</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>1536:128:32<br />
(8 SMX)</p></td>
<td><p>954</p></td>
<td><p>993</p></td>
<td><p>5000</p></td>
<td><p>30.53</p></td>
<td><p>122.1</p></td>
<td><p>4096<br />
8192</p></td>
</tr>
<tr class="odd">
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
<td></td>
<td></td>
</tr>
</tbody>
</table>

## 參見

  - [Project Denver](../Page/Project_Denver.md "wikilink")

## 參考資料

## 外部連結

  - [Nvidia
    Nsight](http://developer.nvidia.com/nvidia-nsight-visual-studio-edition)

[Category:英伟达](https://zh.wikipedia.org/wiki/Category:英伟达 "wikilink")

1.

2.

3.  [Details on Nvidia's GeForce GTX 750 Ti, GTX 750 cards
    leak](http://www.techspot.com/news/55592-details-on-nvidias-geforce-gtx-750-ti-gtx-750-cards-leak.html)
    - techspot.com

4.  [GTX750Ti、GTX750长这样：规格也定了](http://news.mydrivers.com/1/291/291821.htm)
    - mydrivers.com

5.  [新Maxwell显卡GTX750
    Ti居然开放预定](http://www.inpai.com.cn/doc/hard/203981.htm)
    - inpai.com

6.

7.

8.  [Nvidia Maxwell to be first GPU with ARM CPU
    in 2013](http://www.guru3d.com/news/nvidia-maxwell-to-be-first-gpu-with-arm-cpu-in-2013/),
    Guru3d.com

9.

10. [Nvidia Maxwell Graphics Processors to Have Integrated ARM
    General-Purpose
    Cores.](http://www.xbitlabs.com/news/cpu/display/20110119204601_Nvidia_Maxwell_Graphics_Processors_to_Have_Integrated_ARM_General_Purpose_Cores.html)
    , [xbitlabs.com](http://xbitlabs.com)

11. [Nvidia: Next-Generation Maxwell Architecture Will Break New
    Grounds..](http://www.xbitlabs.com/news/graphics/display/20130412175120_Nvidia_Next_Generation_Maxwell_Architecture_Will_Break_New_Grounds.html)
    , [xbitlabs.com](http://xbitlabs.com)

12. [NVIDIA reveals upcoming GPU
    architectures.](http://hexus.net/tech/news/graphics/26552-nvidia-reveals-upcoming-gpu-architectures/),
    [hexus.net](http://hexus.net)

13. <http://videocardz.com/45403/nvidia-to-launch-more-cards-this-year-maxwell-in-q1-2014>

14.
15.
16.
17.
18.
19.
20.
21. <http://blogs.nvidia.com/blog/2014/03/20/directx-12/>

22.

23. <http://blogs.nvidia.com/blog/2014/03/25/gpu-roadmap-pascal/>

24.

25. <http://blogs.nvidia.com/blog/2013/03/19/nvidia-ceo-updates-nvidias-roadmap/>

26. <http://blogs.nvidia.com/blog/2014/03/25/gpu-roadmap-pascal/>

27.

28.
29. [GeForce 820M | Specifications |
    GeForce](http://www.geforce.com/hardware/notebook-gpus/geforce-820m/specifications)

30. [GeForce 800M | Specifications |
    GeForce](http://www.geforce.com/hardware/notebook-gpus/geforce-800m/specifications)

31. [GeForce 800M | Specifications |
    techpowerup.com](http://www.techpowerup.com/gpudb/2567/geforce-800m)

32. [GeForce 810M | Specifications |
    techpowerup.com](http://www.techpowerup.com/gpudb/2774/geforce-810m)

33. [GeForce 810M | Specifications |
    techpowerup.com](http://www.techpowerup.com/gpudb/2584/geforce-810m)

34. [GeForce 820M | Specifications |
    GeForce](http://www.geforce.com/hardware/notebook-gpus/geforce-820m/specifications)

35. [GeForce 820M | Specifications |
    techpowerup.com](http://www.techpowerup.com/gpudb/2524/geforce-820m)

36. [GeForce 820M | Specifications |
    techpowerup.com](http://www.techpowerup.com/gpudb/2701/geforce-820m)

37. [GeForce 825M | Specifications |
    techpowerup.com](http://www.techpowerup.com/gpudb/2547/geforce-825m)

38. [GeForce 830M | Specifications |
    GeForce](http://www.geforce.com/hardware/notebook-gpus/geforce-830m/specifications)

39. [GeForce 840M | Specifications |
    GeForce](http://www.geforce.com/hardware/notebook-gpus/geforce-840m/specifications)

40. [GeForce 845M | Specifications |
    techpowerup.com](http://www.techpowerup.com/gpudb/2660/geforce-845m)

41. [GeForce 845M | Specifications |
    techpowerup.com](http://www.techpowerup.com/gpudb/2753/geforce-845m)

42. [GeForce GTX 850M | Specifications |
    GeForce](http://www.geforce.com/hardware/notebook-gpus/geforce-gtx-850m/specifications)

43. [GeForce GTX 860M | Specifications |
    GeForce](http://www.geforce.com/hardware/notebook-gpus/geforce-gtx-860m/specifications)

44. [GeForce GTX 860M | Specifications |
    techpowerup.com](http://www.techpowerup.com/gpudb/2537/geforce-gtx-860m)

45.
46. [GeForce GTX 860M | Specifications |
    techpowerup.com](http://www.techpowerup.com/gpudb/2659/geforce-gtx-860m-oem)

47. [GeForce GTX 870M | Specifications |
    GeForce](http://www.geforce.com/hardware/notebook-gpus/geforce-gtx-870m/specifications)

48. [GeForce GTX 880M | Specifications |
    GeForce](http://www.geforce.com/hardware/notebook-gpus/geforce-gtx-880m/specifications)