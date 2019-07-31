**ATX**（Advanced Technology Extended）[主機板規格由](../Page/主機板規格比較.md "wikilink")[英特爾公司在](https://zh.wikipedia.org/wiki/英特爾 "wikilink")1995年制定。這是多年來第一次電腦機殼與主機板設計的重大改變。ATX取代[AT主機板規格](../Page/AT規格.md "wikilink")，成為較新電腦系統預設的主機板規格。ATX解決以往[AT規格](../Page/AT規格.md "wikilink")中，令電腦組裝人士煩惱的問題。其他衍生的主機板規格（包括[microATX](https://zh.wikipedia.org/wiki/microATX "wikilink")、[FlexATX與](https://zh.wikipedia.org/wiki/FlexATX "wikilink")[mini-ITX](https://zh.wikipedia.org/wiki/mini-ITX "wikilink")）保留ATX基本的背板設置，但主機板的面積減少，擴充槽的數目也有所刪減。

自英特爾在1995年發表最初的ATX官方規格後，此規格經歷多次變更；最新2.3版本規格於2007年發表。標準的ATX主機版，長12英吋，寬9.6英吋（305毫米×244毫米）。這也容許標準的ATX機箱容納較小的microATX主機板。

2003年，英特爾發佈全新的[BTX主機板規格](../Page/BTX規格.md "wikilink")，以其作為ATX的替代規格。但由於相容性的問題，ATX規格仍為組裝電腦最通行的主機板規格，只有大型廠商的零售電腦採用BTX，因此英特爾於2006年放棄BTX的發展\[1\]。

## 電源供應器

[Abit-kt7-large.jpg](https://zh.wikipedia.org/wiki/File:Abit-kt7-large.jpg "fig:Abit-kt7-large.jpg")

過往的AT電腦機箱，具有一個直接連到電源供應器的電源開關。開關的主要形式，是一個雙極式的開關，開關的四條針腳，連到對應的電線。由於電線是[銲接到電源開關](https://zh.wikipedia.org/wiki/銲接 "wikilink")，因此，如果電源供應器損壞，更換就會變得非常困難。

ATX的[電源供應器](../Page/電源供應器.md "wikilink")，並不直接連到電腦的電源開關，因此電腦可以通過[軟件關機](https://zh.wikipedia.org/wiki/軟件關機 "wikilink")。不過，大多數的ATX電源供應器，背面具有一個手動開關，容許使用者將電腦完全關閉；電腦在此時將不會得到任何電力。當這個開關打開的時候，就算表面上電腦已經「關機」，電力仍然會進入電腦各部件。這種「軟體關機」或「待命」的特徵，可以用於遙控開機（例如通過[调制解调器](../Page/调制解调器.md "wikilink")開機，即[Wake-on-Ring](https://zh.wikipedia.org/wiki/Wake-on-Ring "wikilink")，或通過[網路開機](https://zh.wikipedia.org/wiki/網路開機 "wikilink")，即[Wake-on-LAN](../Page/網路喚醒.md "wikilink")），但一般而言，電腦仍然是通過前面的開關來開機。

ATX電源供應器連到主機板的插頭，比起AT也有所變更。舊式的AT電源供應器，使用兩個形狀相似的插頭連到主機板，由於易於錯接，主機板很容易會因為短路而受到永久損壞。ATX則使用一個具方向性的插頭，反方向時不能插入主機板，此[防呆](../Page/防呆.md "wikilink")設計免除損壞主機板的風險。另外，ATX也提供一個3.3伏特的電源，主機板因此無須再使用其他的電源來「間接降壓」取得3.3伏特電源。一些最後期生產的AT主機板，也同時支援AT與ATX的電源供應器。

另外，原來的ATX設計，是利用電源供應器的風扇，將空氣抽進機箱內，為主機板與處理器提供散熱用的空氣氣流。因為這個緣故，處理器一般是放於主機板的上方。由於眾多原因，這個設計對於機箱的散熱沒有多大用處。首先，早期的處理器與元件，發出的熱量並不需要使用特別的散熱裝置進行散熱。其後的處理器發熱量增多，但電源供應器吹出來的空氣已經明顯較熱，令這種散熱方式變為無用。因此，較後的ATX規格已經將電源供應器的氣流設計，變為選用設計\[2\]。

其後Intel的[Pentium 4出現](../Page/奔腾4.md "wikilink")，標準的20針ATX電源接腳開始無法提供處理器需要的較大電量，因此，新的ATX規格再加上了一個4針的12伏特電源接頭。這個設計也用於AMD的[Athlon XP與](https://zh.wikipedia.org/wiki/Athlon_XP "wikilink")[Athlon 64處理器](../Page/AMD_Athlon_64.md "wikilink")。一些高價系統，也適用其他形式的輔助電源接頭。

到了2000年，顯示卡的電量需求大幅上升，一些高價顯示卡的電量需求，更超越了[AGP](../Page/AGP.md "wikilink")與[PCI Express的供電能力](../Page/PCI_Express.md "wikilink")，因此高價顯示卡也開始備有與硬碟機電源類似的接頭，以取得額外的電力。2004年以後生產的PCI Express顯示卡，更開始使用一個標準的6針或8針接頭，從電源供應器直接取電。

ATX電源供應器是通過主機板的開關來操作，理論上，只要將ATX插頭中的綠色電線接頭（開關訊號）與任何接頭中的黑色電線（接地）連接，即可以在不使用主機板的情況下開啟電源。一些舊的電源供應器，可以用這種方式為電腦以外的裝置供電，不過改裝時，則需要留意電源供應器的最低負載需求。

ATX電源的尺寸通常為150 × 86 × 140 mm （5.9 × 3.39 × 5.51 in）。最後一個尺寸，140 mm深度，經常被改成160、180、200和230 mm來容納更高的功率、更大的風扇及／或模組化連接器。

### 標準

#### ATX

初版的ATX於1995年發表，定義三種接頭。

  - 4-Pin Molex——用來連接[硬碟](../Page/硬盘.md "wikilink")、5.25吋[光碟機及其他周邊設備](../Page/光盘驱动器.md "wikilink")
  - 4-Pin Berg floppy connector——用來連接3.5吋[磁碟機及其他周邊設備](../Page/软盘.md "wikilink")
  - 20-Pin Molex Mini-fit Jr.——用來連接[主機板](../Page/主板.md "wikilink")

#### ATX12V 1.x

1999年，設計[Pentium 4時發現原有的ATX標準不足提供足夠的電力](../Page/奔腾4.md "wikilink")，於是發表新的ATX12V（又稱ATX-P4）。AMD亦採用此標準，用於Athlon XP及Athlon 64平台。

  - ATX12V 1.0

<!-- end list -->

  - 2000年2月發表
  - 增加12V的供電能力（3.3V和5V大致不變）
  - 新增mini fit JR (Molex 39-01-2040)——4-Pin接頭，額外提供12V供電到[中央處理器](../Page/中央处理器.md "wikilink")

<!-- end list -->

  - ATX12V 1.1

<!-- end list -->

  - 2000年8月發表
  - 增加3.3V的供電能力

<!-- end list -->

  - ATX12V 1.2

<!-- end list -->

  - 2002年1月發表的小修訂
  - 不再要求電源供應器提供-5V

#### ATX12V 2.x

[ATX_Power_connectors_24pin_8pin_4pin_Motherboard.jpg](https://zh.wikipedia.org/wiki/File:ATX_Power_connectors_24pin_8pin_4pin_Motherboard.jpg "fig:ATX_Power_connectors_24pin_8pin_4pin_Motherboard.jpg") ATX12V 2.x是一個重大的修訂，電力供應主要由12V提供。

  - ATX12V 2.0

<!-- end list -->

  - 增加12V的供電能力，要求有兩組12V迴路，及獨立的過電流保護
  - 減低3.3V和5V的供電能力
  - 主接頭擴展到24-Pin，增加的四針分別是3.3V、5V、12V和[接地](../Page/接地.md "wikilink")
  - 要求[SATA](../Page/SATA.md "wikilink")電線

<!-- end list -->

  - ATX12V 2.1

<!-- end list -->

  - 2005年3月發表的小修訂
  - 增加各迴路的供電能力
  - 转换效率改變

<!-- end list -->

  - ATX12V 2.2

<!-- end list -->

  - ATX12V 2.3

<!-- end list -->

  - 2007年3月發表的小修訂
  - 移除12V單軌輸出最多240VA的限制，即單軌12V可以輸出超過20A
  - 建議轉換效率提升到80%，最低轉換效率要達到70%

### 戴爾電腦的電源供應器

早期的[戴爾](../Page/戴爾.md "wikilink")電腦，尤其是使用Pentium II與Pentium III的型號，使用一種專屬的電源接腳方式。外觀上電源接頭與標準的ATX類同（事實上也可以插進標準的電源供應器），接腳的定義卻並不相容；除了電線位置變更以外，使用某一電壓的電線數目也有所變化，令針腳不能輕易再行變更與改裝\[3\]。 [缩略图](https://zh.wikipedia.org/wiki/File:HEC_350W_ATX_power_supply.jpg "fig:缩略图") 除了20針主接頭以外，輔助的6針接頭也受到影響。雖然較新的戴爾電腦，可能使用標準的ATX電源\[4\]，但是將其他的主機板與電源供應器用於戴爾電腦時就要相當小心，以免燒壞主機板或電源供應器。基本上，如果電源供應器的電線顏色編碼與ATX標準不同，那很大機會就會是專屬的接線。一般來說，戴爾電腦的支援網站，會提供有關電源接線的資料與圖解。

### SFX電源供應器

Intel於1997年12月推出了更小的Micro-ATX主板之後，開始有廠商開發更小的機殼使用此種板以節省桌面空間，這類機殼裝不太下標準ATX電源\[5\]，所以一種小型化的電源供應器SFX出現，尺寸為125 × 63.5 × 100 mm （寬 × 高 × 深）。

通常有4檔電壓（+5V、+12V、-12V和+3.3V）SFX電源一般不提供-5V電壓，不過對於目前電腦來說影響不大，因為實用-5V的[ISA插槽已被淘汰](../Page/工业标准结构.md "wikilink")。實務上由於空間縮小能放入的零件受限，所以能提供的瓦數都不高。

部份製造商和零售商錯誤地將SFX電源稱作μATX或microATX電源銷售。\[6\]

然而也有廠商成功開發SFX-L尺寸為125 × 63.5 × 130 mm的電源，能提供五六百瓦以上電力和容納120 mm風扇，但價格就比同瓦數ATX電源貴上不少。\[7\]

### TFX電源供應器

TFX是另一種採用標準ATX連接器規格的小型電源設計。一般尺寸為（寬 × 高 × 深）：85 × 64 × 175 mm （3.34 × 2.52 × 6.89 in）。\[8\]\[9\]

## 接頭

[Several_atx_io_shields_(smial).jpg](https://zh.wikipedia.org/wiki/File:Several_atx_io_shields_\(smial\).jpg "fig:Several_atx_io_shields_(smial).jpg") ATX規格也於電腦的背板作出一些主要的變更。AT規格只有一個鍵盤的插座，與安裝介面卡使用的擴充槽。其他的介面，例如[序列埠與](../Page/串行端口.md "wikilink")[並列埠](../Page/并行端口.md "wikilink")，就需要通過接線，連到機箱預留的空間，或未使用的擴充槽後面的鐵片。ATX則容許將這些介面，排列在主機板後面一個特定的長方形區域，排列的方式可以由主機板廠商自訂（不過大部分的主機板廠商，使用一些廣為接受的排列方式）。基本上，機箱後面有一塊可以拆下的鐵片，稱為「輸入／輸出背板」，開孔的形式與主機板上的介面對應。這塊輸入／輸出背板，可以因應不同的主機板而加以替換，事實上，市售的主機板也包括一塊對應的輸入／輸出背板。此外，也有一些特別設計的背板，容許舊式的AT主機板，安裝到ATX機箱中。

ATX的出現，也統一了mini-DIN鍵盤與PS/2滑鼠插座的使用。相比之下，AT系統使用一個5針DIN接頭連接鍵盤，並搭配序列埠滑鼠一同使用（不過也有部份AT電腦使用PS/2滑鼠）。

## 大小

<table>
<thead>
<tr class="header">
<th><p>發表年份</p></th>
<th><p>標準</p></th>
<th><p>寬度</p></th>
<th><p>深度</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>1995</p></td>
<td><p>ATX</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>1995</p></td>
<td><p>EATX (Extended ATX)</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>1996</p></td>
<td><p>Mini ATX</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>1997</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/microATX" title="wikilink">microATX與EmbATX</a></p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>1998</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/WATX" title="wikilink">WATX</a> (Workstation ATX)</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>1999</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/Flex_ATX" title="wikilink">Flex ATX</a></p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td><p>EEATX (Enhanced Extended ATX)</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

1995年制定的EATX標準為12×13寸，用於[伺服器雙路處理器平台](../Page/服务器.md "wikilink")，即是一塊主板有兩個CPU。

現在一些生產商的EATX主機板並不是長13寸，這些主機板寬度維持12寸，長度每一間公司都不同，通常是10到11寸。這些主機板通常是頂級的單路處理器平台，可插入四張雙槽顯示卡，因為ATX太小無法放入所有元件而增加長度。

## 參見

  - [AT規格](../Page/AT規格.md "wikilink")
  - [Micro ATX](https://zh.wikipedia.org/wiki/Micro_ATX "wikilink")
  - [BTX規格](../Page/BTX規格.md "wikilink")
  - [Mini-ITX](../Page/Mini-ITX.md "wikilink")
  - [Nano-ITX](https://zh.wikipedia.org/wiki/Nano-ITX "wikilink")
  - [Pico-ITX](https://zh.wikipedia.org/wiki/Pico-ITX "wikilink")

## 參考資料

## 外部連結

  - [ATX主機板規格v2.2](https://web.archive.org/web/20070206052823/http://www.formfactors.org/FFDetail.asp?FFID=1&CatID=1)
  - [電源供應器尺寸規格](http://www.pcguide.com/ref/power/sup/form_ATX.htm)
  - [ATX12V電源供應器設計指引，v2.2](https://web.archive.org/web/20070205221533/http://www.formfactors.org/FFDetail.asp?FFID=1&CatID=2)
  - [ATX電源供應接頭定義](http://pinouts.ru/pin_Power.shtml)
  - [ATX電源供應器連結](http://www.epanorama.net/links/psu_computer.html)
  - [ATX電源供應接頭定義的另一連結](http://www.hardwarebook.info/Category:Connector#Power_Supplies)
  - [主機板電源供應接頭定義](http://www.pcguide.com/ref/power/sup/partsMotherboard-c.html)
  - [小型的ATX電源供應器](http://www.mini-box.com/s.nl/sc.8/category.13/.f)
  - [戴爾電腦電源供應器改裝連結](https://web.archive.org/web/20070828130248/http://www.endpcnoise.com/cgi-bin/e/std/sku=dellconverter)
  - [ATX擴充卡規格，修訂版1.0](https://web.archive.org/web/20070322201749/http://www.formfactors.org/developer/specs/ATX_Spec_V1_0.pdf)

[Category:主機板規格](https://zh.wikipedia.org/wiki/Category:主機板規格 "wikilink")

1.
2.
3.
4.
5.  [pcguide.com-SFX](http://www.pcguide.com/ref/power/sup/formSFX-c.html)
6.  [電源規格解說表 - 銀欣科技股份有限公司](https://silverstonetek.com/techtalk_cont.php?tid=10055&area=tw)
7.  [SFX-L Computex 2017 roundup - Small Form Factor Network](https://smallformfactor.net/news/sfx-l-computex-2017-roundup)
8.
9.  [Power Supplies TekSpek Guide - SCAN UK](https://scan.co.uk/tekspek/power-supplies/psus-\(power-supply-units\))