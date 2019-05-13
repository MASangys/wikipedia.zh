**GeForce
200系列**是[NVIDIA的第十代GeForce顯示晶片](../Page/NVIDIA.md "wikilink")，核心架構代號『Tesla』，以[塞爾維亞裔發明家兼物理學家](../Page/塞爾維亞.md "wikilink")[尼古拉·特斯拉命名](../Page/尼古拉·特斯拉.md "wikilink")。首個產品GeForce
GTX 280於2008年6月16日推出，是一款高端產品。隨後推出了中高階的GTX 260。GTX
200系列擁有65nm製程的高階D10。與[AMD不同](../Page/AMD.md "wikilink")，NVIDIA依然先推出單核心的旗艦級[顯示卡](../Page/顯示卡.md "wikilink")，再將其功能削減，成為中低端的顯示卡。面對著對手AMD的[Radeon
R700顯示核心](../Page/Radeon_R700.md "wikilink")，GTX
200顯示核心顯得太複雜和成本高，不能與之有效競爭。所以NVIDIA即時將GeForce
9800 GTX降價，並提升其製程至55[nm](../Page/nm.md "wikilink")，再推出GeForce 9800
GTX+顯示卡。在2009年1月8日開幕的[CES](../Page/国际消费电子展.md "wikilink")
2009電子大展推出55nm版本的GTX 260核心及兩款新卡GTX 285、GTX 295。

## 背景

NVIDIA稱GTX
200核心採用了第二代的統一架構。相對第一代，顯示核心除了專注立體效能的提升外，更專注非傳統的GPU應用。NVIDIA認為，隨著[GPU的效能愈來愈大](../Page/GPU.md "wikilink")，可應用的範圍再不局限於立體計算，而GPU絕對有能力取代[CPU](../Page/CPU.md "wikilink")，成為高效能運算的工具。為了凸顯第二代統一架構的功能，NVIDIA將顯示卡的命名法則改變，不再是GeForce加上代表世代的數字。而是GeForce
GTX、GeForce GTS、GeForce GT和GeForce G。它們分別代表旗艦級、高端、中端和入門。

## 架構

NVIDIA稱第二代的統一架構，效能是上一代的1.5倍。核心的代號是D10U，採用65[nm製程](../Page/nm.md "wikilink")，擁有14億個[電晶體](../Page/電晶體.md "wikilink")。是第一款顯示核心的電晶體數量突破十億大關，但是它仍然不支援DirectX
10.1和Smart Shader
4.1。最能反映實際性能的流處理器方面，由上一代的128個，提升到240個。另外，它支援雙精度和64位元浮點運算。

### 第二代统一架构

在GTX
250顯示核心中，總共有十個流處理器陣列。每個陣列中有3450個流處理器，當中又以24個為一組。每一組流處理器都擁有獨立的本地記憶體，亦即是631個流處理器共用1個本地記憶體。本地記憶體的容量由16KB提升到32KB。另外，每一個陣列都有其獨立的L1緩衝記憶體，亦即是24個流處理器共用一個L1緩衝記憶體。加起來，GTX
280核心擁有240個流處理器。

GTX
200有兩個計算模式。一個是繪圖模式，另一個是並行處理模式。比較特別的是**線程排序器**，當線程在讀寫記憶體的時候，為了不耽誤整個計算，會直接計算另一項資料。這樣可以提升並行處理的效率，提升GPGPU的效能。

### MIMD(Multiple Instruction Multiple Data)

自上一代的G80開始，[NVIDIA已放棄採用](../Page/NVIDIA.md "wikilink")[SIMD架構](../Page/SIMD.md "wikilink")，改用全新的架構。在G80顯示核心中，所有的流處理器都是1D[标量形式](../Page/标量.md "wikilink")。NVIDIA認為這樣做最有效率，因為不用再顧忌數據是1D抑或是4D，所有的數據都會分折成标量1D。而對手[AMD的顯示核心](../Page/AMD.md "wikilink")，依然是4D+1D架構。雖然[NVIDIA的做法效率較高](../Page/NVIDIA.md "wikilink")，但成本和複雜度亦較高，比較難大幅增加流處理器的數量，因為每一個流處理器都需要一個指令發射端口。而[AMD的顯示核心方面](../Page/AMD.md "wikilink")，由於一個4D+1D的流處理器才需要一個指令發射端口，所以比較容易提升處理器的數量。

