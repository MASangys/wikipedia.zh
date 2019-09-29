**FFmpeg** 是一個[自由軟體](https://zh.wikipedia.org/wiki/自由軟體 "wikilink")，可以執行音訊和視訊多種格式的錄影、轉檔、串流功能\[1\]，包含了libavcodec——這是一個用於多個專案中音訊和視訊的解碼器函式庫，以及libavformat——一個音訊與視訊格式轉換函式庫。

「FFmpeg」这个单词中的「FF」指的是「Fast Forward（快速前進）」\[2\]。有些新手写信给「FFmpeg」的项目负责人，询问FF是不是代表“Fast Free”或者“Fast Fourier”等意思，「FFmpeg」的项目负责人回信说：“Just for the record, the original meaning of "FF" in FFmpeg is "Fast Forward"...”

这个项目最初是由[法布里斯·贝拉](../Page/法布里斯·贝拉.md "wikilink")发起的，而现在是由Michael Niedermayer在进行维护。许多FFmpeg的开发者同时也是[MPlayer](../Page/MPlayer.md "wikilink")项目的成员，FFmpeg在MPlayer项目中是被设计为服务器版本进行开发。

2011年3月13日，FFmpeg部分開發人士決定另組，同时制定了一套关于项目继续发展和维护的规则。\[3\]\[4\]

## 組成元件

此計劃由幾個元件組成：

  - *ffmpeg*——一個命令列工具，用來對視訊檔案轉換格式，也支援對電視卡即時編碼
  - *ffserver*——一個HTTP多媒體即時廣播串流伺服器，支援回溯
  - *ffplay*——一個簡單的播放器，基於SDL與FFmpeg函式庫
  - *libavcodec*——包含全部FFmpeg音訊/視訊編解碼函式庫
  - *libavformat*——包含demuxers和muxer函式庫
  - *libavutil*——包含一些工具函式庫
  - *libpostproc*——對於視訊做前處理的函式庫
  - *libswscale*——對於影像作縮放的函式庫

## 參數

FFmpeg可使用眾多參數，參數內容會根據ffmpeg版本而有差異，使用前建議先參考參數及編解碼器的敘述。此外，參數明細可用`ffmpeg -h`顯示；編解碼器名稱等明細可用`ffmpeg -formats`顯示。

下列為較常使用的參數：

### 主要參數

  - `-i`——設定輸入檔名。
  - `-f`——設定輸出格式。
  - `-y`——若輸出檔案已存在時則覆蓋檔案。
  - `-fs`——超過指定的檔案大小時則結束轉換。
  - `-t`——指定输出文件的持续时间，以秒为单位。
  - `-ss`——從指定時間開始轉換，以秒为单位。
  - `-t`從`-ss`時間開始轉換（如`-ss 00:00:01.00 -t 00:00:10.00`即從00:00:01.00開始到00:00:11.00）。
  - `-title`——設定標題。
  - `-timestamp`——設定時間戳。
  - `-vsync`——增減Frame使影音同步。
  - `-c`——指定输出文件的编码。
  - `-metadata`——更改输出文件的[元数据](../Page/元数据.md "wikilink")。
  - `-help`——查看帮助信息。

### 影像參數

  - `-b:v`——設定影像流量，預設為200Kbit/秒。（*單位請參照下方注意事項*）
  - `-r`——設定帧率值，預設為25。
  - `-s`——設定畫面的寬與高。
  - `-aspect`——設定畫面的比例。
  - `-vn`——不處理影像，於僅針對聲音做處理時使用。
  - `-vcodec( -c:v )`——設定影像影像編解碼器，未設定時則使用與輸入檔案相同之編解碼器。

### 聲音參數

  - `-b:a`——設定每Channel（最近的[SVN版為所有Channel的總合](../Page/Subversion.md "wikilink")）的流量。（*單位請參照下方注意事項*）
  - `-ar`——設定採樣率。
  - `-ac`——設定聲音的Channel數。
  - `-acodec ( -c:a )` ——設定聲音編解碼器，未設定時與影像相同，使用與輸入檔案相同之編解碼器。
  - `-an`——不處理聲音，於僅針對影像做處理時使用。
  - `-vol`——設定音量大小，256為標準音量。（要設定成兩倍音量時則輸入512，依此類推。）

### 注意事項

  - 以`-b:v`及`-b:a`參數設定流量時，根據使用的ffmpeg版本，須注意單位會有kbits/sec與bits/sec的不同。（可用`ffmpeg -h`顯示說明來確認單位。）

<!-- end list -->

  -
    例如，單位為bits/sec的情況時，欲指定流量64kbps時需輸入 `-b:a 64k`；單位為kbits/sec的情況時則需輸入 `-b:a 64`。

<!-- end list -->

  - 以`-acodec`及`-vcodec`所指定的編解碼器名稱，會根據使用的ffmpeg版本而有所不同。例如使用AAC編解碼器時，會有輸入aac與libfaac的情況。此外，編解碼器有分為僅供解碼時使用與僅供編碼時使用，因此一定要利用`ffmpeg -formats`確認輸入的編解碼器是否能運作。

## 支援的编码器、格式和协议

### 编码器

FFmpeg项目原生的编码器：

  - Snow

  -
FFmpeg已实现的：

  - ITU-T视频标准：[H.261](../Page/H.261.md "wikilink"),\[5\] [H.262/MPEG-2 Part 2](https://zh.wikipedia.org/wiki/H.262/MPEG-2_Part_2 "wikilink"), [H.263](../Page/H.263.md "wikilink")\[6\]和[H.264/MPEG-4 AVC](https://zh.wikipedia.org/wiki/H.264/MPEG-4_AVC "wikilink")\[7\]
  - ITU-T音频编解码器标准：[G.711](../Page/G.711.md "wikilink") µ-law, [G.711](../Page/G.711.md "wikilink") A-law, [G.721](https://zh.wikipedia.org/wiki/G.721 "wikilink")（也叫[G.726](https://zh.wikipedia.org/wiki/G.726 "wikilink") 32k）, [G.722](https://zh.wikipedia.org/wiki/G.722 "wikilink"), [G.722.2](https://zh.wikipedia.org/wiki/G.722.2 "wikilink")（也叫AMR-WB）, [G.723](https://zh.wikipedia.org/wiki/G.723 "wikilink")（也叫[G.726](https://zh.wikipedia.org/wiki/G.726 "wikilink") 24k和40k）和[G.726](https://zh.wikipedia.org/wiki/G.726 "wikilink")
  - [ISO](https://zh.wikipedia.org/wiki/International_Organization_for_Standardization "wikilink")/[IEC](https://zh.wikipedia.org/wiki/International_Electrotechnical_Commission "wikilink") [MPEG视频标准](https://zh.wikipedia.org/wiki/Moving_Picture_Experts_Group "wikilink")：[MPEG-1 Part 2](https://zh.wikipedia.org/wiki/MPEG-1_Part_2 "wikilink"), [H.262/MPEG-2 Part 2](https://zh.wikipedia.org/wiki/H.262/MPEG-2_Part_2 "wikilink"), [MPEG-4 Part 2和](https://zh.wikipedia.org/wiki/MPEG-4_Part_2 "wikilink")[H.264/MPEG-4 AVC](https://zh.wikipedia.org/wiki/H.264/MPEG-4_AVC "wikilink")
  - ISO/IEC MPEG音频标准：[MP1](https://zh.wikipedia.org/wiki/MPEG-1_Audio_Layer_I "wikilink"), [MP2](../Page/MPEG-1_Audio_Layer_II.md "wikilink"), [MP3](../Page/MP3.md "wikilink"), [AAC](https://zh.wikipedia.org/wiki/Advanced_Audio_Coding "wikilink"), [HE-AAC和](https://zh.wikipedia.org/wiki/High-Efficiency_Advanced_Audio_Coding "wikilink")[MPEG-4 ALS](https://zh.wikipedia.org/wiki/MPEG-4_ALS "wikilink")
  - ISO/IEC/ITU-T [JPEG图像标准](https://zh.wikipedia.org/wiki/Joint_Photographic_Experts_Group "wikilink")：[JPEG](../Page/JPEG.md "wikilink")和[JPEG-LS](https://zh.wikipedia.org/wiki/JPEG-LS "wikilink")
  - [SMPTE视频标准](https://zh.wikipedia.org/wiki/Society_of_Motion_Picture_and_Television_Engineers "wikilink")：[VC-1](../Page/VC-1.md "wikilink")（也称作[WMV3](https://zh.wikipedia.org/wiki/WMV3 "wikilink")）, [VC-3](https://zh.wikipedia.org/wiki/VC-3 "wikilink")（也称作AVID [DNxHD](https://zh.wikipedia.org/wiki/DNxHD "wikilink")）和[DPX图像](https://zh.wikipedia.org/wiki/Digital_Picture_Exchange "wikilink")
  - SMPTE音频标准：SMPTE 302M
  - [DVD论坛的相关标准](https://zh.wikipedia.org/wiki/DVD论坛 "wikilink") / [杜比实验室的音频编解码器](https://zh.wikipedia.org/wiki/杜比实验室 "wikilink")：[MLP](https://zh.wikipedia.org/wiki/Meridian_Lossless_Packing "wikilink")（也称[TrueHD](https://zh.wikipedia.org/wiki/TrueHD "wikilink")）和[AC-3](https://zh.wikipedia.org/wiki/Dolby_Digital "wikilink")
  - [3GPP](../Page/3GPP.md "wikilink")音频编码器标准：[AMR-NB](https://zh.wikipedia.org/wiki/AMR-NB "wikilink"), [AMR-WB](https://zh.wikipedia.org/wiki/AMR-WB "wikilink")（也叫G.722.2）
  - [GSM](../Page/GSM.md "wikilink")相关的语音信号编解码器：[Full Rate](https://zh.wikipedia.org/wiki/Full_Rate "wikilink")
  - [Windows Media Player相关的视频编解码器](https://zh.wikipedia.org/wiki/Windows_Media_Player "wikilink")：[Microsoft RLE](https://zh.wikipedia.org/wiki/Microsoft_RLE "wikilink"), [Microsoft Video 1](https://zh.wikipedia.org/wiki/Microsoft_Video_1 "wikilink"), [Cinepak](https://zh.wikipedia.org/wiki/Cinepak "wikilink"), [Indeo](https://zh.wikipedia.org/wiki/Indeo "wikilink") 2, 3和5,\[8\] [Motion JPEG](../Page/Motion_JPEG.md "wikilink"), [Microsoft MPEG-4](https://zh.wikipedia.org/wiki/Microsoft_MPEG-4 "wikilink") v1, v2和v3, [WMV](../Page/Windows_Media_Video.md "wikilink")1, WMV2 and WMV3（也称VC-1）
  - [Windows Media Player相关的音频编解码器](https://zh.wikipedia.org/wiki/Windows_Media_Player "wikilink")：[WMA](../Page/Windows_Media_Audio.md "wikilink")1, WMA2和WMA Pro
  - [Windows Media Player相关的语音信号编解码器](https://zh.wikipedia.org/wiki/Windows_Media_Player "wikilink")：WMA Voice和MS-GSM
  - [RealPlayer](../Page/RealPlayer.md "wikilink")相关的视频编解码器：[RealVideo](../Page/RealVideo.md "wikilink") 1, 2, 3和4
  - [RealPlayer](../Page/RealPlayer.md "wikilink")相关的音频编解码器：[RealAudio](https://zh.wikipedia.org/wiki/RealAudio "wikilink") 3, 6, 7, 8, 9和10
  - [RealPlayer](../Page/RealPlayer.md "wikilink")相关的语音信号编解码器：[RealAudio](https://zh.wikipedia.org/wiki/RealAudio "wikilink") 1, 2 ([G.728的衍生](https://zh.wikipedia.org/wiki/G.728 "wikilink")), 4和5
  - [QuickTime](../Page/QuickTime.md "wikilink")相关的视频编解码器：[Cinepak](https://zh.wikipedia.org/wiki/Cinepak "wikilink"), [Motion JPEG和](../Page/Motion_JPEG.md "wikilink")[Sorenson 3 Codec](https://zh.wikipedia.org/wiki/Sorenson_3_Codec "wikilink")
  - [QuickTime](../Page/QuickTime.md "wikilink")相关的音频编解码器：[QDesign音乐编解码器](https://zh.wikipedia.org/wiki/QDesign "wikilink")2和[ALAC](https://zh.wikipedia.org/wiki/ALAC "wikilink")
  - [Adobe Flash Player相关的视频编解码器](../Page/Adobe_Flash_Player.md "wikilink")：[Sorenson 3 Codec](https://zh.wikipedia.org/wiki/Sorenson_3_Codec "wikilink"), [VP6](../Page/VP6.md "wikilink")和[Flash Video (FLV)](https://zh.wikipedia.org/wiki/Sorenson_codec "wikilink")
  - [Adobe Flash Player相关的音频编解码器](../Page/Adobe_Flash_Player.md "wikilink")：Adobe SWF ADPCM和[Nellymoser Asao](https://zh.wikipedia.org/wiki/Nellymoser_Asao_Codec "wikilink")
  - [Xiph.Org](https://zh.wikipedia.org/wiki/Xiph.Org "wikilink"): [Theora](../Page/Theora.md "wikilink"), [Speex](https://zh.wikipedia.org/wiki/Speex "wikilink")（通过[libspeex实现](https://zh.wikipedia.org/wiki/libspeex "wikilink")）, [Vorbis和](https://zh.wikipedia.org/wiki/Vorbis "wikilink")[FLAC](../Page/FLAC.md "wikilink")
  - [Sony](https://zh.wikipedia.org/wiki/Sony "wikilink"): [ATRAC1和](https://zh.wikipedia.org/wiki/Adaptive_Transform_Acoustic_Coding "wikilink")[ATRAC3](https://zh.wikipedia.org/wiki/Adaptive_Transform_Acoustic_Coding "wikilink")\[9\]
  - [NTT](https://zh.wikipedia.org/wiki/Nippon_Telegraph_and_Telephone "wikilink"): [TwinVQ](https://zh.wikipedia.org/wiki/TwinVQ "wikilink")
  - [On2](https://zh.wikipedia.org/wiki/On2 "wikilink"): Duck TrueMotion 1, Duck TrueMotion 2, [VP3](https://zh.wikipedia.org/wiki/VP3 "wikilink"), [VP5](https://zh.wikipedia.org/wiki/VP5 "wikilink"),\[10\] [VP6](../Page/VP6.md "wikilink")\[11\]和[VP8](../Page/VP8.md "wikilink")
  - [RAD Game Tools](https://zh.wikipedia.org/wiki/RAD_Game_Tools "wikilink"): [Smacker video和](https://zh.wikipedia.org/wiki/Smacker_video "wikilink")[Bink video](https://zh.wikipedia.org/wiki/Bink_video "wikilink")
  - [Truespeech](https://zh.wikipedia.org/wiki/Truespeech "wikilink")
  - [RenderWare](https://zh.wikipedia.org/wiki/RenderWare "wikilink"): TXD\[12\]

The default [MPEG-4](../Page/MPEG-4.md "wikilink") codec used by FFmpegs the [FourCC](https://zh.wikipedia.org/wiki/FourCC "wikilink") of **FMP4**.

### 輸出格式

  - [AIFF](https://zh.wikipedia.org/wiki/Audio_Interchange_File_Format "wikilink")

  - [ASF](https://zh.wikipedia.org/wiki/Advanced_Systems_Format "wikilink")

  - [AVI](https://zh.wikipedia.org/wiki/Audio_Video_Interleave "wikilink")

  - BFI\[13\]

  - [CAF](https://zh.wikipedia.org/wiki/Core_Audio_Format "wikilink")

  - [FLV](https://zh.wikipedia.org/wiki/FLV "wikilink")

  - [GIF](../Page/GIF.md "wikilink")

  - [GXF](https://zh.wikipedia.org/wiki/GXF "wikilink"), General eXchange Format, SMPTE 360M

  - [HLS](../Page/HTTP_Live_Streaming.md "wikilink"), HTTP Live Streaming

  - [IFF](https://zh.wikipedia.org/wiki/Interchange_File_Format "wikilink")\[14\]

  - [ISO base media file format](https://zh.wikipedia.org/wiki/ISO_base_media_file_format "wikilink")（包括[QuickTime](https://zh.wikipedia.org/wiki/QuickTime_File_Format "wikilink"), [3GP和](https://zh.wikipedia.org/wiki/3GP "wikilink")[MP4](https://zh.wikipedia.org/wiki/MPEG-4_Part_14 "wikilink")）

  - M2V

  - [Matroska](../Page/Matroska.md "wikilink")（包括[WebM](../Page/WebM.md "wikilink")）

  - [Maxis XA](https://zh.wikipedia.org/wiki/SimCity_3000 "wikilink")\[15\]

  - [MPEG-DASH](https://zh.wikipedia.org/wiki/Dynamic_Adaptive_Streaming_over_HTTP "wikilink")\[16\]

  - [MPEG program stream](https://zh.wikipedia.org/wiki/MPEG_program_stream "wikilink")

  - [MPEG transport stream](https://zh.wikipedia.org/wiki/M2T "wikilink")（包括 [AVCHD](../Page/AVCHD.md "wikilink")）

  - [MXF](https://zh.wikipedia.org/wiki/MXF "wikilink"), Material eXchange Format, SMPTE 377M

  - MSN Webcam stream\[17\]

  - NUT\[18\]

  - [Ogg](../Page/Ogg.md "wikilink")

  - [OMA](https://zh.wikipedia.org/wiki/OpenMG_Audio "wikilink")\[19\]

  - [RL2](https://zh.wikipedia.org/wiki/Voyeur_\(video_game\) "wikilink")\[20\]

  - Segment, for creating segmented video streams

  - [Smooth Streaming](https://zh.wikipedia.org/wiki/Smooth_Streaming "wikilink")

  - TXD\[21\]

  - [WTV](../Page/Windows_Media_Center.md "wikilink")

### 协议

  - IETF标准：[TCP](https://zh.wikipedia.org/wiki/Transmission_Control_Protocol "wikilink"), [UDP](https://zh.wikipedia.org/wiki/User_Datagram_Protocol "wikilink"), [Gopher](https://zh.wikipedia.org/wiki/Gopher_\(protocol\) "wikilink"), [HTTP](https://zh.wikipedia.org/wiki/HTTP "wikilink"), [RTP](../Page/实时传输协议.md "wikilink"), [RTSP和](https://zh.wikipedia.org/wiki/RTSP "wikilink")[SDP](https://zh.wikipedia.org/wiki/Session_Description_Protocol "wikilink")
  - 苹果公司的相关标准：[HTTP Live Streaming](../Page/HTTP_Live_Streaming.md "wikilink")
  - RealMedia的相关标准：RealMedia RTSP/[RDT](https://zh.wikipedia.org/wiki/Real_Data_Transport "wikilink")
  - Adobe的相关标准：[RTMP](https://zh.wikipedia.org/wiki/Real_Time_Messaging_Protocol "wikilink"), RTMPT（由librtmp实现），RTMPE（由librtmp实现），RTMPTE（由librtmp）和RTMPS（由librtmp实现）
  - 微软的相关标准：[MMS在TCP上和MMS在HTTP上](https://zh.wikipedia.org/wiki/Microsoft_Media_Server "wikilink")

## 社區內部問題

2011年1月19日，FFmpeg的现任维护者Michael Niedermayer在邮件列表上披露，FFmpeg发生了“[政变](https://zh.wikipedia.org/wiki/政变 "wikilink")”，一些开发者占领了官方网站，关闭了其他人的寫入權限。随后政变者宣布FFmpeg “建立新政权”，维护任务将由他们接手，宣称只有维护团队才能拥有主源码库的寫入權限。

“新内阁”成员之一的Diego Biurrun解释了他们的行动，称“政變”是迫不得已，表示他们原本想联络每一个開發者，但沒成功，因为不是每个人都在[IRC](../Page/IRC.md "wikilink")上，或者能及时回[电话](../Page/电话.md "wikilink")、[邮件或](https://zh.wikipedia.org/wiki/邮件 "wikilink")[短信](https://zh.wikipedia.org/wiki/短信 "wikilink")。“革命”的原因是为了统一，FFmpeg社区分裂的情况严重到他们已经看不下去了。他们期望FFmpeg项目能建立一个健康而友好的开发环境。\[22\]

隨後Fabrice Bellard等人於2011年3月13日跳出去開新專案，稱作Libav，Libav裡面每位成員的管理權限縮更小（至少不能任意關閉其他人更改程式碼權限）。而Debian血統也響應，宣布2012年要將ffmpeg指令改成avconv\[23\]。

Libav跳槽之後有一定程度上更改FFmpeg的指令\[24\]。

## Libav/FFmpeg版权

由于Libav、FFmpeg是在[LGPL](https://zh.wikipedia.org/wiki/LGPL "wikilink")、[GPL下发布的](https://zh.wikipedia.org/wiki/GPL "wikilink")（如果使用了其中一些使用GPL协议发布的模块则必须使用GPL协议），任何人都可以在遵守协议的情况下自由使用。目前有很多播放软件都使用了Libav、FFmpeg的代码，但它们并没有遵守LGPL，GPL协议，没有公开任何源代码。Libav、FFmpeg社區便將這些違反協議的公司、組織、個人的網址貼在“恥辱大廳”（又叫“恥辱柱”）上，并與這些公司/組織/個人商討如何解決版權爭議。\[25\]

## 參考資料

<references/>

## 外部連結

  - [影片轉換](https://zh.wikipedia.org/wiki/影片轉換 "wikilink")

  -
  - [Zeranoe FFmpeg Windows builds](http://ffmpeg.zeranoe.com/builds/)

[Category:C函式庫](https://zh.wikipedia.org/wiki/Category:C函式庫 "wikilink") [Category:自由软件](https://zh.wikipedia.org/wiki/Category:自由软件 "wikilink") [Category:多媒體](https://zh.wikipedia.org/wiki/Category:多媒體 "wikilink") [Category:多媒体框架](https://zh.wikipedia.org/wiki/Category:多媒体框架 "wikilink")

1.  [FFmpeg Documentation](http://ffmpeg.org/ffmpeg-doc.html)

2.

3.

4.

5.
6.
7.
8.
9.

10.
11.
12.

13.

14.

15.

16.

17.

18.

19.

20.

21.
22. [FFmpeg發生政變-中國開源社區](http://www.oschina.net/news/14887/FFmpeg-turmoil)

23. [Debian Bug Tracker](http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=624807)

24. <http://libav.org/news.html#fftools_rename>

25. [FFmpeg开发者接受采访 - 开源中国社区](http://www.oschina.net/news/953)