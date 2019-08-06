**NVIDIA GeForce 900系列**，是[輝達研發的](https://zh.wikipedia.org/wiki/輝達 "wikilink")[圖形處理器](../Page/圖形處理器.md "wikilink")產品系列，用於[桌上型電腦](../Page/桌上型電腦.md "wikilink")平台和[筆記型電腦](../Page/筆記型電腦.md "wikilink")平台。此代顯示核心將採用第二代Maxwell微架構（晶片代號將以『GM』開頭），以[蘇格蘭](../Page/蘇格蘭.md "wikilink")[理論物理學家](https://zh.wikipedia.org/wiki/理論物理學 "wikilink")[詹姆斯·克拉克·麦克斯韦](../Page/詹姆斯·克拉克·麦克斯韦.md "wikilink")的名字命名。NVIDIA宣佈新一代Maxwell核心的首發旗艦級產品將被命名為GeForce 900系列，分別為桌面平台的GTX 970、GTX 980、GTX 980 Ti、GTX TITAN X、GTX 950和GTX 960以及行動平台的GTX 960M GTX 970M和GTX 980M、GTX 980 Notebook。\[1\]\[2\]GeForce 800系列當前全為使用在[筆記型電腦](../Page/筆記型電腦.md "wikilink")[OEM市場上的移动式顯示核心](https://zh.wikipedia.org/wiki/OEM "wikilink")。

## 概觀

2010年9月NVIDIA宣布下一代顯示核心架構『Maxwell』。\[3\]首款基於『Maxwell』架構的消費級顯示核心的產品將於2014年早期發賣，是為[GeForce GTX 750/750 Ti](https://zh.wikipedia.org/wiki/GeForce_700系列 "wikilink")。\[4\]

第二代『Maxwell』介紹了幾種新技術： 動態超分辨力、第三代三角洲顏色壓縮和多圖元程式設計採樣、Nvidia VXGI(Real-Time-Voxel-Global Illumination) 和MFAA。\[5\]此外增加了HDMI 2.0支援。\[6\]

## 架構特性

GeForce GTX 980/970使用「GM204」核心，是Maxwell GPU架構的第二作。它们分别采用了GM204的兩個細分型號 GM204-400-A1 以及 GM204-200-A1 芯片，拥有52亿的晶体管规模，晶片面积为398平方毫米(此为NVIDIA公布数据)。由於有製造「GK110」這種大面積晶片的經驗，加上面向消費級遊戲應用市場而削減該領域中甚少使用的雙精度浮點數運算電路單元，使得GPU可以更專精於安放遊戲應用更常用的單精度浮點運算電路單元、紋理單元及渲染輸出單元。這些因素成了「GM204」晶片用於遊戲娛樂應用時，拥有卓越性能功耗比的重要因素之一。

与Kepler架构的GK110相比，儘管GM204架构的运算资源总量从2880个[ALU](https://zh.wikipedia.org/wiki/ALU "wikilink")（NVIDIA稱為CUDA核心）分别下降到了GeForce GTX 980的2048以及GeForce GTX 970的1664个，Texture Filter Unit则由240个下降到了128个以及104个，但构成后端的ROP在GM204当中被提升到了64个，更庞大的ROP阵列为GM204带来了理想的像素处理能力。

### 顯示記憶體

GeForce GTX 980/970均拥有4个64bit双通道显存控制器组合形成的256bit显存控制单元，也都采用了4096MB的尺寸的显存体系。

### SMM

新的SMM单元较之原先的SMX单元來了一次结构變動，在保留完整的几何前端的前提下，SMM陣列在内部将ALU团簇再次划分成了4个并行的独立子团簇SM，每个SM包含32个ALU，并且都拥有独立的Scheduler/Dispatch以及Register，每两组SM共享一组统一的Texture/L1 D\\$ cache，这与SMX单元192个ALU共享同一组Scheduler、Dispatch、L1 D\\$ cache以及Register形成了鲜明的对比，而且也进一步提升了每个ALU所能够获得的Register资源量。

### 支援API

GeForce 900系列目前支援OpenGL 4.5、DirectX 11.3以及OpenCL 1.2，未來可支援DirectX 12。\[7\]\[8\]\[9\]

## 產品介紹

### 桌上型平台

基於Maxwell架構的顯示核心GM204的首發產品是GeForce GTX 970和GTX 980，它們均於2014年9月19日發布。隨後還有GeForce GTX 960，該產品於2015年初發佈；之后還有2015年6月1日发布的GTX 980 TI以及8月20日发布的GTX 950。而頂級顯示核心GM200，被冠以GeForce GTX TITAN X的名號於2015年3月5日公布，除了TITAN X之外，其餘的顯示卡會有不同的廠商生產自製顯卡，還會有背板支撐。

押後發表的GeForce GTX 960、950還支援[HEVC/H.265硬體編碼](https://zh.wikipedia.org/wiki/H.265 "wikilink")，以前發表的型號則只支援HEVC/H.265硬體解碼。

  - **GeForce GTX TITAN X**\[10\] - 2015年3月GDC大會上NVIDIA公佈此顯示卡的消息，顯示核心代號「GM200」，首款產品是為GeForce GTX TITAN X。此顯示核心擁有80億個電晶體，搭配12GiB容量的顯示記憶體；\[11\]仍使用台積電28奈米製程；供電僅使用了6pin+8pin的輔助供電，功耗250瓦，而12GiB的顯示記憶體容量，則各佈置於顯示卡的正背兩面，外觀保留和TITAN系列的一貫風格但從銀色變成了啞光黑，相對於上一代的TITAN(Black、Z)以及GTX980而言沒有背板支撐和散熱。\[12\]\[13\]\[14\]另外，GTX TITAN X還將配備低溫散熱風扇停轉的功能。\[15\]

<!-- end list -->

  - **GeForce GTX 980 TI** - 2015年6月1日發售，核心代號與GTX TITAN X一樣是「GM200」、80億個[電晶體](https://zh.wikipedia.org/wiki/電晶體 "wikilink")、6GiB顯示記憶體，但一共只有2816個CUDA核心、192個紋理貼圖單元、96個輸出渲染單元，不過其餘的規格與熱設計功耗跟TITAN X大致相同，而且與GTX TITAN X相比效能也相差不多，其它的廠商會生廠自製顯卡，顯示時脈會比公板還要高，也會有背板支撐。

<!-- end list -->

  - **GeForce GTX 980**\[16\]和**GeForce GTX 970**\[17\] - 兩者均於2014年9月18日發售，核心代號均為「GM204」之顯示核心（內建52億個[電晶體](https://zh.wikipedia.org/wiki/電晶體 "wikilink")）以及4GiB、等效時脈7010MHz的GDDR5顯示記憶體。但GTX 980的GM204顯示核心是完整版的，共16組SMM陣列（一共2048個CUDA核心、128個紋理貼圖單元）、64個渲染輸出單元、2MiB二級[快取](https://zh.wikipedia.org/wiki/快取 "wikilink")，記憶體位寬為256位元，頻寬224GB/s；而GTX 970的GM204核心則相對完整的GTX 980而言刪減了3組SMM陣列（這裡共384個CUDA核心、24個紋理貼圖單元（TMU））以及8個輸出渲染單元（ROP）、二級快取也從2MiB縮減至1.75MiB，記憶體位寬為224位元+32位元的結構，頻寬192GB/s+28GB/s。

<!-- end list -->

  - **GeForce GTX 960**\[18\]以及**GeForce GTX 950**\[19\] - 前者2015年1月22日發售，核心代號「GM206」，內建有29.4億顆電晶體，完整規格，擁有8組SMM單元（共1024個CUDA核心、64個紋理貼圖單元）、32個輸出渲染單元（ROP），使用2GiB或4GiB容量、等效時脈7010MHz規格的GDDR5顯示記憶體，記憶體位寬128位元、[頻寬](https://zh.wikipedia.org/wiki/頻寬 "wikilink")112GB/s；除了核心時脈以外，規格上幾乎是「GM204」的一半，用作取代GeForce GTX 760及其衍生型號。而GTX 950則於2015年8月20日發售，核心代號與GTX 960的同為「GM206」，但比GTX 960的少了兩組SMM單元（而ROP單元數量維持不變），時脈參數也比GTX 960的來得低，是GeForce 900系列中階產品，用來取代750/750TI，只不過熱設計功耗進一步降低到90W，僅需要接一個6PIN外掛電源接頭；此款型号恢复了在650/650TI以及750/750TI中取消的SLI功能。

#### GeForce GTX 970規格參數爭議

GeForce GTX 970 的規格參數爭議主要在於[顯示記憶體](https://zh.wikipedia.org/wiki/顯示記憶體 "wikilink")、ROP單元、二級[快取的數量](https://zh.wikipedia.org/wiki/快取 "wikilink")/容量上實際產品與發布宣傳時公佈的不一致。其中，特別是顯示記憶體存取結構，因為沒詳細公佈出來，而導致用家在一些使用場合上觀察到顯示記憶體存取效能上有差異：GTX 970搭載了4[GiB容量的](https://zh.wikipedia.org/wiki/GiB "wikilink")[GDDR5](../Page/GDDR5.md "wikilink")顯示記憶體，而實際上只有3.5GiB的容量可以全速存取，越過了3.5GiB容量的界限以後的區塊幾乎沒有存取動作，儘管一般使用甚少會越過此界限，但使用這剩餘的0.5GiB容量的顯示記憶體存取效能明顯下降了。其後越來越多的效能測試以及調查結果，使輝達承認，GTX 970的顯示記憶體的使用超過3.5GiB容量界限以後效能下降的事實，並對此做出解釋道，顯示卡正式發售前沒有事先通知或公佈Maxwell架構的顯示核心更精細的核心單元遮蔽方式（這種遮蔽方式更有利於良品率和成本控制）。\[20\]\[21\]\[22\]\[23\]

顯示核心硬體後端的參數，最初輝達的發布會上顯示，GTX 970和GTX 980是一樣的。而實際上，970後端的ROP單元僅有56個而非980的64個，二級快取也僅有1.75MiB而非980的2[MiB](https://zh.wikipedia.org/wiki/MiB "wikilink")，這些後端單元數量/容量上的差異導致了970上的4GiB顯示記憶體定址與980的有差異，使得4GiB中的3.5GiB可供顯示核心全速存取，剩餘的0.5GiB區段的效能只有全速3.5GiB區段的1/7。\[24\] 儘管這一結果不影響此前幾乎所有的GTX 970效能測試結果，而輝達也對規格參數錯誤一事做出道歉並承諾下次會準確公佈各型號圖形處理器的參數，並在驅動程式的開發上對GTX 970的顯示記憶體使用作特別的最佳化，盡可能避免使用4GiB中最後512MiB的低速區段以減輕其性能衝擊。\[25\]然而輝達又改口稱，因內部的溝通不暢，此前發布供GeForce900系列使用的[驅動程式中實際已對GTX](https://zh.wikipedia.org/wiki/驅動程式 "wikilink") 970的顯示記憶體使用做過最佳化，不再需要特別對待。\[26\]而輝達的討論社區中也有工作人員稱會對欲退貨的GTX 970買家提供協助\[27\]\[28\]2015年2月26日，輝達的[CEO](https://zh.wikipedia.org/wiki/CEO "wikilink")[黃仁勳](../Page/黃仁勳.md "wikilink")在輝達的官方[部落格上對該起失誤事件做出正式道歉](https://zh.wikipedia.org/wiki/部落格 "wikilink")。\[29\]\[30\]

輝達發布的勘誤聲明中，表示SMM中各單元是可進行單獨的遮蔽，每一個單元包括256[KiB的二級快取和](https://zh.wikipedia.org/wiki/KiB "wikilink")8個ROP單元後端，而遮蔽這些單元並不影響顯示記憶體的[記憶體控制器](https://zh.wikipedia.org/wiki/記憶體控制器 "wikilink")。\[31\]這樣做的代價是記憶體匯流排被分為高速區段和低速區段，這兩段不能夠同時進行存取操作，最多只能在一個區段進行讀操作的同時另一區段進行寫操作，不能同時進行存取操作，是因為二級快取和ROP單元都管理著這些GDDR5記憶體控制器以共用在兩個GDDR5記憶體控制器和它們自己之間的讀迴圈通道和資料寫入匯流排，即一個64位元的記憶體控制器管轄最後512MiB慢速區段的和鄰近的3.5GiB高速區段的512MiB，共同由一組8個ROP單元和這0.25MiB的二級快取連接使用。\[32\]這樣做使得GTX 970可使用4GiB的顯示記憶體而非3GiB。簡單來說就是GTX 970上256位元寬度的GDDR5記憶體匯流排，有224位元連接3.5GiB的高速區段，有32位元連接512MiB的低速區段。\[33\]\[34\]

部分早前購買GTX 970的用家，以及留意到這起事件的[律師行](https://zh.wikipedia.org/wiki/律師行 "wikilink")，也就這起參數爭議事件涉嫌侵犯使用者知情權或對輝達發起集體訴訟，\[35\]\[36\]儘管實際使用表明GTX 970顯示記憶體的特殊結構對效能影響並不高，只有1～3%，而非畫面卡頓\[37\]\[38\]，而輝達此前也有[GeForce GTX 660使用非對稱顯示記憶體的先例](https://zh.wikipedia.org/wiki/GeForce_600系列 "wikilink")。\[39\]\[40\]

#### 有限的DirectX 12硬體支援

NVIDIA標榜「Maxwell」GPU微架構是可以完整支援DirectX 12。\[41\]\[42\]\[43\]但是，首款使用DirectX 12的遊戲——奇点灰烬，其開發商——Oxide Games遊戲工作室，在遊戲的開發階段，發現「Maxwell」架構GPU的顯示卡，並不能在DirectX 12下發揮出應有的效能（相比DirectX 11下並沒有明顯的效能進步）。\[44\]\[45\]

Oxide Games表示，儘管NVIDIA的官方文宣上宣稱GeForce 900系列GPU能使用DirectX 12的所有功能，但是Maxwell的GPU，實際上並不能使用DirectX 12的核心功能——非同步運算以及非同步渲染管線，\[46\]而NVIDIA為了實現這些新功能，在驅動程式層級中安插了（一種提供[應用程式介面](https://zh.wikipedia.org/wiki/應用程式介面 "wikilink")（即[API](https://zh.wikipedia.org/wiki/API "wikilink")）的驅動庫）中介層來實作它們，但這種實作方式，需要佔用一定的GPU運算資源。簡單來說，NVIDIA採用了軟體的方式實現DirectX 12的部分核心功能，因此會造成效能上的折損。\[47\]

而與之相對，Oxide Games則表示，AMD的GCN GPU架構中已經包含了非同步運算及渲染的硬體電路，\[48\]因此可以無需透過中介層，驅動程式可直接調用硬體電路單元來實作DirectX 12，儘管支援的功能層級是基本的Feture Level 12_0，因此GCN架構的GPU可以憑藉DirectX 12在效能測試抑或是遊戲效能中獲得較為明顯的效能提升。\[49\]\[50\]\[51\]

Oxide Games稱在於NVIDIA磋商解決效能問題時，卻遭到NVIDIA方面向工作室的施壓，要求在遊戲效能測試中不能使用DirectX 12的非同步運算功能，因此工作室方面認為，NVIDIA的GeForce 900系列GPU面對對手AMD同級別的、對DirectX 12的核心功能能順利支援的GCN架構GPU時會處於劣勢。\[52\]不過在2015年8月4日，Oxide Games方面解釋，「我們確實與NVIDIA的人員交流關於非同步運算方面的話題，確實，驅動程式方面尚未能完全實作它，但驅動程式卻報告它能夠實作之」\[53\]，NVIDIA也正與Oxide Games合作，令900系列能夠實現非同步運算。由於不像AMD的GCN架構以硬體電路實現非同步運算，NVIDIA將必須仰賴驅動程式及其中介層，實現軟體層級的隊列及軟體層級的任務分發器，來轉發非同步運算任務到其GPU的硬體任務排程器上，令其勝任將運算負荷能分配至GPU中正確的電路單元上的工作。\[54\]

### 行動平台

本系列同時還有針對行動平台發佈的GeForce GTX 970M和GTX 980M以及GTX 960M ,GTX 950M 和 GeForce 940M 930M 920M ，他們在桌上型平台發佈之後跟進。搭载这數款型号的笔记本电脑现已上市，後期會有從桌上型移植到行動平台的980 Notebook。

NVIDIA於2016年3月無預警推出3款MX型號顯示核心——920MX、930MX及940MX，同時也推出910M。930MX與940MX者架構與930M及940M相同，920MX架構則放棄Kelper/Fermi架構改用Maxwell架構；910M則使用Kelper/Fermi架構，然而MX型號的記憶體及處理器時脈比M型號高，同時記憶體也支援GDDR5，不過有些廠商為了節省成本則仍然使用DDR3記憶體。

## 晶片規格

注：

  - <sup>1</sup> [統一渲染器/流處理器數量](https://zh.wikipedia.org/wiki/統一渲染架構 "wikilink") : [紋理映射單元數量](https://zh.wikipedia.org/wiki/紋理映射單元 "wikilink") : [渲染輸出單元](https://zh.wikipedia.org/wiki/渲染輸出單元 "wikilink")（ROP單元）數量
  - <sup>2</sup> 畫素填充率的計算：ROP單元數量乘以基準核心時脈
  - <sup>3</sup> 紋理填充率的計算：紋理映射單元數量乘以基準核心時脈
  - <sup>4</sup> 單精度浮點數運算效能的計算：渲染器/CUDA核心/流處理器的數量×2，再乘以基準核心時脈
  - <sup>5</sup> GTX 980，GTX 970，GTX 960以及GTX 950的雙精度浮點數運算效能是單精度浮點數運算效能的1/32\[55\]
  - <sup>6</sup> [NVIDIA SLI支援最多](../Page/NVIDIA_SLI.md "wikilink")4塊相同GPU的單GPU的顯卡組成4路SLI配置，除此以外多塊相同GPU的顯卡可組成3路或雙路連結配置。然而由於雙GPU的顯示卡已經相當於雙路SLI配置，這類顯示卡組成4路SLI僅需另外一塊可識別的相同的雙GPU顯示卡即可，但不能組成3路SLI的配置。
  - <sup>7</sup> 由於遮蔽了一個或數個區塊的二級快取/ROP單元而不影響所有對應的記憶體控制器，顯示記憶體會被分段。一個區段在寫入資料時另一區段也必須保持讀取資料以達成兩者的最高效能，這個效能數值不會高於純讀取或純寫入時的效能數值，在下表中記憶體匯流排已被分別顯示（「224+32」的樣式）

### 桌上型平台顯示核心

<table>
<thead>
<tr class="header">
<th><p>型號</p></th>
<th><p>推出年分</p></th>
<th><p>核心代號</p></th>
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
<th><p><a href="https://zh.wikipedia.org/wiki/應用程式介面" title="wikilink">API支援</a>（版本）</p></th>
<th><p>運算效能<br />
（GFLOPS）</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/熱設計功耗" title="wikilink">熱設計功耗</a><br />
(W)</p></th>
<th><p>發售價格<br />
(<a href="../Page/美元.md" title="wikilink">美元</a>)</p></th>
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
(<a href="https://zh.wikipedia.org/wiki/Pixel" title="wikilink">GP</a>/s)<sup>2</sup></p></td>
<td><p>材質<br />
(<a href="https://zh.wikipedia.org/wiki/Texel_(graphics)" title="wikilink">GT</a>/s)<sup>3</sup></p></td>
<td><p>容量<br />
(<a href="https://zh.wikipedia.org/wiki/MiB" title="wikilink">MiB</a>)<sup>7</sup></p></td>
<td><p>匯流排類型</p></td>
<td><p>匯流排寬度<br />
(<a href="../Page/位元.md" title="wikilink">位元</a>)<sup>7</sup></p></td>
<td><p>頻寬<br />
(<a href="https://zh.wikipedia.org/wiki/Gigabyte" title="wikilink">GB</a>/s)<sup>7</sup></p></td>
<td><p><a href="../Page/DirectX.md" title="wikilink">DirectX</a></p></td>
<td><p><a href="../Page/OpenGL.md" title="wikilink">OpenGL</a></p></td>
<td><p><a href="../Page/OpenCL.md" title="wikilink">OpenCL</a></p></td>
<td><p><a href="../Page/Vulkan_(API).md" title="wikilink">Vulkan</a></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/單精度浮點數" title="wikilink">單精度浮點數</a></p></td>
<td><p><a href="../Page/雙精度浮點數.md" title="wikilink">雙精度浮點數</a></p></td>
</tr>
<tr class="even">
<td><p>GeForce GTX 950 (OEM)[56]</p></td>
<td><p>2016年1月1日</p></td>
<td><p>GM206</p></td>
<td><p>28</p></td>
<td><p>2940</p></td>
<td><p>227</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>768:48:32<br />
(6 SMM)</p></td>
<td><p>924</p></td>
<td><p>950</p></td>
<td><p>5012</p></td>
<td><p>29.57</p></td>
<td><p>59.1</p></td>
<td><p>2048</p></td>
<td><p>GDDR5</p></td>
</tr>
<tr class="odd">
<td><p>GeForce GTX 950 [57]</p></td>
<td><p>2015年8月20日</p></td>
<td><p>GM206-250</p></td>
<td><p>28</p></td>
<td><p>2940</p></td>
<td><p>227</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>768:48:32<br />
(6 SMM)</p></td>
<td><p>1024</p></td>
<td><p>1188</p></td>
<td><p>6610</p></td>
<td><p>32.7</p></td>
<td><p>59.2</p></td>
<td><p>2048<br />
4096</p></td>
<td><p>GDDR5</p></td>
</tr>
<tr class="even">
<td><p>GeForce GTX 950 LP[58]</p></td>
<td><p>2015年8月20日</p></td>
<td><p>GM206-251-A1</p></td>
<td><p>28</p></td>
<td><p>2940</p></td>
<td><p>227</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>768:48:32<br />
(6 SMM)</p></td>
<td><p>1024</p></td>
<td><p>1188</p></td>
<td><p>6612</p></td>
<td><p>32.8</p></td>
<td><p>59.2</p></td>
<td><p>2048</p></td>
<td><p>GDDR5</p></td>
</tr>
<tr class="odd">
<td><p>GeForce GTX 960 [59]</p></td>
<td><p>2015年1月22日</p></td>
<td><p>GM206-300</p></td>
<td><p>28</p></td>
<td><p>2940</p></td>
<td><p>227</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>1024:64:32<br />
(8 SMM)</p></td>
<td><p>1127</p></td>
<td><p>1178</p></td>
<td><p>7000</p></td>
<td><p>36.1</p></td>
<td><p>72.1</p></td>
<td><p>2048<br />
4096</p></td>
<td><p>GDDR5</p></td>
</tr>
<tr class="even">
<td><p>GeForce GTX 960 (OEM)[60]</p></td>
<td><p>2015年11月26日</p></td>
<td><p>GM204</p></td>
<td><p>28</p></td>
<td><p>5200</p></td>
<td><p>398</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>1280:80:48<br />
(10 SMM)</p></td>
<td><p>924</p></td>
<td></td>
<td><p>5000</p></td>
<td><p>44.3</p></td>
<td><p>73.9</p></td>
<td><p>3072</p></td>
<td><p>GDDR5</p></td>
</tr>
<tr class="odd">
<td><p>GeForce GTX 970[61]</p></td>
<td><p>2014年9月19日</p></td>
<td><p>GM204-200</p></td>
<td><p>28</p></td>
<td><p>5200</p></td>
<td><p>398</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>1664:104:56<br />
(13 SMM)[62]</p></td>
<td><p>1050</p></td>
<td><p>1178</p></td>
<td><p>7010</p></td>
<td><p>67.2</p></td>
<td><p>109.2</p></td>
<td><p>4096<br />
（3584+512）[63]</p></td>
<td><p>GDDR5</p></td>
</tr>
<tr class="even">
<td><p>GeForce GTX 980[64]</p></td>
<td><p>2014年9月19日</p></td>
<td><p>GM204-400</p></td>
<td><p>28</p></td>
<td><p>5200</p></td>
<td><p>398</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>2048:128:64<br />
(16 SMM)</p></td>
<td><p>1126</p></td>
<td><p>1216</p></td>
<td><p>7000</p></td>
<td><p>72.1</p></td>
<td><p>144</p></td>
<td><p>4096</p></td>
<td><p>GDDR5</p></td>
</tr>
<tr class="odd">
<td><p>GeForce GTX 980 Ti[65]</p></td>
<td><p>2015年6月1日</p></td>
<td><p>GM200-310</p></td>
<td><p>28</p></td>
<td><p>8000</p></td>
<td><p>601</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>2816:176:96<br />
(22 SMM)</p></td>
<td><p>1000</p></td>
<td><p>1076</p></td>
<td><p>7010</p></td>
<td><p>96</p></td>
<td><p>176</p></td>
<td><p>6144</p></td>
<td><p>GDDR5</p></td>
</tr>
<tr class="even">
<td><p>GeForce GTX Titan X [66]</p></td>
<td><p>2015年3月17日[67]</p></td>
<td><p>GM200-400</p></td>
<td><p>28</p></td>
<td><p>8000</p></td>
<td><p>601</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>3072:192:96<br />
(24 SMM)[68]</p></td>
<td><p>1000</p></td>
<td><p>1089</p></td>
<td><p>7012</p></td>
<td><p>96</p></td>
<td><p>192</p></td>
<td><p>12288</p></td>
<td><p>GDDR5</p></td>
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
<td></td>
</tr>
</tbody>
</table>

### 行動平台顯示核心

某些實作方式（如筆記型電腦）會使用不同的參數。

<table>
<thead>
<tr class="header">
<th><p>型號</p></th>
<th><p>推出年分</p></th>
<th><p>開發代號</p></th>
<th><p>製程<br />
(<a href="https://zh.wikipedia.org/wiki/奈米" title="wikilink">奈米</a>)</p></th>
<th><p>電晶體數<br />
(百萬)</p></th>
<th><p>晶片尺寸<br />
(mm²)</p></th>
<th><p>匯流排介面</p></th>
<th><p>核心配置<br />
<sup>SPs:TMUs:ROPs<sub>1</sub></sup></p></th>
<th><p>時脈配置</p></th>
<th><p>填充率</p></th>
<th><p>顯示記憶體配置</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/應用程式介面" title="wikilink">API支援</a>（版本）</p></th>
<th><p>運算效能<br />
（GFLOPS）</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/熱設計功耗" title="wikilink">熱設計功耗</a><br />
(W)</p></th>
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
(<a href="https://zh.wikipedia.org/wiki/Pixel" title="wikilink">GP</a>/s)<sup>2</sup></p></td>
<td><p>材質<br />
(<a href="https://zh.wikipedia.org/wiki/Texel_(graphics)" title="wikilink">GT</a>/s)<sup>3</sup></p></td>
<td><p>容量<br />
(<a href="https://zh.wikipedia.org/wiki/MB" title="wikilink">MB</a>)</p></td>
<td><p>匯流排類型</p></td>
<td><p>匯流排寬度<br />
(<a href="../Page/位元.md" title="wikilink">位元</a>)</p></td>
<td><p>頻寬<br />
(<a href="https://zh.wikipedia.org/wiki/Gigabyte" title="wikilink">GB</a>/s)</p></td>
<td><p><a href="../Page/DirectX.md" title="wikilink">DirectX</a></p></td>
<td><p><a href="../Page/OpenGL.md" title="wikilink">OpenGL</a></p></td>
<td><p><a href="../Page/OpenCL.md" title="wikilink">OpenCL</a></p></td>
<td><p><a href="../Page/Vulkan_(API).md" title="wikilink">Vulkan</a></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/單精度浮點數" title="wikilink">單精度浮點數</a></p></td>
</tr>
<tr class="even">
<td><p>GeForce 910M (Fermi) [69][70]</p></td>
<td><p>2015年8月18日</p></td>
<td><p>GF117</p></td>
<td><p>28</p></td>
<td><p>585</p></td>
<td><p>116</p></td>
<td><p>PCIe 2.0 x16</p></td>
<td><p>96:16:8<br />
(2 SM)</p></td>
<td><p>775/1550</p></td>
<td></td>
<td><p>1800</p></td>
<td><p>3.1</p></td>
<td><p>12.4</p></td>
<td><p>1024</p></td>
</tr>
<tr class="odd">
<td><p>GeForce 910M (Kepler) [71][72]</p></td>
<td><p>2015年3月13日</p></td>
<td><p>GK208</p></td>
<td><p>28</p></td>
<td></td>
<td><p>87</p></td>
<td><p>PCIe 3.0 x8</p></td>
<td><p>384:32:16<br />
(2 SMX)</p></td>
<td><p>641</p></td>
<td></td>
<td><p>2002</p></td>
<td><p>5.13</p></td>
<td><p>20.51</p></td>
<td><p>2048</p></td>
</tr>
<tr class="even">
<td><p>GeForce 920M (Fermi) [73][74]</p></td>
<td><p>2015年3月13日</p></td>
<td><p>GF117</p></td>
<td><p>28</p></td>
<td><p>585</p></td>
<td><p>116</p></td>
<td><p>PCIe 2.0 x16</p></td>
<td><p>96:16:8<br />
(2 SM)</p></td>
<td><p>775/1550</p></td>
<td></td>
<td><p>1800</p></td>
<td><p>3.1</p></td>
<td><p>12.4</p></td>
<td><p>1024</p></td>
</tr>
<tr class="odd">
<td><p>GeForce 920M (Kepler) [75][76]</p></td>
<td><p>2015年3月13日</p></td>
<td><p>GK208</p></td>
<td><p>28</p></td>
<td></td>
<td><p>87</p></td>
<td><p>PCIe 3.0 x8</p></td>
<td><p>384:16:8<br />
(2 SMX)</p></td>
<td><p>954</p></td>
<td></td>
<td><p>1800</p></td>
<td><p>7.63</p></td>
<td><p>30.53</p></td>
<td><p>2048</p></td>
</tr>
<tr class="even">
<td><p>GeForce 920MX[77][78]</p></td>
<td><p>2016年3月1日</p></td>
<td><p>GM108</p></td>
<td><p>28</p></td>
<td></td>
<td></td>
<td><p>PCIe 3.0 x8</p></td>
<td><p>384:24:8<br />
(3 SMM)</p></td>
<td><p>1072</p></td>
<td><p>1176</p></td>
<td><p>1800</p></td>
<td><p>8.58</p></td>
<td><p>25.73</p></td>
<td><p>2048</p></td>
</tr>
<tr class="odd">
<td><p>GeForce 930M [79][80]</p></td>
<td><p>2015年3月13日</p></td>
<td><p>GM108</p></td>
<td><p>28</p></td>
<td></td>
<td></td>
<td><p>PCIe 3.0 x8</p></td>
<td><p>384:16:8<br />
(3 SMM)</p></td>
<td><p>928</p></td>
<td><p>941</p></td>
<td><p>2002</p></td>
<td><p>8.23</p></td>
<td><p>16.5</p></td>
<td><p>1024/2048</p></td>
</tr>
<tr class="even">
<td><p>GeForce 930MX[81][82]</p></td>
<td><p>2016年3月1日</p></td>
<td><p>GM108</p></td>
<td><p>28</p></td>
<td></td>
<td></td>
<td><p>PCIe 3.0 x8</p></td>
<td><p>384:24:8<br />
(3 SMM)</p></td>
<td><p>1072</p></td>
<td><p>1176</p></td>
<td><p>1800</p></td>
<td><p>8.58</p></td>
<td><p>25.73</p></td>
<td><p>2048</p></td>
</tr>
<tr class="odd">
<td><p>GeForce 940M [83][84][85]</p></td>
<td><p>2015年3月13日</p></td>
<td><p>GM107<br />
GM108</p></td>
<td><p>28</p></td>
<td><p>1870<br />
未知</p></td>
<td><p>148<br />
未知</p></td>
<td><p>PCIe 3.0 x16<br />
PCIe 3.0 x8</p></td>
<td><p>512:32:16<br />
(4 SMM)<br />
384:16:8<br />
(3 SMM)</p></td>
<td><p>1029<br />
1072</p></td>
<td><p>1085<br />
1176</p></td>
<td><p>1800<br />
1800</p></td>
<td><p>16.46<br />
8.58</p></td>
<td><p>32.9<br />
25.73</p></td>
<td><p>2048</p></td>
</tr>
<tr class="even">
<td><p>GeForce 940MX[86][87]</p></td>
<td><p>2016年1月1日</p></td>
<td><p>GM108</p></td>
<td><p>28</p></td>
<td></td>
<td></td>
<td><p>PCIe 3.0 x8</p></td>
<td><p>384:24:8<br />
(3 SMM)</p></td>
<td><p>1122</p></td>
<td><p>1242</p></td>
<td><p>2002</p></td>
<td><p>8.98</p></td>
<td><p>26.93</p></td>
<td><p>2048</p></td>
</tr>
<tr class="odd">
<td><p>GeForce GT 945A (OEM)[88][89]</p></td>
<td><p>2016年2月[90]</p></td>
<td><p>GM108</p></td>
<td><p>28</p></td>
<td></td>
<td></td>
<td><p>PCIe 3.0 x8</p></td>
<td></td>
<td><p>1072</p></td>
<td><p>1176</p></td>
<td><p>1800</p></td>
<td><p>8.58</p></td>
<td><p>25.73</p></td>
<td><p>2048<br />
4096</p></td>
</tr>
<tr class="even">
<td><p>GeForce 945M [91][92][93]</p></td>
<td><p>2015年10月27日<br />
2016年4月8日</p></td>
<td><p>GM107<br />
GM108</p></td>
<td><p>28</p></td>
<td><p>1870<br />
未知</p></td>
<td><p>148<br />
未知</p></td>
<td><p>PCIe 3.0 x16<br />
PCIe 3.0 x8</p></td>
<td><p>640:40:16<br />
(5 SMM)<br />
384:16:8<br />
(3 SMM)</p></td>
<td><p>1029<br />
1122</p></td>
<td><p>1085<br />
1242</p></td>
<td><p>1800<br />
2002</p></td>
<td><p>16.46<br />
8.58</p></td>
<td><p>41.2<br />
26.93</p></td>
<td><p>2048</p></td>
</tr>
<tr class="odd">
<td><p>GeForce GTX 950M [94][95]</p></td>
<td><p>2015年3月13日</p></td>
<td><p>GM107</p></td>
<td><p>28</p></td>
<td><p>1870</p></td>
<td><p>148</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>640:40:16<br />
(6 SMM)</p></td>
<td><p>914</p></td>
<td><p>1085</p></td>
<td><p>5012</p></td>
<td><p>14.6</p></td>
<td><p>36.6</p></td>
<td><p>2048</p></td>
</tr>
<tr class="even">
<td><p>GeForce GTX 950M Mac Edition[96]</p></td>
<td><p>2015年3月13日</p></td>
<td><p>GM107</p></td>
<td><p>28</p></td>
<td><p>1870</p></td>
<td><p>148</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>640:40:16<br />
(6 SMM)</p></td>
<td><p>914</p></td>
<td><p>993</p></td>
<td><p>4000</p></td>
<td><p>14.62</p></td>
<td><p>36.6</p></td>
<td><p>4096</p></td>
</tr>
<tr class="odd">
<td><p>GeForce GTX 960M [97][98]</p></td>
<td><p>2015年3月13日</p></td>
<td><p>GM107</p></td>
<td><p>28</p></td>
<td><p>1870</p></td>
<td><p>148</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>640:40:16<br />
(6 SMM)</p></td>
<td><p>1029</p></td>
<td><p>1085</p></td>
<td><p>5012</p></td>
<td><p>16.5</p></td>
<td><p>41.2</p></td>
<td><p>2048</p></td>
</tr>
<tr class="even">
<td><p>GeForce GTX 965M [99][100]</p></td>
<td><p>2015年1月9日<br />
2016年1月1日</p></td>
<td><p>GM204<br />
GM206</p></td>
<td><p>28</p></td>
<td><p>5200<br />
2,940</p></td>
<td><p>398<br />
228</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>1024:64:32<br />
(8 SMM)</p></td>
<td><p>924<br />
935</p></td>
<td><p>950<br />
1150</p></td>
<td><p>6000<br />
5012</p></td>
<td><p>30.2</p></td>
<td><p>60.4</p></td>
<td><p>2048<br />
4096</p></td>
</tr>
<tr class="odd">
<td><p>GeForce GTX 970M [101]</p></td>
<td><p>2014年10月7日</p></td>
<td><p>GM204</p></td>
<td><p>28</p></td>
<td><p>5200</p></td>
<td><p>398</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>1280:80:48<br />
(10 SMM)</p></td>
<td><p>924</p></td>
<td><p>993</p></td>
<td><p>5012</p></td>
<td><p>44.4</p></td>
<td><p>73.9</p></td>
<td><p>3072<br />
6144</p></td>
</tr>
<tr class="even">
<td><p>GeForce GTX 980M [102]</p></td>
<td><p>2014年10月7日</p></td>
<td><p>GM204</p></td>
<td><p>28</p></td>
<td><p>5200</p></td>
<td><p>398</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>1536:96:64<br />
(12 SMM)</p></td>
<td><p>1038</p></td>
<td><p>1127</p></td>
<td><p>5012</p></td>
<td><p>66.4</p></td>
<td><p>99.6</p></td>
<td><p>4096<br />
8192</p></td>
</tr>
<tr class="odd">
<td><p>GeForce GTX 980 Notebook[103]</p></td>
<td><p>2015年9月22日</p></td>
<td><p>GM204</p></td>
<td><p>28</p></td>
<td><p>5200</p></td>
<td><p>398</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>2048:128:64<br />
(16 SMM)</p></td>
<td><p>1064</p></td>
<td></td>
<td><p>7010</p></td>
<td><p>68.1</p></td>
<td><p>136.2</p></td>
<td><p>8192</p></td>
</tr>
<tr class="even">
<td><p>型號</p></td>
<td><p>推出年分</p></td>
<td><p>開發代號</p></td>
<td><p>製程<br />
(<a href="https://zh.wikipedia.org/wiki/奈米" title="wikilink">奈米</a>)</p></td>
<td><p>電晶體數<br />
(百萬)</p></td>
<td><p>晶片尺寸<br />
(mm²)</p></td>
<td><p>匯流排介面</p></td>
<td><p>核心配置<br />
<sup>SPs:TMUs:ROPs<sub>1</sub></sup></p></td>
<td><p>時脈配置</p></td>
<td><p>填充率</p></td>
<td><p>顯示記憶體配置</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/應用程式介面" title="wikilink">API支援</a>（版本）</p></td>
<td><p>運算效能<br />
（GFLOPS）</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/熱設計功耗" title="wikilink">熱設計功耗</a><br />
(W)</p></td>
</tr>
<tr class="odd">
<td><p>預設<br />
(<a href="https://zh.wikipedia.org/wiki/Hertz" title="wikilink">MHz</a>)</p></td>
<td><p>加速<br />
(<a href="https://zh.wikipedia.org/wiki/Hertz" title="wikilink">MHz</a>)</p></td>
<td><p>記憶體<br />
(<a href="https://zh.wikipedia.org/wiki/Transfer_(computing)" title="wikilink">MT/s</a>)</p></td>
<td><p>像素<br />
(<a href="https://zh.wikipedia.org/wiki/Pixel" title="wikilink">GP</a>/s)<sup>2</sup></p></td>
<td><p>材質<br />
(<a href="https://zh.wikipedia.org/wiki/Texel_(graphics)" title="wikilink">GT</a>/s)<sup>3</sup></p></td>
<td><p>容量<br />
(<a href="https://zh.wikipedia.org/wiki/MB" title="wikilink">MB</a>)</p></td>
<td><p>匯流排類型</p></td>
<td><p>匯流排寬度<br />
(<a href="../Page/位元.md" title="wikilink">位元</a>)</p></td>
<td><p>頻寬<br />
(<a href="https://zh.wikipedia.org/wiki/Gigabyte" title="wikilink">GB</a>/s)</p></td>
<td><p><a href="../Page/DirectX.md" title="wikilink">DirectX</a></p></td>
<td><p><a href="../Page/OpenGL.md" title="wikilink">OpenGL</a></p></td>
<td><p><a href="../Page/OpenCL.md" title="wikilink">OpenCL</a></p></td>
<td><p><a href="../Page/Vulkan_(API).md" title="wikilink">Vulkan</a></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/單精度浮點數" title="wikilink">單精度浮點數</a></p></td>
</tr>
<tr class="even">
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

  - [NVIDIA GeForce 400](../Page/NVIDIA_GeForce_400.md "wikilink")
  - [NVIDIA GeForce 500](../Page/NVIDIA_GeForce_500.md "wikilink")
  - [NVIDIA GeForce 600](../Page/NVIDIA_GeForce_600.md "wikilink")
  - [NVIDIA GeForce 700](../Page/NVIDIA_GeForce_700.md "wikilink")
  - [NVIDIA GeForce 800](../Page/NVIDIA_GeForce_800.md "wikilink")
  - [NVIDIA Quadro](../Page/NVIDIA_Quadro.md "wikilink")
  - [NVIDIA Tesla](../Page/NVIDIA_Tesla.md "wikilink")

## 腳註

### 註解

### 參考資料

## 外部連結

  - [Nvidia Nsight](http://developer.nvidia.com/nvidia-nsight-visual-studio-edition)

[Category:英伟达](https://zh.wikipedia.org/wiki/Category:英伟达 "wikilink")

1.

2.

3.  [NVIDIA reveals upcoming GPU architectures.](http://hexus.net/tech/news/graphics/26552-nvidia-reveals-upcoming-gpu-architectures/), [hexus.net](http://hexus.net)

4.  <http://videocardz.com/45403/nvidia-to-launch-more-cards-this-year-maxwell-in-q1-2014>

5.  <http://wccftech.com/nvidia-geforce-gtx-980-graphics-card-gm204-gpu-detailed-64-rops-hdmi-20-2048-cuda-cores-52-billion-transistors-operating-165w/>

6.  <http://videocardz.com/52362/only-at-vc-nvidia-geforce-gtx-980-final-specifications>

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

26. <http://www.pcper.com/news/Graphics-Cards/NVIDIA-Plans-Driver-Update-GTX-970-Memory-Issue-Help-Returns>

27. <http://www.pcper.com/news/Graphics-Cards/NVIDIA-Plans-Driver-Update-GTX-970-Memory-Issue-Help-Returns>

28.

29.

30.

31. <http://www.anandtech.com/show/8935/geforce-gtx-970-correcting-the-specs-exploring-memory-allocation/2>

32.
33.
34.
35.

36.

37.

38.

39.

40.

41.

42. <http://international.download.nvidia.com/geforce-com/international/images/nvidia-geforce-gtx-980-ti/nvidia-geforce-gtx-980-ti-directx-12-advanced-api-support.png>

43.

44.

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

56.

57.

58.

59. [GeForce GTX 960 | Specifications | GeForce](http://www.geforce.com/hardware/desktop-gpus/geforce-gtx-960/specifications)

60.

61. [GeForce GTX 970 | Specifications | GeForce](http://www.geforce.com/hardware/desktop-gpus/geforce-gtx-970/specifications)

62. <http://www.anandtech.com/show/8935/geforce-gtx-970-correcting-the-specs-exploring-memory-allocation>

63. <http://www.pcper.com/news/Graphics-Cards/NVIDIA-Responds-GTX-970-35GB-Memory-Issue>

64. [GeForce GTX 980 | Specifications | GeForce](http://www.geforce.com/hardware/desktop-gpus/geforce-gtx-980/specifications)

65. [| Specifications | GeForce](http://www.geforce.com/hardware/desktop-gpus/geforce-gtx-980-ti/specifications)

66. <http://blogs.nvidia.com/blog/2015/03/04/smaug/>

67. <http://www.techpowerup.com/gpudb/2632/geforce-gtx-titan-x.html>

68. <http://www.techpowerup.com/gpudb/2632/geforce-gtx-titan-x.html>

69. <http://www.geforce.com/hardware/notebook-gpus/geforce-910m/specifications>

70.

71. <http://www.geforce.com/hardware/notebook-gpus/geforce-910m/specifications>

72. <https://www.techpowerup.com/gpudb/2764/geforce-910m>

73. <http://www.geforce.com/hardware/notebook-gpus/geforce-920m/specifications>

74. <https://www.techpowerup.com/gpudb/2675/geforce-920m.html>

75. <http://www.geforce.com/hardware/notebook-gpus/geforce-920m/specifications>

76. <https://www.techpowerup.com/gpudb/2646/geforce-920m>

77. <http://www.geforce.com/hardware/notebook-gpus/geforce-920mx/specifications>

78. <https://www.techpowerup.com/gpudb/2826/geforce-920mx>

79. <http://www.geforce.com/hardware/notebook-gpus/geforce-930m/specifications>

80. <http://www.techpowerup.com/gpudb/2644/geforce-930m.html>

81. <http://www.geforce.com/hardware/notebook-gpus/geforce-930mx/specifications>

82. <https://www.techpowerup.com/gpudb/2825/geforce-930mx>

83. <http://www.geforce.com/hardware/notebook-gpus/geforce-940m/specifications>

84. <http://www.techpowerup.com/gpudb/2648/geforce-940m.html>

85. <http://www.techpowerup.com/gpudb/2643/geforce-940m.html>

86. <http://www.geforce.com/hardware/notebook-gpus/geforce-940mx/specifications>

87. <https://www.techpowerup.com/gpudb/2797/geforce-940mx>

88.

89.

90.

91. <http://www.geforce.com/hardware/notebook-gpus/geforce-940m/specifications>

92. <http://www.techpowerup.com/gpudb/2648/geforce-940m.html>

93. <http://www.techpowerup.com/gpudb/2643/geforce-940m.html>

94. <http://www.geforce.com/hardware/notebook-gpus/geforce-gtx-950m/specifications>

95. <http://www.techpowerup.com/gpudb/2642/geforce-gtx-950m.html>

96. <https://www.techpowerup.com/gpudb/2777/geforce-gtx-950m-mac-edition>

97. <http://www.geforce.com/hardware/notebook-gpus/geforce-gtx-960m/specifications>

98. <http://www.techpowerup.com/gpudb/2635/geforce-gtx-960m.html>

99. <http://www.geforce.com/hardware/notebook-gpus/geforce-gtx-965m/specifications>

100. <https://www.techpowerup.com/gpudb/2796/geforce-gtx-965m>

101. [GeForce GTX 970M | Specifications | GeForce](http://www.geforce.com/hardware/notebook-gpus/geforce-gtx-970m/specifications)

102. [GeForce GTX 980M | Specifications | GeForce](http://www.geforce.com/hardware/notebook-gpus/geforce-gtx-980m/specifications)

103. [| Specifications | GeForce](http://www.geforce.com/hardware/notebook-gpus/geforce-gtx-980)