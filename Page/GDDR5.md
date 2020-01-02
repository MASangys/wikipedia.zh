> 本文内容由[GDDR5](https://zh.wikipedia.org/wiki/GDDR5)转换而来。


**第五版圖形用雙倍資料傳輸率**記憶體（**G**raphics **D**ouble **D**ata **R**ate, version **5**，簡稱**GDDR5**），是一種高性能[顯示卡使用的](https://zh.wikipedia.org/wiki/顯示卡 "wikilink")[同步動態隨機存取記憶體](https://zh.wikipedia.org/wiki/同步動態隨機存取記憶體 "wikilink")，专为高带宽需求电脑应用所设计。由AMD、SK Hynix、三星電子、NVIDIA、JEDEC等聯合制定，取代[GDDR3以及](https://zh.wikipedia.org/wiki/GDDR3 "wikilink")[GDDR4顯示記憶體](https://zh.wikipedia.org/wiki/GDDR4 "wikilink")。

## 技術細節

GDDR5和GDDR4一樣基於[DDR3 SDRAM改造而來](../Page/DDR3_SDRAM.md "wikilink")，基本記憶體架構和DDR3相若，記憶體預取也是相同的8n設定。所謂的「預取」，及記憶體晶片內部的記憶體陣列傳輸率與輸出/輸入（I/O）存取傳輸率的比值，「8n」代表I/O緩衝區一次讀取記憶體陣列中8位元的資料，提升記憶體外部的傳輸速度。\[1\]

GDDR5為了增大[頻寬並降低延時](https://zh.wikipedia.org/wiki/頻寬 "wikilink")，避免出現GDDR4那樣高頻寬但高延時的情況，與DDR3相比，GDDR5顯示記憶體使用了DQ并行双数据总线，相当于提供了在[GDDR3的基础上多加了一条通道](https://zh.wikipedia.org/wiki/GDDR3 "wikilink")，而GDDR3顯示記憶體、DDR3記憶體却只有一条通道；另外，GDDR5採用時脈分離的設計，位址與命令匯流排採用其中一組時脈信號，而資料匯流排則採用另外獨立的一組，且為位址與命令匯流排時脈的兩倍。所以GDDR5的理論速度可达DDR3的四倍、GDDR3/GDDR4的兩倍，5GT/s以上的高傳輸率（亦即坊間所謂的5GHz高頻）變成可能，透過高頻率有可能使一款128bit的顯卡性能超過DDR3的256bit顯卡。\[2\]。

相比GDDR3或GDDR4顯示記憶體而言工作电压從1.8V降為[电压仅有](https://zh.wikipedia.org/wiki/电压 "wikilink")1.5V，还具有新电源管理技术，功耗更低。\[3\]且GDDR3使用的为80nm[制程](https://zh.wikipedia.org/wiki/制程 "wikilink")，而GDDR5为55nm，制程的提高使芯片的体积缩小，發熱量也可以低许多。\[4\]

一般GDDR5需搭配[PCI-E以上規格的顯卡才有支援](https://zh.wikipedia.org/wiki/PCI-E "wikilink")。但[Sony新一代家庭游戏机](https://zh.wikipedia.org/wiki/Sony "wikilink")[PlayStation 4也使用了GDDR](../Page/PlayStation_4.md "wikilink")5，其搭載由AMD定制的APU，配合HSA，可直接使用GDDR5作為資料存取使用。

### 頻率

廠商標示的是數據頻率，數據頻率相等於運作頻率的4倍。6000MHz GDDR5的實際運作頻率是1500MHz。DDR記億體會於一個時鐘周期內的上升期和下降期各傳輸一次數據，DQ并行双总线也令數據傳輸量倍增。

## 下一代接替品

2011年早期有消息指出，[DDR4 SDRAM記憶體問世後](../Page/DDR4_SDRAM.md "wikilink")，將會有基於DDR4標準的GDDR6顯示記憶體標準，亦即「**第六版圖形用雙倍資料傳輸率**」（Graphics Double Data Rate, version 6，簡稱[GDDR6](../Page/GDDR6.md "wikilink")），將由[AMD與](https://zh.wikipedia.org/wiki/AMD "wikilink")[JEDEC](../Page/JEDEC.md "wikilink")於2012年合作制定，除此以外還有[NVIDIA](https://zh.wikipedia.org/wiki/NVIDIA "wikilink")、[Intel](https://zh.wikipedia.org/wiki/Intel "wikilink")、[高通](../Page/高通.md "wikilink")、[德州仪器](../Page/德州仪器.md "wikilink")、[Cisco等資訊企業參與該標準的制定](https://zh.wikipedia.org/wiki/Cisco "wikilink")。\[5\]該標準或基於[DDR4 SDRAM](../Page/DDR4_SDRAM.md "wikilink")，與基於[DDR3 SDRAM的GDDR](../Page/DDR3_SDRAM.md "wikilink")5將有不少技術差異。

儘管有不少消息稱該標準將於2014年完成，實際產品將會到2020年會大規模使用。\[6\]\[7\]\[8\]\[9\]然而，至今JEDEC以及其相關合作夥伴仍未公佈任何關於GDDR6的相關資訊。\[10\]直到2015年4月為止，NVIDIA所發售的[GeForce 900系列顯示核心仍然使用GDDR](https://zh.wikipedia.org/wiki/GeForce_900系列 "wikilink")5顯示記憶體，但等效時脈提升至7,010MHz上下；而AMD則是公佈了HBM堆疊式顯示記憶體技術，2015年6月，AMD發表[Radeon Rx 300系列有搭載HBM技術的顯示卡](../Page/AMD_Radeon_Rx_300.md "wikilink")。

HBM比起GDDR5擁有更高的頻寬和位元，位元部分每一顆HBM記憶體就高達1024位元，記憶體時脈只有500左右，電壓也比GDDR5小，還能縮小記憶體佈置空間，不過製造困難成本也高，所以供應量非常少。因HBM產量低而且成本高昂，此時再有GDDR6顯示記憶體將接替GDDR5的消息流出。\[11\]\[12\]

在HBM發佈之後，HBM 2也成功開發出來，記憶體位元提升至兩倍。

[美光科技](../Page/美光科技.md "wikilink")於2015年10月宣布成功開發出GDDR5X，比GDDR5更高、逼近現時HBM的頻寬速度（於記憶體匯流排維持256位元、等效時脈14GHz的條件下，至少可擁有448GB/s的頻寬）。目前已知GDDR5X相較於GDDR5的改變，在於記憶體預取從8n提升到16n、更低的運行電壓（和DDR3L相同的1.35V）、其餘部分與GDDR5的基本相同。\[13\]\[14\][NVIDIA](https://zh.wikipedia.org/wiki/NVIDIA "wikilink") [Pascal架構的顯示核心](https://zh.wikipedia.org/wiki/Pascal "wikilink")，旗艦型號使用GDDR5X記憶體。

## 另见

  - [電腦裝置頻寬列表](../Page/電腦裝置頻寬列表.md "wikilink")

## 外部連結

  - [Introduction To GDDR5 SGRAM(by ELPIDA)](https://web.archive.org/web/20110720090920/http://www.elpida.com/pdfs/E1600E10.pdf)
  - [Making Accurate Measurements on GDDR5 Memory Systems](https://web.archive.org/web/20110707094741/http://cp.literature.agilent.com/litweb/pdf/5990-6130EN.pdf)

## 参考文献

[分類:電腦記憶體](https://zh.wikipedia.org/wiki/分類:電腦記憶體 "wikilink")

1.
2.  [Register report](http://www.reghardware.co.uk/2007/11/01/qimonda_samples_gddr5) . Retrieved November 2, 2007.
3.
4.
5.
6.
7.
8.
9.  [When should we expect GDDR6?](http://www.reddit.com/r/hardware/comments/2cfwhh/when_should_we_expect_gddr6/) - [Reddit](../Page/Reddit.md "wikilink")
10.
11.
12.
13.
14.