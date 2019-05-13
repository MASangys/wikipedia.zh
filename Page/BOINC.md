**伯克利開放式網絡計算平台**（，簡稱**BOINC**）是目前主流的[分佈式計算平台之一](../Page/分佈式計算平台.md "wikilink")，由[加州大學柏克萊分校電腦學系發展出的](../Page/加州大學柏克萊分校.md "wikilink")[分散式計算系統](../Page/分散式計算.md "wikilink")。原本專為[SETI@home項目而設計](../Page/SETI@home.md "wikilink")，目前納入的領域包括[數學](../Page/數學.md "wikilink")、[醫學](../Page/醫學.md "wikilink")、[天文學和](../Page/天文學.md "wikilink")[氣象學等](../Page/氣象學.md "wikilink")。BOINC匯集全球各地志願者的電腦或移動裝置，提供運算能力給研究者。截至2017年3月，BOINC在全世界有約815,912台活躍的主機，提供約18.971[PetaFLOPS的運算能力](../Page/FLOPS.md "wikilink")\[1\]。

## 運行原理

安裝BOINC軟件的電腦在閒置時，會使用電腦的[CPU或](../Page/CPU.md "wikilink")[GPU進行運算](../Page/圖形處理器.md "wikilink")。即使電腦正在使用，BOINC將利用空閒的CPU週期作計算。如果志願者的電腦裝有[NVIDIA](../Page/NVIDIA.md "wikilink")、[ATI或](../Page/ATI.md "wikilink")[Intel的GPU並選擇使用其作為運算硬體](../Page/Intel.md "wikilink")，則某些BOINC專案的計算速度將比單純使用CPU的版本提高2至10倍\[2\]。

當志願者使用電腦參與BOINC專案時，BOINC會與專案的[伺服器連線](../Page/伺服器.md "wikilink")，伺服器會向電腦提供工作單位（Workunit，簡稱WU），然後電腦會對工作單位作運算，等待運算完成後，BOINC將把結果上傳至專案伺服器。

專案伺服器負責協調各志願者電腦的工作，包括發送工作單位、接收已處理的結果、核對大量的結果再作處理，成為研究人員需要的數據。由於個別的電腦可能會在運算過程出現錯誤，所以伺服器一般會把同一工作單位傳送至多個志願者，並比較各個結果。

BOINC設有積分系统，積分間接反映志願者的貢獻，因為在BOINC上可以運行的專案千差萬别。例如專案A的工作包在某台電腦上需要3個小時完成，而專案B的工作包在該電腦上需要30個小時才能完成，顯然用完成的工作包的數目來衡量工作量是不可行的；而不同電腦的性能也有差别，用CPU時間來衡量工作量亦是不行的。積分系统只能通過一定的算法得到志願者實際完成的計算量。

BOINC從版本6.4.5起，開始支持[GPU運算](../Page/通用圖形處理器.md "wikilink")，目前有[GPUgrid.net](../Page/GPUgrid.net.md "wikilink")、[SETI@home](../Page/SETI@home.md "wikilink")、[Milkyway@home](../Page/Milkyway@home.md "wikilink")、[PrimeGrid](../Page/PrimeGrid.md "wikilink")、[Collatz
Conjecture和](../Page/Collatz_Conjecture.md "wikilink")[DNETC@Home等多個GPU專案](../Page/DNETC@Home.md "wikilink")。

用户亦可使用BOINC 帳户管理器（BOINC Account Manager）方便参與和管理不同BOINC平台項目。

## 專案

