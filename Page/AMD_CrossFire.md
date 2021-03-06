> 本文内容由[AMD CrossFire](https://zh.wikipedia.org/wiki/AMD_CrossFire)转换而来。


**CrossFire**是[AMD產品所采用的一种多重](https://zh.wikipedia.org/wiki/AMD "wikilink")[GPU協同運算技術](https://zh.wikipedia.org/wiki/GPU "wikilink")，以兩張單GPU[顯示卡或雙GPU顯示卡連結的方式](https://zh.wikipedia.org/wiki/顯示卡 "wikilink")，讓兩顆GPU在一台電腦上協同運算，增加效能，與[NVIDIA的](https://zh.wikipedia.org/wiki/NVIDIA "wikilink")[SLI技術競爭](https://zh.wikipedia.org/wiki/SLI "wikilink")。CrossFire技術於2005年6月1日，在Computex Taipei 2005正式發佈，比[SLI遲一年](https://zh.wikipedia.org/wiki/SLI "wikilink")。至首度公開之今，CrossFire經过了數次修訂。開始的時候，需要主副卡的配合。之後，開始開放使用軟體交火模式。硬體交火方面，亦參考NVIDIA的做法，使用接線將兩張顯示卡連接起來。目前，高端的顯示卡，例如3870 X2顯示卡已集成了兩顆顯示核心。當中，兩顆核心的溝通其實是使用了CrossFire技術。

在CrossFire推出的時候，使用者要使用此技術，主機板亦必需支援CrossFire，以及需要兩張AMD [PCI Express介面的顯示卡](../Page/PCI_Express.md "wikilink")，要相同等級，並有可能需要購買主卡。例如：如果用家有一片Radoen X850XT PE顯示卡，必須額外購買一片Radeon X850 CrossFire Edition，才能達成CrossFire。但对X1600來說，只需購買兩張一模一样的卡，即可達成CrossFire，因為採用了軟體交火技術。由於以往ATi的顯示卡沒有像NVIDIA般預留協同運算，所以在第一代CrossFire，ATi采用Composting Engine和DMS Cable，來仿效NVIDIA的MIO接口。

## CrossFire各模式

CrossFire可以下列四種形式執行。

  -
    **Alternate Frame Rendering**
      - 把Frame以單雙數分給不同的GPU處理，例如VGA 1負責（1,3,5,7,9），而VGA 2負責（2,4,6,8,10）。

<!-- end list -->

  -
    **Scissor** (SplitFrame Rendering)
      - 將畫面分為上下半部，並各自由一顆GPU運算，然後再組合成同一個圖面。

<!-- end list -->

  -
    **SuperTiling**
      - 把畫面分割成很多小格，讓兩顆繪圖核心梅花間竹地處理小格內的資料。這個方法效能最佳，但此模式只能支援於Direct 3D，不支援[OpenGL](../Page/OpenGL.md "wikilink")。

<!-- end list -->

  -
    **CrossFire Super AA**
      - 这模式能增加畫面質素，讓兩個繪圖核心同時執行AA運算，然後把結果組合。例如一同執行4x AA運算，結果會是8x AA 畫質。

### 第一代

於2005年9月27日推出，當時的採用的模式是主副卡模式。採用此模式的ATI顯示卡有Radeon X800，X850，X1800和X1900。副卡是一張普通的顯示卡，而主卡就多出數顆晶片，成為資料混合引擎。

Radeon X850XT CrossFire Edition，與正常的X850XT的分別在於多出了四顆晶片，構成了Composting Engine:

  - Silcon Image Sil1611, DVI接收晶片
  - Silcon Image Sil1612, DVI輸出晶片
  - Analog Devices的ADV7123, Digital to Analog轉換晶片
  - XILUNX Spartan XC3S400，系統邏輯DSP晶片

普通的Radeon X850XT會透過一條特別的Cable，將運算結果傳送到Radeon X850XT CrossFire Edition（透過特別DMS接口接收結果）。Radeon X850XT CF Edition內的Composting Engine便會把兩顆核心的運算結果結合在一起，然後透過同一條Cable上的DVI接口將結果顯示在顯示器。

优点：

  - 買了普通Radeon X850XT的人，仍可使用CrossFire。
  - 不佔據原本的PCI-e的頻寬，充分發揮CrossFire的性能。

缺点：

  - 由於DVI接收与輸出晶片最高的頻寬頻率只有165MHz，所以不支援UXGA(1600 x 1200)以上的解析度。
  - 多出了的四顆晶片，令成本增高，導致CrossFire Edition的顯示卡售價遍高。四顆晶片的成本亦成了將CrossFire推廣的跘腳石。

### 第二代

由於多出了的硬體令成本增高，ATi決定中低階顯示卡使用軟體Composting Engine，即X1300 Series和X1600 Series。為了充分發揮CrossFire的效能，X1800 Series仍會使用改良後的第二代硬體Composting Engine。

  - 第二代硬体Composting Engine

R520高達2048 x 1536@70+的CrossFire模式，相信就是改用比Silicon Image Sil1611更高解析度的晶片代替，此外ATi亦決定推出X1800版本的CrossFire Edition，期望把CrossFire進一步普及。

  - 軟体Composting Engine

應用於中階和低階顯視卡。顯視卡中現集成Composting Engine。副卡的資料傳送會透過PCI-E，不是採用DMS Cable，到主卡。若高階顯視卡採用軟體Composting Engine，效能比硬體Composting Engine下降60%。而低階顯視卡不用處理太複雜資料，霸佔的PCI-E頻寬不太嚴重，中階則因霸佔的PCI-E頻寬而令性能增長減少。

### 第三代

  - 原生交叉火網Native CrossFire

新一代的X1650XT、X1950Pro显卡集成了CrossFire合成引擎，並有接口將双卡互連，情況猶如nvidia的SLi。而Catalyst 6.11驅動程式亦開放了X1900 Series的顯示卡的軟體Composting Engine模式，不再需要主卡和接線，但必需配合擁有双PCI Express x16的主機版使用。

第三代CrossFire能支持五個顯示器輸出，但需配合ATI的集成显示卡晶片组，例如RS 480和RS 580。

### 第四代

新一代交火技術在R9 290和R9 290X引入，不再需要CF接橋。[DMA引擎已整合在顯示卡](../Page/直接記憶體存取.md "wikilink")，透過[PCI Express總線直接存取其他GPU](../Page/PCI_Express.md "wikilink")，即可實現多重GPU協同運算。雖然沒有使用接橋，但AMD表示這不是軟件交火，因為顯示卡上是有專門負責交火的硬件。

相比傳統接橋(900 MB/s)，PCIe 3.0總線提供了近35倍的頻寬 (32 GB/s)，而且不需要接橋。滿足[Eyefinity多螢幕技術和](https://zh.wikipedia.org/wiki/Eyefinity "wikilink")[4K顯示的高頻寬需求](https://zh.wikipedia.org/wiki/4K "wikilink")，XDMA因此成為了新一代多重GPU協同運算解決方案。

## \-{zh-hans:支持;zh-hk:支援;zh-tw:支援;}-卡種

  - 第一代

<!-- end list -->

  - X850 XT PE（需要主卡）

<!-- end list -->

  - 第二代

<!-- end list -->

  - X1300 Series（不需主卡）
  - X1600 Series（不需主卡）
  - X1800 Series（需要主卡）
  - X1900 Series（需要主卡）
  - X1950 XTX（需要主卡）

<!-- end list -->

  - 第三代

<!-- end list -->

  - X1650 GT/XT（不需主卡）
  - X1950 GT/Pro（不需主卡）
  - HD2000 Series（不需主卡）
  - HD3000 Series（不需主卡）
  - HD4000 Series（不需主卡）
  - HD5400/5500 Series（不需主卡）
  - HD5600/5700/5800/5900 Series（不需主卡）
  - HD6400/6500/6600 Series（需CPU集成显示核心）
  - HD6700/6800/6900 Series（不需主卡）
  - HD7700/7800/7900 Series（不需主卡）

<!-- end list -->

  - 第四代

<!-- end list -->

  - R9 290 Series 及以后（不需主卡，现时的英特尔芯片组主板不提供AMD CrossFire
  - RX 5700与RX 5700XT之后的显卡不支持CrossFire

## \-{zh-hans:支持;zh-hant:支援;}-晶片組

### [Intel](https://zh.wikipedia.org/wiki/Intel "wikilink")

  - Intel X99 - 能达到PCI-E 3.0 x16/x16、x16/x16/x8、x16/x8/x8/x8和x8/x8/x8/x8/x8规格
  - Intel Z97 - 能达到PCI-E 3.0 x8/x8和x8/x4/x4规格
  - Intel Z87 - 能达到PCI-E 3.0 x8/x8和x8/x4/x4规格
  - Intel X79 - 能达到PCI-E 3.0 x16/x16、x16/x16/x8和x16/x8/x8/x8/规格
  - Intel Z77 - 能达到PCI-E 3.0 x8/x8规格
  - Intel Z75 - 能达到PCI-E 3.0 x8/x8规格
  - Intel Z68 - 能达到PCI-E 2.0 x8/x8规格
  - Intel P67 - 能达到PCI-E 2.0 x8/x8规格
  - Intel X58 - 能达到PCI-E 2.0 x16/x16、x16/x8/x8、x8/x8/x8/x8规格
  - Intel P55 - 能达到PCI-E 2.0 x8/x8规格
  - Intel X48 - 能达到PCI-E 2.0 x16/x16规格
  - Intel P45 - 能达到PCI-E 2.0 x8/x8规格
  - Intel X38 - 能达到PCI-E 2.0 x16/x16规格
  - Intel P35 - 能达到PCI-E 1.0 x16/x4规格
  - Intel 975X - 能达到PCI-E 1.0 x8/x8规格

此外，华硕和EVGA等主板厂商生产的个别版本Z77/Z87/Z97已经开始支持x16/x16、x16/x8/x8和x8/x8/x8/x8规格，甚至X79/C602/C604/C606主板也支持x16/x16/x16/x16或x16/x8/x8/x8/x8/x8/x8规格，尽管英特尔官方发布的C600芯片组不支持NVIDIA SLI/AMD Crossfire，但同样支持NVIDIA Tesla或Maximus技术。

### [AMD](https://zh.wikipedia.org/wiki/AMD "wikilink")

  - AMD 990FX - 能达到PCI-E 2.0 x16/x16或x8/x8/x8/x8规格
  - AMD 990X - 能达到PCI-E 2.0 x8/x8规格
  - AMD 970FX - 能达到PCI-E 2.0 x8/x8规格
  - AMD 890FX - 能达到PCI-E 2.0 x16/x16或x8/x8/x8/x8规格
  - AMD 890GX - 能达到Hybrid CrossFire+PCI-E 2.0 x8/x8规格
  - AMD 790FX - 能达到PCI-E 2.0 x16/x16或x8/x8/x8/x8规格
  - AMD 790GX - 能达到Hybrid CrossFire+PCI-E 2.0 x8/x8规格
  - AMD 790X - 能达到PCI-E 2.0 x8/x8规格

主板厂商生产的实质产品（指AMD 990FX）仅提供x16/x16规格，另外一条/两条x16以x4模式运行。

有部分廠商在主機板張自行添加PCI-E 2.0的頻寬控制器來達到以上晶片組的目的，如[華擎科技](../Page/華擎科技.md "wikilink")的970 Extreme4即為此項應用。AMD 970的晶片組原本只可行單條x16，但經過[祥碩科技的頻寬控制器後](https://zh.wikipedia.org/wiki/祥碩科技 "wikilink")，可實現x8/x8來達成CrossFire及SLI。

## CrossFireX

[AMD於](https://zh.wikipedia.org/wiki/AMD "wikilink")2007年11月19號發佈[蜘蛛平臺時同時發表了接替CrossFire的下一代技術CrossFireX](https://zh.wikipedia.org/wiki/蜘蛛平臺 "wikilink")，CrossFireX基礎原理相同，但擴充支援三到四顆GPU共同運算，目前確定[AMD 700 晶片組系列中的](https://zh.wikipedia.org/wiki/AMD_700_晶片組系列 "wikilink")790FX會支援，也有消息\[1\]指出[Intel的](https://zh.wikipedia.org/wiki/Intel "wikilink")[P45晶片組將支援CrossFireX](https://zh.wikipedia.org/wiki/P45晶片組 "wikilink")。驅動程式方面，CrossFireX只會支援[Windows Vista作業系統](../Page/Windows_Vista.md "wikilink")，原因是驅動本身已經複雜，而[Windows XP遲早會被淘汰](../Page/Windows_XP.md "wikilink")，所以集中資源開發Vista驅動比較划算\[2\]。

## AMD 雙重圖形技術

讓系統同時利用主機板整合顯示和獨立顯示卡的技術，有兩種訴求不同的模式，目前確定[AMD 700 晶片組系列中的](https://zh.wikipedia.org/wiki/AMD_700_晶片組系列 "wikilink")780G會支援，與[nVidia的](https://zh.wikipedia.org/wiki/nVidia "wikilink")[Hybrid SLI技術競爭](https://zh.wikipedia.org/wiki/Hybrid_SLI "wikilink")。

### PowerXpress

當系統不需要大量GPU計算，獨立顯示卡將進入類似休眠的狀態，而需要時可立即啟動，毋須重新開機。僅應用於移動芯片組平臺。

### Dual Graphics

當系統需要大量GPU計算，獨立顯示卡和整合式顯示晶片將共同運算。

只限HD 2400和HD 3400系列顯示卡與780G或790GX北橋顯示晶片組支援此模式。

2012年，AMD推出採用[Socket FM2的第二代](../Page/Socket_FM2.md "wikilink")[加速處理器](../Page/AMD加速处理器.md "wikilink")，最高可配合HD 6670進行混合交火。至2014年，核心代號「Karveri」加速處理器上市後，A10-5800K/6800K/7850K等型號最高可配合Radeon HD 7750實作Dual Graphics，但效能提升相較於Radeon HD 6670的要不明顯，然而AMD並沒有公開說明Radeon HD 7000系列（基於GCN架構之核心）可以支援Dual Graphics\[3\]。

## 注釋及參考資料

[Category:AMD技术](https://zh.wikipedia.org/wiki/Category:AMD技术 "wikilink") [Category:冶天科技](https://zh.wikipedia.org/wiki/Category:冶天科技 "wikilink")

1.
2.  [3月来\!探寻CrossFireX背后的一些秘密](http://diybbs.zol.com.cn/8/198_71819.html)
3.