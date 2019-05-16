是一款[免費的的](https://zh.wikipedia.org/wiki/免費软件 "wikilink")[音频播放器软件](https://zh.wikipedia.org/wiki/音频播放器 "wikilink")，开发者为波兰人Piotr
Pawłowski（英文名Peter
Pawlowski，原[Winamp开发公司](../Page/Winamp.md "wikilink")[Nullsoft成员](https://zh.wikipedia.org/wiki/Nullsoft "wikilink")）。除了播放之外，它还支持生成[媒体库](https://zh.wikipedia.org/wiki/媒体库 "wikilink")、[转换媒体文件编码](https://zh.wikipedia.org/wiki/转换媒体文件 "wikilink")、提取[CD等功能](../Page/CD.md "wikilink")。它是一款功能强大的工具。foobar2000之所以出现，在于Peter不满于[Winamp](../Page/Winamp.md "wikilink")
2.x的[插件体系架构和更倾向于图形](../Page/插件.md "wikilink")、外觀的发展方向的Winamp
3。于2016年5月9日推出了Android版本\[1\]，2016年5月11日发布了iOS版本\[2\] 。

## 对MP3格式的解码性能以及回放音质

in_mpg123是由Michael
Hipp开发的一个[Unix下的](https://zh.wikipedia.org/wiki/Unix "wikilink")[mp3](https://zh.wikipedia.org/wiki/mp3 "wikilink")
[解码器](https://zh.wikipedia.org/wiki/解码器 "wikilink")，解码速度快且品質好，有许多软件都使用mpg123来解码mp3，如大名鼎鼎的[LAME](../Page/LAME.md "wikilink")。但[mpg123在](https://zh.wikipedia.org/wiki/mpg123 "wikilink")1999年发布了mpg123
pre0.59s后就停止开发了，代码中还有许多bug。

而Naoki
Shibata将mpg123改写为Winamp的插件in_mpg123，除去了许多Bug，并加入了一些插件必要的功能。至于foobar2000，其解码器是mpglib的修改版，而mpglib是Martin
Pesch在mpg123的基础上将其移植到Windows平台的产物。

zZzZzZz (Peter
Pawlowski)就是foobar2000的作者之一，当时开发组在讨论foobar2000中要使用的mp3解码器，最后决定使用mpglib，这可以从foobar的关于对话框中见到。其实，in_mpg123插件与foobar2000解码出mp3的数据并没有太多区别，它们都基于mpg123的核心，只是做了一些纠正bug的工作，争论mp3解码性能优劣意义不大。但是无论如何都比现在Winamp自带的那个in_mp3.dll要优秀（除了自带的解码器可以编辑mp3的信息以外）。有些用户称foobar2000音质最佳，其实如果Winamp使用mpg123插件的话，从理论上foobar2000和Winamp没有明显区别，解码器的核心程序都是一样的。foobar2000的开发者也公开表示过，主流播放软件的MP3[回放增益基本一致](../Page/回放增益.md "wikilink")，自己的软件并没有什么明显的优势。\[3\]

## 特性

  - 开放的组件结构，第三方开发者得以扩充播放器的功能
  - [Windows](https://zh.wikipedia.org/wiki/Windows "wikilink")
    NT/2000/XP平台下的完全[Unicode支持](https://zh.wikipedia.org/wiki/Unicode "wikilink")
  - 支援[回放增益](../Page/回放增益.md "wikilink")（[英文](https://zh.wikipedia.org/wiki/英文 "wikilink")：[*ReplayGain*](../Page/回放增益.md "wikilink")）
  - 低内存佔用，可高效率处理庞大的播放列表
  - 具备高级文件訊息处理能力（通用文件信息框和批量标记器）
  - 可高度自定义的播放列表
  - 可自定义键盘快捷键（包括全局热键功能）
  - 分頁式（Tabbed）播放清單顯示
  - 可多播放列表并存
  - 音乐数据库
  - 支援流式播放
  - 支援扩展插件
  - [免费軟體](https://zh.wikipedia.org/wiki/免费軟體 "wikilink")

## 支援的音频格式

内核支援的格式：

  - [MP1](https://zh.wikipedia.org/wiki/MPEG-1_Audio_Layer_I "wikilink")、[MP2](https://zh.wikipedia.org/wiki/MP2 "wikilink")、[MP3](../Page/MP3.md "wikilink")、[MP4](../Page/MP4.md "wikilink")、[MPC](../Page/Musepack.md "wikilink")、[AAC](https://zh.wikipedia.org/wiki/AAC "wikilink")、[Ogg
    Vorbis](https://zh.wikipedia.org/wiki/Ogg_Vorbis "wikilink")、[FLAC](../Page/FLAC.md "wikilink")、[ALAC](https://zh.wikipedia.org/wiki/ALAC "wikilink")、[WavPack](../Page/WavPack.md "wikilink")、[WAV](../Page/WAV.md "wikilink")、[AIFF](https://zh.wikipedia.org/wiki/AIFF "wikilink")、[AU](https://zh.wikipedia.org/wiki/AU "wikilink")、[SND](https://zh.wikipedia.org/wiki/SND "wikilink")、[CDDA](../Page/CDDA.md "wikilink")、[WMA](https://zh.wikipedia.org/wiki/WMA "wikilink")、[Opus](https://zh.wikipedia.org/wiki/Opus "wikilink")、[Speex](https://zh.wikipedia.org/wiki/Speex "wikilink")

通过插件支援的格式：

  - [TTA](../Page/TTA.md "wikilink")、[APE](https://zh.wikipedia.org/wiki/APE "wikilink")、[Mod](https://zh.wikipedia.org/wiki/Mod "wikilink")、[SPC](https://zh.wikipedia.org/wiki/SPC "wikilink")、[TFMX](https://zh.wikipedia.org/wiki/TFMX "wikilink")、[Shorten](https://zh.wikipedia.org/wiki/Shorten "wikilink")、[La](https://zh.wikipedia.org/wiki/La "wikilink")、[OptimFROG](https://zh.wikipedia.org/wiki/OptimFROG "wikilink")、[LPAC](https://zh.wikipedia.org/wiki/LPAC "wikilink")、[AC-3](https://zh.wikipedia.org/wiki/AC-3 "wikilink")、[DSD](https://zh.wikipedia.org/wiki/DSD "wikilink")、[DFF](https://zh.wikipedia.org/wiki/DFF "wikilink")、[Midi](https://zh.wikipedia.org/wiki/Midi "wikilink")、[PSF](https://zh.wikipedia.org/wiki/PSF "wikilink")、[NSF](https://zh.wikipedia.org/wiki/NSF "wikilink")、[XID](https://zh.wikipedia.org/wiki/XID "wikilink")、[XA](https://zh.wikipedia.org/wiki/XA "wikilink")、[Matroska](../Page/Matroska.md "wikilink")、[TAK](../Page/TAK.md "wikilink")、[GBS](../Page/GBS.md "wikilink")、[minigsf](https://zh.wikipedia.org/wiki/minigsf "wikilink")、[lrc](https://zh.wikipedia.org/wiki/lrc "wikilink")（動態歌詞編輯存檔）等

另外，foobar2000还可以通过**插件**“*ZIP/GZIP/RAR Reader*”（自带插件）和“[*7-Zip
reader*](http://www.foobar2000.org/components/view/foo_unpack_7z)”，直接播放[RAR](../Page/RAR.md "wikilink")、[ZIP和](https://zh.wikipedia.org/wiki/ZIP_\(算法\) "wikilink")[7-Zip格式的压缩包中的音乐文件](../Page/7-Zip.md "wikilink")，而无需用户事先解压缩。

## 備註

foobar2000以英文为界面特为Windows平台开发，而作者Peter
Pawlowski也曾表明不會製作外掛語言包，甚至於Hydrogenaudio討論區中表示「寧願讓大家用別的軟件也絕不會出語言包的」。\[4\]另外也有人成功地在Linux
x86平台通过[Wine运行程序](../Page/Wine.md "wikilink")，只是Columns UI插件存在问题。

## 参见

  - [Airplay](../Page/Airplay.md "wikilink")
  - [Mcool](https://zh.wikipedia.org/wiki/Mcool "wikilink")
  - [Winamp](../Page/Winamp.md "wikilink")
  - [Windows Media
    Player](https://zh.wikipedia.org/wiki/Windows_Media_Player "wikilink")
  - [千千静听](https://zh.wikipedia.org/wiki/千千静听 "wikilink")
  - [媒体播放器列表](../Page/媒体播放器列表.md "wikilink")
  - [媒体播放器比较](https://zh.wikipedia.org/wiki/媒体播放器比较 "wikilink")
  - [绿色软件](https://zh.wikipedia.org/wiki/绿色软件 "wikilink")

## 注釋

## 外部連結

### 官方連結

  - [首頁](https://www.foobar2000.org/)—foobar2000.org

  - [Google
    Play](https://play.google.com/store/apps/details?id=com.foobar2000.foobar2000)

  - [App Store](https://itunes.apple.com/us/app/foobar2000/id1072807669)

  - [foobar2000的常見問題](https://www.foobar2000.org/FAQ)

  - [論壇](http://forums.foobar2000.org/)—討論及支援（只可輸入英文 ）

  - [foobar2000知識庫](http://wiki.hydrogenaudio.org/index.php?title=Foobar2000)於Hydrogenaudio

  - [擴充元件下載（Official Plugins）](https://www.foobar2000.org/components/)

  - [freenode上的](https://zh.wikipedia.org/wiki/freenode "wikilink")[\#foobar2000](irc://irc.freenode.net/foobar2000)—討論及支援

### 其他連結

  - [foobar2000中国爱好者论坛](https://web.archive.org/web/20080114024020/http://www.foobar2000.com.cn/)（不稳定！）

  - [重灌狂人foobar2000 v1.3
    b7音樂播放器繁體中文化版](http://briian.com/6666/foobar2000.html)

[Category:媒体播放器](https://zh.wikipedia.org/wiki/Category:媒体播放器 "wikilink")
[Category:免費軟體](https://zh.wikipedia.org/wiki/Category:免費軟體 "wikilink")

1.  <https://play.google.com/store/apps/details?id=com.foobar2000.foobar2000>
2.  <https://itunes.apple.com/us/app/foobar2000/id1072807669>
3.
4.  [Will language plugin support ever
    come?](http://www.hydrogenaudio.org/forums/index.php?s=ecf18e0c543d4af79f9fe481524d70b7&showtopic=21512&view=findpost&p=427970)