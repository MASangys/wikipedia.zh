**伯克利開放式網絡計算平台**（，簡稱**BOINC**）是目前主流的[分佈式計算平台之一](https://zh.wikipedia.org/wiki/分佈式計算平台 "wikilink")，由[加州大學柏克萊分校電腦學系發展出的](https://zh.wikipedia.org/wiki/加州大學柏克萊分校 "wikilink")[分散式計算系統](https://zh.wikipedia.org/wiki/分散式計算 "wikilink")。原本專為[SETI@home](../Page/SETI@home.md "wikilink")項目而設計，目前納入的領域包括[數學](https://zh.wikipedia.org/wiki/數學 "wikilink")、[醫學](https://zh.wikipedia.org/wiki/醫學 "wikilink")、[天文學](../Page/天文學.md "wikilink")和[氣象學等](https://zh.wikipedia.org/wiki/氣象學 "wikilink")。BOINC匯集全球各地志願者的電腦或移動裝置，提供運算能力給研究者。截至2017年3月，BOINC在全世界有約815,912台活躍的主機，提供約18.971[PetaFLOPS的運算能力](https://zh.wikipedia.org/wiki/FLOPS "wikilink")\[1\]。

## 運行原理

安裝BOINC軟件的電腦在閒置時，會使用電腦的[CPU或](https://zh.wikipedia.org/wiki/CPU "wikilink")[GPU進行運算](../Page/圖形處理器.md "wikilink")。即使電腦正在使用，BOINC將利用空閒的CPU週期作計算。如果志願者的電腦裝有[NVIDIA](https://zh.wikipedia.org/wiki/NVIDIA "wikilink")、[ATI或](https://zh.wikipedia.org/wiki/ATI "wikilink")[Intel的GPU並選擇使用其作為運算硬體](https://zh.wikipedia.org/wiki/Intel "wikilink")，則某些BOINC專案的計算速度將比單純使用CPU的版本提高2至10倍\[2\]。

當志願者使用電腦參與BOINC專案時，BOINC會與專案的[伺服器連線](https://zh.wikipedia.org/wiki/伺服器 "wikilink")，伺服器會向電腦提供工作單位（Workunit，簡稱WU），然後電腦會對工作單位作運算，等待運算完成後，BOINC將把結果上傳至專案伺服器。

專案伺服器負責協調各志願者電腦的工作，包括發送工作單位、接收已處理的結果、核對大量的結果再作處理，成為研究人員需要的數據。由於個別的電腦可能會在運算過程出現錯誤，所以伺服器一般會把同一工作單位傳送至多個志願者，並比較各個結果。

BOINC設有積分系统，積分間接反映志願者的貢獻，因為在BOINC上可以運行的專案千差萬别。例如專案A的工作包在某台電腦上需要3個小時完成，而專案B的工作包在該電腦上需要30個小時才能完成，顯然用完成的工作包的數目來衡量工作量是不可行的；而不同電腦的性能也有差别，用CPU時間來衡量工作量亦是不行的。積分系统只能通過一定的算法得到志願者實際完成的計算量。

BOINC從版本6.4.5起，開始支持[GPU運算](https://zh.wikipedia.org/wiki/通用圖形處理器 "wikilink")，目前有[GPUgrid.net](https://zh.wikipedia.org/wiki/GPUgrid.net "wikilink")、[SETI@home](../Page/SETI@home.md "wikilink")、[Milkyway@home](https://zh.wikipedia.org/wiki/Milkyway@home "wikilink")、[PrimeGrid](https://zh.wikipedia.org/wiki/PrimeGrid "wikilink")、[Collatz Conjecture和](https://zh.wikipedia.org/wiki/Collatz_Conjecture "wikilink")[DNETC@Home等多個GPU專案](https://zh.wikipedia.org/wiki/DNETC@Home "wikilink")。

用户亦可使用BOINC 帳户管理器（BOINC Account Manager）方便参與和管理不同BOINC平台項目。

## 專案

[Boinc.png](https://zh.wikipedia.org/wiki/File:Boinc.png "fig:Boinc.png")

### 生物學、醫學

  - [Docking@Home](../Page/Docking@Home.md "wikilink")—研究更深入的[蛋白質鍵結和反應的](https://zh.wikipedia.org/wiki/蛋白質 "wikilink")[原子](../Page/原子.md "wikilink")等級構造和細節，並藉由其研究結果來研發藥物以治療人類疾病，目前已停止運作。
  - [DrugDiscovery@Home](https://zh.wikipedia.org/wiki/DrugDiscovery@Home "wikilink")—研發藥物以治療人類疾病，目前已停止運作。
  - [Malaria Control](https://zh.wikipedia.org/wiki/Malaria_Control "wikilink")—模擬[瘧疾的影響及控制](https://zh.wikipedia.org/wiki/瘧疾 "wikilink")，目前已停止運作。
  - [Predictor@home](https://zh.wikipedia.org/wiki/Predictor@home "wikilink")—預測蛋白質的結構，目前已停止運作。
  - [Proteins@home](https://web.archive.org/web/20080325060652/http://biology.polytechnique.fr/proteinsathome/)—推論[DNA的次序](https://zh.wikipedia.org/wiki/去氧核醣核酸 "wikilink")，目前已停止運作。
  - [GPUGRID.net](http://www.gpugrid.net/index.php)—研究[分子生物](https://zh.wikipedia.org/wiki/分子生物 "wikilink")[動力學](../Page/動力學.md "wikilink")相關的研究，主要運行環境為支援[CUDA](../Page/CUDA.md "wikilink")的NVidia GPU。
  - [Rosetta@home](../Page/Rosetta@home.md "wikilink")—研究蛋白質的摺疊。

:\* [RALPH@Home](https://zh.wikipedia.org/wiki/RALPH@Home "wikilink")—Rosetta@Home的測試專案。

  - [SIMAP](https://zh.wikipedia.org/wiki/SIMAP "wikilink")（[Similarity Matrix of Proteins](https://web.archive.org/web/20080625060947/http://boinc.bio.wzw.tum.de/boincsimap/)）－ 一个蛋白質同源計算序列並可以對這些序列數據提供專業的檢索工具的數據庫，目前已停止運作。
  - [TANPAKU](https://zh.wikipedia.org/wiki/TANPAKU "wikilink")—利用[布朗動力學方法計算蛋白質的結構](https://zh.wikipedia.org/wiki/布朗動力學 "wikilink")，目前已停止運作。
  - [POEM@HOME](https://zh.wikipedia.org/wiki/POEM@HOME "wikilink")—利用能量法來研究蛋白質的結構，目前已停止運作。
  - [MindModeling@Home](https://zh.wikipedia.org/wiki/MindModeling@Home "wikilink")—研究人類腦部的[認知科學](https://zh.wikipedia.org/wiki/認知科學 "wikilink")。
  - [Superlink@Technion](https://zh.wikipedia.org/wiki/Superlink@Technion "wikilink")—幫助科學家研究人類[基因](../Page/基因.md "wikilink")及其異常所產生的疾病，目前已停止運作。
  - [The Lattice Project](https://zh.wikipedia.org/wiki/The_Lattice_Project "wikilink")—[美國](https://zh.wikipedia.org/wiki/美國 "wikilink")[馬里蘭大學的研究](https://zh.wikipedia.org/wiki/馬里蘭大學 "wikilink")[生物資訊學領域相關的分布式計算平台](https://zh.wikipedia.org/wiki/生物資訊學 "wikilink")，目前已停止運作。
  - [Virtual Prairie](https://zh.wikipedia.org/wiki/Virtual_Prairie "wikilink")
  - [Cels@Home](https://zh.wikipedia.org/wiki/Cels@Home "wikilink")
  - [RNA world](https://zh.wikipedia.org/wiki/RNA_world "wikilink")—研究分析生物中[RNA的分子結構](https://zh.wikipedia.org/wiki/核醣核酸 "wikilink")。
  - [DNA@Home](https://zh.wikipedia.org/wiki/DNA@Home "wikilink")—研究有關生物中DNA的基因調控作用，目前已停止運作。
  - [FightNeglectedDiseases@Home](https://zh.wikipedia.org/wiki/FightNeglectedDiseases@Home "wikilink")（FiND@Home）

### 氣象學、地球科學

  - [Climateprediction.net](../Page/Climateprediction.net.md "wikilink")（CPDN）—預測[廿一世紀的氣候](https://zh.wikipedia.org/wiki/廿一世紀 "wikilink")。

:\* [BBC Climate Change Experiment](../Page/BBC_Climate_Change_Experiment.md "wikilink")—與[英國廣播公司合作的項目](https://zh.wikipedia.org/wiki/英國廣播公司 "wikilink")，結果已製作成[紀錄片](../Page/紀錄片.md "wikilink")，目前已停止運作並併入Climateprediction.net的主計劃中。

:\* [Seasonal Attribution Project](https://zh.wikipedia.org/wiki/Seasonal_Attribution_Project "wikilink")—研究引致[極端氣候的人為因素](https://zh.wikipedia.org/wiki/極端氣候 "wikilink")。

:\* [CPDN Beta](https://zh.wikipedia.org/wiki/CPDN_Beta "wikilink")—Climateprediction.net的測試專案。

  - [地震捕手网络 Catcher Network)](../Page/地震捕手网络.md "wikilink")(Quake—利用分佈在全球各地電腦的[傳感器來偵測和研究](https://zh.wikipedia.org/wiki/傳感器 "wikilink")[地震](../Page/地震.md "wikilink")現象。

### 物理、化學、天文學

  - [Einstein@Home](../Page/Einstein@Home.md "wikilink")—搜尋[脈衝星的](https://zh.wikipedia.org/wiki/脈衝星 "wikilink")[引力波](https://zh.wikipedia.org/wiki/引力波 "wikilink")。
  - [Cosmology@Home](https://zh.wikipedia.org/wiki/Cosmology@Home "wikilink")—研究宇宙的模型及其相關的物理天文學資訊。
  - [Leiden Classical](../Page/Leiden_Classical.md "wikilink")—模擬在經典物理環境下的各種[分子](../Page/分子.md "wikilink")和[原子](../Page/原子.md "wikilink")。
  - [LHC@home](../Page/LHC@home.md "wikilink")—模擬[粒子加速](https://zh.wikipedia.org/wiki/粒子加速 "wikilink")，協助設計及改善[LHC](https://zh.wikipedia.org/wiki/LHC "wikilink")[粒子加速器](../Page/粒子加速器.md "wikilink")。

:\* [vLHC@Home](https://zh.wikipedia.org/wiki/vLHC@Home "wikilink") —亦稱"LHC2.0"，先前為Test4Theory專案。利用虛擬機器模擬粒子加速器的項目。

  - [NanoHive@Home](https://zh.wikipedia.org/wiki/NanoHive@Home "wikilink")—模擬和研究[奈米分子的結構系統和特性](https://zh.wikipedia.org/wiki/奈米分子 "wikilink")，目前已停止運作。
  - [Orbit@home](https://zh.wikipedia.org/wiki/Orbit@home "wikilink")—計算[近地小行星](../Page/近地小行星.md "wikilink")的軌道路徑，以預防其碰撞地球而對地球造成損害，目前由於缺乏資金已暫停運作，將在2014年或15年恢復運行。
  - [QMC@Home](https://zh.wikipedia.org/wiki/QMC@Home "wikilink")—發展在[量子化學領域廣泛使用的量子統計模擬方法](https://zh.wikipedia.org/wiki/量子化學 "wikilink")。
  - [SETI@home](../Page/SETI@home.md "wikilink")—搜索[外太空文明](https://zh.wikipedia.org/wiki/外太空文明 "wikilink")。

:\* [SETI@home beta](https://zh.wikipedia.org/wiki/SETI@home_beta "wikilink")—測試SETI@home。

  - [μFluids@Home](http://www.ufluids.net/)—模擬[微重力和](https://zh.wikipedia.org/wiki/微重力 "wikilink")[微流體力學問題的兩相現象](https://zh.wikipedia.org/wiki/微流體力學 "wikilink")，目前已停止運作。
  - [Milkyway@home](https://zh.wikipedia.org/wiki/Milkyway@home "wikilink")—研究[銀河系的重力波](https://zh.wikipedia.org/wiki/銀河系 "wikilink")，支援NVidia CUDA及[ATi的顯示卡運算](https://zh.wikipedia.org/wiki/ATi "wikilink")。
  - [Spinhenge@home](https://zh.wikipedia.org/wiki/Spinhenge@home "wikilink")—研究[納米磁性分子的物理特性](https://zh.wikipedia.org/wiki/納米磁性分子 "wikilink")，目前已停止運作。
  - [BRaTS@home](https://zh.wikipedia.org/wiki/BRaTS@home "wikilink")—進行引力波束追踪的相關計算，目前已停止運作。
  - [Hydrogen@Home](https://zh.wikipedia.org/wiki/Hydrogen@Home "wikilink")—研究以[氫作為動力的乾淨能源](https://zh.wikipedia.org/wiki/氫 "wikilink")，目前已停止運作。
  - [Magnetism@home](https://zh.wikipedia.org/wiki/Magnetism@home "wikilink")
  - [SLinCA@Home](https://zh.wikipedia.org/wiki/SLinCA@Home "wikilink")—研究物理及[材料科學領域](https://zh.wikipedia.org/wiki/材料科學 "wikilink")。
  - [Eon](https://zh.wikipedia.org/wiki/Eon "wikilink")—利用[理論化學方法來研究](https://zh.wikipedia.org/wiki/理論化學 "wikilink")[凝聚態物理學和材料科學](https://zh.wikipedia.org/wiki/凝聚態物理學 "wikilink")。

### 數學

  - [ABC@Home](https://zh.wikipedia.org/wiki/ABC@Home "wikilink")—嘗試解決[ABC猜想](../Page/Abc猜想.md "wikilink")。
  - [Chess960@Home](https://zh.wikipedia.org/wiki/Chess960@Home "wikilink")—研究[菲舍爾任意制象棋](../Page/菲舍爾任意制象棋.md "wikilink")的開局理論並建立巨型的[國際象棋棋局資料庫](https://zh.wikipedia.org/wiki/國際象棋 "wikilink")。
  - [NQueens@home](https://zh.wikipedia.org/wiki/NQueens@home "wikilink")—解決國際象棋的[N皇后問題](https://zh.wikipedia.org/wiki/N皇后問題 "wikilink")，目前已停止運作。
  - [PrimeGrid](https://zh.wikipedia.org/wiki/PrimeGrid "wikilink")—嘗試將巨大的數字進行因式分解，尋找人類未知的質數。
  - [Rectilinear Crossing Number](http://dist.ist.tugraz.at/cape5/)—研究平面中最少的[交叉數](../Page/交叉數.md "wikilink")問題，目前已停止運作。
  - [RieselSieve](https://web.archive.org/web/20060815152921/http://boinc.rieselsieve.com/)—尋找k\*2^n-1形式的素數，顯示k=509203是最小的[黎瑟爾斯數](https://zh.wikipedia.org/wiki/黎瑟爾斯數 "wikilink")，目前已併入PrimeGrid專案中。
  - [Collatz Conjecture](https://zh.wikipedia.org/wiki/Collatz_Conjecture "wikilink")—研究[考拉茲猜想](https://zh.wikipedia.org/wiki/考拉茲猜想 "wikilink")。
  - [NFS@Home](https://zh.wikipedia.org/wiki/NFS@Home "wikilink")
  - [Sudoku project](https://zh.wikipedia.org/wiki/Sudoku_project "wikilink")—研究[數獨](../Page/數獨.md "wikilink")問題，目前已停止運作。
  - [Ramsey@Home](https://zh.wikipedia.org/wiki/Ramsey@Home "wikilink")—研究[拉姆西數](https://zh.wikipedia.org/wiki/拉姆西數 "wikilink")，目前已停止運作。
  - [Reversi](https://zh.wikipedia.org/wiki/Reversi "wikilink")—研究[黑白棋](../Page/黑白棋.md "wikilink")遊戲，目前已停止運作。
  - [WEP-M+2 Project](https://zh.wikipedia.org/wiki/WEP-M+2_Project "wikilink")—使用WEP算法對2^p+1進行因式分解。
  - [Sudoku@vtaiwan](https://zh.wikipedia.org/wiki/Sudoku@vtaiwan "wikilink")—由[台灣的](https://zh.wikipedia.org/wiki/台灣 "wikilink")[交通大學推出的計劃](https://zh.wikipedia.org/wiki/交通大學 "wikilink")，研究數獨問題，目前已停止運作。
  - [DNETC@HOME](https://zh.wikipedia.org/wiki/DNETC@HOME "wikilink")

### 電腦、資訊科技

  - [World Community Grid](https://zh.wikipedia.org/wiki/World_Community_Grid "wikilink")—由[IBM](../Page/IBM.md "wikilink")主持，主要目的為利用分佈式計算來幫助尋找人類疾病的治療方法，和改善人類生活的相關研究。
  - [AQUA@home](https://zh.wikipedia.org/wiki/AQUA@home "wikilink")—幫助設計量子電腦，目前已停止運作。
  - [BURP](https://zh.wikipedia.org/wiki/BURP "wikilink")—處理及創作三維動畫。
  - [DepSpid](https://zh.wikipedia.org/wiki/DepSpid "wikilink")—互聯網搜尋器，目前已停止運作。
  - [EDGeS@Home](https://zh.wikipedia.org/wiki/EDGeS@Home "wikilink")
  - [Enigma@Home](https://zh.wikipedia.org/wiki/Enigma@Home "wikilink")—嘗試破解[第二次世界大戰時由](https://zh.wikipedia.org/wiki/第二次世界大戰 "wikilink")[恩尼格瑪密碼機傳送的原始訊息](https://zh.wikipedia.org/wiki/恩尼格瑪密碼機 "wikilink")。
  - [HashClash](https://zh.wikipedia.org/wiki/HashClash "wikilink")
  - [Project Neuron](https://zh.wikipedia.org/wiki/Project_Neuron "wikilink")—測試BOINC框架，目前已停止運作。
  - [SHA-1 Collision Search Graz](https://web.archive.org/web/20090225115007/http://boinc.iaik.tugraz.at/sha1_coll_search/)—[密碼學](https://zh.wikipedia.org/wiki/密碼學 "wikilink")：尋找[SHA-1](../Page/SHA-1.md "wikilink")碰撞，目前已停止運作。
  - [VGTU@Home](http://boinc.vgtu.lt/vtuathome/)—[軟體測試](https://zh.wikipedia.org/wiki/軟體測試 "wikilink")：提供[分散式計算平台](https://zh.wikipedia.org/wiki/分散式計算平台 "wikilink")，改善BOINC。
  - [IBERCIVIS](https://zh.wikipedia.org/wiki/IBERCIVIS "wikilink")—提供[西班牙](../Page/西班牙.md "wikilink")科學研究的分散式計算平台。
  - [DistrRTgen](https://zh.wikipedia.org/wiki/DistrRTgen "wikilink")—利用BOINC的分佈式運算產生[彩虹表](../Page/彩虹表.md "wikilink")。
  - [SZTAKI Desktop Grid](https://web.archive.org/web/20160814071936/http://szdg.lpds.sztaki.hu/szdg/)—搜索廣義[二進制](https://zh.wikipedia.org/wiki/二進制 "wikilink")[數系](../Page/數系.md "wikilink")。
  - [yoyo@home](https://zh.wikipedia.org/wiki/yoyo@home "wikilink")—利用BOINC的封裝技術將現有的分佈式計算項目引入到BOINC平台，支援[PS3運算](https://zh.wikipedia.org/wiki/PS3 "wikilink")。
  - [Pirates@home](https://zh.wikipedia.org/wiki/Pirates@home "wikilink")—測試BOINC專案。
  - [XtremLab](https://zh.wikipedia.org/wiki/XtremLab "wikilink")—研究並改善網格計算，包括BOINC平台，目前已停止運作。

## 除分佈式計算以外的應用

儘管BOINC一般用於進行志願計算，但其平台也可搭建公司私有計算網格或創建校園虛擬超級計算網格。

### 搭建公司計算網格

搭建BOINC網格主要有幾個步驟：

  - 架設及安装BOINC伺服器和客户端
  - 關閉外圍網絡的帳户創建

這樣的網格與公用網格相比，具有作弊概率低、運算效率高（工作包不用擔心過期）的優勢。

### 創建校園虛擬計算網格

創建這樣的網格方法類似公司網格，一个較低端的伺服器（約一萬美元）就能勝任幾萬個客户端的調度工作。倫敦的威斯特斯頓大學創建了一個這樣的網格，據估計，一年可節省約£125,000。\[3\]

## 参考文献

## 外部链接

  - [BOINC官方网站](https://boinc.berkeley.edu/)
  - [BOINC项目流行度](https://boincstats.com/tw/page/projectPopularity)

## 参见

  - [分布式计算](../Page/分布式计算.md "wikilink")
      - [分布式计算平台](https://zh.wikipedia.org/wiki/分布式计算平台 "wikilink")
  - [网格计算](../Page/网格计算.md "wikilink")

{{-}}

[Category:伯克利开放式网络计算平台](https://zh.wikipedia.org/wiki/Category:伯克利开放式网络计算平台 "wikilink") [Category:自由跨平台軟體](https://zh.wikipedia.org/wiki/Category:自由跨平台軟體 "wikilink")

1.  [BOINC首頁統計數據](https://boinc.berkeley.edu)
2.
3.  [DIY SUPERCOMPUTER SAVES £1,000S--University of Westminster](http://www.westminster.ac.uk/news-and-events/news/2011/university-of-westminster-launches-new-diy-supercomputer-saving-hundreds-of-thousands-of-poundsNEW)