**libavcodec**是一款[LGPL](../Page/GNU宽通用公共许可证.md "wikilink")[自由软件编解码库](../Page/自由软件.md "wikilink")，用于视频和音频数据的编解码工作。带有这个名字的库有[FFmpeg项目和](../Page/FFmpeg.md "wikilink")[Libav项目](https://zh.wikipedia.org/wiki/Libav "wikilink")，但是它们却彼此不兼容。

libavcodec是个集成了许多开源多媒体应用和框架。常见的[MPlayer](../Page/MPlayer.md "wikilink")、[xine和](https://zh.wikipedia.org/wiki/xine "wikilink")[VLC媒体播放器都使用它作为它们的主要内置解码引擎](https://zh.wikipedia.org/wiki/VLC "wikilink")，用于许多音频视频格式在所有支持的平台上的重放。它也被[ffdshow试用解码器用作主要的解码库](https://zh.wikipedia.org/wiki/ffdshow "wikilink")。libavcodec也被用于视频编辑和转换应用，例如[Avidemux](../Page/Avidemux.md "wikilink")、或者[Kdenlive既用它解码也用其编码](../Page/Kdenlive.md "wikilink")。

libavcodec包含了解码器和为实现若干专有格式而存在的编码器。其本身在[逆向工程方面的工作就是libavcodec发展成长的一部分](../Page/逆向工程.md "wikilink")。在标准的libavcodec框架下，有着这些有效的编解码器为使用原始的编解码器带来很大的益处，最明显的就是提升了移植性。另一些方面也增加了它的表现力，因为libavcodec包含了一份标准库，它高度优化了常见建立块的实现，比如[DCT和色彩空间转换](https://zh.wikipedia.org/wiki/DCT "wikilink")。但是，即便libavcodec致力于将字节提取级别的解码来实现最终结果，这样的重现中出现的错误和丢失的特征有时候能导致回放固定文件的兼容性问题。

## 已實作的影像編解碼器

libavcodec包含如下的編解碼：\[1\]

  - [Asus](https://zh.wikipedia.org/wiki/Asus "wikilink") v1與v2
  - [AVS](https://zh.wikipedia.org/wiki/Audio_Video_Standard "wikilink")（僅解碼功能）
  - [CamStudio](https://zh.wikipedia.org/wiki/CamStudio "wikilink")（僅解碼功能）
  - [Cinepak](https://zh.wikipedia.org/wiki/Cinepak "wikilink")（僅解碼功能）
  - [Creative](https://zh.wikipedia.org/wiki/Creative "wikilink")
    YUV（CYUV,僅解碼功能）
  - [Dirac](https://zh.wikipedia.org/wiki/Dirac "wikilink")（僅解碼功能，編碼則經由[libdirac以及libschroedinger](https://zh.wikipedia.org/wiki/libdirac "wikilink")）
  - [DNxHD](https://zh.wikipedia.org/wiki/DNxHD "wikilink")
  - [Duck](../Page/On2_Technologies.md "wikilink")
    [TrueMotion](https://zh.wikipedia.org/wiki/TrueMotion "wikilink")
    v1與v2（僅解碼功能）
  - [Flash Screen
    Video](https://zh.wikipedia.org/wiki/Sorenson_Spark "wikilink")
  - [FFV1](https://zh.wikipedia.org/wiki/FFV1 "wikilink")
  - (animated)
    [GIF](https://zh.wikipedia.org/wiki/Graphics_Interchange_Format "wikilink")
  - [H.261](../Page/H.261.md "wikilink")
  - [H.263](../Page/H.263.md "wikilink")
  - [H.264/MPEG-4
    AVC](https://zh.wikipedia.org/wiki/H.264/MPEG-4_AVC "wikilink")（原生解碼，編碼則透過[x264](https://zh.wikipedia.org/wiki/x264 "wikilink")）
  - [Huffyuv](https://zh.wikipedia.org/wiki/Huffyuv "wikilink")
  - [id Software](https://zh.wikipedia.org/wiki/id_Software "wikilink")
    RoQ Video
  - [Intel](https://zh.wikipedia.org/wiki/Intel "wikilink")
    [Indeo](https://zh.wikipedia.org/wiki/Indeo "wikilink")（僅解碼功能）
  - [Lagarith](https://zh.wikipedia.org/wiki/Lagarith "wikilink")（僅解碼功能）
  - LOCO（僅解碼功能）
  - Mimic（僅解碼功能）
  - [MJPEG](https://zh.wikipedia.org/wiki/MJPEG "wikilink")
  - [MPEG-1](../Page/MPEG-1.md "wikilink")
  - [MPEG-2](../Page/MPEG-2.md "wikilink")/[H.262](https://zh.wikipedia.org/wiki/H.262 "wikilink")
  - [MPEG-4 Part
    2](https://zh.wikipedia.org/wiki/MPEG-4_Part_2 "wikilink")（格式多用於[DivX與](../Page/DivX.md "wikilink")[Xvid](../Page/Xvid.md "wikilink")）

<!-- end list -->

  - [On2](../Page/On2_Technologies.md "wikilink")
    [VP3](https://zh.wikipedia.org/wiki/VP3 "wikilink")（僅解碼功能）
  - [On2](../Page/On2_Technologies.md "wikilink")
    [VP5](https://zh.wikipedia.org/wiki/VP5 "wikilink")（僅解碼功能）
  - [On2](../Page/On2_Technologies.md "wikilink")
    [VP6](../Page/VP6.md "wikilink")（僅解碼功能）
  - [On2](../Page/On2_Technologies.md "wikilink")
    [VP8](../Page/VP8.md "wikilink")（native decoder, encoding through
    [libvpx](https://zh.wikipedia.org/wiki/libvpx "wikilink")）
  - [Apple ProRes](https://zh.wikipedia.org/wiki/ProRes_422 "wikilink")
  - [Apple
    Computer](https://zh.wikipedia.org/wiki/Apple_Computer "wikilink")
    [QuickDraw](https://zh.wikipedia.org/wiki/QuickDraw "wikilink")（僅解碼功能）
  - [QuickTime](../Page/QuickTime.md "wikilink"):
    [Graphics](https://zh.wikipedia.org/wiki/QuickTime_Graphics "wikilink")（僅解碼功能）,
    [Video](https://zh.wikipedia.org/wiki/Apple_Video "wikilink")（decoding
    only）and
    [Animation](https://zh.wikipedia.org/wiki/QuickTime_Animation "wikilink")（RLE）
  - [RealVideo](../Page/RealVideo.md "wikilink") RV10 and RV20
  - RealVideo RV30 and RV40（僅解碼功能）
  - [Smacker
    video](https://zh.wikipedia.org/wiki/Smacker_video "wikilink")（僅解碼功能）
  - [Snow](https://zh.wikipedia.org/wiki/Snow "wikilink")
  - [Sorenson](https://zh.wikipedia.org/wiki/Sorenson "wikilink")
    [SVQ1](https://zh.wikipedia.org/wiki/SVQ1 "wikilink")
  - Sorenson
    [SVQ3](https://zh.wikipedia.org/wiki/SVQ3 "wikilink")（僅解碼功能）
  - [Theora](../Page/Theora.md "wikilink")（原生解碼，編碼則[libtheora](https://zh.wikipedia.org/wiki/libtheora "wikilink")）
  - [Sierra](https://zh.wikipedia.org/wiki/Sierra "wikilink") VMD
    Video（decoding only）
  - [VMware](../Page/VMware.md "wikilink") VMnc（decoding only）
  - [Westwood
    Studios](https://zh.wikipedia.org/wiki/Westwood_Studios "wikilink")
    [VQA](https://zh.wikipedia.org/wiki/.VQA "wikilink")（decoding only）
  - [WMV](../Page/Windows_Media_Video.md "wikilink")—版本7與8
  - [WMV](../Page/Windows_Media_Video.md "wikilink")—version 9 /
    [VC-1](../Page/VC-1.md "wikilink")（僅解碼功能）
  - [Windows Media Video
    Image](https://zh.wikipedia.org/wiki/Windows_Media_Video_Image "wikilink")（僅解碼功能）
  - [Windows Media Video
    Screen](https://zh.wikipedia.org/wiki/Windows_Media_Video_Screen "wikilink")
    1 and 2（decoding only）
  - [Wing
    Commander](https://zh.wikipedia.org/wiki/Wing_Commander_\(video_game\) "wikilink")/Xan
    Video（僅解碼功能）

## 已實作的音頻編解碼器

libavcodec含蓋列下的音頻編解碼格式：\[2\]

  - [8SVX](https://zh.wikipedia.org/wiki/8SVX "wikilink")（僅解碼功能）

  - [AAC](https://zh.wikipedia.org/wiki/Advanced_Audio_Coding "wikilink")

  - [AC-3](https://zh.wikipedia.org/wiki/Dolby_AC-3 "wikilink")

  - [AMR](https://zh.wikipedia.org/wiki/AMR "wikilink")（僅解碼功能）

  - [AMR-WB](https://zh.wikipedia.org/wiki/AMR-WB "wikilink")（僅解碼功能）

  - [Apple Lossless](../Page/Apple_Lossless.md "wikilink")

  - [ATRAC3](https://zh.wikipedia.org/wiki/ATRAC3 "wikilink")（僅解碼功能）

  - [Cook
    Codec](https://zh.wikipedia.org/wiki/Cook_Codec "wikilink")（僅解碼功能）

  - [DTS](../Page/DTS.md "wikilink")（編碼仍在實驗中）

  - [EA ADPCM](../Page/模拟城市3000.md "wikilink")（僅解碼功能）

  - [E-AC-3](https://zh.wikipedia.org/wiki/E-AC-3 "wikilink")

  - （僅解碼功能）

  - [FLAC](../Page/FLAC.md "wikilink")

  - [GSM
    06.10](https://zh.wikipedia.org/wiki/Full_Rate "wikilink")（原生解碼功能，編碼則經由[libgsm](https://zh.wikipedia.org/wiki/libgsm "wikilink")）

  - [Intel](https://zh.wikipedia.org/wiki/Intel "wikilink") Music Coder
    and Indeo Audio Coder（僅解碼功能）

  - [Meridian Lossless
    Packing](https://zh.wikipedia.org/wiki/Meridian_Lossless_Packing "wikilink")
    / [Dolby
    TrueHD](https://zh.wikipedia.org/wiki/Dolby_TrueHD "wikilink")（僅解碼功能）

  - [Monkey's Audio](../Page/Monkey's_Audio.md "wikilink")（僅解碼功能）

  - [MP1](https://zh.wikipedia.org/wiki/MP1 "wikilink")（僅解碼功能）

  - [MP2](https://zh.wikipedia.org/wiki/MP2 "wikilink")

  - [MP3](../Page/MP3.md "wikilink")（原生解碼功能，編碼係透過[LAME](../Page/LAME.md "wikilink")）

<!-- end list -->

  - [Nellymoser Asao Codec in
    Flash](https://zh.wikipedia.org/wiki/Nellymoser_Asao_Codec_in_Flash "wikilink")

  - [Opus透過外部的libopus](https://zh.wikipedia.org/wiki/Opus "wikilink")

  - [QCELP](https://zh.wikipedia.org/wiki/QCELP "wikilink")（僅解碼）

  - [QDM2](https://zh.wikipedia.org/wiki/QDesign "wikilink")（僅解碼）

  - [RealAudio 1.0](https://zh.wikipedia.org/wiki/VSELP "wikilink")

  - [RealAudio
    2.0](https://zh.wikipedia.org/wiki/LD-CELP "wikilink")（僅解碼）

  - [Shorten](https://zh.wikipedia.org/wiki/Shorten "wikilink")（僅解碼）

  - [Truespeech](https://zh.wikipedia.org/wiki/Truespeech "wikilink")（僅解碼）

  - [TTA](../Page/TTA.md "wikilink")（僅解碼）

  - [TwinVQ](https://zh.wikipedia.org/wiki/TwinVQ "wikilink")（僅解碼）

  - [Vorbis](https://zh.wikipedia.org/wiki/Vorbis "wikilink")

  - [WavPack](../Page/WavPack.md "wikilink")（僅解碼）

  - 1與2

  - [Windows Media Audio 9
    Lossless](https://zh.wikipedia.org/wiki/Windows_Media_Audio_9_Lossless "wikilink")（僅解碼）

  - [Windows Media Audio 9
    Professional](https://zh.wikipedia.org/wiki/WMA_Pro "wikilink")（僅解碼）

  - [Windows Media Audio
    Voice](../Page/Windows_Media_Audio.md "wikilink")（僅解碼）

## 引用libavcodec的庫

  - libavformat（[FFmpeg之部份](../Page/FFmpeg.md "wikilink")）
  - libgegl（[GEGL可選之部份](https://zh.wikipedia.org/wiki/GEGL "wikilink")）
      - libgimp（[GIMP之部份](../Page/GIMP.md "wikilink")）
  - libmpcodecs（[MPlayer之部份](../Page/MPlayer.md "wikilink")）
      - libmpdemux（[MPlayer之部份](../Page/MPlayer.md "wikilink")）

## 使用libavcodec的應用程式

### 影像播放器

  - [GOM Player](../Page/GOM_Player.md "wikilink")（Illegally）\[3\]
  - [KMPlayer](https://zh.wikipedia.org/wiki/Konqueror_Media_Player "wikilink")
  - [FFplay](../Page/FFmpeg.md "wikilink")
  - [MPlayer](../Page/MPlayer.md "wikilink")
  - [VLC](https://zh.wikipedia.org/wiki/VLC_media_player "wikilink")
  - [xine](https://zh.wikipedia.org/wiki/xine "wikilink")
  - [PotPlayer](../Page/PotPlayer.md "wikilink")
  - [IINA](../Page/IINA.md "wikilink")

### 音頻播放器

  - [Audacious](https://zh.wikipedia.org/wiki/Audacious_Media_Player "wikilink")（Uses
    in audacious-plugins's ffaudio）
  - [Rockbox](https://zh.wikipedia.org/wiki/Rockbox "wikilink")（仅FLAC编码）
  - [XMMS2](https://zh.wikipedia.org/wiki/XMMS2 "wikilink")

### 多媒體播放器

  - [Gnash](../Page/Gnash.md "wikilink")
  - [Moonlight](https://zh.wikipedia.org/wiki/Moonlight_\(runtime\) "wikilink")
  - [swfdec](https://zh.wikipedia.org/wiki/swfdec "wikilink")

### 影像編輯

參見

  - [Avidemux](../Page/Avidemux.md "wikilink")
  - [Cinelerra](../Page/Cinelerra.md "wikilink")
  - [Kdenlive](../Page/Kdenlive.md "wikilink")
  - [Kino](https://zh.wikipedia.org/wiki/Kino "wikilink")

### 視覺效果

  - [Jahshaka](../Page/Jahshaka.md "wikilink")

### 音頻編輯

  - [Audacity](../Page/Audacity.md "wikilink")（自1.3.6版以後）
  - [SoX](https://zh.wikipedia.org/wiki/SoX "wikilink")（可選）

### 影像轉換

  -
  - [FFmpeg](../Page/FFmpeg.md "wikilink")

  - [HandBrake](https://zh.wikipedia.org/wiki/HandBrake "wikilink")

  - [MEncoder](https://zh.wikipedia.org/wiki/MEncoder "wikilink")

  -
  -
  - [ffmpeg2theora](https://zh.wikipedia.org/wiki/ffmpeg2theora "wikilink")

### 視訊庫

  - [GPAC](https://zh.wikipedia.org/wiki/GPAC_Project_on_Advanced_Content "wikilink")
  - [Media Lovin' Toolkit](../Page/Media_Lovin'_Toolkit.md "wikilink")

### 光碟制作

  - [K3b](../Page/K3b.md "wikilink")

### 圖庫

  - [GEGL](https://zh.wikipedia.org/wiki/GEGL "wikilink")
  - [ImageMagick](../Page/ImageMagick.md "wikilink")

### 3D圖形編輯器

  - [Blender](../Page/Blender.md "wikilink")\[4\]

### VoIP

  - [Ekiga](https://zh.wikipedia.org/wiki/Ekiga "wikilink")
  - [QuteCom](https://zh.wikipedia.org/wiki/QuteCom "wikilink")
  - [Linphone](../Page/Linphone.md "wikilink")

### 多媒體流伺服器

  - [FFserver](../Page/FFmpeg.md "wikilink")
  - [VLC media
    player](https://zh.wikipedia.org/wiki/VLC_media_player "wikilink")

### 多媒體架構

  - [ffdshow](https://zh.wikipedia.org/wiki/ffdshow "wikilink")（将
    libavcodec 包装为 [DirectShow](../Page/DirectShow.md "wikilink")
    滤镜，并添加后处理工序以增强图像质量；安装后可自动为 Windows 上使用 DirectShow
    架构的播放器所调用，包括 [Windows Media
    Player](https://zh.wikipedia.org/wiki/Windows_Media_Player "wikilink")、[Media
    Player
    Classic](../Page/Media_Player_Classic.md "wikilink")、[Winamp](../Page/Winamp.md "wikilink")
    等。ffdshow 同时也将 libavcodec 包装为 [Video for
    Windows](../Page/Video_for_Windows.md "wikilink")
    滤镜，这是大多数视频编辑软件所用的架构。）
  - [GStreamer](../Page/GStreamer.md "wikilink") via the GStreamer
    FFmpeg
    [plugin](https://zh.wikipedia.org/wiki/Plug-in_\(computing\) "wikilink")
  - [Perian](https://zh.wikipedia.org/wiki/Perian "wikilink")
  - [Bellagio OpenMAX Integration
    Layer](https://zh.wikipedia.org/wiki/OpenMAX#OpenMAX_AL_\(Application_Layer\) "wikilink")
    – opensource OpenMAX IL API implementation

### 電腦視訊庫

  - [OpenCV](../Page/OpenCV.md "wikilink")\[5\]

### 瀏覽器

  - [Google Chrome](../Page/Google_Chrome.md "wikilink") \[6\]

### 媒體中心

  - [MythTV](../Page/MythTV.md "wikilink")
  - [Plex](https://zh.wikipedia.org/wiki/Plex_\(software\) "wikilink")
  - [XBMC](https://zh.wikipedia.org/wiki/XBMC "wikilink")

### 擷取螢幕

  - [xvidcap](https://zh.wikipedia.org/wiki/xvidcap "wikilink")\[7\]

### 设备工具集

  - [BitPim](https://zh.wikipedia.org/wiki/BitPim "wikilink") –
    用于CDMA手机的工具集

### 闭路电视

  - [ZoneMinder](https://zh.wikipedia.org/wiki/ZoneMinder "wikilink") –
    摄像头安全套件
  - [Motion](https://zh.wikipedia.org/wiki/Motion_\(surveillance_software\) "wikilink")
    – 摄像头安全/监视程序

### 遊戲

  - [Performous](https://zh.wikipedia.org/wiki/Performous "wikilink")
    –音樂遊戲包含美聲，樂團，以及舞蹈。
  - [StepMania](../Page/StepMania.md "wikilink")

### 其他

  - [Chameleo](https://zh.wikipedia.org/wiki/Chameleo "wikilink")
  - [CorePlayer](https://zh.wikipedia.org/wiki/CorePlayer "wikilink")
  - [FreeJ](https://zh.wikipedia.org/wiki/FreeJ "wikilink")
  - [Ingex Studio](https://zh.wikipedia.org/wiki/Ingex "wikilink") –
    used by [BBC](https://zh.wikipedia.org/wiki/BBC "wikilink")
  - [PulseAudio](../Page/PulseAudio.md "wikilink") – includes only
    resamplers code\[8\]

## 参考资料

[Category:视频编解码器](https://zh.wikipedia.org/wiki/Category:视频编解码器 "wikilink")
[Category:音频编解码器](https://zh.wikipedia.org/wiki/Category:音频编解码器 "wikilink")
[Category:自由软件](https://zh.wikipedia.org/wiki/Category:自由软件 "wikilink")

1.
2.
3.  Listed in [FFmpeg Hall of Shame](http://www.ffmpeg.org/shame.html)
4.
5.
6.
7.
8.