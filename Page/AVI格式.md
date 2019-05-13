**AVI**是英语**Audio Video
Interleave**（“音频视频交织”或译为“音频视频交错”）的首字母缩写，由[微软在](../Page/微软.md "wikilink")1992年11月推出的一种[多媒体文件格式](../Page/视频文件格式.md "wikilink")，用于对抗[苹果](../Page/苹果.md "wikilink")[Quicktime的技术](../Page/Quicktime.md "wikilink")。现在所说的AVI多是指一种封装格式。

## AVI封装概述

尽管AVI已经属于老旧的技术，但是由于Windows的通用性，和简单易懂的开发API，仍被广泛使用。

AVI的文件结构分为“头部”，“主体”和“索引”三部分。主体中图像数据和声音数据是交互存放的。从尾部的索引可以索引跳到自己想放的位置。

AVI将视频和音频封装在一个文件裡，其顺序是：若干视频帧（Video Frame）之后接着若干音频帧（Audio
Frame），再然后是视频帧、音频帧，故名为“音频视频交织”，意即音频和视频按帧交错排列，以此达到音频同步于视频播放的效果。和DVD视频格式一样，AVI文件支持多视频流和音频流，虽然这些功能很少使用。大多数AVI文件还支持由[Matrox](../Page/Matrox.md "wikilink")
OpenDML集团于1996年2月开发的格式后缀。这些文件非正式的称为“AVI 2.0”，并得到微软的支持。

AVI本身只是提供了这么一个框架，内部的图像数据和声音顺据格式可以是任意的编码形式。但是由于索引放在了文件尾部，所以在播放internet流媒体时已属力不从心。

## AVI封装软件

较知名的有

  - [VirtualDub](../Page/VirtualDub.md "wikilink")（VirtualDub MOD）
  - [AVI-Mux](../Page/AVI-Mux.md "wikilink")（命令行版本及GUI版本AVI-Mux GUI）

## AVI能使用的編碼

  - 影像檔案種類（括号内表示的是此视频的[FourCC](../Page/FourCC.md "wikilink")）
      - [MPEG-1](../Page/MPEG-1.md "wikilink")/[-2](../Page/MPEG-2.md "wikilink")（MPEG/MPG1/MPG2）
      - [MPEG-4](../Page/MPEG-4.md "wikilink")（MP4V/XVID/DX50/DIVX/DIV5/3IVX/3IV2/RMP4）
      - [MS-MPEG4](../Page/MS-MPEG4.md "wikilink")（MPG4/MP42/MP43）
      - [WMV7](../Page/Windows_Media_Video.md "wikilink")/WMV8/WMV9（WMV1/WMV2/WMV3）
      - [DV](../Page/DV.md "wikilink")（DVSD/DVIS）
      - [Flash Video](../Page/Flash_Video.md "wikilink")（FLV1/FLV4）
      - [Motion JPEG](../Page/Motion_JPEG.md "wikilink")（MJPG）
      - LossLess JPEG（LJPG）
      - [H.264](../Page/H.264.md "wikilink")（AVC1/DAVC/H264/X264）
      - [H.263](../Page/H.263.md "wikilink")（H263/S263）
      - [H.261](../Page/H.261.md "wikilink")（H261）
      - [Huffyuv](../Page/Huffyuv.md "wikilink")（HFYU）
      - [AVIzlib](../Page/AVIzlib.md "wikilink")（ZLIB）
      - [AVImszh](../Page/AVImszh.md "wikilink")（MSZH）
      - [Theora](../Page/Theora.md "wikilink")（THEO）
      - [Indeo Video](../Page/Indeo.md "wikilink")（IV31/IV32）
      - [Cinepak](../Page/Cinepak.md "wikilink")（cvid）
      - [Microsoft Video
        1](../Page/Microsoft_Video_1.md "wikilink")（CRAM）
      - [On2VP3](../Page/On2VP3.md "wikilink")（VP30/VP31）
      - On2VP4（VP40）
      - [On2 VP6](../Page/VP6.md "wikilink")（VP60/VP61/VP62）
      - [VC-1](../Page/VC-1.md "wikilink")（WVC1）

<!-- end list -->

  - 音頻
      - [PCM](../Page/脉冲编码调制.md "wikilink")
      - [MP3](../Page/MP3.md "wikilink")（0x0055）
      - [AC-3](../Page/AC-3.md "wikilink")（0x0092）
      - [AAC](../Page/AAC.md "wikilink")
          - [HE-AAC](../Page/HE-AAC.md "wikilink")
          - [LC-AAC](../Page/LC-AAC.md "wikilink")
      - [FLAC](../Page/FLAC.md "wikilink")
      - [Indeo Audio](../Page/Indeo.md "wikilink")
      - [TrueSpeech](../Page/TrueSpeech.md "wikilink")
      - [WMA](../Page/Windows_Media_Audio.md "wikilink")
      - [Vorbis](../Page/Vorbis.md "wikilink")

編碼組合能根據以下的例子自由選擇。

  - ([DivX或](../Page/DivX.md "wikilink")[XviD](../Page/XviD.md "wikilink")+MP3).avi，
  - (H.264+MP3).avi
  - (WMV9+MP3).avi

以XviD+MP3构成的AVI最为常见。

## AVI影片播放器

  - [QuickTime](../Page/QuickTime.md "wikilink")：屬於Apple公司，兼容QuickTime的AVI文件可以用QuickTime播放
  - [VLC媒體播放器](../Page/VLC_Media_Player.md "wikilink")：屬於VideoLan組織，除了播放AVI格式，還可以支持很多其他格式
  - [RealPlayer](../Page/RealPlayer.md "wikilink")：屬於RealNetworks
  - [DivX Player](../Page/DivX_Player.md "wikilink")：屬於DIVX公司
  - [GOM Player](../Page/GOM_Player.md "wikilink")：屬於Gretech
    Corporation，只能運行於Windows平台
  - [Windows Media
    Player](../Page/Windows_Media_Player.md "wikilink")：屬於Microsoft，只能運行於Windows平台上

## 参见

  - [MKV](../Page/MKV.md "wikilink")
  - [ASF](../Page/ASF.md "wikilink")
  - [DirectShow Media](../Page/DirectShow_Media.md "wikilink")
  - [MPEG-2](../Page/MPEG-2.md "wikilink")
  - [MOV](../Page/MOV.md "wikilink")
  - [MP4](../Page/MP4.md "wikilink")
  - [Ogg](../Page/Ogg.md "wikilink")
  - [OGM](../Page/OGM.md "wikilink")

## 外部連結

  - [.AVI Glossary](http://www.afterdawn.com/glossary/term.cfm/avi)

[Category:擴展名](https://zh.wikipedia.org/wiki/Category:擴展名 "wikilink")
[Category:视频文件格式](https://zh.wikipedia.org/wiki/Category:视频文件格式 "wikilink")