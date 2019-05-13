**Flash Video**（簡稱**FLV**），是一种
[网络](../Page/网络.md "wikilink")[视频格式](../Page/视频.md "wikilink")，用作串流媒体格式，它的出现有效地解决了视频文件导入[Flash后](../Page/Adobe_Flash.md "wikilink")，使导出的SWF文件体积庞大，不能在网络上有效使用等缺点。

一般FLV文件包在SWF
PLAYER的壳里，并且FLV可以很好的保护原始地址，不容易被下载到，從而起到保护版权的作用。但还是有些视频格式转换软件将FLV转成一般的视频格式，如中国的软件[格式工厂](../Page/格式工厂.md "wikilink")。随着视频[网站的丰富](../Page/网站.md "wikilink")，在2008年時这个格式已经非常普及，包括[YouTube](../Page/YouTube.md "wikilink")、[NICONICO動畫](../Page/NICONICO動畫.md "wikilink")、Google
Video、Yahoo\!
Video、[MySpace](../Page/MySpace.md "wikilink")，以及中国的[优酷](../Page/优酷.md "wikilink")、[酷6等大部分视频分享网站均采用这个格式](../Page/酷6.md "wikilink")。

然而，Flash存在著包括大量[耗電以及資訊安全等若干問題](../Page/耗電.md "wikilink")，隨著[移动设备與](../Page/移动设备.md "wikilink")[流動應用程式的發展與普及而日益嚴重](../Page/流動應用程式.md "wikilink")，2010年[乔布斯曾公開抨擊](../Page/乔布斯.md "wikilink")。2011年11月9日，Adobe公司宣布停止開發個人電腦平台以外的Flash
Player，而專注於開發[非專利](../Page/開源軟體.md "wikilink")[標示語言](../Page/HTML.md "wikilink")[HTML5](../Page/HTML5.md "wikilink")。

2016年，[Youtube已經改採用](../Page/Youtube.md "wikilink")[HTML5技術](../Page/HTML5.md "wikilink")，Google公司表示flash廣告会自動轉檔為HTML5形式\[1\]。2015年6月\[2\]，Google宣布公司旗下的Chrome瀏覽器停止了Flash外掛的自啟動。2015年9月1日起，Chrome瀏覽器停止支援這些外掛程式\[3\]，並且[Amazon公司旗下電子商務和廣告平台也停止支援Flash技術](../Page/亞馬遜公司.md "wikilink")\[4\]。

## F4V

FLV在H.264的視頻規格或是AAC的音源規格都達到功能極限，為了克服這個格式上的限制，F4V於是誕生。F4V是基於制定出來的[容器格式](../Page/容器格式.md "wikilink")（Container
format）。至少於[Flash Player](../Page/Flash_Player.md "wikilink") 12.0
update
3以上版本才能播放。F4V支援的視頻類型為[H.264](../Page/H.264.md "wikilink")，影像類型為[GIF](../Page/GIF.md "wikilink")、[PNG以及](../Page/PNG.md "wikilink")[JPEG](../Page/JPEG.md "wikilink")，音頻類型為[AAC以及](../Page/AAC.md "wikilink")[MP3](../Page/MP3.md "wikilink")。

## FLV文件构成

FLV文件=FLV头文件+ tag1+tag内容1 + tag2+tag内容2 + ...+... + tagN+tag内容N

### FLV头文件

FLV头文件：（9字节）

  - 1-3：前3个字节是文件格式标识（FLV 0x46 0x4C 0x56）。
  - 4-4：第4个字节是版本（0x01）
  - 5-5：第5个字节的前5个bit是保留的必须是0.
      - 第5个字节的第6个bit音频类型标志（TypeFlagsAudio）
      - 第5个字节的第7个bit也是保留的必须是0
      - 第5个字节的第8个bit视频类型标志（TypeFlagsVideo）
  - 6-9: 第6-9的四个字节还是保留的。其数据为00000009 .
  - 整个文件头的长度，一般是9（3+1+1+4）

### tag基本格式

tag类型信息，固定长度为15字节

  - 1-4：前一个tag长度（4字节），第一个tag就是0
  - 5-5：tag类型（1字节）；0x8音频；0x9视频；0x12脚本数据
  - 6-8：tag内容大小（3字节）
  - 9-11：时间戳（3字节，毫秒）（第1个tag的时候总是为0,如果是脚本tag就是0）
  - 12-12：时间戳扩展（1字节）让时间戳变成4字节（以存储更长时间的flv时间信息），本字节作为时间戳的最高位。

在flv回放过程中，播放顺序是按照tag的时间戳顺序播放。任何加入到文件中时间设置数据格式都将被忽略。

  - 13-15：streamID（3字节）总是0