### 流处理器

上一代的G80核心中，每一個流處理器陣列有兩組流處理器。而在GTX
200系列顯示核心中，陣列數量提升為3組。每組流處理器的可执行线程數量，亦由768條提升列1024條。另外，每一個陣列都有8個纹理单元。

### ROP

數量和效率都有所提升，有效改善AA性能。

### 缓存

8個流處理器會共用32KB的本地記憶體；而3組總共24個流處理器會共用一個L1緩存，減少對外部記憶體的依賴。

### 顯示記憶體

每一個顯示記憶體控制器的頻寬是64-bit，而GTX 280核心有8個控制器，總共的頻寬是512-bit。容量方面，由512MB提升到1GB。

## 其他技術

### PhysX物理引擎

2008年2月，NVIDIA收購[AGEIA公司](../Page/AGEIA.md "wikilink")，取得有關的PhysX物理引擎技術。過去，該引擎必須以自家的物理加速卡作硬體加速，或者以[CPU作軟體加速](../Page/CPU.md "wikilink")。隨著NVIDIA收購AGEIA，公司己著手改裝有關引擎，使之可以透過顯示核心加速該引擎。現在，NVIDIA已推出用於顯示卡加速的PhysX物理引擎驅動程式，在3DMark
Vantage的測試中，CPU的得分受惠於顯示核心硬體加速了物理引擎，分數大幅上升。但採用該引擎的遊戲始終較少，分數能否反映事實仍是未知之數。

對手AMD則採用[Havok物理引擎作為解決方案](../Page/Havok.md "wikilink")。現時，Havok是[Intel的子公司](../Page/Intel.md "wikilink")。而Havok亦答應將為其物理引擎，優化AMD的CPU和GPU。包括最新的[Phenom處理器和](../Page/Phenom.md "wikilink")[Radeon
R700顯示卡](../Page/Radeon_R700.md "wikilink")。

### CUDA

NVIDIA認為，流處理器的地位可與CPU核心作比較。而一顆顯示核心，有多個的流處理器，使到顯示卡非常適合作並行計算之用。NVIDIA有另一個產品線－[NVIDIA
Tesla](../Page/NVIDIA_Tesla.md "wikilink")，就是將顯示核心包裝為GPGPU產品。用來加速或者計算通用計算，亦即是非單純立體計算。CUDA可以讓程式員使用C語言，來使用顯示核心作為加速器。對手AMD認為，CUDA始終是閉源產品，並不會取得成功，所以推薦使用者使用另一個標準－[OpenCL](../Page/OpenCL.md "wikilink")。有趣的是，NVIDIA同樣是參與了該計劃。

對於家用者來說，CUDA可以用來加速高解析度影像的編碼。NVIDIA報稱效率是利用CPU的20倍，縱使某些算法仍然是交由CPU處理，使到CPU使用率仍然維持20%左右。亦說明顯示核心並不是可以處理所有的算法。另外，[Folding@home科学计算項目已開始支援NVIDIA的顯示卡](../Page/Folding@home.md "wikilink")。

### Hybrid SLI

配合NVIDIA的AMD平台晶片組，例如780a或者750a晶片組，就可以啟動Hybrid
SLI功能，令獨立題示卡可以與內置顯示核心一起進行圖像處理以增強效能。

### Power Management Enhancements

