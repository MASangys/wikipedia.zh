**AMD Radeon 400系列**顯示核心，是[AMD所推出的](https://zh.wikipedia.org/wiki/AMD "wikilink")[圖形處理器](../Page/圖形處理器.md "wikilink")系列，開發代號為「Polaris」，以三星14nm [FinFET製程](../Page/多閘極電晶體.md "wikilink")（由[格羅方德代工](https://zh.wikipedia.org/wiki/格羅方德 "wikilink")）\[1\]，仍基於[GCN架構改造而來](https://zh.wikipedia.org/wiki/GCN架構 "wikilink")，仍繼續採用[GDDR5](../Page/GDDR5.md "wikilink")顯示記憶體。AMD已於2016年中的台北國際電腦展上發表核心代號為「Polaris 10」的首款顯卡 Radeon RX 480，作為主流級應用，這是AMD自[Radeon HD 4000系列以來再次首先發布中高階級別的GPU](https://zh.wikipedia.org/wiki/Radeon_HD_4000 "wikilink")。競爭對手為NVIDIA的[GeForce 10系列](https://zh.wikipedia.org/wiki/GeForce_10系列 "wikilink")。開發代號為「Vega」的GPU預估將搭載HBM2顯示記憶體，並以Radeon 500系列之頂級型號面市。\[2\]

## 命名

AMD從此代GPU開始又進行了一次商品名的調整。原來「Radeon Rv xyz(X)」（此處的v代表2\~9，代表效能級別；x代表產品世代；y代表效能等級；z一般為0、5或0後面帶後綴X）的命名方式將變更為「Radeon (RX) xyz」：「RX」的名號只會用於單精度浮點數運算能力超過1.5 TFLOP、記憶體頻寬超過100 GB/s、能在熱門遊戲（像是Dota 2、英雄聯盟等）達成60FPS@1080p的GPU產品，x依舊代表產品世代，y仍代表效能級別，z一般為0或5，不過不再帶有X後綴。\[3\]

不過這次命名調整上，對y和z的具體定義與上代有區別：\[4\]

  - y數值達到9，代表擁有至少 30FPS @ [4K](https://zh.wikipedia.org/wiki/4K "wikilink") 的遊戲顯示能力，具備大於256位元的[顯示記憶體匯流排寬度](https://zh.wikipedia.org/wiki/顯示記憶體 "wikilink")
  - y數值達到7、8，代表擁有至少 30FPS @ 1440p/2K 的遊戲顯示能力，具備256位元的顯示記憶體[匯流排寬度](https://zh.wikipedia.org/wiki/匯流排 "wikilink")
  - y數值達到5、6，並附帶「RX」前綴的，代表擁有至少 60FPS @ [1080p](../Page/1080p.md "wikilink") 的遊戲顯示能力，具備128位元的顯示記憶體匯流排寬度
  - y數值達到5、6，不帶「RX」前綴的，代表擁有至少 30FPS @ 1080p 的遊戲顯示能力，具備128位元的顯示記憶體匯流排寬度。此段較為容易引起命名混亂
  - y數值不到5的，代表具備小於128位元的顯示記憶體匯流排寬度
  - z數值為0代表的是第一版，為5的則代表改進版

## 新功能特性

本代是GCN顯示核心架構的第4個版本。本次架構修訂中，更換了新的硬體排程器、改進CU的執行效率、顯示信號輸出單元（支援[DisplayPort](../Page/DisplayPort.md "wikilink") 1.4 HBR、[HDMI 2.0b](https://zh.wikipedia.org/wiki/HDMI#Version_2.0 "wikilink")、[HDR10色域](https://zh.wikipedia.org/wiki/HDR10 "wikilink")）、新版UVD等等。其中新版UVD的加入使本系列GPU擁有[HEVC影片硬體加速能力](https://zh.wikipedia.org/wiki/HEVC "wikilink")，最高支援到 60FPS @ 4K解析度並且每個顏色通道擁有10位元的顏色深度。\[5\]\[6\]早期的資料顯示這個UVD也可對VP9格式進行硬體加速，不過在驅動程式中並沒有該功能的介面可供使用。\[7\]而在2016年12月中，AMD發表了16.12.1版驅動程式，由此GCN架構的GPU全部開放[4K解析度](../Page/4K解析度.md "wikilink")的[VP9](../Page/VP9.md "wikilink")解碼硬體加速（支援杜比系統、HDR 10），此外，還新增了Relive遊戲內視訊編碼功能，支援遊戲直播以及遊戲視訊錄製。\[8\]\[9\]在17版深紅驅動程式以後，支援[雙聯結DVI-D和DVI-I輸出最高](../Page/DVI.md "wikilink") 4096 × 2304 的解析度。

## 產品

Radeon 400系列的首發產品，是為M400系列，為移動型顯示卡\[10\]，已確認為舊有產品的重新命名。真正為新版晶片的產品，是2016年6月1日，在[台北国际电脑展览会發表該顯示核心的首款產品](https://zh.wikipedia.org/wiki/台北国际电脑展览会 "wikilink") Radeon RX 480 以及隨後發表的 Radeon RX 470/470D/460，470D僅在中國大陸市場發售。緊接著 RX 480 首發的是採用舊有命名規則的OEM產品，均為舊版本顯示核心。

### 「Polaris 10」系列

首發的「Polaris 10」用來取代 Radeon R9 300系列的「Tonga」核心，其完整規格擁有 2,304 個ALU/流處理器，共36組CU，每組CU均經過改進設計，單一CU的效能同時脈下比上一代的更高。\[11\]\[12\]\[13\]支援256位元[匯流排寬度的](https://zh.wikipedia.org/wiki/匯流排 "wikilink")[GDDR5](../Page/GDDR5.md "wikilink")顯示記憶體，容量最高可達8GiB。[熱設計功耗在](https://zh.wikipedia.org/wiki/熱設計功耗 "wikilink")100～150W之間。\[14\]Radeon RX 480有4 GiB和8 GiB兩種顯示記憶體容量規格，均定位中高階遊戲市場（以1440p的解析度、60fps的刷新率運行當時當時最新的DirectX 12遊戲），競爭對手是NVIDIA的[GTX 1060 6G/3G](https://zh.wikipedia.org/wiki/GeForce_10系列 "wikilink")。\[15\]除了桌上型電腦以外，一些遊戲筆電也會安裝桌機規格（時脈除外）的Radeon RX 480/470。\[16\]

不過，公版Radeon RX 480一開始存在會從PCIe插槽取得超標的電功率的情況，公版RX480在16.6.2版驅動程式下有媒體測試中從PCIe +12V供電線路中取得的電功率高達92W，超出PCI-SIG標準40%之巨，長期使用會損壞主機板的供電電路，特別是一些節省成本的主機板設計，已經有一些RX480的用家出現了主機板PCIe供電燒毀的事件發生。針對此缺陷，AMD不久就發布了新版本（16.7.1）的驅動程式對此問題予以修復，對於出現主機板燒毀事故的用家也有相關賠償案例。\[17\]\[18\]\[19\]不過，和對手NVIDIA的GTX 1060一樣，非公版顯示卡全數提高了外掛供電的規格以避免此問題（由單6針的外掛PCIe供電改為功率容量更高的單8針的，甚至有雙6針的設計）。\[20\]\[21\]

2017版Readon Pro DUO採用了兩顆完整版「Polaris 10」核心，取代原有採用「Fiji」核心的2015版Radeon Pro DUO。\[22\]Radeon Pro WX 7100的硬體規格與Radeon RX 480相同；\[23\]Radeon Pro WX 5100則是與 Radeon RX 470D類似。\[24\]

### 「Polaris 11」系列

「Polaris 11」系列是「Polaris 10」的原生縮減版本，用來取代Radeon R9 370/270系列「Curacao」核心，完整規格擁有 1,024 個ALU/流處理器，共16組CU，配備128位元匯流排寬度的GDDR5顯示記憶體，最高支援4GiB的顯示記憶體容量。熱設計功耗小於75瓦\[25\]\[26\]不過，該顯示核心的首款產品 Radeon RX 460 卻並不是使用完整規格的「Polaris 10」，僅有14組CU，896個流處理器，本產品面向中低階遊戲市場。\[27\]另外有數款遊戲筆電使用 RX 460。\[28\]

Radeon Pro 460/455/450/WX 4100，是基於「Polaris 11」核心的專業繪圖卡，其中Radeon Pro 460/WX 4100使用的是完整版的Polaris 11核心。不過Radeon Pro 460僅蘋果MacBook Pro 2016款使用，由於時脈較低，實際遊戲效能不如 RX 460。\[29\]Radeon Pro WX 4100則是用於桌上型電腦/工作站上。\[30\]

## 顯示核心列表

### 桌上型顯示核心

<table>
<thead>
<tr class="header">
<th><p>型號</p></th>
<th><p>推出日期</p></th>
<th><p>核心代號<br />
&amp;<br />
版本代號</p></th>
<th><p>製程<br />
(<a href="https://zh.wikipedia.org/wiki/奈米" title="wikilink">奈米</a>)</p></th>
<th><p>電晶體數<br />
&amp;<br />
晶粒面積</p></th>
<th><p>匯流排<br />
介面</p></th>
<th><p>核心配置<br />
<sup>SPs:TMUs:ROPs</sup></p></th>
<th><p>時脈配置</p></th>
<th><p>填充率</p></th>
<th><p>顯示記憶體配置</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/應用程式介面" title="wikilink">API支援</a>（版本）</p></th>
<th><p>運算效能<br />
（GFLOPS）</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/熱設計功耗" title="wikilink">TDP</a><br />
(W)</p></th>
<th><p>發售價格<br />
</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>預設<br />
(<a href="https://zh.wikipedia.org/wiki/Hertz" title="wikilink">MHz</a>)</p></td>
<td><p>加速<br />
(<a href="https://zh.wikipedia.org/wiki/Hertz" title="wikilink">MHz</a>)</p></td>
<td><p>記憶體<br />
(<a href="https://zh.wikipedia.org/wiki/Transfer_(computing)" title="wikilink">MT/s</a>)</p></td>
<td><p>像素<br />
(<a href="https://zh.wikipedia.org/wiki/Pixel" title="wikilink">GP</a>/s)</p></td>
<td><p>材質<br />
(<a href="https://zh.wikipedia.org/wiki/Texel_(graphics)" title="wikilink">GT</a>/s)</p></td>
<td><p>容量<br />
(<a href="https://zh.wikipedia.org/wiki/MiB" title="wikilink">MiB</a>)</p></td>
<td><p>匯流排<br />
類型</p></td>
<td><p>匯流排<br />
寬度<br />
(<a href="../Page/位元.md" title="wikilink">位元</a>)</p></td>
<td><p>頻寬<br />
(<a href="https://zh.wikipedia.org/wiki/Gigabyte" title="wikilink">GB</a>/s)</p></td>
<td><p><a href="../Page/DirectX.md" title="wikilink">DirectX</a></p></td>
<td><p><a href="../Page/OpenGL.md" title="wikilink">OpenGL</a></p></td>
<td><p><a href="../Page/OpenCL.md" title="wikilink">OpenCL</a></p></td>
<td><p><a href="../Page/Vulkan_(API).md" title="wikilink">Vulkan</a></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/半精度浮點數" title="wikilink">半精度<br />
浮點數</a></p></td>
</tr>
<tr class="even">
<td><p>| Radeon R5 430</p></td>
<td></td>
<td><p>Oland Pro</p></td>
<td><p>28</p></td>
<td><p>10.4億<br />
90 <a href="https://zh.wikipedia.org/wiki/平方毫米" title="wikilink">mm<sup>2</sup></a></p></td>
<td><p>PCIe 3.0<br />
×8</p></td>
<td><p>384:24:8</p></td>
<td><p>730</p></td>
<td><p>780</p></td>
<td><p>1800<br />
4500</p></td>
<td><p>5.84</p></td>
<td><p>17.52</p></td>
<td><p>1024<br />
2048</p></td>
<td><p>DDR3<br />
GDDR5</p></td>
</tr>
<tr class="odd">
<td><p>| Radeon R5 435</p></td>
<td><p>Oland</p></td>
<td><p>384:24:8</p></td>
<td><p>1030</p></td>
<td><p>-</p></td>
<td><p>2000</p></td>
<td><p>8.24</p></td>
<td><p>20.6</p></td>
<td><p>2048</p></td>
<td><p>DDR3</p></td>
<td><p>64</p></td>
<td><p>16</p></td>
<td><p>659</p></td>
<td><p>659</p></td>
</tr>
<tr class="even">
<td><p>| Radeon R7 430</p></td>
<td><p>Oland Pro</p></td>
<td><p>384:24:8</p></td>
<td><p>730</p></td>
<td><p>780</p></td>
<td><p>1800<br />
4500</p></td>
<td><p>5.84</p></td>
<td><p>17.52</p></td>
<td><p>1024<br />
2048<br />
4096</p></td>
<td><p>DDR3<br />
GDDR5</p></td>
<td><p>128</p></td>
<td><p>28.8<br />
72</p></td>
<td><p>560</p></td>
<td><p>560</p></td>
</tr>
<tr class="odd">
<td><p>| Radeon R7 435</p></td>
<td><p>Oland</p></td>
<td><p>384:24:8</p></td>
<td><p>920</p></td>
<td><p>-</p></td>
<td><p>2000</p></td>
<td><p>7.36</p></td>
<td><p>18.4</p></td>
<td><p>2048</p></td>
<td><p>DDR3</p></td>
<td><p>64</p></td>
<td><p>16</p></td>
<td><p>589</p></td>
<td><p>589</p></td>
</tr>
<tr class="even">
<td><p>| Radeon R7 450</p></td>
<td><p>Cape Verde Pro</p></td>
<td><p>15億<br />
123 mm<sup>2</sup></p></td>
<td><p>PCIe 3.0<br />
×16</p></td>
<td><p>512:32:16</p></td>
<td><p>1050</p></td>
<td><p>-</p></td>
<td><p>4500</p></td>
<td><p>16.8</p></td>
<td><p>33.6</p></td>
<td><p>2048</p></td>
<td><p>GDDR5</p></td>
<td><p>128</p></td>
<td><p>72</p></td>
</tr>
<tr class="odd">
<td><p>| Radeon R7 455</p></td>
<td><p>Bonaire Pro</p></td>
<td><p>20.8億<br />
160 mm<sup>2</sup></p></td>
<td><p>768:48:16</p></td>
<td><p>1050</p></td>
<td><p>-</p></td>
<td><p>6500</p></td>
<td><p>16.8</p></td>
<td><p>50.4</p></td>
<td><p>2048</p></td>
<td><p>GDDR5</p></td>
<td><p>128</p></td>
<td><p>104</p></td>
<td><p>12.0 (12_0)</p></td>
</tr>
<tr class="even">
<td><p>| Radeon RX 460</p></td>
<td></td>
<td><p>Polaris 11<br />
Baffin Pro</p></td>
<td><p>14</p></td>
<td><p>30億<br />
123 mm<sup>2</sup></p></td>
<td><p>PCIe 3.0<br />
×8</p></td>
<td><p>896:56:16</p></td>
<td><p>1090</p></td>
<td><p>1200</p></td>
<td><p>7000</p></td>
<td><p>17.4</p></td>
<td><p>61</p></td>
<td><p>2048<br />
4096</p></td>
<td><p>GDDR5</p></td>
</tr>
<tr class="odd">
<td><p>| Radeon RX 470D</p></td>
<td><p><br />
僅中國大陸</p></td>
<td><p>Polaris 10<br />
Ellesmere</p></td>
<td><p>57億<br />
232 mm<sup>2</sup></p></td>
<td><p>PCIe 3.0<br />
×16</p></td>
<td><p>1792:112:32</p></td>
<td><p>926</p></td>
<td><p>1206</p></td>
<td><p>7000</p></td>
<td><p>29.6</p></td>
<td><p>103.7</p></td>
<td><p>4096</p></td>
<td><p>GDDR5</p></td>
<td><p>256</p></td>
</tr>
<tr class="even">
<td><p>| Radeon RX 470</p></td>
<td></td>
<td><p>Polaris 10<br />
Ellesmere Pro</p></td>
<td><p>2048:128:32</p></td>
<td><p>926</p></td>
<td><p>1206</p></td>
<td><p>6600</p></td>
<td><p>29.6</p></td>
<td><p>118.5</p></td>
<td><p>4096<br />
8192</p></td>
<td><p>GDDR5</p></td>
<td><p>256</p></td>
<td><p>211</p></td>
<td><p>3793</p></td>
</tr>
<tr class="odd">
<td><p>| Radeon RX 480</p></td>
<td></td>
<td><p>Polaris 10<br />
Ellesmere XT</p></td>
<td><p>2304:144:32</p></td>
<td><p>1120</p></td>
<td><p>1266</p></td>
<td><p>7000<br />
8000</p></td>
<td><p>35.8</p></td>
<td><p>161.3</p></td>
<td><p>4096<br />
8192</p></td>
<td><p>GDDR5</p></td>
<td><p>256</p></td>
<td><p>224<br />
256</p></td>
<td><p>5161</p></td>
</tr>
</tbody>
</table>

資料來源： \[31\] \[32\] \[33\] \[34\] \[35\] \[36\] \[37\] \[38\] \[39\] \[40\] \[41\] \[42\] \[43\] \[44\] \[45\] \[46\] \[47\] \[48\]

### 移動端顯示核心

<table>
<thead>
<tr class="header">
<th><p>型號</p></th>
<th><p>推出日期</p></th>
<th><p>製程<br />
(<a href="https://zh.wikipedia.org/wiki/奈米" title="wikilink">奈米</a>)</p></th>
<th><p>核心配置<br />
<sup>SPs:TMUs:ROPs</sup></p></th>
<th><p>時脈配置</p></th>
<th><p>填充率</p></th>
<th><p>顯示記憶體配置</p></th>
<th><p>運算效能 (<a href="https://zh.wikipedia.org/wiki/GFLOPS" title="wikilink">GFLOPS</a>)</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/熱設計功耗" title="wikilink">TDP</a><br />
(<a href="https://zh.wikipedia.org/wiki/Watt" title="wikilink">W</a>，僅GPU)</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/應用程式介面" title="wikilink">API支援</a>（版本）</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>核心時脈 (<a href="https://zh.wikipedia.org/wiki/Hertz" title="wikilink">MHz</a>)<br />
(加速)</p></td>
<td><p>記憶體 (<a href="https://zh.wikipedia.org/wiki/Transfer_(computing)" title="wikilink">MT/s</a>)</p></td>
<td><p>材質 (<a href="https://zh.wikipedia.org/wiki/Texel_(graphics)" title="wikilink">GT</a>/s)<br />
(Boost)</p></td>
<td><p>像素 (<a href="https://zh.wikipedia.org/wiki/Pixel" title="wikilink">GP</a>/s)<br />
(Boost)</p></td>
<td><p>容量 (<a href="https://zh.wikipedia.org/wiki/Gibibyte" title="wikilink">GiB</a>)</p></td>
<td><p>匯流排<br />
類型</p></td>
<td><p>匯流排<br />
寬度<br />
(<a href="../Page/位元.md" title="wikilink">位元</a>)</p></td>
<td><p>頻寬<br />
(<a href="https://zh.wikipedia.org/wiki/Gigabyte" title="wikilink">GB</a>/s)</p></td>
<td><p><a href="../Page/Direct3D.md" title="wikilink">Direct3D</a></p></td>
<td><p><a href="../Page/OpenGL.md" title="wikilink">OpenGL</a><br />
<a href="../Page/OpenCL.md" title="wikilink">OpenCL</a></p></td>
</tr>
<tr class="even">
<td><p>class="table-rh" | Radeon<br />
R5 M420<br />
(Jet Pro)</p></td>
<td></td>
<td><p>28 nm</p></td>
<td><p>320:20:8</p></td>
<td><p>780<br />
(855)</p></td>
<td><p>1000</p></td>
<td><p>15.6<br />
(17.1)</p></td>
<td><p>6.24<br />
(6.84)</p></td>
<td><p>2</p></td>
<td><p>DDR3</p></td>
</tr>
<tr class="odd">
<td><p>class="table-rh" | Radeon<br />
R5 M430<br />
(Exo Pro)</p></td>
<td></td>
<td><p>320:20:8</p></td>
<td><p>1030<br />
(-)</p></td>
<td><p>1000</p></td>
<td><p>20.6</p></td>
<td><p>8.2</p></td>
<td><p>2</p></td>
<td><p>DDR3</p></td>
<td><p>64</p></td>
</tr>
<tr class="even">
<td><p>class="table-rh" | Radeon<br />
R7 M435<br />
(Jet Pro)</p></td>
<td></td>
<td><p>320:20:8</p></td>
<td><p>780<br />
(855)</p></td>
<td><p>1000</p></td>
<td><p>15.6<br />
(17.1)</p></td>
<td><p>6.24<br />
(6.84)</p></td>
<td><p>4</p></td>
<td><p>GDDR5</p></td>
<td><p>64</p></td>
</tr>
<tr class="odd">
<td><p>class="table-rh" | Radeon<br />
R7 M440<br />
(Meso Pro)</p></td>
<td></td>
<td><p>320:20:8</p></td>
<td><p>1021<br />
(-)</p></td>
<td><p>1000</p></td>
<td><p>20.4</p></td>
<td><p>8.17</p></td>
<td><p>4</p></td>
<td><p>DDR3</p></td>
<td><p>64</p></td>
</tr>
<tr class="even">
<td><p>class="table-rh" | Radeon<br />
R7 M445<br />
(Meso Pro)</p></td>
<td></td>
<td><p>320:20:8</p></td>
<td><p>780<br />
(920)</p></td>
<td><p>1000</p></td>
<td><p>15.6<br />
(18.4)</p></td>
<td><p>6.24<br />
(7.36)</p></td>
<td><p>4</p></td>
<td><p>GDDR5</p></td>
<td><p>64</p></td>
</tr>
<tr class="odd">
<td><p>class="table-rh" | Radeon<br />
R7 M460<br />
(Meso XT)</p></td>
<td></td>
<td><p>384:24:8</p></td>
<td><p>1100<br />
(1125)</p></td>
<td><p>900</p></td>
<td><p>26.4<br />
(27.0)</p></td>
<td><p>8.8<br />
(9.00)</p></td>
<td><p>2</p></td>
<td><p>DDR3</p></td>
<td><p>64</p></td>
</tr>
<tr class="even">
<td><p>class="table-rh" | Radeon<br />
R7 M465<br />
(Litho XT)</p></td>
<td></td>
<td><p>384:24:8</p></td>
<td></td>
<td><p>1150</p></td>
<td></td>
<td></td>
<td><p>4</p></td>
<td><p>GDDR5</p></td>
<td><p>64/128</p></td>
</tr>
<tr class="odd">
<td><p>class="table-rh" | Radeon<br />
R7 M465X<br />
(Tropo XT)</p></td>
<td></td>
<td><p>512:32:16</p></td>
<td></td>
<td><p>1125</p></td>
<td></td>
<td></td>
<td><p>4</p></td>
<td><p>GDDR5</p></td>
<td><p>128</p></td>
</tr>
<tr class="even">
<td><p>class="table-rh" | Radeon<br />
R9 M470<br />
(Strato Pro)</p></td>
<td></td>
<td><p>768:xx:16</p></td>
<td><p><br />
(1100)</p></td>
<td><p>1500</p></td>
<td></td>
<td></td>
<td><p>4</p></td>
<td><p>GDDR5</p></td>
<td><p>128</p></td>
</tr>
<tr class="odd">
<td><p>class="table-rh" | Radeon<br />
R9 M470X<br />
(Strato XT)</p></td>
<td></td>
<td><p>896:56:16</p></td>
<td><p><br />
(1100)</p></td>
<td><p>1500</p></td>
<td></td>
<td></td>
<td><p>4</p></td>
<td><p>GDDR5</p></td>
<td><p>128</p></td>
</tr>
<tr class="even">
<td><p>class="table-rh" | Radeon<br />
R9 M485X<br />
(Antigua XT)</p></td>
<td></td>
<td><p>2048:xx:xx</p></td>
<td></td>
<td><p>1250</p></td>
<td></td>
<td></td>
<td><p>8</p></td>
<td><p>GDDR5</p></td>
<td><p>256</p></td>
</tr>
</tbody>
</table>

資料來源： \[49\] \[50\] \[51\] \[52\] \[53\] \[54\] \[55\]

## 參考資料

## 外部連結

  - [VR Ready 之選 Radeon RX480 AMD 為普及推廣 VR 平台、定價 $199 美金](http://www.hkepc.com/14101/%E5%85%A5%E9%96%80_VR_Ready_%E4%B9%8B%E9%81%B8_Radeon_RX480_AMD_%E7%82%BA%E6%99%AE%E5%8F%8A%E6%8E%A8%E5%BB%A3_VR_%E5%B9%B3%E5%8F%B0%E5%AE%9A%E5%83%B9_%24199_%E7%BE%8E%E9%87%91入門)
  - [顯微鏡下的 AMD「Polaris」顯示核心](http://diy.pconline.com.cn/840/8401782.html)

## 另見

  - [AMD顯示核心列表](../Page/AMD顯示核心列表.md "wikilink")

[Category:AMD圖形處理器](https://zh.wikipedia.org/wiki/Category:AMD圖形處理器 "wikilink") [Category:顯示卡](https://zh.wikipedia.org/wiki/Category:顯示卡 "wikilink")

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
36.
37.
38.
39.
40.
41.  OEM {{\!}} AMD|website=www.amd.com|language=en-US|access-date=2017-04-18}}
42.
43.
44.  OEM {{\!}} AMD|website=www.amd.com|language=en-US|access-date=2017-04-18}}
45.
46.
47.
48.
49.
50.
51.
52.
53.
54.
55.