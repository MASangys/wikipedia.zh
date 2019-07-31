**VDPAU** (**Video Decode and Presentation API for Unix**)是一个最初由[NVIDIA开发的针对其GeForce](https://zh.wikipedia.org/wiki/NVIDIA "wikilink") 8系列以及更高系列的[GPU](https://zh.wikipedia.org/wiki/GPU "wikilink")\[1\]\[2\] ，在[UNIX](../Page/UNIX.md "wikilink")和[类UNIX系统](https://zh.wikipedia.org/wiki/类UNIX "wikilink")（包括 [Linux](../Page/Linux.md "wikilink")、[FreeBSD](../Page/FreeBSD.md "wikilink")和[Solaris](../Page/Solaris.md "wikilink")）下基于[X Window系统下的开源库](https://zh.wikipedia.org/wiki/X_Window系统 "wikilink")(libvdpau)和[API](https://zh.wikipedia.org/wiki/API "wikilink")。 VDPAU的API可以让[视频播放器把一部分的视频解码和视频图像补偿交给](https://zh.wikipedia.org/wiki/视频播放器 "wikilink")[GPU](https://zh.wikipedia.org/wiki/GPU "wikilink")\[3\]\[4\]\[5\]。 目前VDPAU有能力处理一部分的[运动补偿](../Page/运动补偿.md "wikilink")、[离散余弦变换](../Page/离散余弦变换.md "wikilink")、和对使用[MPEG-1](../Page/MPEG-1.md "wikilink")、[MPEG-2](../Page/MPEG-2.md "wikilink")、[MPEG-4 AVC](https://zh.wikipedia.org/wiki/MPEG-4_AVC "wikilink")([H.264](https://zh.wikipedia.org/wiki/H.264 "wikilink"))、[VC-1](../Page/VC-1.md "wikilink")和[WMV3](https://zh.wikipedia.org/wiki/WMV3 "wikilink")/[WMV9格式编码的视频进行](https://zh.wikipedia.org/wiki/WMV9 "wikilink")[环内去块滤波](https://zh.wikipedia.org/wiki/环内去块滤波 "wikilink") 。当中有一些特定的格式能否于GPU来负担取决于GPU的版本，特别是MPEG-4 ASP (MPEG-4 Part 2), Xvid / OpenDivX (DivX 4)和DivX 5格式，这些格式必须使用GeForce 200M (2xxM)系列的GPU\[6\]。 VDPAU被认为在[X Window系统下等同于](https://zh.wikipedia.org/wiki/X_Window系统 "wikilink")[Windows下的](https://zh.wikipedia.org/wiki/Windows "wikilink")[DxVA](../Page/DxVA.md "wikilink")。

## 硬件驱动

每种 [GPU](https://zh.wikipedia.org/wiki/GPU "wikilink") 都需要通过 [X11](https://zh.wikipedia.org/wiki/X11 "wikilink") 软件设备驱动来开启这项功能。目前只有具有第二代 [PureVideo HD](https://zh.wikipedia.org/wiki/PureVideo "wikilink") 功能的NVIDIA [GeForce 8](https://zh.wikipedia.org/wiki/GeForce_8 "wikilink") [流处理器在安装有](https://zh.wikipedia.org/wiki/流处理器 "wikilink")180.06 beta以上版本的驱动程序才可支持。\[7\] 不支持的硬件包括 GeForce 8 系列的8800GTS 320/640MB 显存版和8800 GTX。后来基于 G9x 核心的显卡例如8400GS和8800GTS(G92核心)都已支持。 NVIDIA 没有计划对当前不支持的硬件提供后续支持。\[8\] S3 Graphics 对它的 Chrome 400显卡从驱动版本14.02.17开始添加了VDPAU的支持，支持的有S3 Chrome 430 GT, S3 Chrome 440 GTX, S3 Chrome 530 GT 和 S3 Chrome 540 GTX 。 \[9\] Intel和ATI目前不支持VDPAU，Nvidia 希望那些GPU设计者支持开源的VDPAU库,提供支持VDPAU视频加速的驱动并使用实例名字那样命名:Intel和ATI的: libvdpau_intel.so和libvdpau_ati.so。 \[10\] Intel 已经表示会考虑 VDPAU 的支持。 \[11\]

Mesa 从8.0版本开始就加入了 VDPAU 支持，任何利用 Gallium3D 的显卡驱动都可以让显卡获得 VDPAU 支持，包括 Intel 和 AMD 的开源显卡驱动。\[12\]

### NVIDIA GPU 列表

| 显卡系列                                                                  | 核心       | PureVideo | VDPAU 支持\[13\] | 备注                                                     |
| --------------------------------------------------------------------- | -------- | --------- | -------------- | ------------------------------------------------------ |
| **Geforce FX series**                                                 | NV4x     | VP1       | 不支持            | \-                                                     |
| **Geforce 6 series**                                                  | NV4x     | VP1       | 不支持            | \-                                                     |
| **Geforce 7 series**                                                  | G7x      | VP1       | 不支持            | \-                                                     |
| **Geforce 8800 Ultra, 8800 GTS (320/640MB)**                          | G80      | VP1       | 不支持            | \-                                                     |
| **Geforce 8800 GTX**                                                  | G80      | VP1       | 不支持            | \-                                                     |
| **Geforce 8400 GS, 8500 GT, 8600 GT, 8600 GTS**                       | G84, G86 | VP2       | 支持             | \-                                                     |
| **Geforce 8800 GS, 8800 GT, 8800 GTS (512MB/1GB)**                    | G92, G94 | VP2       | 支持             | \-                                                     |
| **Geforce 8400 GS**                                                   | G98      | VP3\[14\] | 支持             | 请注意，只有基于 G98 核心的才支持，购买前请先确认。                           |
| **Geforce 8200, 8300**                                                | C77      | VP3       | 支持             | \-                                                     |
| **Geforce 9600 GSO, 9600 GT, 9800 GT, 9800 GTX, 9800 GTX+, 9800 GX2** | G92, G94 | VP2       | 支持             | \-                                                     |
| **Geforce GTX 260, 260 CORE 216, 280, 285, 295**                      | GT200    | VP2       | 支持             | \-                                                     |
| **Geforce 9400 GT, 9500 GT**                                          | G96      | VP2\[15\] | 支持             | \-                                                     |
| **Geforce 9300M GS, 9300 GS, 9300 GE**                                | C79      | VP3\[16\] | 支持             | 大部分用于笔记本电脑和板载显卡。                                       |
| **Quadro FX 360M, 370, 570, 570M, 770M, 1600M**                       |          | VP2       | 支持             | \-                                                     |
| **Quadro FX 1700, 2700M, 3600M, 3700, 4800, 5800**                    |          | VP2       | 支持             | \-                                                     |
| **Quadro NVS 130M, NVS 150M, 135M, 140M, 290, 320M**                  |          | VP2       | 支持             | \-                                                     |
| **Quadro FX 370 LP, 160M, 295, 420, 450**                             | G98      | VP3       | 支持             | \-                                                     |
| **GeForce GTX 260M, GTX 280M**                                        | G92      | VP2       | 支持             | \-                                                     |
| **GeForce G210, G210M**                                               | GT218    | VP4\[17\] | 支持             | First generation to support MPEG-4 ASP (MPEG-4 Part 2) |
| **GeForce GT 220, GT 230M, GT 240M**                                  | GT216    | VP4\[18\] | 支持             |                                                        |
| **GeForce GT 240, GTS 250M, GTS 260M**                                | GT215    | VP4\[19\] | 支持             |                                                        |

### NVIDIA VDPAU 功能集

不同的硬件版本支持不同不同版本和不同水平的硬件解码\[20\] 。目前所有的NVIDIA VDPAU 功能集,最大视频宽度与高度为2048 [像素](../Page/像素.md "wikilink"), 最小视频宽度与高度为48 像素,并且所有编码目前限制在最大8192个[宏区块](https://zh.wikipedia.org/wiki/宏区块 "wikilink") (对于VC-1/WMV是8190个). 部分加速意味着 (图像)的解码在CPU执行,当[GPU执行](https://zh.wikipedia.org/wiki/GPU "wikilink")[离散余弦变换](../Page/离散余弦变换.md "wikilink") 和[运动补偿](../Page/运动补偿.md "wikilink")时。完全加速意味着GPU执行全部的[运动补偿](../Page/运动补偿.md "wikilink")、[离散余弦变换](../Page/离散余弦变换.md "wikilink")、

  - 功能集 A
    对[H.264的完全加速](https://zh.wikipedia.org/wiki/H.264/MPEG-4_AVC "wikilink")。
    对[MPEG-1](https://zh.wikipedia.org/wiki/MPEG-1#Part_2:_Video "wikilink"), [MPEG-2](../Page/MPEG-2.md "wikilink"), [VC-1](../Page/VC-1.md "wikilink")/[WMV9的部分加速](https://zh.wikipedia.org/wiki/WMV#Windows_Media_Video "wikilink")。
  - 功能集 B
    对 MPEG-1, MPEG-2, VC-1/WMV9 and H.264的完全加速.
    所用功能集 B 硬件不能解码以下宽度的: 769-784, 849-864, 929-944, 1009-1024, 1793-1808, 1873-1888, 1953-1968, 2033-2048 像素 H.264编码。
  - 功能集 C
    对 MPEG-1, MPEG-2, [MPEG-4 Part 2 (也叫作 MPEG-4 ASP)](../Page/MPEG-4.md "wikilink"), VC-1/WMV9 和 H.264的完全加速。
    对于MPEG-4 Part 2不支持[运动补偿](../Page/运动补偿.md "wikilink")和数据分块。

## 支持的软件

  - [MPlayer](../Page/MPlayer.md "wikilink")
  - [XBMC Media Center](https://zh.wikipedia.org/wiki/XBMC "wikilink")
  - [GStreamer](../Page/GStreamer.md "wikilink")\[21\]
  - [Boxee](https://zh.wikipedia.org/wiki/Boxee "wikilink")\[22\]
  - [MythTV](../Page/MythTV.md "wikilink")\[23\]
  - [Xine](https://zh.wikipedia.org/wiki/Xine "wikilink")\[24\]\[25\]
  - [MLT](../Page/Media_Lovin'_Toolkit.md "wikilink")\[26\]
  - [Adobe Flash](../Page/Adobe_Flash.md "wikilink") 10.2 *Stage Video* （目前仅支持32位） \[27\]
  - [VLC](https://zh.wikipedia.org/wiki/VLC "wikilink")

## 参见

  - [PureVideo](https://zh.wikipedia.org/wiki/PureVideo "wikilink") - NVIDIA开发的使用显卡进行视频加速的技术。
  - [DirectX Video Acceleration (DxVA)](http://en.wikipedia.org/wiki/DirectX_Video_Acceleration) - 在 Windows 系统下与 VDPAU 对应的技术。
  - [X-Video Bitstream Acceleration (XvBA)](http://en.wikipedia.org/wiki/X-Video_Bitstream_Acceleration) - [AMD](https://zh.wikipedia.org/wiki/AMD "wikilink") 在 Linux/UNIX 开放系统下相应的 [API](https://zh.wikipedia.org/wiki/API "wikilink") 。
  - [Video Acceleration API (VA API)](http://en.wikipedia.org/wiki/VaAPI) - 一种在 Linux/UNIX 开放系统下的视频加速 [API](https://zh.wikipedia.org/wiki/API "wikilink")。
  - [X-Video Motion Compensation (XvMC) API](http://en.wikipedia.org/wiki/X-Video_Motion_Compensation) - 一种在 Linux/UNIX 开放系统下的视频加速 [API](https://zh.wikipedia.org/wiki/API "wikilink")。

## 参考资料

## 外部链接

  - [NVIDIA VDPAU](http://http.download.nvidia.com/XFree86/vdpau/doxygen/html/)
  - [NVIDIA VDPAU Benchmarks](http://www.phoronix.com/scan.php?page=article&item=nvidia_vdpau&num=1)
  - [A NVIDIA VDPAU Back-End For Intel's VA-API](http://www.phoronix.com/scan.php?page=article&item=xorg_vdpau_vaapi&num=1)
  - [Ubuntu 10.04 x64版编译安装ffmpeg,mplayer,x264全教程 VDPAU的应用](http://forum.ubuntu.org.cn/viewtopic.php?f=74&t=286315)

[Category:应用程序接口](https://zh.wikipedia.org/wiki/Category:应用程序接口 "wikilink") [Category:英伟达](https://zh.wikipedia.org/wiki/Category:英伟达 "wikilink") [Category:X_Window系统](https://zh.wikipedia.org/wiki/Category:X_Window系统 "wikilink")

1.  [Announcing libvdpau 0.2](http://lists.freedesktop.org/archives/xorg-announce/2009-September/001036.html)

2.  [NVIDIA Releases Standalone VDPAU Library](http://www.phoronix.com/scan.php?page=news_item&px=NzU0MA)

3.

4.

5.  [VDPAU (Video Decode and Presentation API for Unix)](http://http.download.nvidia.com/XFree86/vdpau/doxygen/html/index.html)

6.  [NVIDIA 190.32 Beta Brings New VDPAU Features](http://www.phoronix.com/scan.php?page=news_item&px=NzUxMQ)

7.
8.

9.

10. [NVIDIA's driver for X11-oriented VDPAU](http://http.download.nvidia.com/XFree86/vdpau/doxygen/html/group__api__winsys__x11.html#Driver)

11. [Intel Considering VDPAU Support For X.Org Driver](http://www.phoronix.com/scan.php?page=news_item&px=NzA0Nw)

12. [Mesa/Gallium3D Works On VDPAU Interoperability](http://www.phoronix.com/scan.php?page=news_item&px=MTQ2NjY#)

13. <ftp://download.nvidia.com/XFree86/Linux-x86_64/185.18.14/README/appendix-h.html#id333549>

14.

15. <http://forums.nvidia.com/index.php?showtopic=74108&mode=threaded>

16.

17. <http://www.anandtech.com/video/showdoc.aspx?i=3657&p=3>

18. <http://www.anandtech.com/video/showdoc.aspx?i=3657&p=3>

19. <http://www.anandtech.com/video/showdoc.aspx?i=3657&p=3>

20. <ftp://download.nvidia.com/XFree86/Linux-x86/190.53/README/appendix-h.html#vdpau-implementation-limits-decoder>

21. <http://gstreamer.freedesktop.org/releases/gst-plugins-bad/0.10.14.html>

22.

23.

24.

25. [xine-lib-1.2 hg development tree, changeset 9b68f6efb713](http://hg.debian.org/hg/xine-lib/xine-lib-1.2/rev/9b68f6efb713)

26.

27. [1](http://www.reddit.com/r/linux/comments/eeh52/)