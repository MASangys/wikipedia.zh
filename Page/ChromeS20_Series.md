> 本文内容由[ChromeS20 Series](https://zh.wikipedia.org/wiki/ChromeS20 Series)转换而来。


**Chrome S20系列**，是[VIA接手](https://zh.wikipedia.org/wiki/VIA "wikilink")[S3 Graphics後第四代](../Page/S3_Graphics.md "wikilink")[顯示卡產品](https://zh.wikipedia.org/wiki/顯示卡 "wikilink")，由日本[富士通](../Page/富士通.md "wikilink")代工生產，采用90[奈米制程](https://zh.wikipedia.org/wiki/奈米 "wikilink")。整个系列均只支援[DirectX](../Page/DirectX.md "wikilink") 9.0b，但不支援DirectX 9.0c。

當S27使用MultiChrome模式時，效能約等於GeForce 6600 DDR2 SLi.

## 型號列表

  - S27—8條像素流水線，4個頂點著色引擎，內建128Bit記憶體控制器，支援GDDR1、2及3，支援Direct X9.0b，MultiChrome技術。核心時脈是700MHz，顯示記憶體（GDDR3）時脈是1.2 GHz。
  - S25—核心晶片和S27相同。但核心時脈降至500MHz，可以配合DDR或GDDR2記憶體，支援AcceleRAM LowFB技術。
  - S23—核心時脈是500MHz，只內建64Bit記憶體控制器，Die size比S27和S25小，可支援AcceleRAM LowFB技術。

## AcceleRAM LowFB技術

與[nVidia的](https://zh.wikipedia.org/wiki/nVidia "wikilink")[TurboCache技術及](https://zh.wikipedia.org/wiki/TurboCache "wikilink")[AMD的](https://zh.wikipedia.org/wiki/AMD "wikilink")[HyperMemory技術相似](https://zh.wikipedia.org/wiki/HyperMemory "wikilink")。顯示核心可以透過[PCI-E接口借用系統主記憶體](https://zh.wikipedia.org/wiki/PCI-E "wikilink")，作為視訊記憶體。這屬於動態借用，當執行[2D程式](https://zh.wikipedia.org/wiki/2D "wikilink")，或者不再需要那麼多視訊記憶體時，顯示卡會釋放已借用的系統主記憶體。

## MultiChrome技術

與nVidia的[SLi技術及ATi的](https://zh.wikipedia.org/wiki/SLi "wikilink")[CrossFire技術類似](https://zh.wikipedia.org/wiki/CrossFire "wikilink")。只被S27顯示核心支援，插入兩張S27繪圖卡即可運作。最多支援4顆核心並行運算。

S27支持两种MultiChrome模式：

  - Alternate Frame Rendering（AFR）交替框架渲染

这模式把Frame以單雙數分給不同的GPU處理，例如VGA 1負責（1,3,5,7,9），而VGA 2負責（2,4,6,8,10），這個方法效能最佳。可以支援DirectX 9和[OpenGL](../Page/OpenGL.md "wikilink") 1.5。

  - Split Frame Rendering（SFR）分割框架渲染。

这模式將畫面分為上下半部，並各自由一顆GPU運算，然後再組合成同一個畫面。

## Chromotion 3.0 Video Engine

**Chromotion 3.0**是[S3 Graphics的提高影片播放畫質技術](../Page/S3_Graphics.md "wikilink")。它能優化影片播放畫質，加強[HDTV播放畫質](https://zh.wikipedia.org/wiki/HDTV "wikilink")，支援[WMV9及](https://zh.wikipedia.org/wiki/WMV9 "wikilink")[MPEG2硬體加速](https://zh.wikipedia.org/wiki/MPEG2 "wikilink")，降低CPU使用率。還支援Deblocking Filter、Non-Linear Adjustments、Artistic License及Chromotion 3.0 LCD Overdrive，提高影片播放畫質。

## Deblocking Filter

## Non-Linear Adjustments

## Artistic License

## Chromotion 3.0 LCD Overdrive

## 動態時脈控制

GPU可以根據工作負載量，自動將核心和顯示記憶體時脈動態調整。有三個模式，分為3D Highest Frequency、2D Medium Frequency以及Power Save Lowest Frequency。此外，核心亦支援動態電壓控制。核心可根據負載量，由1V至1.3V自動調整，以達至最佳節能省電能效果。

## 動態PCI-E頻寬調整技術

運作模式如下

  - 3D模式：PCI-E 16x
  - 2D模式：PCI-E 8x
  - 閒置模式：PCI-E 1x

這些措施都有有助節省電能和減低熱量。

## 另見

  - [威盛處理器列表](../Page/威盛處理器列表.md "wikilink")

## 參見

  - [威盛電子](../Page/威盛電子.md "wikilink")
  - [S3 Graphics](../Page/S3_Graphics.md "wikilink")
  - [VIA Envy](https://zh.wikipedia.org/wiki/VIA_Envy "wikilink")
  - [ViRGE](https://zh.wikipedia.org/wiki/S3_ViRGE "wikilink") 系列
  - [Savage](../Page/S3_Savage.md "wikilink") 系列
  - [DeltaChrome S8](../Page/DeltaChrome_S8.md "wikilink") 系列
  - [GammaChrome S18](../Page/GammaChrome_S18.md "wikilink") 系列
  - [Chrome 400](../Page/Chrome_400系列显卡.md "wikilink") 系列
  - [Chrome 500](../Page/Chrome_500系列显卡.md "wikilink") 系列

[de:S3 Chrome\#Chrome S20](https://zh.wikipedia.org/wiki/de:S3_Chrome#Chrome_S20 "wikilink")

[Category:顯示卡](https://zh.wikipedia.org/wiki/Category:顯示卡 "wikilink") [Category:威盛電子](https://zh.wikipedia.org/wiki/Category:威盛電子 "wikilink")