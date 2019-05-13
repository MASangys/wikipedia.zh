**DirectX Video Acceleration**（**DXVA**）是一种在[Microsoft
Windows和](../Page/Microsoft_Windows.md "wikilink")[Xbox
360平台的Microsoft](../Page/Xbox_360.md "wikilink")
API规范，能让视訊解码器使用硬件解码。

DXVA 1.0最早是在[Windows 2000以及](../Page/Windows_2000.md "wikilink")[Windows
98版本開始引入的API](../Page/Windows_98.md "wikilink")，可以使用於[VMR
7/9之上](../Page/DirectShow.md "wikilink")。\[1\] DXVA 2.0僅適用於[Windows
Vista](../Page/Windows_Vista.md "wikilink"), [Windows
7以及更新的版本](../Page/Windows_7.md "wikilink")，被整合於[Media
Foundation](../Page/Media_Foundation.md "wikilink")（MF）並使用[EVR](../Page/Media_Foundation#增強型視訊渲染器.md "wikilink")。\[2\]

## 功能

显卡芯片在硬件上支援DXVA规范，并不代表它就实现了DXVA所有功能。DXVA制定硬件加速解码可分四级：

  - VLD：控制BitStream
  - IDCT（反餘弦變換）：IDCT级别的解码包含MoComp和PostProc
  - MoComp，运动补偿，Pixel Prediction
  - PostProc

其中以VLD加速等级最高，老舊的显卡如Geforce3只支持MC加速，GeForce 8000和Radeon HD
2000都可以支援VLD。[PowerDVD分别可以对H](../Page/PowerDVD.md "wikilink").264、VC-1、MPEG2、X264、XVID、DVIX等格式进行解压。此外DXVA還定義了一組可以讓圖形驅動實現運算加速的硬件驅動接口（Device
Driver Interfaces/DDIs）。

DXVA定義了運動補償DDI，屬於[iDCT動作介面](../Page/Inverse_discrete_cosine_transform.md "wikilink")，[霍夫曼编码](../Page/霍夫曼编码.md "wikilink")，[運動補償](../Page/運動補償.md "wikilink")、[alpha
blending](../Page/alpha_blending.md "wikilink")、inverse 、[color space
conversion以及幀率的變化動作](../Page/色彩管理.md "wikilink")，還有其他。\[3\]\[4\]其本身又有三個小細項：Deinterlacing
DDI, COPP DDI以及ProcAmp
DDI.\[5\][Deinterlacing](../Page/deinterlace.md "wikilink")
DDI定義了針對[deinterlacing動作的回饋](../Page/deinterlace.md "wikilink").
COPP（Certified Output Protection
Protocol）DDI可允許管道（pipeline）在[DRM-protected
media安全性考量](../Page/数字版权管理.md "wikilink")，定義加密功能. ProcAmp
DDI用於加速[post-processing](../Page/post-processing.md "wikilink")
video.

## 支援DXVA的播放器

  - [Media Player Classic Home
    Cinema](../Page/Media_Player_Classic_Home_Cinema.md "wikilink")
  - [ffdshow-tryouts](../Page/Ffdshow.md "wikilink")（Since Revision
    3185）
  - [XBMC Media Center](../Page/XBMC_Media_Center.md "wikilink")
  - [Boxee](../Page/Boxee.md "wikilink")
  - [MediaPortal](../Page/MediaPortal.md "wikilink")
  - [Microsoft](../Page/Microsoft.md "wikilink") [Windows
    Vista](../Page/Windows_Vista.md "wikilink")/[Windows
    7](../Page/Windows_7.md "wikilink") internal
    [MPEG-2](../Page/MPEG-2.md "wikilink") decoder
  - [Nero Showtime](../Page/Nero_Showtime.md "wikilink")
  - [Nero MediaHub](../Page/Nero_MediaHub.md "wikilink")
  - [PowerDVD](../Page/PowerDVD.md "wikilink")
  - [SPlayer](../Page/SPlayer.md "wikilink")\[6\]
  - [UIStream](../Page/UIStream.md "wikilink")\[7\] via FFMpeg layer
  - [WinDVD](../Page/WinDVD.md "wikilink")
  - [Windows Media Player
    11](../Page/Windows_Media_Player.md "wikilink")（WMV only）
  - [Windows Media Player
    12](../Page/Windows_Media_Player_12.md "wikilink")
  - Anysee Viewer
  - [Adobe Flash](../Page/Adobe_Flash.md "wikilink") 10.2版
  - [DivX](../Page/DivX.md "wikilink") H.264 Decoder（1.2版, DivX
    Plus的一部份）
  - [VLC media player](../Page/VLC_media_player.md "wikilink")（DXVA 2.0
    only）\[8\]（since version 1.1）
  - [CoreAVC](../Page/CoreAVC.md "wikilink") \[9\]（since version 2.5.0）
  - [Daum PotPlayer](../Page/Daum_PotPlayer.md "wikilink")
  - [jetAudio](../Page/jetAudio.md "wikilink") 8.0版
  - [Splash Lite](../Page/Splash_Lite.md "wikilink")
  - [Splash PRO](../Page/Splash_PRO.md "wikilink")
  - [Splash PRO EX](../Page/Splash_PRO_EX.md "wikilink")

## 注釋

## 外部链接

  - [DirectX Video
    Acceleration](https://www.webcitation.org/678exRdk0?url=http://msdn.microsoft.com/en-us/library/ms798379.aspx)
  - [DXVAChecker](http://bluesky23.yu-nagi.com/en/index.html#DXVAChecker),
    utility listing supported DXVA modes on the given computer
  - [DivX DXVA
    guide](https://web.archive.org/web/20121118072302/http://labs.divx.com/DivX-H264-Decoder-DXVA),
    walk-through of checking for DXVA support and enabling it in the
    DivX H.264 Decoder

[Category:Windows_API](https://zh.wikipedia.org/wiki/Category:Windows_API "wikilink")
[Category:DirectX](https://zh.wikipedia.org/wiki/Category:DirectX "wikilink")
[Category:视频加速](https://zh.wikipedia.org/wiki/Category:视频加速 "wikilink")
[Category:驱动程序](https://zh.wikipedia.org/wiki/Category:驱动程序 "wikilink")
[Category:Microsoft_Windows](https://zh.wikipedia.org/wiki/Category:Microsoft_Windows "wikilink")

1.

2.
3.

4.

5.

6.  <http://splayer.org>

7.  <http://www.uistream.com>

8.  <http://wiki.videolan.org/VLC_DxVA2>

9.