GeForce 200顯示核心擁有比以往世代的NVIDIA顯示核心更動態和更有彈性的電源管理系統。 此技術會有以下四種效能／電源模式：

  - 閒置／2D 電源模式（大約 25 W）
  - Blu-ray DVD 播放模式 (大约 35 W)
  - 全速 3D 效能模式（不定、最大為 TDP 236 W）
  - Hybrid Power™ 模式（最有效為 0
    W）當運行密集3D圖像處理要求的程式時，NVIDIA驅動程式可因應顯示核心的使用率而切換到相應的電源模式。每一顆新的
    GeForce GTX 200 GPUs 整合了使用率監察器來不斷地監察顯示核心內的數據流量。

### HybridPower

屬於Hybrid SLI技術的一部分，當使用支援HybridPower的nForce主機板（例如採用 nForce 780a
晶片組的主機板），GeForce GTX 200
GPU可以在非密集的圖像處理操作時完全關閉電源並將圖像輸出交由主機板的整合式顯示核心（mGPU）負責。

## 產品介紹

[Grafikkarte_N260GTX_IMGP6200_wp.jpg](https://zh.wikipedia.org/wiki/File:Grafikkarte_N260GTX_IMGP6200_wp.jpg "fig:Grafikkarte_N260GTX_IMGP6200_wp.jpg")
[Gtx280.jpg](https://zh.wikipedia.org/wiki/File:Gtx280.jpg "fig:Gtx280.jpg")

  - [桌面平臺](../Page/桌面平臺.md "wikilink")
      - GeForce 205 -
        於[2009年11月針對](../Page/2009年11月.md "wikilink")[OEM市場發佈](../Page/OEM.md "wikilink")，40nm制程的GT218-200核心，核心頻率590
        MHz，擁有16個流處理器，64-bit顯存位寬和512MB
        G[DDR3顯存](../Page/DDR3.md "wikilink")，頻率790 MHz。支援DirectX
        10.1。
      - GeForce 210 -
        於[2009年10月針對零售市場發佈](../Page/2009年10月.md "wikilink")，GeForce
        G210的更名產品，規格與GeForce G210完全相同。2009年11月又將其更名為[GeForce
        310供OEM廠商銷售](../Page/GeForce_300.md "wikilink")。
      - GeForce G210 -
        於[2009年7月針對OEM市場發佈](../Page/2009年7月.md "wikilink")。早期採用55nm制程的G96核心，後期換為40nm制程的GT218-300核心，擁有16個流處理器、64-bit顯存位寬和512MB
        [DDR2或GDDR](../Page/DDR2.md "wikilink")3顯存。內建音效處理器，支援多聲道[LPCM輸出](../Page/LPCM.md "wikilink")。支援DirectX
        10.1。
      - GeForce GT 220 -
        於[2009年7月針對OEM市場發佈](../Page/2009年7月.md "wikilink")，10月進入零售市場\[1\]。早期採用55nm制程的G94核心，後期換為40nm制程的GT216核心，擁有48個流處理器、128-bit顯存位寬和1GB
        SDDR3顯存。內建音效處理器，支援多聲道[LPCM輸出](../Page/LPCM.md "wikilink")。支援DirectX
        10.1。2009年11月將其更名為[GeForce
        315供OEM廠商銷售](../Page/GeForce_300.md "wikilink")。
      - GeForce GT 230 -
        於[2009年7月針對OEM市場發佈](../Page/2009年7月.md "wikilink")。早期採用55nm制程的G92或G94核心，後期換為40nm制程的GT215核心，擁有96個流處理器，採用128位512M
        SDDR3顯存。支援DirectX 10.1。
      - GeForce GT 240 -
        於[2009年11月發佈](../Page/2009年11月.md "wikilink")\[2\]。採用40nm
        GT215核心，擁有96個處理器，核心頻率550MHZ，最高支援128位1GB GDDR5顯示記憶體。支援DirectX
        10.1。
      - GeForce GTS 240 -
        於[2009年7月](../Page/2009年7月.md "wikilink")27日針對OEM市場發佈。採用55nm
        G92核心，擁有112個處理器，規格與[GeForce 9800
        GT相近](../Page/GeForce_9.md "wikilink")，但頻率有所提升，而且記憶體容量由512MB提升至1GB，散熱器和[PCB也有所分別](../Page/PCB.md "wikilink")。僅支援DirectX
        10。
      - GeForce GTS 250 -
        於[2009年3月推出](../Page/2009年3月.md "wikilink")，核心採用55nm製程，与[GeForce
        GTS 150](../Page/GeForce_100.md "wikilink")（低成本設計的[GeForce 9800
        GTX+](../Page/GeForce_9.md "wikilink")，效能增強版）的規格相同，是針對零售市場進行改名的產品，裝置識別碼（Device
        ID）兩者皆為0615，所以兩款顯示卡是完全相同的，在某些更名前的早期版本驅動程式中，GTS 250會顯示為GTS
        150，並且多數硬體偵測軟體的資料庫存在錯誤，如[GPU-Z](../Page/GPU-Z.md "wikilink")、[EVEREST等](../Page/EVEREST.md "wikilink")，是通過所安裝的驅動程式顯示名稱。GTS
        250減少至只需一組6pin外接電源，並同GTS
        150一樣增加了1GB版本，某些廠商甚至生產過2GB版本，早期有部分廠商直接將GeForce
        9800 GTX+更改[BIOS成為GeForce](../Page/BIOS.md "wikilink") GTS
        250則仍有可能需要兩組6pin外接電源。僅支援DirectX 10。
      - GeForce GTX 260 - 定位是高端顯示卡，部分廠商已下調其價格到165美元，用作與Radeon HD
        4870競爭。核心的流處理器數量下降至192個，顯示記憶體頻寬是448-bit。為了對抗Radeon HD
        4870，NVIDIA推出新版本的GTX 260核心，流處理器數量上升至216個，廠商使用GTX
        260+作為型號以作分辨\[3\]。僅支援DirectX 10。
      - GeForce GTX 275 -
        於[2009年4月推出](../Page/2009年4月.md "wikilink")，與GeForce
        GTX 285同樣使用55nm D10U繪圖核心及擁有240個流處理器，但記憶體位寬亦由
        512Bit減少至448Bit，記憶體容量亦由1GB減至896MB，另外Raster
        Operations Unit由32個屏蔽至28個。由於頻率較高，所以效能比GeForce GTX
        280優勝。僅支援DirectX 10。
      - GeForce GTX 280 -
        系列推出初期最高端的顯示卡。核心擁有240個流處理器，顯示記憶體頻寬是512-bit，顯存為1GB
        GDDR3。僅支援DirectX 10。
      - GeForce GTX 285 - 相當於GTX 280的55nm
        GT200b核心版本。同樣擁有240個流處理器、512-bit顯存位寬和1GB
        GDDR3顯存。核心頻率為648MHz，流處理器為1476MHz，顯存頻率為2482MHz，頻率比GTX
        280為高。功耗由GTX
        280的236W降至183W，並只需要2個6pin外接供電接口。[MAC版本的GTX](../Page/Macintosh.md "wikilink")
        285只增加了HDTV輸出接口，支援通過HDMI音訊輸出。僅支援DirectX 10。
      - GeForce GTX 295 - 擁有兩顆55nm GT200b顯示核心，產品設計與[GeForce
        9800GX2相近](../Page/GeForce_9#GeForce_9800.md "wikilink")。通過[NF200接橋晶片將兩核心相連](../Page/NVIDIA_NF200.md "wikilink")。GTX
        295共擁有480個流處理器，配備1792MB的GDDR3顯存，位寬896-bit，核心頻率為576MHz，流處理器為1242MHz，顯存頻率為1998MHz\[4\]。僅支援DirectX
        10。整卡功耗達289W，需要1個6pin及1個8pin外接供電接口。卡上提供了一個[SLI橋接接口](../Page/SLI.md "wikilink")，用作支援雙卡並聯的Quad
        SLI模式。原來的設計需要2片[PCB](../Page/印刷電路板.md "wikilink")，而於[2009年5月推出的新版本設計只需](../Page/2009年5月.md "wikilink")1片，頻率不變但能改善散熱效率、減低成本，但單PCB版沒有板載[HDMI接口](../Page/HDMI.md "wikilink")。

<!-- end list -->

  - [行動平臺](../Page/行動平臺.md "wikilink")
      - GeForce G210M - 核心代號N10M-GS採用40奈米製程工藝，核心頻率625
        MHz，僅有16個流處理器，頻率1500
        MHz，記憶體最高支援到512MB/64Bit GDDR3，支援DirectX 10.1。
      - GeForce GT 220M - 核心代號N10P-GV2採用55奈米製程工藝，核心頻率500
        MHz，擁有32個流處理器，晶体管数为3.14亿，頻率1250
        MHz，支援DirectX 10.1。
      - GeForce GT 230M - 核心代號N10P-GE採用40奈米製程工藝，核心頻率500
        MHz，擁有48個流處理器，頻率1100 MHz，支援DirectX 10.1。
      - GeForce GT 240M - 核心代號N10P-GS採用40奈米製程工藝，核心頻率550 MHz，同GT
        230M一樣擁有48個流處理器，頻率1210 MHz，支援DirectX 10.1。
      - GeForce GTS 250M - 核心代號N10E-GE採用40奈米製程工藝，核心頻率500
        MHz，擁有96個流處理器，頻率1250
        MHz，記憶體最高支援到1GB/128Bit GDDR5，支援組建SLI，支援DirectX
        10.1。
      - GeForce GTS 260M - 核心代號N10E-GS採用40奈米製程工藝，核心頻率550 MHz，同GTS
        250M一樣擁有擁有96個流處理器，頻率1375 MHz，記憶體最高支援到1GB/128Bit
        GDDR5，支援組建SLI，支援DirectX 10.1。
      - GeForce GTX 260M - 核心代號N10E-GT採用55奈米製程工藝，核心頻率550
        MHz，擁有112個流處理器，頻率1375 MHz，記憶體最高支援到1GB/256Bit
        GDDR3，其晶體管數量達到7.54億，僅支援DirectX 10。
      - GeForce GTX 280M - 核心代號N10E-GTX採用55奈米製程工藝，核心頻率585
        MHz，擁有128個流處理器，頻率1463 MHz，記憶體最高支援到1GB/256Bit
        GDDR3，其晶體管數量與GTX 260M一樣達到7.54億，僅支援DirectX 10。
      - GeForce GTX 285M - 核心代號N10E-GTX採用55奈米製程工藝，核心頻率576
        MHz，擁有128個流處理器，頻率1500 MHz，記憶體最高支援到1GB/256Bit
        GDDR3，其晶體管數量與GTX 260M一樣達到7.54億，僅支援DirectX 10。

## 更多資訊

  - [GeForce 200系列規格列表](../Page/NVIDIA顯示核心列表#GeForce_200.md "wikilink")
  - [GeForce 200
    M系列規格列表](../Page/NVIDIA顯示核心列表#GeForce_200_M.md "wikilink")
  - [Radeon R700](../Page/Radeon_R700.md "wikilink")

## 參考

## 外部連結

  - [NVIDIA主頁](http://www.nvidia.com)
  - [NVIDIA
    GeForce產品主頁](http://www.nvidia.com/object/geforce_family.html)

[Category:英伟达](https://zh.wikipedia.org/wiki/Category:英伟达 "wikilink")

1.  [四大重要更新 40nm
    GT220全球抢先详测](http://publish.it168.com/2009/0901/20090901012701.shtml)

2.  [NVIDIA首款DDR5显卡
    GT240性能首次曝光](http://vga.it168.com/a2009/1009/754/000000754803.shtml)
3.  [GeForce
    GTX 260換裝，216流處理器再戰沙場。](http://www.50fs.tw/fstw/news/tonews.action?n=7873)
4.  [不给AMD任何机会\!55nm双核GTX295首测](http://www.pcpop.com/doc/0/355/355395.shtml)