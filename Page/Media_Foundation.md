**Media
Foundation**是微軟在Windows上推出的下一代多媒體開發庫，目的是為Windows平台提供統一的多媒體影音解決方案，開發者可以透過Media
Foundation播放影片和聲音文件、進行影音編碼或者多媒體文件轉碼等等工作。Media
Foundation是[DirectShow為主的舊式多媒體](../Page/DirectShow.md "wikilink")[應用程序接口的替代者與繼承者](../Page/應用程序接口.md "wikilink")，在微軟的計畫下將逐步汰換[DirectShow技術](../Page/DirectShow.md "wikilink")。Media
Foundation要求Windows Vista或更高版本，不支援較早期的Windows版本如Windows XP。

Media
Foundation長於高品質的音訊和視訊播放，高清內容（如[HDTV](../Page/HDTV.md "wikilink"),高清電視）和數位版權管理（DRM）訪問控制。Media
Foundation在不同的Windows版本上能力不同，在Windows Vista上僅支持WMV格式，但到了Windows
7後添加了H264編碼支持。Windows 8上則多了數種更高品質的設定。

## 架構

[MFoundation.svg](https://zh.wikipedia.org/wiki/File:MFoundation.svg "fig:MFoundation.svg")
Media Foundation（以下簡稱MF）架構分為控制層（Control layer），核心層（Core
layer）與平台層（Platform
layer）。大部分MF功能均由核心層提供，開發者則由控制層來控制行為。一般開發者僅須了解控制層與核心層，幾乎不須接觸平台層。

Media Foundation提供了兩種編程模型，第一種是以Media Session為主的媒體管道模型（Media
pipeline）。但是媒體管道模型太過複雜，且曝露過多底層細節，故微軟於Windows
7上推出第二種編成模型，內含SinkWriter、SourceReader、以及Transcode
API三部分，大大簡化了MF的使用難度。

媒體管道（pipeline）分三個組成部分：媒體來源（Media Source），媒體接收器（Media Sink）和媒體平台變換（Media
Foundation Transforms）。

### 媒體平台變換

媒體平台變換（Media Foundation Transforms）推出了一個革新式的技術DirectX Media
Objects（DMOs）。混合DMO的/
MFT的對象也可以創建。應用程序可以使用MFTs內的管道，或直接使用它們作為獨立的對象。其種類如下：

  - 音訊和視訊編解碼器
  - 音訊和視訊效果
  - Multiplexers和demultiplexers
  - Tees
  - 色彩空間轉換器
  - Sample-rate converters
  - 視訊定標器（Video scalers）

微軟建議開發人員編寫MFTs，取代DirectShow篩選器\[1\]。

### 增強型視訊渲染器

Media Foundation使用Enhanced Video
Renderer（EVR）作為渲染器。它可以組合多達16個同步流（simultaneous
streams），第一流是一個參考流（reference stream）。

## 與DirectShow比較

MF提供了以下好處：

  - 可擴展的高清晰度內容和數位版權管理保護（[DRM](../Page/DRM.md "wikilink")-protected）的內容。
  - 允許DirectX視訊加速用於之外DirectShow的基礎設施。支持DXVA 2.0。
  - MF的可擴展性（extensibility），使不同的內容保護系統一起運作。
  - 使用多媒體類別計劃程序服務（MMCSS），是一個新的系統服務在Windows Vista。

而MF支持的視訊格式較DirectShow有限是其缺點。\[2\]。

## 應用支援

Media Foundation首次適用於Windows Vista,可見諸於media playback applications.

## 注釋

<references/>

## 外部連結

  - [Microsoft Media Foundation
    SDK](http://msdn2.microsoft.com/en-us/library/ms694197.aspx)
  - [Media Foundation Development
    Forum](https://web.archive.org/web/20081218032005/http://forums.microsoft.com/MSDN/ShowForum.aspx?ForumID=387&SiteID=1)
  - [Media Source
    Metadata](http://msdn2.microsoft.com/en-us/library/aa368930.aspx)
  - [Media Foundation
    Pipeline](http://msdn2.microsoft.com/en-us/library/ms703912.aspx)
  - [Media Foundation
    Architecture](http://msdn2.microsoft.com/en-us/library/ms696219.aspx)
  - [About the Media
    Session](http://msdn2.microsoft.com/en-us/library/ms694084.aspx)
  - [About the Media Foundation
    SDK](http://msdn2.microsoft.com/en-us/library/ms696274.aspx)
  - [Enhanced Video
    Renderer](http://msdn2.microsoft.com/en-us/library/ms694916.aspx)

[Category:Windows多媒体](https://zh.wikipedia.org/wiki/Category:Windows多媒体 "wikilink")
[Category:多媒体框架](https://zh.wikipedia.org/wiki/Category:多媒体框架 "wikilink")

1.  [Migrating from DirectShow to Media Foundation and comparison of the
    two](http://msdn2.microsoft.com/en-us/library/aa468614.aspx)
2.  [Supported Media Formats in Media
    Foundation](https://msdn.microsoft.com/en-us/library/dd757927)