[Boinc.png](https://zh.wikipedia.org/wiki/File:Boinc.png "fig:Boinc.png")

### 生物學、醫學

  - [Docking@Home](../Page/Docking@Home.md "wikilink")—研究更深入的[蛋白質鍵結和反應的](../Page/蛋白質.md "wikilink")[原子等級構造和細節](../Page/原子.md "wikilink")，並藉由其研究結果來研發藥物以治療人類疾病，目前已停止運作。
  - [DrugDiscovery@Home](../Page/DrugDiscovery@Home.md "wikilink")—研發藥物以治療人類疾病。
  - [Malaria
    Control](../Page/Malaria_Control.md "wikilink")—模擬[瘧疾的影響及控制](../Page/瘧疾.md "wikilink")。
  - [Predictor@home](../Page/Predictor@home.md "wikilink")—預測蛋白質的結構，目前已停止運作。
  - [Proteins@home](https://web.archive.org/web/20080325060652/http://biology.polytechnique.fr/proteinsathome/)—推論[DNA的次序](../Page/去氧核醣核酸.md "wikilink")，目前已停止運作。
  - [GPUGRID.net](http://www.gpugrid.net/index.php)—研究[分子生物](../Page/分子生物.md "wikilink")[動力學相關的研究](../Page/動力學.md "wikilink")，主要運行環境為支援[CUDA的NVidia](../Page/CUDA.md "wikilink")
    GPU。
  - [Rosetta@home](../Page/Rosetta@home.md "wikilink")—研究蛋白質的摺疊。

:\* [RALPH@Home](../Page/RALPH@Home.md "wikilink")—Rosetta@Home的測試專案。

  - [SIMAP](../Page/SIMAP.md "wikilink")（[Similarity Matrix of
    Proteins](https://web.archive.org/web/20080625060947/http://boinc.bio.wzw.tum.de/boincsimap/)）－
    一个蛋白質同源計算序列並可以對這些序列數據提供專業的檢索工具的數據庫，目前已停止運作。
  - [TANPAKU](../Page/TANPAKU.md "wikilink")—利用[布朗動力學方法計算蛋白質的結構](../Page/布朗動力學.md "wikilink")，目前已停止運作。
  - [POEM@HOME](../Page/POEM@HOME.md "wikilink")—利用能量法來研究蛋白質的結構。
  - [MindModeling@Home](../Page/MindModeling@Home.md "wikilink")—研究人類腦部的[認知科學](../Page/認知科學.md "wikilink")。
  - [Superlink@Technion](../Page/Superlink@Technion.md "wikilink")—幫助科學家研究人類[基因及其異常所產生的疾病](../Page/基因.md "wikilink")。
  - [The Lattice
    Project](../Page/The_Lattice_Project.md "wikilink")—[美國](../Page/美國.md "wikilink")[馬里蘭大學的研究](../Page/馬里蘭大學.md "wikilink")[生物資訊學領域相關的分布式計算平台](../Page/生物資訊學.md "wikilink")。
  - [Virtual Prairie](../Page/Virtual_Prairie.md "wikilink")
  - [Cels@Home](../Page/Cels@Home.md "wikilink")
  - [RNA
    world](../Page/RNA_world.md "wikilink")—研究分析生物中[RNA的分子結構](../Page/核醣核酸.md "wikilink")。
  - [DNA@Home](../Page/DNA@Home.md "wikilink")—研究有關生物中DNA的基因調控作用。
  - [FightNeglectedDiseases@Home](../Page/FightNeglectedDiseases@Home.md "wikilink")（FiND@Home）

### 氣象學、地球科學

  - [Climateprediction.net](../Page/Climateprediction.net.md "wikilink")（CPDN）—預測[廿一世紀的氣候](../Page/廿一世紀.md "wikilink")。

:\* [BBC Climate Change
Experiment](../Page/BBC_Climate_Change_Experiment.md "wikilink")—與[英國廣播公司合作的項目](../Page/英國廣播公司.md "wikilink")，結果已製作成[紀錄片](../Page/紀錄片.md "wikilink")，目前已停止運作並併入Climateprediction.net的主計劃中。

:\* [Seasonal Attribution
Project](../Page/Seasonal_Attribution_Project.md "wikilink")—研究引致[極端氣候的人為因素](../Page/極端氣候.md "wikilink")。

:\* [CPDN
Beta](../Page/CPDN_Beta.md "wikilink")—Climateprediction.net的測試專案。

  - [地震捕手网络(Quake Catcher
    Network)](../Page/地震捕手网络.md "wikilink")—利用分佈在全球各地電腦的[傳感器來偵測和研究](../Page/傳感器.md "wikilink")[地震現象](../Page/地震.md "wikilink")。

### 物理、化學、天文學

  - [Einstein@Home](../Page/Einstein@Home.md "wikilink")—搜尋[脈衝星的](../Page/脈衝星.md "wikilink")[引力波](../Page/引力波.md "wikilink")。
  - [Cosmology@Home](../Page/Cosmology@Home.md "wikilink")—研究宇宙的模型及其相關的物理天文學資訊。
  - [Leiden
    Classical](../Page/Leiden_Classical.md "wikilink")—模擬在經典物理環境下的各種[分子和](../Page/分子.md "wikilink")[原子](../Page/原子.md "wikilink")。
  - [LHC@home](../Page/LHC@home.md "wikilink")—模擬[粒子加速](../Page/粒子加速.md "wikilink")，協助設計及改善[LHC](../Page/LHC.md "wikilink")[粒子加速器](../Page/粒子加速器.md "wikilink")。

:\* [vLHC@Home](../Page/vLHC@Home.md "wikilink")
—亦稱"LHC2.0"，先前為Test4Theory專案。利用虛擬機器模擬粒子加速器的項目。

  - [NanoHive@Home](../Page/NanoHive@Home.md "wikilink")—模擬和研究[奈米分子的結構系統和特性](../Page/奈米分子.md "wikilink")，目前已停止運作。
  - [Orbit@home](../Page/Orbit@home.md "wikilink")—計算[近地小行星的軌道路徑](../Page/近地小行星.md "wikilink")，以預防其碰撞地球而對地球造成損害，目前由於缺乏資金已暫停運作，將在2014年或15年恢復運行。
  - [QMC@Home](../Page/QMC@Home.md "wikilink")—發展在[量子化學領域廣泛使用的量子統計模擬方法](../Page/量子化學.md "wikilink")。
  - [SETI@home](../Page/SETI@home.md "wikilink")—搜索[外太空文明](../Page/外太空文明.md "wikilink")。

:\* [SETI@home beta](../Page/SETI@home_beta.md "wikilink")—測試SETI@home。

  - [μFluids@Home](http://www.ufluids.net/)—模擬[微重力和](../Page/微重力.md "wikilink")[微流體力學問題的兩相現象](../Page/微流體力學.md "wikilink")，目前已停止運作。
  - [Milkyway@home](../Page/Milkyway@home.md "wikilink")—研究[銀河系的重力波](../Page/銀河系.md "wikilink")，支援NVidia
    CUDA及[ATi的顯示卡運算](../Page/ATi.md "wikilink")。
  - [Spinhenge@home](../Page/Spinhenge@home.md "wikilink")—研究[納米磁性分子的物理特性](../Page/納米磁性分子.md "wikilink")，目前已停止運作。
  - [BRaTS@home](../Page/BRaTS@home.md "wikilink")—進行引力波束追踪的相關計算，目前已停止運作。
  - [Hydrogen@Home](../Page/Hydrogen@Home.md "wikilink")—研究以[氫作為動力的乾淨能源](../Page/氫.md "wikilink")，目前已停止運作。
  - [Magnetism@home](../Page/Magnetism@home.md "wikilink")
  - [SLinCA@Home](../Page/SLinCA@Home.md "wikilink")—研究物理及[材料科學領域](../Page/材料科學.md "wikilink")。
  - [Eon](../Page/Eon.md "wikilink")—利用[理論化學方法來研究](../Page/理論化學.md "wikilink")[凝聚態物理學和材料科學](../Page/凝聚態物理學.md "wikilink")。

### 數學

  - [ABC@Home](../Page/ABC@Home.md "wikilink")—嘗試解決[ABC猜想](../Page/Abc猜想.md "wikilink")。
  - [Chess960@Home](../Page/Chess960@Home.md "wikilink")—研究[菲舍爾任意制象棋的開局理論並建立巨型的](../Page/菲舍爾任意制象棋.md "wikilink")[國際象棋棋局資料庫](../Page/國際象棋.md "wikilink")。
  - [NQueens@home](../Page/NQueens@home.md "wikilink")—解決國際象棋的[N皇后問題](../Page/N皇后問題.md "wikilink")，目前已停止運作。
  - [PrimeGrid](../Page/PrimeGrid.md "wikilink")—嘗試將巨大的數字進行因式分解，尋找人類未知的質數。
  - [Rectilinear Crossing
    Number](http://dist.ist.tugraz.at/cape5/)—研究平面中最少的[交叉數問題](../Page/交叉數.md "wikilink")，目前已停止運作。
  - [RieselSieve](https://web.archive.org/web/20060815152921/http://boinc.rieselsieve.com/)—尋找k\*2^n-1形式的素數，顯示k=509203是最小的[黎瑟爾斯數](../Page/黎瑟爾斯數.md "wikilink")，目前已併入PrimeGrid專案中。
  - [Collatz
    Conjecture](../Page/Collatz_Conjecture.md "wikilink")—研究[考拉茲猜想](../Page/考拉茲猜想.md "wikilink")。
  - [NFS@Home](../Page/NFS@Home.md "wikilink")
  - [Sudoku
    project](../Page/Sudoku_project.md "wikilink")—研究[數獨問題](../Page/數獨.md "wikilink")，目前已停止運作。
  - [Ramsey@Home](../Page/Ramsey@Home.md "wikilink")—研究[拉姆西數](../Page/拉姆西數.md "wikilink")，目前已停止運作。
  - [Reversi](../Page/Reversi.md "wikilink")—研究[黑白棋遊戲](../Page/黑白棋.md "wikilink")，目前已停止運作。
  - [WEP-M+2
    Project](../Page/WEP-M+2_Project.md "wikilink")—使用WEP算法對2^p+1進行因式分解。
  - [Sudoku@vtaiwan](../Page/Sudoku@vtaiwan.md "wikilink")—由[台灣的](../Page/台灣.md "wikilink")[交通大學推出的計劃](../Page/交通大學.md "wikilink")，研究數獨問題，目前已停止運作。
  - [DNETC@HOME](../Page/DNETC@HOME.md "wikilink")

### 電腦、資訊科技

  - [World Community
    Grid](../Page/World_Community_Grid.md "wikilink")—由[IBM主持](../Page/IBM.md "wikilink")，主要目的為利用分佈式計算來幫助尋找人類疾病的治療方法，和改善人類生活的相關研究。
  - [AQUA@home](../Page/AQUA@home.md "wikilink")—幫助設計量子電腦，目前已停止運作。
  - [BURP](../Page/BURP.md "wikilink")—處理及創作三維動畫。
  - [DepSpid](../Page/DepSpid.md "wikilink")—互聯網搜尋器，目前已停止運作。
  - [EDGeS@Home](../Page/EDGeS@Home.md "wikilink")
  - [Enigma@Home](../Page/Enigma@Home.md "wikilink")—嘗試破解[第二次世界大戰時由](../Page/第二次世界大戰.md "wikilink")[恩尼格瑪密碼機傳送的原始訊息](../Page/恩尼格瑪密碼機.md "wikilink")。
  - [HashClash](../Page/HashClash.md "wikilink")
  - [Project
    Neuron](../Page/Project_Neuron.md "wikilink")—測試BOINC框架，目前已停止運作。
  - [SHA-1 Collision Search
    Graz](https://web.archive.org/web/20090225115007/http://boinc.iaik.tugraz.at/sha1_coll_search/)—[密碼學](../Page/密碼學.md "wikilink")：尋找[SHA-1碰撞](../Page/SHA-1.md "wikilink")，目前已停止運作。
  - [VGTU@Home](http://boinc.vgtu.lt/vtuathome/)—[軟體測試](../Page/軟體測試.md "wikilink")：提供[分散式計算平台](../Page/分散式計算平台.md "wikilink")，改善BOINC。
  - [IBERCIVIS](../Page/IBERCIVIS.md "wikilink")—提供[西班牙科學研究的分散式計算平台](../Page/西班牙.md "wikilink")。
  - [DistrRTgen](../Page/DistrRTgen.md "wikilink")—利用BOINC的分佈式運算產生[彩虹表](../Page/彩虹表.md "wikilink")。
  - [SZTAKI Desktop
    Grid](https://web.archive.org/web/20160814071936/http://szdg.lpds.sztaki.hu/szdg/)—搜索廣義[二進制](../Page/二進制.md "wikilink")[數系](../Page/數系.md "wikilink")。
  - [yoyo@home](../Page/yoyo@home.md "wikilink")—利用BOINC的封裝技術將現有的分佈式計算項目引入到BOINC平台，支援[PS3運算](../Page/PS3.md "wikilink")。
  - [Pirates@home](../Page/Pirates@home.md "wikilink")—測試BOINC專案。
  - [XtremLab](../Page/XtremLab.md "wikilink")—研究並改善網格計算，包括BOINC平台，目前已停止運作。

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
      - [分布式计算平台](../Page/分布式计算平台.md "wikilink")
  - [网格计算](../Page/网格计算.md "wikilink")

{{-}}

[Category:伯克利开放式网络计算平台](https://zh.wikipedia.org/wiki/Category:伯克利开放式网络计算平台 "wikilink")
[Category:自由跨平台軟體](https://zh.wikipedia.org/wiki/Category:自由跨平台軟體 "wikilink")

1.  [BOINC首頁統計數據](https://boinc.berkeley.edu)
2.
3.  [DIY SUPERCOMPUTER SAVES £1,000S--University of
    Westminster](http://www.westminster.ac.uk/news-and-events/news/2011/university-of-westminster-launches-new-diy-supercomputer-saving-hundreds-of-thousands-of-poundsNEW)