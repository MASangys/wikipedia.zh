> 本文内容由[NVIDIA GeForce 3](https://zh.wikipedia.org/wiki/NVIDIA_GeForce_3)转换而来。


**GeForce3**（核心代號是NV20）是[nVIDIA發明的第三代](https://zh.wikipedia.org/wiki/nVIDIA "wikilink")[顯示核心](https://zh.wikipedia.org/wiki/GPU "wikilink")。在2001年2月的Macworld Expo Tokyo 2001上发布\[1\]。它是全球第一款支持[DirectX](../Page/DirectX.md "wikilink") 8的[顯示晶片](https://zh.wikipedia.org/wiki/顯示晶片 "wikilink")。它擁有4条像素流水线，可同时处理最多8个纹理，即4×2架構，像素填充率是800 Mpixels/s。GeForce3上还采用了更先进的反锯齿技术，如超采样反锯齿。最大改进之处是其可编程[T\&L技術](https://zh.wikipedia.org/wiki/T&L "wikilink")，對很多光影效果提供硬體支援。GeForce3沒有推出[行動平臺的產品](https://zh.wikipedia.org/wiki/行動平臺 "wikilink")，其專業版名為[Quadro DCC](../Page/Quadro_DCC.md "wikilink")，基於GeForce3標準版。

[Canopus_GeForce3_Ti_500.png](https://zh.wikipedia.org/wiki/File:Canopus_GeForce3_Ti_500.png "fig:Canopus_GeForce3_Ti_500.png")

該系列第一款產品是GeForce3於2001年2月28日發佈，而由於成品率問題一直遲遲未進入市場，在4月初，有少部分製程是A3的GeForce3出現在市場上，其晶片還有一些[Bug未解決](https://zh.wikipedia.org/wiki/程式錯誤 "wikilink")，如在某些遊戲下效能大幅降低。正式開始銷售是在5月底，其製程已更新為A5，某些品牌亦開始回收A3製程的產品。GeForce3的DirectX 7性能並未完全超過GeForce2 Ultra，其優勢在於硬體支援DirectX 8及其可编程[T\&L技術](https://zh.wikipedia.org/wiki/T&L "wikilink")\[2\]。在9月份NVIDIA同時發佈了GeForce3 Ti 200及其上一代的GeFoece2 Ti兩款顯示核心。GeForce3 Ti 200的核心及顯示記憶體的頻率都有所降低，供電線路有所簡化，是平價版本。緊接著在10月份，NVIDIA又推出了高階的GeForce3 Ti 500，採用8層PCB板，頻率亦達到240MHz，這款產品的效能比競爭對手的Radeon 8500要強很多，也輕易的超過了GeForce2 Ultra\[3\]。後期亦有廠商推出了採用GeForce3標准版6層PCB的Ti 500，以降低成本。GeForce3系列還有一個優點，即是三款型號都可以通過簡單更改電阻而變為專業版的Quadro DCC，有廠商如耕宇的GeForce3全系列產品都帶有硬體跳線，用家只要加入跳線帽即可輕鬆將顯示卡變為價值1000美元的Quadro DCC，某些配備128MB顯示記憶體的型號變身後效能甚至比Quadro DCC本尊更高，造成Quadro DCC被市場冷落的現象。GeForce3系列的後續產品是[GeForce4](https://zh.wikipedia.org/wiki/GeForce4 "wikilink")，其NV25架構與GeForce3的NV20架構幾乎完全相同，基本可以看成是GeForce3的改名版，而實際上NVIDIA的產品發佈路線圖中亦曾將GeForce4歸為GeForce3系列，如GeForce4 MX早期名稱是GeForce3 MX，GeForce4 Go早期名稱是GeForce3 Go。

## 產品特性

### 頂點著色單元(Vertex Shader)

GeForce3不僅整合了來自之前[GeForce 256和](https://zh.wikipedia.org/wiki/GeForce_256 "wikilink")[GeForce2晶片的](https://zh.wikipedia.org/wiki/GeForce2 "wikilink")「靜態」座標轉換和照明引擎，更增加了稱為「頂點著色單元」的可程式化[頂點處理器功能](../Page/頂點_\(電腦圖學\).md "wikilink")。遊戲開發者可藉由加上頂點程式，讓遊戲產生令人驚豔的全新效果。

### 像素著色單元(Pixel Shader)

GeForce3增加了可程式化材質混合器，使材質運算一樣可程式化。這項功能可和頂點著色單元一起增加GeForce3所能展現的新顯示效果。

### 光速記憶體架構(Lightspeed Memory Architecture)

GeForce3採用了3D顯示卡革命性的新記憶體控制概念，用以解決現今3D顯示卡存在已久的記憶體頻寬和延遲的問題。交錯式記憶體控制器比之前在3D晶片上的設計，更有效率的利用顯示卡[記憶體頻寬](../Page/内存带宽.md "wikilink")。這使得GeForce3在畫面更新率上，表現得明顯較之前NVIDIA具有相同記憶體頻寬的顯示卡優秀，甚至還比理論上的像素填充速度還要快。GeForce3也具備了一種用來降低對於隱藏物件解析工作的設計 Z Occlusion Culling（Z軸嚙合剔除技術），更提升了晶片的效率。

### 多重取樣全景反鋸齒功能(Multi-Sampling Anti-Aliasing)

GeForce3是以FSAA（全景反鋸齒效果）為設計概念，採用名為「Quincunx」的新反鋸齒演算法。多重取樣反鋸齒這一個特別的功能版本，使得GeForce3得以在極高的解析度和畫面更新率下執行FSAA。

## 產品規格

  - 0.15[微米](../Page/微米.md "wikilink")製程，集成了5700万个晶体管
  - 核心频率：200MHZ
  - 内存频率：460MHZ DDR
  - 支持DirectX 8.0
  - 4条像素流水线，4X2架構
      - 支持Pixel Shader 1.1
      - 支持Vertex Shader 1.1
  - 1个定点着色单元
  - 采用AGP 4x接口

## 相關條目

  - [產品規格列表](https://zh.wikipedia.org/wiki/NVIDIA顯示核心列表#GeForce_3 "wikilink")
  - [Quadro DCC](../Page/Quadro_DCC.md "wikilink")

## 參考鏈接

## 外部連結

  - [NVIDIA GeForce 3主頁](http://www.nvidia.com/page/geforce3.html)

[Category:GeForce系列](https://zh.wikipedia.org/wiki/Category:GeForce系列 "wikilink") [Category:2001年面世的產品](https://zh.wikipedia.org/wiki/Category:2001年面世的產品 "wikilink")

1.  [NVIDIA Introduces GeForce3--Breaks New Ground in the Quest for Real-Time Cinematic Graphics](http://www.nvidia.com/object/IO_20010530_6131.html)
2.  [21 GeForce Titanium Boards](http://www.thg.ru/graphic/20011218/print.html)
3.  [GeForce3 Ti500 年終特輯](http://www0.oc.com.tw/article/0112/readgoodarticle.asp?id=516)