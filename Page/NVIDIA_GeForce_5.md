> 本文内容由[NVIDIA GeForce 5](https://zh.wikipedia.org/wiki/NVIDIA GeForce 5)转换而来。


GeForce 5（官方統稱為GeForce FX系列）是由[nVIDIA研發設計的第五代](https://zh.wikipedia.org/wiki/nVIDIA "wikilink")[GeForce](../Page/GeForce.md "wikilink")[顯示核心產品](https://zh.wikipedia.org/wiki/顯示核心 "wikilink")，分為兩大系列：

  - **GeForce FX**（核心代號NV3x）在2002年11月18日的[COMDEX展上發佈](https://zh.wikipedia.org/wiki/COMDEX "wikilink")。GeForce FX 5800 Ultra與FX 5800是全世界首款支持[DDR2](https://zh.wikipedia.org/wiki/DDR2 "wikilink")[显存](../Page/显存.md "wikilink")的顯示卡。它使用了當時許多超前的技術，其采用CineFX 2.0引擎，首次支持[CG高级编程语言](../Page/Cg語言.md "wikilink")，亦完全支持Direct 9.0。NV30晶片是全新設計的，與NV25極少有相似之處，而晶体管数量是上一代NV25/NV28的两倍。2003年3月19日，NVIDIA發表該系列的移動版**GeForce FX Go**，最初發表有五款產品FX Go 5700、FX Go 5650、FX Go 5600、FX Go 5200、FX Go 5100，同年9月發表了建基於NV3x系列的Personal Cinema FX數位娛樂解決方案。

<!-- end list -->

  - **GeForce PCX**（核心代號NV3xPCX）在2004年2月17日的[IDF](https://zh.wikipedia.org/wiki/英特爾科技論壇 "wikilink")2004上正式发布。是業界第一套全系列支援[PCI-E介面的GPU](https://zh.wikipedia.org/wiki/PCI-E "wikilink")。但GeForce PCX只是GeForce FX系列显示卡配合[HSI桥接芯片](../Page/NVIDIA_BR02.md "wikilink"),將原本為AGP介面而設計的顯式卡，僅用該橋接晶片轉接至PCI-E插槽，性能瓶頸依舊存在，所以GeForce PCX只是理論上支援[PCI-E](https://zh.wikipedia.org/wiki/PCI-E "wikilink")，完全不能發揮PCI-E應有效果。GeForce PCX名副其實是過渡產品。

核心以[TSMC](https://zh.wikipedia.org/wiki/TSMC "wikilink")[0.13微米製程製造](https://zh.wikipedia.org/wiki/0.13微米製程 "wikilink")。與前代0.15微米製程相比，新的製程可使電晶體縮小25%且快上25%。但NV30结构复杂，导致成品率较低。而128位的显存頻宽严重跟制了其性能，由於核心頻率高，所以发热量也高。而必須采用更強的散熱風扇。然而該散熱風扇噪音過高,且需多佔用一條PCI槽，成為該產品所诟病的缺點。GeForce 5後期型號眾多，定位有部分重疊。

## GeForce FX

NVIDIA於2002年11月18日發佈GeForce FX，由於其採用當時領先的0.13微米製程（[臺積電代工](https://zh.wikipedia.org/wiki/臺積電 "wikilink")）及GDDR2顯示記憶體（[三星製造](../Page/三星電子.md "wikilink")）的成品率太低，NVIDIA臨時改進了NV25核心使其支援AGP 8X，稱為NV28核心，即Ti 4600更新為Ti 4800來臨時應對競爭對手的Radeon 9700 Pro，但終究是上一代產品，效能完全不敵競爭對手，使ATi罕有的取得了之前從未獲得過的效能之王。GeForce FX正式上市前的這段時間NVIDIA陷入了這種難堪的局面，只能通過優化驅動來減小與ATi產品的差距。

GeForce FX正式開始上市是在2003年3月份，首批有兩個型號，FX 5800 Ultra與FX 5800。前者負責取代上代的Ti 4800，頻率達到核心500MHz/顯示記憶體1000MHz，是當時市面上頻率最高的顯示卡，首次超前使用三星剛剛開始量產的[GDDR2作為顯存](https://zh.wikipedia.org/wiki/GDDR2 "wikilink")，時脈雖比[DDR高](https://zh.wikipedia.org/wiki/DDR "wikilink")，但功秏也提高，时间延迟亦変得嚴重。所以就算使用了新技術，只有128 Bit位寬，完全不能發揮NV30应有的效能，在與競爭對手Radeon 9700 Pro對比的多個媒體評測中只是勉強取得了勝利，但為此付出的代價相當大，即使NV30支援分頻技術，但由於採用兩倍於上代產品的晶體管製造，它的運行溫度很高，消耗了兩倍於同等ATi顯卡的電能。FX 5800 Ultra採用史無前例的佔據兩個PCI槽的FX Flow散熱系統的噪音也相當高。FX 5800 Ultra的效能王座只坐了不到一個月，[ATi在FX](https://zh.wikipedia.org/wiki/ATi "wikilink") 5800 Ultra發佈不久迅速推出了Radeon 9800 Pro予以還擊，且效能比FX 5800 Ultra來得更高。現時FX 5800 Ultra被認為是NVIDIA公司自成立以來除[NV1外第二失敗的產品](https://zh.wikipedia.org/wiki/NV1 "wikilink")。低一個檔次的FX 5800頻率稍低，負責取代上代的Ti 4800 SE，散熱器則為普通風扇，噪音稍小，但同樣需要占用2個PCI槽。

FX 5800系列顯卡採用第二代CineFX引擎，支援Intellisample技術，[ForceWare統一軟體環境](https://zh.wikipedia.org/wiki/ForceWare "wikilink")。提供了FP16和FP32精度模式。這兩種模式前一種意味著低精度渲染（和競爭對手相對而言），另一種是低性能模式。32位元支援也使得電晶體數量大幅增加。著色性能通常也只有競爭對手ATi產品的一半或是更低。作為相容微軟DirectX標準上享有盛譽的NVIDIA，為此次誤判微軟下一代規範，付出了沉痛的代價。

NVIDIA開始掩飾[GeForce FX的缺點](https://zh.wikipedia.org/wiki/GeForce_FX "wikilink")。這個時候備受關注的“FX Only”演示程式Dawn發佈了。但是當這個程式被破解之後，人們發現在Radeon 9700顯卡上運行的速度甚至更快\[1\]。隨後，NVIDIA在驅動上進行了更多的修改和“優化”，但是NVIDIA的穩定和高效驅動的傳奇已經不在了。後期，NVIDIA通過對指令的重新排序部分地縮小了性能差距，但是著色性能依舊較弱，而且對特定硬體指令十分敏感。NVIDIA於是尋求微軟的合作，更新DirectX規範，依此可以生成對GeForce FX架構優化的指令代碼。

在2003年3月，NVIDIA還發佈了代號NV31的FX 5600 Ultra與FX 5600，代號NV34的FX 5200 Ultra與FX 5200四款顯示卡\[2\]，定位於中階與主流市場，對手是ATi的Radeon 9600與Radeon 9200，其中NV31與NV30的基本特性完全相同，同為CineFX引擎，支援Intellisample技術，但其採用了128位元的DDR顯示記憶體，顯核及[記憶體頻率均有所降低](../Page/内存带宽.md "wikilink")，擁有四條像素管線。稍後NVIDIA又針對[OEM市場發佈FX](https://zh.wikipedia.org/wiki/OEM "wikilink") 5600簡化版，其PCB用料簡化，頻率降低（不同國家地區有不同的三種名稱：FX 5600 SE/XT/LE）。FX 5600 Ultra的效能不足以撼動Radeon 9600 Pro，所以在5月份NVIDIA推出了新版FX 5600系列，核心採用[覆晶技術](../Page/覆晶技術.md "wikilink")，提升了50MHz的頻率達到400MHz，顯示記憶體亦提升到800MHz，與此同時之前的FX 5600簡化版開始走入零售市場。NV34則不支援Intellisample技術，像素管線同為四條。FX 5200除了支援DirectX 9與上代產品相比毫無優勢，其效能比GeForce4 MX 440 SE還要低，並不足以流暢運行遊戲。競爭對手ATi在當時沒有支援DirectX 9的同級別低階產品，造成FX 5200相當暢銷，在2003年至2004年期間佔據了整個低階市場，後期更推出了FX 5200簡化版，直到2004年ATi發佈Radeon 9550。FX 5200 Ultra效能比FX 5200稍強，但它的公版設計是採用與FX 5600 Ultra相同的PCB，不利於降低成本，所以市場上相當少見。NVIDIA在OEM市場還有FX 5100，它的頻率相比FX 5200有所降低，當然效能一樣很低。

為了應對Radeon 9800 Pro，NVIDIA在NV30推出兩個月後迅速推出了核心代號NV35的FX 5900 Ultra與FX 5900來取代。由此導致FX 5800 Ultra與FX 5800的壽命相當短，不久就停產。這次NVIDIA迅速吸取了之前的教訓，重新採用技術成熟的256位元DDR顯示記憶體。NV35同時還改進了之前的技術，CineFX升級為CineFX 2.0，主要是改进了浮点Pixel Shader的运算能力，改善了各项异性过滤的图像质量等。Intellisample升級為Intellisample HTC，它增加了色彩、高级纹理和Z轴压缩算法来提升图像质量，另外1：4的无损压缩技术也在256位显存带宽的帮助下得到了很好的发挥。它還加入了UltraShadow技术用来加速Volumetric Shadow的速度，它允许程序员约束光源使物体的阴影在一个特定的范围内，这样就加速了阴影的计算速度。而之前的產品可以通過軟體模擬來實現該技術，但效能會有所降低。NV35相比NV30在内存带宽、反锯齿填充率、图形优化功能上分别有所提升和改进。FX 5900 Ultra和FX 5900的散熱系統相比FX 5800 Ultra小了許多，由於發熱量的降低，使其不用採用FX Flow的大型散熱系統，噪音也沒有之前這麼嚴重，它同樣支援分頻技術，在2D下的頻率降低以節約電能。縱使有如此多的改進，FX 5900 Ultra在與9800 Pro的較量中還是勉強取得了勝利。

對手不久又改進其Radeon 9800 Pro產品，於10月中旬發佈了Radeon 9800 XT，NVIDIA為了應對馬上在10月下旬又推出了代號NV38的FX 5950 Ultra\[3\]，它採用更先進的製造工藝，使其能獲得更高的頻率，NV38顯示卡只改進了PCB供電設計，其他特性與NV35完全相同，它在與Radeon 9800 XT較量中勢均力敵，但效能依然偏弱，只在少數項目中取得領先。與NV38一同發佈的還有代號NV36的FX 5700 Ultra\[4\]與FX 5700以及簡化版的FX 5900（性質與FX 5600簡化版相同），它的對手是ATi的Radeon 9600 XT，NV36交由IBM代工，亦是NVIDIA與IBM的第一次合作。FX 5700 Ultra是FX 5900 Ultra的中階版本，它擁有FX 5900 Ultra所支援的所有特性，唯一不同的是頻率有所降低並採用了DDR2記憶體，它的效能壓倒了9600 XT。2004年3月NVIDIA發佈了FX 5700的簡化版來取代之前的FX 5600簡化版，對手是Radeon 9600 SE，同時還發佈了代號同為NV34的FX 5500\[5\]，它在FX 5200的基礎上提升了頻率，但效能不足以超過FX 5200 Ultra，FX 5500是以較低的成本獲得了接近FX 5200 Ultra的效能。2004年5月NVIDIA將FX 5700系列改用最新的GDDR3顯示記憶體，頻率達到1GHz，其效能甚至超過了簡化版的FX 5900。2004年9月1日NVIDIA將OEM市場上的FX 5700 VE拿到零售市場上來彌補FX 5700簡化版的缺貨，同時針對[中國大陸市場推出了FX](https://zh.wikipedia.org/wiki/中國大陸 "wikilink") 5900 ZT，它採用與FX 5900一樣的設計，但它的頻率稍低，完全可以通過[超頻](../Page/超頻.md "wikilink")達到FX 5900的效能。

## GeForce PCX

2004年2月推出的[GeForce PCX](https://zh.wikipedia.org/wiki/GeForce_PCX "wikilink")\[6\]只是通過[HSI橋接晶片](../Page/NVIDIA_BR02.md "wikilink")\[7\]來支援[PCI-E介面](https://zh.wikipedia.org/wiki/PCI-E "wikilink")，非原生支援。5系列只有三款產品，早期發表的GeForce PCX 5950改為GeForce PCX 5900推出，採用FX 5900 XT（NV35）核心，GeForce PCX 5750採用FX 5700（NV36）核心，GeForce PCX 5300採用FX 5200（NV34）核心。[GeForce PCX 4300](https://zh.wikipedia.org/wiki/GeForce_4 "wikilink")\[8\]則是採用NV18核心的上代產品。競爭對手[ATi曾諷刺NVIDIA](https://zh.wikipedia.org/wiki/ATi "wikilink")「有路何需搭橋」，但最終也迫於市場壓力推出了單向橋接晶片[Rialto](https://zh.wikipedia.org/wiki/Rialto "wikilink")。

## 產品規格

[NVIDIA_GeForce_FX_5800_Ultra_ES.jpg](https://zh.wikipedia.org/wiki/File:NVIDIA_GeForce_FX_5800_Ultra_ES.jpg "fig:NVIDIA_GeForce_FX_5800_Ultra_ES.jpg") [NVIDIA_GeForce_FX_5950_Ultra_ES.jpg](https://zh.wikipedia.org/wiki/File:NVIDIA_GeForce_FX_5950_Ultra_ES.jpg "fig:NVIDIA_GeForce_FX_5950_Ultra_ES.jpg")

  - CineFX2.0渲染引擎：
      - 提供了对于DirectX9.0的支持
      - 支持2.0版本的像素着色器和[顶点着色器](https://zh.wikipedia.org/wiki/顶点着色器 "wikilink")
      - 高精密图形显处理能力，支持128bit的浮点精度（FP32）
      - 每个PASS最高支持16次帖图
      - Intellisample HCT：
      - 2X/4X/4XS QuinCunx 6XS/8X多采样全屏抗锯齿模式
      - 4:1的Z轴以及色彩压缩能力
      - 快速Z轴清除功能
      - 2X/4X/6X/8X的异性材质过滤

<!-- end list -->

  - UltraShadow Technology：
      - 第一代阴影加速技术，支持Shadow Volume渲染技术
      - 提供双倍的Z-Buffer渲染速度
      - 提供双倍的Stencil Buffer渲染速度

<!-- end list -->

  - Advanced Display options：
      - nView多媒体控制桌面系统
      - 支持数字控制系统
      - GPU内部整合TV-Encoder
      - 内部整合MPEG2解码器

## 相關條目

  - [GeForce 5系列規格列表](https://zh.wikipedia.org/wiki/NVIDIA顯示核心列表#GeForce_5 "wikilink")
  - [GeForce FX Go系列規格列表](https://zh.wikipedia.org/wiki/NVIDIA顯示核心列表#GeForce_FX_Go "wikilink")
  - [Quadro FX](../Page/Quadro_FX.md "wikilink")
  - [Radeon R300](https://zh.wikipedia.org/wiki/Radeon_R300 "wikilink")

## 参考資料

## 外部連結

  - [NVIDIA GeForce FX](http://www.nvidia.com.tw/page/fx_desktop.html)
  - [NVIDIA GeForce PCX](http://www.nvidia.com.tw/page/geforce_pcx.html)
  - [NVIDIA GeForce FX Go](http://www.nvidia.com.tw/page/fx_mobile.html)

[Category:GeForce系列](https://zh.wikipedia.org/wiki/Category:GeForce系列 "wikilink") [Category:2002年面世的產品](https://zh.wikipedia.org/wiki/Category:2002年面世的產品 "wikilink")

1.  [Nvidia Dawn (fairy) demo on ATI cards](http://www.techspot.com/community/topics/nvidia-dawn-fairy-demo-on-ati-cards.5564/)
2.  [GeForce FX 5600/5200 Ultra的首次评测出炉](http://hard.zol.com.cn/labs/2003/0313/56523.shtml)
3.  [eVGA e-GeForce FX 5950 Ultra Review](http://www.firingsquad.com/hardware/evga_e-geforce_fx_5950_review/)
4.  [eVGA e-GeForce FX 5700 Ultra Review](http://www.firingsquad.com/hardware/evga_e-geforce_fx_5700_ultra_review/)
5.  [虚晃一枪？彻底解读FX5500的“灵魂”](http://diy.pconline.com.cn/graphics/dg/0403/330573.html)
6.
7.
8.