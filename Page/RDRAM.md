**Direct Rambus DRAM** 或稱 **DRDRAM**（有時也稱**Rambus DRAM** 或
**RDRAM**）是[Rambus公司設計製造的一種同步](../Page/Rambus.md "wikilink")[DRAM](https://zh.wikipedia.org/wiki/Dynamic_Random_Access_Memory "wikilink")。

## 實際應用

### 個人電腦

最初支援RDRAM的電腦[主機板是在](https://zh.wikipedia.org/wiki/主機板 "wikilink")1999年登場。這些產品與PC-800
RDRAM相容，以400[MHz頻率工作並具有](https://zh.wikipedia.org/wiki/MHz "wikilink")1600[MB](https://zh.wikipedia.org/wiki/MB "wikilink")/s的傳輸速度，使用184針的RIMM插座。

資料在時脈訊號的上升(Positive Edge Trigger，PET)與下降(Negative Edge
Trigger，NET)皆傳輸資料([雙向數據](https://zh.wikipedia.org/wiki/雙向數據 "wikilink"))。由於[銷售需要](https://zh.wikipedia.org/wiki/銷售 "wikilink")，命名方面為時脈頻率的二倍(避免與
DDR
記憶體命名方式重複)，400MHz規格的Rumbus被命名為PC800，使用64bit的168針[DIMM插座並提供](../Page/DIMM.md "wikilink")1066MB/s的傳輸速度。這比以前的
PC-133 [SDRAM速度大幅提高](../Page/SDRAM.md "wikilink")(PC-133工作於133MHz)。

[RAMBUS-Memory.jpg](https://zh.wikipedia.org/wiki/File:RAMBUS-Memory.jpg "fig:RAMBUS-Memory.jpg")

除此之外，如果主機板使用[雙通道架構的記憶體子系統](https://zh.wikipedia.org/wiki/雙通道 "wikilink")，則需要將所有記憶體管道同時升級。16位元的模組提供1條記憶體管道，32位元則提供2條。因此，在接受16位元模組的雙管道主機板上，需要成對安裝RIMM。而相容32位元模組的雙管道主機板，則可以逐條安裝RIMM。

#### 模組規格

| 規格命名               | 匯流排寬度 | 通道       | 時脈      | 傳輸速度      |
| ------------------ | ----- | -------- | ------- | --------- |
| PC600              | 16Bit | 單通道 RIMM | 300 MHz | 1200 MB/s |
| PC700              | 16Bit | 單通道 RIMM | 355 MHz | 1420 MB/s |
| PC800              | 16Bit | 單通道 RIMM | 400 MHz | 1600 MB/s |
| PC1066 (RIMM 2100) | 16Bit | 單通道 RIMM | 533 MHz | 2133 MB/s |
| PC1200 (RIMM 2400) | 16Bit | 單通道 RIMM | 600 MHz | 2400 MB/s |
| RIMM 3200          | 32Bit | 雙通道 RIMM | 400 MHz | 3200 MB/s |
| RIMM 4200          | 32Bit | 雙通道 RIMM | 533 MHz | 4200 MB/s |
| RIMM 4800          | 32Bit | 雙通道 RIMM | 600 MHz | 4800 MB/s |
| RIMM 6400          | 32Bit | 雙通道 RIMM | 800 MHz | 6400 MB/s |

### 電視遊戲主機

[RDRAM18-NUS_01.jpg](https://zh.wikipedia.org/wiki/File:RDRAM18-NUS_01.jpg "fig:RDRAM18-NUS_01.jpg")
Rambus的RDRAM最初在1996年的[任天堂](../Page/任天堂.md "wikilink")[電視遊戲主機](https://zh.wikipedia.org/wiki/遊戲機 "wikilink")「[Nintendo
64](https://zh.wikipedia.org/wiki/Nintendo_64 "wikilink")」(N64)上使用。N64使用4[MB](https://zh.wikipedia.org/wiki/MB "wikilink")
9Bit[匯流排](https://zh.wikipedia.org/wiki/匯流排 "wikilink")，工作於500MHz的RDRAM，提供了500MB/s的傳輸速度。受惠於RDRAM簡單的設計，N64得以確保較大的記憶體傳輸速度。而受惠於RDRAM狹窄的匯流排寬度，主機板的電路設計師得以使用單純的設計方式降低成本。然而，在隨機存取方面的延遲較高的缺點為人所詬病。N64為RDRAM模組使用了一套被動散熱系統用來冷卻[1](https://web.archive.org/web/20090430131325/http://n64.icequake.net/)。

[SONY在](https://zh.wikipedia.org/wiki/SONY "wikilink")[PlayStation
2上使用](../Page/PlayStation_2.md "wikilink") RDRAM。PS2 採用 32MB 的
RDRAM 主記憶體，具備雙通道的架構而達到了3200MB/s的傳輸速度。

[PlayStation 3使用了](../Page/PlayStation_3.md "wikilink") RDRAM 的後繼產品[XDR
DRAM](https://zh.wikipedia.org/wiki/XDR_DRAM "wikilink")
，採用256MB，具有8倍於前者的傳輸速度\[1\](與 DDR 比較)，400MHz
工作時脈，64位元匯流排，實現了3.2GHz的速度，204.8Gbit/s(25.6GB/s)的高速資料傳輸速率\[2\]。

## 顯示卡

[Cirrus
Logic公司在](https://zh.wikipedia.org/wiki/Cirrus_Logic "wikilink")*Laguna*顯示晶片家族中的兩個產品使用RDRA。分別是僅有2D的5462和帶有3D加速的2D晶片5464。

該晶片不僅利用RDRAM的高傳輸速度，更提供了成本方面的優點。此晶片在[CreativeのGraphics](https://zh.wikipedia.org/wiki/クリエイティブテクノロジー "wikilink")
Blaster MA3xx系列等使用。

## 性能

與現代的其他記憶體規格相比較，Rambus由於增加了若干等待時間，以及在發熱和製造上的複雜，導致成本較高。RDRAM也被批評印模尺寸太大，16M位需要百分之10-20，64M需要約百分之5的介面，因此需要罰鍰。[2](http://findarticles.com/p/articles/mi_m0EKF/is_n2161_v43/ai_19288320)。

PC-800
RDRAM工作在45[納秒的等待時間](https://zh.wikipedia.org/wiki/納秒 "wikilink")，這是當時同與之競爭的DRAM技術相比較高的等待時間。RDRAM的記憶體晶片比SDRAM晶片發出更大的熱量，所以所有的RIMM皆需要散熱片。RDRAM每片記憶體晶片皆內建了控制器、與[北橋晶片上配置單一的記憶體控制器的SDRAM相比製造上大幅複雜](https://zh.wikipedia.org/wiki/北橋晶片 "wikilink")。RDRAM由於較高的製造成本和授權費，與PC-133
SDRAM相比價格達到了2-3倍。在2000年登場的PC-2100 [DDR
SDRAM工作於](../Page/DDR_SDRAM.md "wikilink")133MHz時鐘頻率，使用184針DIMM插座的64位匯流排提供了2100MB/s的性能。

複數RIMM在同一個記憶體管道安裝的場合，對性能的影響比SDRAM的設計要高，與SDRAM的母模式途經1-2個晶片相比，RDRAM在較遠的記憶體模組上晶片必須要經過近乎與記憶體控制器物理配置相當的所有記憶體晶片。

最普通的Rambus記憶體控制器的設計，是將記憶體模組成對安裝做為前提。剩下未使用的記憶體插座必須安裝[CRIMM](https://zh.wikipedia.org/wiki/CRIMM "wikilink")。追加的CRIMM模組並不會增加記憶體的容量，只是為了不使主機板上的信號發生反射而傳達的相對於終端抵抗的信號。右下角的圖像是CRIMM模組。

伴隨[Intel
840](https://zh.wikipedia.org/wiki/Intel晶片組列表#Pentium_II/Pentium_III晶片組 "wikilink")（[Pentium
III](https://zh.wikipedia.org/wiki/Pentium_III "wikilink")）、[Intel
850](https://zh.wikipedia.org/wiki/Intel晶片組列表#Pentium_4晶片組 "wikilink")（[Pentium
4](https://zh.wikipedia.org/wiki/Pentium_4 "wikilink")）, [Intel
860](https://zh.wikipedia.org/wiki/Intel晶片組列表#Pentium_4晶片組 "wikilink")（[Pentium
4
Xeon](https://zh.wikipedia.org/wiki/Xeon#Xeon_（NetBurst微架構世代） "wikilink")）[晶片組的登場](https://zh.wikipedia.org/wiki/晶片組 "wikilink")，[Intel增加了對增至](https://zh.wikipedia.org/wiki/Intel "wikilink")32位而實現雙倍傳輸速度的雙管道PC-800
RDRAM的支援。隨後，[i850E晶片組導入了PC](https://zh.wikipedia.org/wiki/i850E "wikilink")-1066
RDRAM，雙管道時的合計傳輸速度擴大到了4200MB/s。2002年，Intel發佈了[E7205](https://zh.wikipedia.org/wiki/E7205 "wikilink")
Granitebay晶片組。導入了雙管道 DDR
記憶體，同與之競爭的RDRAM相比，可以在更低的等待時間下，提供4200MB/s的合計傳輸速度。

RDRAM為了達到800MHz的速度，與擁有64位匯流排的現代SDRAM DIMM不同，記憶體模組只可以工作在16位匯流排下。此外，Intel
820登場時的RDRAM模組，所有產品都無法工作在800MHz，而只能工作在較慢的時鐘頻率下。

### 基準測試

1998年實施的[基準測試中](https://zh.wikipedia.org/wiki/基準測試 "wikilink")，大部分的[應用程式在RDRAM下工作低速](https://zh.wikipedia.org/wiki/應用程式 "wikilink")。RDRAM使用[UMA比SDRAM產品相比僅僅是高速](https://zh.wikipedia.org/wiki/統一記憶體架構 "wikilink")，Intel
820並不是低端產品，更沒有開發使用RIMM的低端製品。因此，這點對於最終用戶來說沒有意義[3](http://www.tomshardware.com/1998/08/14/performance_impact_of_rambus/)
。

1999年，使用Intel 840, Intel 820, [Intel
440BX的基準測試中](https://zh.wikipedia.org/wiki/Intel_440BX "wikilink")，由於使用Rambus晶片組而獲得性能提高的，除了[工作站用途之外](../Page/工作站.md "wikilink")，與440BX晶片組和PC-133
SDRAM相比，價錢的大幅提高並不正常。[4](http://www.tomshardware.com/1999/12/15/the_rdram_avenger_/)。

後來在2002年，單管道DDR
SDRAM模組和[SiS](https://zh.wikipedia.org/wiki/SiS "wikilink")648組合時，實際的應用程序性能與雙管道1066MHz
RDRAM和Intel
850E的架構相抗衡。[5](http://www.tomshardware.com/2002/07/20/ddr400_kills_rambus/)。
此外，更即將有可使用雙管道DDR400 SDRAM模組的晶片組登場。

## PC市場上的RDRAM

1996年11月，Rambus
與[Intel簽訂了開發與授權協議](https://zh.wikipedia.org/wiki/Intel "wikilink")。\[3\]
在與DDR
SDRAM比較中認識了RDRAM的優越性後，Intel對於Wintel開發社群發表了自公司[微處理器僅會支援Rambus記憶體介面的聲明](https://zh.wikipedia.org/wiki/微處理器 "wikilink")，\[4\]Intel獲取了Rambus公司以每股10美元100万股股票的購買權。

1998年，Intel為了加速Direct RDRAM的導入，計劃了對[Micron
Technology進行](https://zh.wikipedia.org/wiki/Micron_Technology "wikilink")5億美元的資本投資。\[5\]作為額外的投資，還有1999年支付給[Samsung的](https://zh.wikipedia.org/wiki/Samsung "wikilink")1億美元等。

作為移行的戰略，Intel計畫在將來的Intel 82x晶片組上使用[Memory Transfer
Hub](https://zh.wikipedia.org/wiki/Intel_820#MTH "wikilink")
(MTH)以支援PC-133 SDRAM
DIMM。\[6\]2000年，由於MTH在同時交換時，發生了不明原因的停止工作，突發重新啟動的電氣噪音，Intel召回了搭載MTH的Intel
820主機板。\[7\]從此，Intel 820主機板沒有再搭載過MTH。

2000年，Intel將零售的Pentium 4
CPU與兩支RIMM配套發售，援助RDRAM。\[8\]然而，Intel在翌年的2001年起逐漸停止了對Rambus的支援。\[9\]

2003年，Intel發佈了[Intel
865和](https://zh.wikipedia.org/wiki/Intel晶片組列表#Pentium_4晶片組 "wikilink")[Intel
875晶片組](https://zh.wikipedia.org/wiki/Intel晶片組列表#Pentium_4晶片組 "wikilink")，作為取代Intel
850的高端晶片組產品。此外，未來的記憶體發展計劃(roadmap)中並未包含Rambus。\[10\]

幾乎沒有DRAM生產廠商取得了RDRAM的生產許可證，而取得了技術許可證的公司就連僅僅生產滿足市場需要的RIMM也失敗了，在記憶體價格高企的2002年RIMM也設定了較SDRAM
DIMM高的價格。\[11\]

## 相關條目

  - [傳輸速度](https://zh.wikipedia.org/wiki/傳輸速度 "wikilink")

## 外部連結

  - [Rumbus 公司網站上的
    RDRAM](http://www.rambus.com/cn/technology/solutions/rdram/index.html)
  - [含有關於PS2雙管道RDRAM的網站](https://web.archive.org/web/20090524090904/http://archives.cnn.com/2001/TECH/fun.games/10/24/linux.ps2.idg/index.html)
  - [RAMBUS記憶體的安裝方法](http://www.memorystock.com/how_to_install_rambus_rimm.htm)
  - [RDRAM圖解安裝向導](http://www.cheapestrdram.com/rdram_install.php)

## 注释

[it:DRAM\#Direct Rambus DRAM
(DRDRAM)](https://zh.wikipedia.org/wiki/it:DRAM#Direct_Rambus_DRAM_\(DRDRAM\) "wikilink")

[Category:電腦記憶體](https://zh.wikipedia.org/wiki/Category:電腦記憶體 "wikilink")

1.  [Rambus.com 8倍速](http://stage.www.rambus.scs9h.com/us/technology/innovations/detail/odr.html)
2.  [Rambus.com
    XDR](http://www.rambus.com/us/technology/solutions/xdr/index.html)
3.  <http://www10.edacafe.com/nbc/articles/view_weekly.php?articleid=209198&page_no=3>
4.  <http://www.webopedia.com/TERM/R/RDRAM.html>
5.
6.  <http://www.tomshardware.com/1999/10/05/intel_i820_chipset_review/>
7.
8.
9.  <https://archive.is/20120711022039/http://news.com.com/Intel+drops+Rambus+subsidies/2100-1001_3-270561.html>
10. <http://www.tomshardware.com/2003/04/01/ram_wars/page9.html>
11.