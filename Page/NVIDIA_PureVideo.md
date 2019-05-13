**PureVideo**是[nVidia的提高视频播放質素技術](../Page/nVidia.md "wikilink")。在[GeForce
6系列开始支援](../Page/GeForce_6.md "wikilink")。能硬體加速视频播放，減少耗用CPU資源。该功能使用硬件在前端（解码）过程和后段过程（后处理）过程中协助。特别是，PureVideo可以充分地执行[MPEG-2渲染的绝大多数工作](../Page/MPEG-2.md "wikilink")，以及WMV9渲染的大量工作。

支援平台方面，[Microsoft
Windows已經可以完全使用該功能](../Page/Microsoft_Windows.md "wikilink")。其他平台例如[Linux](../Page/Linux.md "wikilink")、[FreeBSD和](../Page/FreeBSD.md "wikilink")[Solaris](../Page/Solaris.md "wikilink")，[NVIDIA的](../Page/NVIDIA.md "wikilink")180版本驅動程式開始新增**[VDPAU](../Page/VDPAU.md "wikilink")**
[API接口](../Page/API.md "wikilink")，這相當於在Linux上實現PureVideo功能。配合[MPlayer和NVIDIA提供的修正檔](../Page/MPlayer.md "wikilink")，就可以實現硬體加速\[1\]。支援的顯示卡必須是[GeForce
8或之後的產品](../Page/GeForce_8.md "wikilink")。在此之前，NVIDIA使用（其中一個X-Video输出模块）實現相似功能，但此計劃最終停止了更新。

## 第一代PureVideo

主要技术参数：

  - 视频
      - 支援MPEG 2、VC-1及WMV9硬體解碼
      - Spatial-Temporal De-Interlacing - 平整物件的邊緣
      - High-Quality Scaling - 可自由縮放影像的解像度，保持畫質和影像細節
      - Inverse Telecine - 減少鋸齒，增強影片銳利度
      - Bad Edit Correction - 使再次编辑的視頻更清晰
  - 音效
      - 杜比数字环绕声解码

支援產品：

  - [GeForce 7系列](../Page/GeForce_7.md "wikilink")
  - [GeForce 6系列](../Page/GeForce_6.md "wikilink")

## 第二代PureVideo HD

於2005年3月2日正式發表，只需更新駆动程式即可支援。

  - 新增支援[H.264硬體解碼](../Page/H.264.md "wikilink")
  - 支援Noise Reduction - 降低影片雜訊
  - 支援Edge Enhancement - 增強影片銳利度和影像細節
  - 支援新的Pull-Down Cadence - 還原24fps轉換成30fps影片的內容，令細節更完美、更自然。
  - 新增支援[HDMI輸出](../Page/HDMI.md "wikilink")
  - 支援「影像色彩校正」，校正顯示器螢幕與电視螢幕在色彩特性上的差異，確保輸出影像質素與顯示器相若。
  - 支援「LCD銳利化」，增強色彩訊號，對某些過慢反應時間的[LCD顯示器進行補償](../Page/LCD.md "wikilink")，消除殘影。

支援產品：

  - [GeForce 7系列](../Page/GeForce_7.md "wikilink")
  - [GeForce 6系列](../Page/GeForce_6.md "wikilink")
  - [GeForce 6150](../Page/NVidia_C51芯片组.md "wikilink")（整合形顯示卡）

## 第三代PureVideo HD

GeForce 8800系列顯示卡都支援[HDCP](../Page/HDCP.md "wikilink")（High-bandwidth
Digital Content
Protection）。HDCP會保護[HDTV](../Page/HDTV.md "wikilink")、[Blu-Ray及](../Page/BD.md "wikilink")[HD-DVD的影像內容](../Page/HD-DVD.md "wikilink")，防止非法拷貝。不支援HDCP的顯示卡，解像度會強行由1080p降至540p。

它亦支援新一代PureVideo
HD技術，首次支援高清影訊雜訊消除和邊緣強化技術。在HQV影像測試中，取得128分高分，為現時最佳成績。它除了支援720p、1080i及1080p等解像度外，並支援H.264
、VC-1、WMV-HD及MPEG-HD硬件解碼。

而G84和G86所支援的PureVideo
HD技術更強，將所有影像解碼工作交由顯示核心（VP2）負責，大幅降低CPU佔用率。亦新加入BitStream
Processor，能夠完全硬體解碼H.264及**部分**硬體解碼VC-1的影片。最後，加入了AES128運算引擎，就能硬體解碼[AACS](../Page/AACS.md "wikilink")，由於Windows
Vista的關係，這種解碼方式將被頻繁使用，硬體解碼就變得必要。

支援產品：

  - [GeForce 8系列](../Page/GeForce_8.md "wikilink")（G80 8800系列除外）

在[GeForce
9中](../Page/GeForce_9.md "wikilink")，PureVideo開始支援双流解码，即是GPU同時間可以處理兩段高清影片。在高清影碟中，某些時候會有兩段影片同時播放，例如是同步播放正片和拍摄花絮，所以支援双流解码變得重要起來。另外，亦新加了动态对比度增强技术，用來改善過亮和過暗的場景，增加細節之間的對比度，與[HDR技術類似](../Page/HDR.md "wikilink")。最後，色彩增强技术可以加強蓝绿色调和皮肤色调的表現。

## 第四代PureVideo HD

## 第五代PureVideo HD

## 其他公司的相關技術

PureVideo技术的竞争对手是[ATi公司的](../Page/ATi.md "wikilink")[AVIVO技术](../Page/AVIVO.md "wikilink")、[Intel的](../Page/Intel.md "wikilink")[Clear
Video技術](../Page/Clear_Video.md "wikilink")、[S3
Graphics的](../Page/S3_Graphics.md "wikilink")[Chromotion
HD技術和](../Page/Chromotion.md "wikilink")[矽統科技的](../Page/矽統科技.md "wikilink")[Real
Video技術](../Page/Real_Video.md "wikilink")。

## 参考资料

<div class="references-small">

<references />

</div>

[Category:英伟达](https://zh.wikipedia.org/wiki/Category:英伟达 "wikilink")
[Category:视频加速](https://zh.wikipedia.org/wiki/Category:视频加速 "wikilink")

1.  [NV 180版Linux驱动视频解码加速实测](http://news.mydrivers.com/1/121/121422.htm)