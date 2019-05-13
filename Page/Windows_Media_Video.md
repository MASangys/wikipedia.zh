**WMV**（**Windows Media
Video**）是[微软公司开发的一组](../Page/微软公司.md "wikilink")[數位](../Page/數位.md "wikilink")[影片编解码格式的通称](../Page/影片.md "wikilink")，它是[Windows
Media架构下的一部分](../Page/Windows_Media.md "wikilink")。

它最初是为低速率[流媒体应用作为](../Page/流媒体.md "wikilink")[专有编解码开发出来的](../Page/专有.md "wikilink")，但是2003年微软公司基于Windows
Media
Video第9版编解码起草了视频编解码规范并且提交给[SMPTE申请作为标准](../Page/SMPTE.md "wikilink")。这个标准在2006年3月作为SMPTE
421M被正式批准，这样Windows Media Video
9编解码就不再是一个专有的技术。早期的編解码版本（7和8）仍然被认为是专有技术，因为它们不在SMPTE
421M标准的涵盖范围内。

WMV不是仅仅基于[微软公司的自有技术开发的](../Page/微软公司.md "wikilink")。从第七版（WMV1）开始，微软公司开始使用它自己非标准[MPEG-4
Part
2](../Page/MPEG-4#MPEG-4分部.md "wikilink")。但是，由于WMV第九版已经是SMPTE的一个独立标准（421M，也称为VC-1），有理由相信WMV的发展已经不像MPEG-4那样是一个它自己专有的编解码技术。现在VC-1专利共享的企业有16家（2006年4月），微软公司也是MPEG-4
AVC/H.264专利共享企业中的一家。

WMV可以使用如[MPlayer或者](../Page/MPlayer.md "wikilink")[Windows Media
Player这样的播放器播放](../Page/Windows_Media_Player.md "wikilink")，[Windows
Media
Player只能在](../Page/Windows_Media_Player.md "wikilink")[微软视窗和](../Page/微软视窗.md "wikilink")[Macintosh系统上使用](../Page/Apple_Macintosh.md "wikilink")。有许多用于如[Linux这样不同平台上的使用](../Page/Linux.md "wikilink")[FFmpeg实现WMV](../Page/FFmpeg.md "wikilink")[编解码的第三方播放器](../Page/编解码.md "wikilink")。

视频流通常与[Windows Media
Audio音频流组合在一起并且使用扩展名为](../Page/Windows_Media_Audio.md "wikilink").wmv或者.asf的[Advanced
Streaming
Format的文件进行封装](../Page/Advanced_Streaming_Format.md "wikilink")。WMV通常使用[Advanced
Streaming
Format](../Page/Advanced_Streaming_Format.md "wikilink")（ASF）封装，它也可以使用[AVI或者](../Page/AVI.md "wikilink")[Matroska格式封装](../Page/Matroska.md "wikilink")。如果是AVI封装的文件结果文件可以是`.avi`，如果是ASF封装的话则是`.wmv`或者`.asf`，如果是MKV封装的话则是`.mkv`。

当使用[VirtualDub编码器编码和WMV](../Page/VirtualDub.md "wikilink")9
VCM编解码实现的时候WMV可以存储在[AVI文件中](../Page/AVI.md "wikilink")。用于Mac的微软公司媒体播放器不支持所有的WMV编码的文件，因为它只支持[ASF文件封装](../Page/ASF.md "wikilink")，[Flip4Mac和](../Page/Flip4Mac.md "wikilink")[QuickTime或者用于MacOSX的](../Page/QuickTime.md "wikilink")[MPlayer可以播放更多的文件](../Page/MPlayer.md "wikilink")。

当使用[ASF文件格式封装的时候](../Page/ASF.md "wikilink")，WMV能够支持用于保护[知识产权的](../Page/知识产权.md "wikilink")[数字版权管理](../Page/数字版权管理.md "wikilink")（DRM）工具。

## 编解码

  - Windows Media Video v7 Screen（FourCC: MSS1） - 专门针对低速屏幕抓取优化
  - Windows Media Video v9 Screen（FourCC: MSS2）
  - Windows Media Video v9 Image（FourCC: WMVP）
  - Windows Media Video v9.1 Image v2（FourCC: WVP2）

### WMV Format Description

The WMV Format can contain a range of video types.

| 正式名稱                                                                | [FourCC](../Page/FourCC.md "wikilink") | Codec版本 | 描述                                                         |
| ------------------------------------------------------------------- | -------------------------------------- | ------- | ---------------------------------------------------------- |
| Windows Media Video v7                                              | WMV1                                   | 0       |                                                            |
| Microsoft [MPEG-4](../Page/MPEG-4.md "wikilink") Video Codec v3     | MP43                                   | 1       |                                                            |
| Windows Media Video v8                                              | WMV2                                   | 2       |                                                            |
| Microsoft [MPEG-4](../Page/MPEG-4.md "wikilink") Video Codec v2     | MP42                                   | 3       |                                                            |
| Microsoft ISO [MPEG-4](../Page/MPEG-4.md "wikilink") Video Codec v1 | MP4S                                   | 4       |                                                            |
| Windows Media Video v9                                              | WMV3                                   | 5       |                                                            |
| Windows Media Video v9 Advanced Profile                             | WMVA                                   | 6       | deprecated as not [VC-1不完全相容](../Page/VC-1.md "wikilink")。 |
| Windows Media Video v9 Advanced Profile                             | WVC1                                   | 7       | [VC-1完整支援](../Page/VC-1.md "wikilink")                     |

## 参见

  - [Windows Media Audio](../Page/Windows_Media_Audio.md "wikilink") -
    对应的音频规范。
  - [Digital Rights
    Management](../Page/Digital_Rights_Management.md "wikilink") -
    [WMV格式中常见的限制用户对于内容操作的权利的](../Page/WMV.md "wikilink")[媒体播放器组件](../Page/媒体播放器.md "wikilink")。
  - [MPlayer](../Page/MPlayer.md "wikilink") -
    一个能够使用**FFmpeg**播放WMV文件的第三方交叉平台开源媒体播放器。
  - [FFmpeg](../Page/FFmpeg.md "wikilink") -
    目的在于在其它格式上实现WMV和VC-1的一个第三方交叉平台自由软件编解码库。
  - [WMV Player](../Page/WMV_Player.md "wikilink") - 一个支持[Mac OS
    X上的](../Page/Mac_OS_X.md "wikilink")[QuickTime观看WMV文件的第三方编解码器](../Page/QuickTime.md "wikilink")。
  - [Flip4Mac](../Page/Flip4Mac.md "wikilink") - 支持播放Windows
    Media文件的Quicktime组件（[Mac OS
    X](../Page/Mac_OS_X.md "wikilink")）
  - [Windows Movie Maker](../Page/Windows_Movie_Maker.md "wikilink") -
    [Windows XP所带的一个视频编辑工具](../Page/Windows_XP.md "wikilink")。

## 外部链接

  - [Windows Media Homepage at
    Microsoft](https://web.archive.org/web/20080211194317/http://www.microsoft.com/windowsmedia)微软公司的Windows
    Media主页
  - [Description of the algorithm used for Windows Media
    encryption](https://web.archive.org/web/20040305101021/http://www.spinnaker.com/crypt/drm/freeme/Technical)Windows
    Media加密所用算法技术描述
  - [Windows Media High Definition Video](http://www.wmvhd.com)
  - [WMV](http://www.audio-video-affair.com/wmv.html) Windows Media
    Video Explained

[Category:视频文件格式](https://zh.wikipedia.org/wiki/Category:视频文件格式 "wikilink")
[Category:视频编解码器](https://zh.wikipedia.org/wiki/Category:视频编解码器 "wikilink")
[Category:Windows多媒体](https://zh.wikipedia.org/wiki/Category:Windows多媒体 "wikilink")