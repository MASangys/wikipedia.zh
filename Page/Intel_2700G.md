> 本文内容由[Intel 2700G](https://zh.wikipedia.org/wiki/Intel_2700G)转换而来。


**Intel 2700G**（代號：Marathon，马拉松）是一個用來搭配 [Intel](https://zh.wikipedia.org/wiki/Intel "wikilink") [XScale](../Page/XScale.md "wikilink") PXA27x 系列處理器的低功率繪圖處理晶片（最高50 mW）。其核心使用了PowerVR MBX技術（其後續產品有用在[SEGA](https://zh.wikipedia.org/wiki/SEGA "wikilink") [Dreamcast](../Page/Dreamcast.md "wikilink")）.

## 產品線

包含三个型号：2700G3, 2700G5 and 2700G7

### 2700G3

2700G3是高性价比版本。它集成384K 显存，适合驱动HVGA(320×480)或以下分辨率的图形显示。

### 2700G5

2700G5是高性能版本。它集成704K 显存，适合驱动VGA(640×480)分辨率的图形显示和解码MPEG-4视频。

### 2700G7

2700G7基本和G5相同，但同一堆栈中封装了运行频率100MHz、32bit位宽（理论带宽为400Mbit/s）的16MB独立显存。

## 特點

所有芯片都采用封装在[BGA中的](https://zh.wikipedia.org/wiki/BGA "wikilink")75 MHz, 32位图形核心。

### 加速后的双头输出

2700G有自己的[LCD控制器和两路LCD输出](https://zh.wikipedia.org/wiki/LCD "wikilink")。这使得XScale处理器和2700G的图形显示可以同时使用。2700G能够驱动一个高达1024×768分辨率（32位色彩）或1280×1024分辨率（16位色彩）的外置显示器。

### 2D繪圖的加速

2700G支持[裁减](https://zh.wikipedia.org/wiki/裁减 "wikilink")（[clipping](https://zh.wikipedia.org/wiki/Clipping_\(computer_graphics\) "wikilink")）、[alpha混和](https://zh.wikipedia.org/wiki/alpha混和 "wikilink")（[alpha blending](https://zh.wikipedia.org/wiki/alpha_blending "wikilink")）以及[反锯齿](https://zh.wikipedia.org/wiki/反锯齿 "wikilink")（[anti-aliasing](https://zh.wikipedia.org/wiki/anti-aliasing "wikilink")）加速。同时也支持多种位块传送（BLT）功能（[BitBLT](https://zh.wikipedia.org/wiki/BitBLT "wikilink")，StretchBLT and CSCBLT）。2D加速器的[象素填充率高达每秒](https://zh.wikipedia.org/wiki/象素填充率 "wikilink")8千4百万象素。

### 3D繪圖的加速

2700G具有完整的硬件渲染[管道并且兼容](https://zh.wikipedia.org/wiki/管道 "wikilink")[OpenGL ES标准](../Page/OpenGL_ES.md "wikilink")。它提供[纹理压缩](../Page/纹理压缩.md "wikilink")（[texture compression](https://zh.wikipedia.org/wiki/texture_compression "wikilink")）、[各向异性过滤](../Page/各向异性过滤.md "wikilink")（[anisotropic filtering](https://zh.wikipedia.org/wiki/anisotropic_filtering "wikilink")）和[定点雾化](https://zh.wikipedia.org/wiki/定点雾化 "wikilink")[per vertex fogging等功能](https://zh.wikipedia.org/wiki/distance_fog "wikilink")。3D加速器每秒能处理大约831千个三角形。

### 影像處理之加速

2700G能够执行[逆向Zig-Zag](https://zh.wikipedia.org/wiki/逆向Zig-Zag "wikilink")（[Inverse Zig-Zag](https://zh.wikipedia.org/wiki/Inverse_Zig-Zag "wikilink")）、[逆向离散余弦转换](https://zh.wikipedia.org/wiki/逆向离散余弦转换 "wikilink")（[Inverse Discrete Cosine Transform](https://zh.wikipedia.org/wiki/iDCT "wikilink")）和[运动补偿](../Page/运动补偿.md "wikilink")（[Motion Compensation](https://zh.wikipedia.org/wiki/Motion_Compensation "wikilink")）用以加速MPEG-1、MPEG-2、MPEG-4和WMV视频解码。加速器能以高于30帧每秒的速度解码720x480分辨率（[DVD](https://zh.wikipedia.org/wiki/DVD "wikilink") 清晰度）的MPEG-1/2，WMV视频和640x480分辨率的MPEG-4视频。

## 使用之機種

  - Dell Axim X50v, Dell Axim X51v
  - Pepper Pad.
  - GIGABYTE T600,GIGABYTE MW998

## 參見

[XScale](../Page/XScale.md "wikilink")

## 外部連結

[Category:顯示卡](https://zh.wikipedia.org/wiki/Category:顯示卡 "wikilink")