### flv文件元信息（metadata）

flv文件中的元信息，是一些描述flv文件各类属性的信息。这些信息以[AMF格式保存在文件的起始部分](../Page/AMF.md "wikilink")。adobe官方的标准flv元信息项目如下\[5\]：

  - audiochannels
  - audiocodecid
  - audiodatarate
  - audiodevice
  - audioinputvolume
  - audiosamplerate
  - creationdate
  - duration (media files only)
  - fmleversion (Flash Media Live Encoder version)（media files only）
  - framerate
  - height
  - lastkeyframetimestamp (media files only)
  - lasttimestamp (media files only)
  - presetname
  - videocodecid
  - videodatarate
  - videodevice
  - videokeyframe_frequency
  - width

两个常用的操作metadata的工具是*[flvtool2](../Page/flvtool2.md "wikilink")*和*[FLVMDI](../Page/FLVMDI.md "wikilink")*，都是把keyframes作为一个默认的元信息项目。

## FLV播放程式

### 桌面軟體

這些播放程式包括：

  - [Adobe Media Player](../Page/Adobe_Media_Player.md "wikilink")
  - [BitComet](../Page/BitComet.md "wikilink") FLV Player
  - [ExtraPlayer](../Page/ExtraPlayer.md "wikilink")
  - [GOM Player](../Page/GOM_Player.md "wikilink")
  - [K-Multimedia Player](../Page/The_KMPlayer.md "wikilink")
  - [MPlayer](../Page/MPlayer.md "wikilink")
  - [Perian](../Page/Perian.md "wikilink")
  - [PotPlayer](../Page/PotPlayer.md "wikilink")
  - [Real Player](../Page/Real_Player.md "wikilink") 11
  - [VLC media player](../Page/VLC_media_player.md "wikilink")
  - [FLV Player by Martijn de
    Visser](../Page/FLV_Player_by_Martijn_de_Visser.md "wikilink")
  - [Quick Time](../Page/Quick_Time.md "wikilink") 10
  - 任何基于[FFmpeg的播放程序](../Page/FFmpeg.md "wikilink")
  - 任何利用DirectShow配合[ffdshow的播放程式](../Page/ffdshow.md "wikilink")
      - [Media Player
        Classic](../Page/Media_Player_Classic.md "wikilink")
      - [MPC-HC](../Page/Media_Player_Classic_Homecinema.md "wikilink")
      - [MPC-BE](../Page/MPC-BE.md "wikilink")
      - [Windows Media
        Player](../Page/Windows_Media_Player.md "wikilink")
      - [Windows Media
        Center](../Page/Windows_Media_Center.md "wikilink")（需要改動[注册表](../Page/注册表.md "wikilink")）
      - [暴风影音](../Page/暴风影音.md "wikilink")
      - [PowerDVD](../Page/PowerDVD.md "wikilink")

### 桌面軟體與網頁端播放程式

  - JW FLV Player（授權方式：[CC by-nc-sa](../Page/CC_by-nc-sa.md "wikilink")）
  - [Moyea Web
    Player](http://www.playerdiy.com/)（免费使用。可装上插件进行功能上的扩展，[所见即所得图形界面软件](../Page/所见即所得.md "wikilink")。）

### 網頁端播放程式

  - Dreamsocket Media Player（授權方式：[CC
    by-nc-sa](../Page/CC_by-nc-sa.md "wikilink")）
  - [FV H.264 FLV Ads
    Player免費軟體](../Page/FV_H.264_FLV_Ads_Player.md "wikilink")
  - Sonettic Cinema FLV Player免費與商業版軟體均有
  - Hitasoft Free RIPE FLVPlayer
  - FLV / H.264 Video Player I, II and III by FlashXpert

## 註釋及參考來源

## 外部連結

  - [Flash Developer Center - Flash Video
    Articles](http://www.adobe.com/devnet/flash/video.html)
  - [Adobe Flash (SWF) and Flash Video (FLV) File Format Specification
    Licensing
    Page](https://web.archive.org/web/20070407071053/http://www.adobe.com/licensing/developer/)（adobe.com）
  - [Adobe Flash FLV Video File
    Format](http://www.digitalpreservation.gov/formats/fdd/fdd000131.shtml)（Library
    of Congress）

[Category:文件格式](https://zh.wikipedia.org/wiki/Category:文件格式 "wikilink")
[Category:Adobe软件](https://zh.wikipedia.org/wiki/Category:Adobe软件 "wikilink")

1.
2.
3.
4.
5.  [1](http://help.adobe.com/en_US/FlashMediaLiveEncoder/3.0/Using/WS5b3ccc516d4fbf351e63e3d11c104ba878-7ff5.html)