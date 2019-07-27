**GeForce 400系列**\[1\]
是[NVIDIA的第十二代](https://zh.wikipedia.org/wiki/NVIDIA "wikilink")[GeForce](../Page/GeForce.md "wikilink")顯示晶片。採用[TSMC的](https://zh.wikipedia.org/wiki/台灣積體電路製造公司 "wikilink")40nm製程，高階型號將首次採用[GDDR5](../Page/GDDR5.md "wikilink")顯示[記憶體](https://zh.wikipedia.org/wiki/記憶體 "wikilink")，中低端產品會采用新型SDDR3顯示記憶體。

該系列產品在最初準備發表時，人們曾認為將命名為[GeForce
300系列](https://zh.wikipedia.org/wiki/GeForce_300 "wikilink")，但在2010年2月初，nVIDIA通過在[Twitter](../Page/Twitter.md "wikilink")和[Facebook](../Page/Facebook.md "wikilink")的官方帳戶發出消息，下一代Fermi核心的首發兩款產品將被命名為**GeForce
400**系列，分別為GTX 470和GTX 480。而GeForce
300系列將使用在[OEM市場](https://zh.wikipedia.org/wiki/OEM "wikilink")，就像之前的[GeForce
100系列](https://zh.wikipedia.org/wiki/GeForce_100 "wikilink")。

由於NVIDIA需要針對DirectX 11而重新設計顯示核心，所以GTX
480的推出比對手AMD慢了不少。後者只是在舊有顯示核心，加上對新Shader
Model指令的支持，並沒有針對DirectX 11而優化\[2\]。

## 架構介紹

頂級產品GTX
480擁有30億個電晶體，原設計有512個流處理器（CUDA核心），基於良品率的考慮關閉了32個而只有480个CUDA核心被啟用，但數量仍然是GTX
280的兩倍多，支援[GDDR5](../Page/GDDR5.md "wikilink")顯示記憶體，完整支援DirectX 11標準。GTX
480擁有NVIDIA稱之為PolyMorph引擎的技術，在單顆GPU上有16個的鑲嵌繪圖引擎，可執行全球首款可擴充的幾何管線。GTX
480還擁有32倍反鋸齒模式，3D Vision Surround技術，支援三屏3D顯示輸出（GTX
200系列也同樣支援該技術）\[3\]。

新的顯示核心特別針對幾何性能而設計。近幾年，顯示核心的渲染效果有了大幅增長，但幾何性能只以幾個倍數的幅度而增加。

### 模組化

在DirectX
11時代，為進一步加強通用可程式化能力，NVIDIA將GPU劃分為多個GPC模組，每個模組實際上除了沒有獨立的顯示記憶體控制器、二級快取以外，幾乎是一顆完整的小型GPU。在GPC內部，內建光柵單元、SM（流式多處理器）陣列/單元，SM單元中包含了一個指令快取、Warp排程器和分派單元各兩個、寄存器、32個/48個流處理器（CUDA核心）、16個載入/存儲單元、4個特殊功能單元、一級快取、4個紋理單元、紋理快取以及一個負責曲面細分的PolyMorph引擎。\[4\]

透過對GPC單元或SM陣列的增加刪減，效能會隨之成近乎線性的增減，籍此可以快速產生多個不同的GPU產品線。頂級產品GeForce GTX
480上，顯示核心代號『GF100』，共計4組GPC單元，每組4個SM阵列，每個SM阵列32個流處理器，但其中一組SM阵列被關閉。中高端產品GeForce
GTX
460，核心代號『GF104』，擁有2組GPC單元，每組4個SM阵列，但每個SM阵列中有48個流處理器，同樣有一個SM阵列被關閉。\[5\]

### Tessellation

Tessellation技術已經被編入為DirectX 11標準。對手AMD則在Radeon
8500時代已經支援相關技術。但當時的Tessellation級別不能夠被有效控制，容易造成圖像失真。現時，Tessellation技術已經可以完全被編程。額外的頂點可以透過不同的算法而新增。

### Direct Compute 11

Direct Compute可以加強圖形特效。例如不同物件的半透明效果，景深效果。

### 光栅化引擎

以往的顯示核心只有一個光栅化引擎。而GTX 480則擁有4個，增強抗锯齿性能。

### PolyMorph引擎

由於應用了Tessellation技術，場景中的多邊形數量可能會大幅增加。PolyMorph引擎則用來增強多多邊形場景的幾何性能。

### 流处理器

亦即是NVIDIA所稱的[CUDA](../Page/CUDA.md "wikilink")核心。GTX
480用的[CUDA](../Page/CUDA.md "wikilink")核心是NVIDIA所標示的第三代版本。所有指令都被打散為1D指令。增加[CUDA](../Page/CUDA.md "wikilink")核心的使用率。在浮點處理方面，GTX
480用的是IEEE754-2008标准。數據只在輸出時四舍五入。以往的做法是每一個步驟都要四舍五入，誤差會累積。整數指令精度方面，支援32位元，而對手AMD則只支援24位元。在執行殊函数运算时，AMD的顯示核心使用流处理器仍計算。而NVIDIA的顯示核心則採用專用的元件。

### 纹理单元

纹理单元的數量有所下降。NVIDIA聲稱會透過提高單元效率，來彌補纹理单元數目的減少。纹理单元亦已經集成到流处理器中，減少了延遲。

### 光栅单元

重新設計光栅单元，以追趕對手的抗锯齿效能。而CSAA的精度亦有所提升，達到32x。

### 通用計算

首次支援[C++](../Page/C++.md "wikilink")和[ECC](https://zh.wikipedia.org/wiki/ECC "wikilink")。

## 產品介紹

[Nvidia_GeForce_GTX480_Fermi_Core.jpg](https://zh.wikipedia.org/wiki/File:Nvidia_GeForce_GTX480_Fermi_Core.jpg "fig:Nvidia_GeForce_GTX480_Fermi_Core.jpg")
[NVIDIA_GeForce_GTX_480.jpg](https://zh.wikipedia.org/wiki/File:NVIDIA_GeForce_GTX_480.jpg "fig:NVIDIA_GeForce_GTX_480.jpg")
[GeForce_GTX_460_1024MB_DDR5.JPG](https://zh.wikipedia.org/wiki/File:GeForce_GTX_460_1024MB_DDR5.JPG "fig:GeForce_GTX_460_1024MB_DDR5.JPG")推出的GTX
460顯示卡\]\]
[缩略图](https://zh.wikipedia.org/wiki/File:Galaxy_NVIDIA_GeForce_GTX_460.JPG "fig:缩略图")出品的GeForce
GTX 460\]\]

  - [桌面平臺](https://zh.wikipedia.org/wiki/桌面平臺 "wikilink")
      - GeForce 405\[6\] -
        採用GT218核心，後期更新為GF119，擁有16個CUDA核心，核心頻率520MHz，採用1580MHz
        GDDR3顯示記憶體，僅供OEM使用。
      - GeForce GT 420\[7\] -
        2010年9月5日推出。採用GF108核心，擁有48個CUDA核心，核心頻率700MHz，採用900MHz
        GDDR3顯示記憶體。只供[OEM使用](https://zh.wikipedia.org/wiki/OEM "wikilink")。
      - GeForce GT 430\[8\] -
        2010年9月13日推出。採用GF108核心，擁有96個CUDA核心，採用900MHz
        GDDR3或800MHz
        [GDDR5](../Page/GDDR5.md "wikilink")顯示記憶體，OEM版本最高達到2GB\[9\]。
      - GeForce GT 440\[10\] -
        2010年10月17日推出。採用GF106核心，擁有144個CUDA核心，採用高於GTS
        450的192位[GDDR5](../Page/GDDR5.md "wikilink")，顯示記憶體容量有1.5GB與3GB兩種，僅供[OEM市場](https://zh.wikipedia.org/wiki/OEM "wikilink")，其競爭對手是AMD的HD
        5600系列。之後，NVIDIA於2011年2月1日推出零售版本\[11\]，不同於OEM版本，採用GF108核心，擁有96個CUDA核心，用來取代上代產品GT
        240。
      - GeForce GTS 450\[12\] -
        2010年9月13日推出。採用GF106核心（2011年初改用GF116），擁有192個CUDA核心，採用128位[GDDR5](../Page/GDDR5.md "wikilink")（一個64位元的記憶體控制器被關閉），顯示記憶體容量有1GB與2GB兩種，定位於129美元以下市場，其效能在競爭對手HD
        5770之下。OEM版本採用192位GDDR5，顯示記憶體容量1.5GB\[13\]。
      - GeForce GTX 460\[14\] -
        2010年7月12日推出。採用GF104核心。在多個媒體評測中，其[SLI效能已經超過單卡GTX](https://zh.wikipedia.org/wiki/SLI "wikilink")
        480。記憶體有768MB/192-bit、1GB/256-bit、2GB/256-bit三種版本，後者僅供[OEM](https://zh.wikipedia.org/wiki/OEM "wikilink")，並且記憶體頻率降為1700MHz\[15\]。GeForce
        GTX 460
        v2為2011年7月推出的更新版本，採用GF114核心，時脈亦較高。全部版本均沒有開啟全部流處理器（CUDA核心），只啟用了其中336個，亦即關閉了其中一組SM單元48個流處理器，但也有極少部分流處理器全部開啟工程樣品流入零售市場，後來也有部分廠商的GeForce
        GTX 460顯示卡可以透過刷寫GeForce GTX 560 Ti來開啟全部流處理器。
      - GeForce GTX 460 Second Edition\[16\] - 2010年11月15日推出。早期名稱是GTS
        455。SE的名稱與早期的[MX 440
        SE等類似](https://zh.wikipedia.org/wiki/GeForce_4 "wikilink")，是在GTX
        460基礎上繼續屏蔽了部分處理單元。
      - GeForce GTX 465\[17\] - 2010年6月1日推出。顯示核心與GTX
        470相同，是其“閹割”版本。擁有352個CUDA核心即11個流處理器模組，採用1GB
        256-bit GDDR5顯示記憶體。基於這個特性，部分擁有10片顯示記憶體顆粒的GTX
        465可以硬刷[BIOS](../Page/BIOS.md "wikilink")成為GTX
        470，但實際GTX
        465是屏蔽了部分有問題的顯示核心，強制打開被屏蔽的核心可能會出現花屏，死機等現象\[18\]。
      - GeForce GTX 470\[19\] - 2010年3月26日推出。該系列首款产品，GTX
        470有448个運作於607MHz的CUDA核心，1215MHz的著色器時脈與1.25GB的GDDR5記憶體，核心TDP則是215W。與HD
        5850相比之下GTX 470比前者幾乎都快上10%的性能，發布價位則是349美元，GTX 480與GTX
        470都是NVIDIA第一張支援Direct3D 11的顯示卡。
      - GeForce GTX 480\[20\] - 2010年3月26日推出。該系列首款产品，目前GeForce
        400系列中最高階的版本，它擁有480个運作在700MHz的CUDA核心、1.4GHz的著色器時脈與1.5GB的GDDR5記憶體，核心TDP為250W。與Radeon
        HD 5870相比GTX 480比前者幾乎都快上10 -
        30%的性能，發布價位是499美元。GF100核心的完整優化版本GF110於2010年11月8日推出，命名為[GeForce
        GTX 580](https://zh.wikipedia.org/wiki/GeForce_500 "wikilink")。

<!-- end list -->

  - [行動平臺](https://zh.wikipedia.org/wiki/行動平臺 "wikilink")
      - GeForce 410M - 2011年1月5日推出，核心採用GF108M的改進版本GF119M，代號N12M-GS。
      - GeForce GT 415M - 2010年9月3日推出，採用GF108M核心，代號N11P-GV。
      - GeForce GT 420M - 2010年9月3日推出，採用GF108M核心，代號N11P-GE。
      - GeForce GT 425M - 2010年8月15日推出，採用GF108M核心，代號N11P-GS。
      - GeForce GT 435M - 2010年9月3日推出，採用GF108M核心，代號N11P-GT。
      - GeForce GT 445M - 2010年9月3日推出，採用GF106M核心，代號N11E-GE。
      - GeForce GTX 460M\[21\] -
        2010年9月3日推出，採用GF106M核心，代號N11E-GS。內建192個CUDA核心，時脈為675MHz，流處理器時脈為1350MHz，支援192-bit頻寬的1.5GB
        GDDR5記憶體。
      - GeForce GTX 470M\[22\] -
        2010年9月3日推出，採用GF104M核心，代號N11E-GT。內建288個CUDA核心，時脈為550MHz，流處理器時脈為1100MHz，支援192-bit頻寬的1.5GB
        GDDR5記憶體。
      - GeForce GTX 480M\[23\] -
        2010年5月25日推出，採用GF100M核心，代號N11E-GTX，NVIDIA首款DirectX
        11行動顯示核心。同時還發表了NVIDIA Verde筆記型電腦驅動程式。GTX
        480M內建352個CUDA核心，時脈為425MHz，流處理器時脈為850MHz，單精確度浮點性為897GFlops，並支援256-bit頻寬的2GB
        GDDR5記憶體，其功耗約為100W。影像輸出部份GTX 480M支援DisplayPort、HDMI 1.4等介面。
      - GeForce GTX 485M\[24\] -
        2011年1月5日推出，採用改进的GF114M核心，代號N12E-GTX。GTX
        485M內建完整的384個CUDA核心，時脈為575MHz，流處理器時脈為1150MHz，支援256-bit頻寬的2GB
        GDDR5記憶體，其功耗約為100W。相比GTX 480M其计算能力提升48%、带宽提升25%。

## 相關條目

  - [GeForce
    400系列規格列表](https://zh.wikipedia.org/wiki/NVIDIA顯示核心列表#GeForce_400 "wikilink")
  - [GeForce 400
    M系列規格列表](https://zh.wikipedia.org/wiki/NVIDIA顯示核心列表#GeForce_400_M "wikilink")
  - [Radeon R800](https://zh.wikipedia.org/wiki/Radeon_R800 "wikilink")

## 參考鏈接

## 外部連結

  - [NVIDIA主頁](http://www.nvidia.com/)
  - [Next Generation CUDA Architecture, Code Named
    Fermi](http://www.nvidia.com/object/fermi_architecture.html)

[Category:英伟达](https://zh.wikipedia.org/wiki/Category:英伟达 "wikilink")

1.  [全新世代 CUDA 架構 – 代號
    “[Fermi](../Page/恩里科·费米.md "wikilink")”](http://www.nvidia.com.tw/object/fermi_architecture_tw.html)

2.  [革命性DX11架构！GTX480/470权威评测](http://www.pcpop.com/doc/0/508/508221_1.shtml)

3.  [3D Vision Surround
    技術](http://www.nvidia.com.tw/object/3D_Vision_Surround_Technology_tw.html)

4.  [跨入GF100新时代\!GeForce
    GTX480评测](http://www.inpai.com.cn/doc/hard/119945_10.htm)

5.  [星空下闪耀的双子星 NVIDIA GeForce
    GTX 560评测首发](http://www.itocp.com/htmls/39/n-2339-2.html)

6.  geforce.com: [GeForce 405
    OEM](http://www.geforce.com/hardware/desktop-gpus/geforce-405-oem)

7.  nvidia.com: [GeForce
    GT 420](http://www.nvidia.com/object/product-geforce-gt-420-oem-us.html)

8.  nvidia.com [GeForce
    GT 430](http://www.nvidia.com/object/product-geforce-gt-430-us.html)

9.  nvidia.com: [GeForce GT 430
    OEM](http://www.nvidia.com/object/product-geforce-gt-430-oem-us.html)

10. nvidia.com: [GeForce GT 440
    OEM](http://www.nvidia.com/object/product-geforce-gt-440-oem-us.html)

11. nvidia.com: [GeForce
    GT 440](http://www.nvidia.com/object/product-geforce-gt-440-us.html)

12. nvidia.com: [GeForce
    GTS 450](http://www.nvidia.com/object/product-geforce-gts-450-us.html)

13. nvidia.com: [GeForce GTS 450
    OEM](http://www.nvidia.com/object/product-geforce-gts-450-oem-us.html)

14.
15. nvidia.com: [GeForce GTX 460
    OEM](http://www.nvidia.com/object/product-geforce-gtx-460-oem-us.html)

16. nvidia.com: [GeForce
    GTX 460](http://www.nvidia.com/object/product-geforce-gtx-460-us.html)

17. nvidia.com: [GeForce
    GTX 465](http://www.nvidia.com/object/product-geforce-gtx-465-us.html)

18. 驅動之家: [GTX 465变身记
    索泰GTX 465极速版破解实战](http://hardware.mydrivers.com/2/168/168361.htm)


19. nvidia.com: [GeForce
    GTX 470](http://www.nvidia.com/object/product_geforce_gtx_470_us.html)

20. nvidia.com: [GeForce
    GTX 480](http://www.nvidia.com/object/product_geforce_gtx_480_us.html)

21. nvidia.com: [GeForce
    GTX 460M](http://www.nvidia.com/object/product-geforce-gtx-460m-us.html)

22. nvidia.com: [GeForce
    GTX 470M](http://www.nvidia.com/object/product-geforce-gtx-470m-us.html)

23. nvidia.com: [GeForce
    GTX 480M](http://www.nvidia.com/object/product-geforce-gtx-480m-us.html)

24. nvidia.com: [GeForce
    GTX 485M](http://www.nvidia.com/object/product-geforce-gtx-485m-us.html)