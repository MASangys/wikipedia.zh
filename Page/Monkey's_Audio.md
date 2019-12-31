> 本文内容由[Monkey\'s Audio](https://zh.wikipedia.org/wiki/Monkey\'s Audio)转换而来。


**Monkey's Audio**，是一种常见的无损音訊压缩编码格式，[副檔名为](https://zh.wikipedia.org/wiki/副檔名 "wikilink").ape。与有损音訊压缩（如[MP3](../Page/MP3.md "wikilink")、[Ogg Vorbis或者](https://zh.wikipedia.org/wiki/Ogg_Vorbis "wikilink")[AAC等](https://zh.wikipedia.org/wiki/AAC "wikilink")）不同的是，Monkey's Audio压缩时不会丢失数据。一个压缩为Monkey's Audio的音訊文件听起来与原文件完全一样。Monkey's Audio文件的播放列表使用.apl。

Monkey's Audio亦可指压缩／解压缩**Monkey's Audio**文件的软件。因其主界面上有个[猴子图样而得名](https://zh.wikipedia.org/wiki/猴子 "wikilink")。Monkey's Audio是压缩[ape格式的重要工具](https://zh.wikipedia.org/wiki/ape "wikilink")；也可以对ape文件进行解压缩。安装该软件时可以选择是否向[winamp添加插件](https://zh.wikipedia.org/wiki/winamp "wikilink")，使得winamp也可以播放ape文件。通常与Monkey's Audio配合使用的软件有[Exact Audio Copy](../Page/Exact_Audio_Copy.md "wikilink")（EAC）、[foobar2000等](https://zh.wikipedia.org/wiki/foobar2000 "wikilink")。

## 特点

Monkey's Audio是一种无损音訊压缩格式，而较之于其他无损音訊压缩格式，有长处亦有缺陷。

Monkey's Audio压缩比高于其他常见的无损音訊压缩格式，约在55%上下，但编解码速度略慢。在搜寻回放位置时，如果文件压缩比过高，在配备较差的电脑会有延迟的现象。另外，由於它没有提供错误处理的功能，若发生文件损坏，损坏位置之后的数据有可能会丢失。

Monkey's Audio是[開放原始碼的](https://zh.wikipedia.org/wiki/開放原始碼 "wikilink")[免費軟體](../Page/免費軟體.md "wikilink")，但因其授權協議並非[自由軟體而是准自由軟體](https://zh.wikipedia.org/wiki/自由軟體 "wikilink")（Semi-free Software）而受到排擠。因为这意味着许多基于[GNU/Linux的](https://zh.wikipedia.org/wiki/GNU/Linux "wikilink")[Linux发行套件或是其他只能基于](https://zh.wikipedia.org/wiki/Linux发行套件 "wikilink")[自由软件](../Page/自由软件.md "wikilink")的[作業系統不能将其收入](https://zh.wikipedia.org/wiki/作業系統 "wikilink")。较之其他使用更自由的许可证的无损音訊编码器（如FLAC），受其他软件的支持也更少。

因为Monkey's Audio是一种无损压缩格式，所以不适于同有损压缩格式相比较——这两者有不同的目标和用途。无损压缩的目标是能够精确再现原文件的前提下将之压缩到尽可能小的体积。而有损压缩则是在丢失一部分信息的情况下，在用户指定的体积／比特率中尽可能保持接近原来的音质。

所以，无损压缩的音訊文件体积往往远大于从同样原文件压缩而来的有损压缩文件。例如：在压缩CD音訊时，一个典型的Monkey's Audio文件往往有接近600～700K Bit/sec，而MP3最高不会超过320K Bit/sec，一般情况下用户只会指定到128～192K Bit/sec。虽然它们也可能达到可以接受的音質，但不会有Monkey's Audio等无损压缩格式般逼真。

Hydrogenaudio的Wiki提供了一个Monkey's Audio与其它无损音訊压缩格式的全面比较。\[1\]

## 支援平台

目前官方只提供[Windows支援](https://zh.wikipedia.org/wiki/Windows "wikilink")。虽然也有提供[GNU/Linux和](https://zh.wikipedia.org/wiki/GNU/Linux "wikilink")[Macintosh平台的官方支援的讨论](https://zh.wikipedia.org/wiki/Macintosh "wikilink")，但是没有结果。目前只有一位名为SuperMMX的开发者于2003年7月释出了一个[非官方移植版本](http://supermmx.org/linux/mac/)。它包括了供[XMMS](../Page/XMMS.md "wikilink")与[Beep Media Player回放Monkey](../Page/Beep_Media_Player.md "wikilink")'s Audio使用的插件。该移植本来只支援GNU/Linux，但从3.99 update 4 build 4版本开始支援[Mac OS X和基于](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")[PowerPC](../Page/PowerPC.md "wikilink")、[SPARC](../Page/SPARC.md "wikilink")平台的[GNU/Linux](https://zh.wikipedia.org/wiki/GNU/Linux "wikilink")。但是这个非官方移植计划没有得到官方的承认，受制于官方发行许可证的限制，其未來並不明朗。不过据称Monkey's Audio的Win32库可以借助[Wine](../Page/Wine.md "wikilink")在GNU/Linux平台运行。

## 文件格式APE

**APE**是一种音訊[文件格式](https://zh.wikipedia.org/wiki/文件格式 "wikilink")，一般用.ape的[副檔名](https://zh.wikipedia.org/wiki/副檔名 "wikilink")，有时也采用.MAC的副檔名。APE格式採用[无损数据压缩](../Page/无损数据压缩.md "wikilink")，在不降低音质的前提下，能有限地压缩WAV音轨文件，压缩比率一般在55%左右。在音质上，相对于[WMA](https://zh.wikipedia.org/wiki/WMA "wikilink")、[MP3](../Page/MP3.md "wikilink")、[AAC等](https://zh.wikipedia.org/wiki/AAC "wikilink")[有损数据压缩](../Page/有损数据压缩.md "wikilink")的格式有着絕對的優勢。

APE文件结构是由**Monkey's Audio**定义的。Monkey's Audio提供软件进行与其它音訊文件格式的转换。通过插件，APE文件可以在[foobar2000](https://zh.wikipedia.org/wiki/foobar2000 "wikilink")、[Nullsoft的](https://zh.wikipedia.org/wiki/Nullsoft "wikilink")[Winamp](../Page/Winamp.md "wikilink")和[微软](../Page/微软.md "wikilink")的[媒体播放器等不同系统平台的多媒体软件中播放](https://zh.wikipedia.org/wiki/媒体播放器 "wikilink")，近来越来越多的便携式媒体播放器也较多的加入对APE文件的支援。

## 参见

  - [Apple Lossless](../Page/Apple_Lossless.md "wikilink")
  - [Exact Audio Copy](../Page/Exact_Audio_Copy.md "wikilink")（EAC）
  - [FLAC](../Page/FLAC.md "wikilink")
  - [MP3](../Page/MP3.md "wikilink")
  - [Meridian Lossless Packing](https://zh.wikipedia.org/wiki/Meridian_Lossless_Packing "wikilink")
  - [TTA](../Page/TTA.md "wikilink")
  - [WAV](../Page/WAV.md "wikilink")
  - [WavPack](../Page/WavPack.md "wikilink")
  - [foobar2000](https://zh.wikipedia.org/wiki/foobar2000 "wikilink")
  - [文件格式列表](../Page/文件格式列表.md "wikilink")
  - [非破壞性資料壓縮](https://zh.wikipedia.org/wiki/非破壞性資料壓縮 "wikilink")
  - [音频编码格式的比较](https://zh.wikipedia.org/wiki/音频编码格式的比较 "wikilink")

## 註解

## 外部链接

  - [Monkey's Audio官方网站（英文）](http://www.monkeysaudio.com/)
  - [Sound Normalizer](http://www.kanssoftware.com/)

[Category:音频格式](https://zh.wikipedia.org/wiki/Category:音频格式 "wikilink") [Category:免費軟件](https://zh.wikipedia.org/wiki/Category:免費軟件 "wikilink") [Category:无损音频编解码器](https://zh.wikipedia.org/wiki/Category:无损音频编解码器 "wikilink") [Category:使用GStreamer的軟體](https://zh.wikipedia.org/wiki/Category:使用GStreamer的軟體 "wikilink")

1.  [Lossless comparison](http://wiki.hydrogenaudio.org/index.php?title=Lossless_comparison)