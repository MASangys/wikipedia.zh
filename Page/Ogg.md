> 本文内容由[Ogg](https://zh.wikipedia.org/wiki/Ogg)转换而来。


**Ogg**是一個[自由且](../Page/自由檔案格式.md "wikilink")[開放標準的多媒体](https://zh.wikipedia.org/wiki/開放標準 "wikilink")[文件格式](../Page/檔案格式.md "wikilink")，由[Xiph.Org基金會](../Page/Xiph.Org基金會.md "wikilink")所維護。Ogg格式並不受到[軟體專利的限制](https://zh.wikipedia.org/wiki/軟體專利 "wikilink")，並設計用於有效率地[串流媒體和處理高品質的](https://zh.wikipedia.org/wiki/串流媒體 "wikilink")[數位多媒體](../Page/多媒体.md "wikilink")。

「Ogg」意指一種[文件格式](../Page/檔案格式.md "wikilink")，可以納入各式各樣[自由和](../Page/自由软件.md "wikilink")[开放源代码](../Page/开放源代码.md "wikilink")的[编解码器](../Page/编解码器.md "wikilink")，包含[音效](../Page/声音.md "wikilink")、[视频](../Page/视频.md "wikilink")、文字（像[字幕](../Page/字幕.md "wikilink")）與[元数据](../Page/元数据.md "wikilink")的處理。

在Ogg的多媒體框架下，[Theora](../Page/Theora.md "wikilink")提供[有損的影像層面](../Page/有损数据压缩.md "wikilink")，而通常用音樂導向的[Vorbis編解碼器作為音效層面](https://zh.wikipedia.org/wiki/Vorbis "wikilink")。針對語音設計的壓縮編解碼器[Speex和](https://zh.wikipedia.org/wiki/Speex "wikilink")[無損的音效壓縮編解碼器](../Page/无损数据压缩.md "wikilink")[FLAC](../Page/FLAC.md "wikilink")與[OggPCM也可能作為音效層面使用](https://zh.wikipedia.org/wiki/OggPCM "wikilink")。

「Ogg」這個詞彙通常意指[Ogg Vorbis此一](https://zh.wikipedia.org/wiki/Vorbis "wikilink")[音频文件格式](../Page/音频文件格式.md "wikilink")，也就是將Vorbis編碼的音效包含在Ogg的容器中所成的格式。在以往，.ogg此一副檔名曾經被用在任何Ogg支援格式下的內容；但在2007年，Xiph.Org基金會為了向後相容的考量，提出請求，將.ogg只留給Vorbis格式來使用。Xiph.Org基金會決定創造一些新的副檔名和媒體格式來描述不同類型的內容， 像是只包含音效所用的.oga、 包含或不含聲音的影片（涵蓋Theora）所用的.ogv， 和可以包含任何比特流的.ogx。\[1\]

Xiph.Org基金會對Ogg的參照實裝，目前最新的版本是2010年3月26日釋出的libogg 1.2.0。\[2\]另一個版本libogg2也可以在Xiph.Org基金會的SVN套件庫中找到。這兩個[函式庫都是在新](https://zh.wikipedia.org/wiki/库_\(计算机\) "wikilink")[BSD许可证](../Page/BSD许可证.md "wikilink")下釋出的[自由软件](../Page/自由软件.md "wikilink")。

因為其格式自由，和其參照實裝並非[Copyleft](../Page/Copyleft.md "wikilink")形式，無論自由或[專有](../Page/专有软件.md "wikilink")、商業或非商業的[媒体播放器](https://zh.wikipedia.org/wiki/媒体播放器 "wikilink")，甚至部分製造商的[可攜式媒體播放器](../Page/可攜式媒體播放器.md "wikilink")和[全球定位系统](../Page/全球定位系统.md "wikilink")接收器都採用了Ogg下的各種編解碼器。目前[Android](../Page/Android.md "wikilink")系統所有的內建鈴聲也都使用Ogg文件。 [Big_Buck_Bunny_small.ogv](https://zh.wikipedia.org/wiki/File:Big_Buck_Bunny_small.ogv "fig:Big_Buck_Bunny_small.ogv")

## Ogg編解碼器

Ogg只是容器格式。由編解碼器編碼的實際音頻或視頻存儲在Ogg容器內。Ogg容器可以包含用多個編解碼器編碼的流，例如，具有聲音的視頻文件包含由音頻編解碼器和視頻編解碼器編碼的數據。 作為容器格式，Ogg可以以各種格式\[3\]\[4\]（如[Dirac](https://zh.wikipedia.org/wiki/Dirac "wikilink")，[MNG](https://zh.wikipedia.org/wiki/多重網絡圖形 "wikilink")，[CELT](https://zh.wikipedia.org/wiki/CELT "wikilink")，[MPEG-4](../Page/MPEG-4.md "wikilink")，[MP3](../Page/MP3.md "wikilink")等）嵌入音頻和視頻，但是Ogg旨在和通常用於以下Xiph.org免費編解碼器：

  - 音頻
      - 有損
          - [Speex](https://zh.wikipedia.org/wiki/Speex "wikilink")：以低比特率處理語音數據（〜2.1-32 kbit / s /通道）
          - [Vorbis](https://zh.wikipedia.org/wiki/Vorbis "wikilink")：處理中高級[可變比特率](https://zh.wikipedia.org/wiki/可變比特率 "wikilink")（每通道≈16-500kbit / s）的一般音頻數據
          - [Opus](../Page/Opus_\(音频格式\).md "wikilink")：以低和高可變比特率處理語音，音樂和通用音頻（每通道≈6-510kbit / s）
      - 無損
          - [FLAC](../Page/FLAC.md "wikilink")：處理檔案和高保真音頻數據。
      - 未壓縮
          - [OggPCM](https://zh.wikipedia.org/wiki/OggPCM "wikilink")：處理未壓縮的[PCM音頻](https://zh.wikipedia.org/wiki/脈衝編號調變 "wikilink")。它與[WAV](../Page/WAV.md "wikilink")大致相當\[5\]。
  - 視頻
      - 有損
          - [Theora](../Page/Theora.md "wikilink")：基於[On2的](https://zh.wikipedia.org/wiki/On2 "wikilink")[VP3](https://zh.wikipedia.org/wiki/VP3 "wikilink")，它的目標是與[MPEG-4](../Page/MPEG-4.md "wikilink")視頻（例如，使用[DivX](../Page/DivX.md "wikilink")或[Xvid](../Page/Xvid.md "wikilink")編碼），[RealVideo](../Page/RealVideo.md "wikilink")或[Windows Media Video進行競爭](../Page/Windows_Media_Video.md "wikilink")。
          - [Daala](../Page/Daala.md "wikilink")：正在開發的視頻編碼格式。
          - [Dirac](https://zh.wikipedia.org/wiki/Dirac "wikilink")：由[BBC開發的免費開放視頻格式](https://zh.wikipedia.org/wiki/BBC "wikilink")。使用小波編碼\[6\]。
          - [Tarkin](https://zh.wikipedia.org/wiki/Tarkin "wikilink")：實驗項目，現在過時的視頻編解碼器在2000年，2001年和2002年開發利用離散小波變換的三個維度的寬度，高度和時間。\[7\]\[8\]\[9\]。在Theora成為視頻編碼的主要焦點之後，已被擱置（2002年8月）\[10\]。
      - 無損
          - [Dirac](https://zh.wikipedia.org/wiki/Dirac "wikilink")：Dirac規範的一部分涵蓋無損壓縮。
          - [Daala](../Page/Daala.md "wikilink")：正在開發的視頻編碼格式。
  - 文本
      - [Writ](https://zh.wikipedia.org/wiki/Writ "wikilink")：用於嵌入字幕或字幕的文本編解碼器的草稿不完整，於2007年停止\[11\]。
      - [CMML](https://zh.wikipedia.org/wiki/CMML "wikilink")：用於定時元數據，字幕和格式的文本/應用編解碼器。
      - [Annodex](https://zh.wikipedia.org/wiki/Annodex "wikilink")：[CSIRO開發的免費開源標準](https://zh.wikipedia.org/wiki/CSIRO "wikilink")，用於註釋和索引網絡媒體。
      - [OggKate](https://zh.wikipedia.org/wiki/OggKate "wikilink")：最初設計用於卡拉OK和文本的重疊編解碼器，可以在Ogg中復用。

## 其他項目

  - [Ffmpeg2theora](../Page/Ffmpeg2theora.md "wikilink")

## 參考文獻

<div class="references-small">

<references />

</div>

## 外部連結

  - [xiph.org基金会官方网站](http://xiph.org/)
  - [vorbis官方网站](http://vorbis.com/)
  - [Xiph.Org基金会官方网站──Ogg](http://www.xiph.org/ogg/)
  - [RFC 3533──Ogg封装格式版本0](http://www.ietf.org/rfc/rfc3533.txt)
  - [RFC 3534──application/ogg媒体类型](http://www.ietf.org/rfc/rfc3534.txt)
  - [Ogg容器使用知识共享Metadata标记](http://wiki.creativecommons.org/OGG)
  - [Ogg etymology](http://www.catb.org/~esr/jargon/html/O/ogg.html) from the [Jargon File](https://zh.wikipedia.org/wiki/Jargon_File "wikilink")
  - [Xiph.Org's官方站点Ogg QuickTime扩展组件──iTunes和iMovie使用（适用Windows和Mac OS X系统）](http://xiph.org/quicktime/)
  - [Windows Media Player适用的Vorbis, Speex, Theora，FLAC解码器](http://www.xiph.org/dshow/)
  - [ffmpeg2theora](http://v2v.cc/~j/ffmpeg2theora/) Ogg Theora编码器，Linux, Win32和[DOS](../Page/DOS.md "wikilink")的命令行版本（使用端口或[HX](https://zh.wikipedia.org/wiki/HX_DOS_Extender "wikilink")）

[Category:開放原始碼](https://zh.wikipedia.org/wiki/Category:開放原始碼 "wikilink") [Category:音频编解码器](https://zh.wikipedia.org/wiki/Category:音频编解码器 "wikilink") [Category:文件格式](https://zh.wikipedia.org/wiki/Category:文件格式 "wikilink") [Category:音频格式](https://zh.wikipedia.org/wiki/Category:音频格式 "wikilink")

1.
2.  [\[Vorbis-dev\] libogg 1.2.0 and libvorbis 1.3.1 releases](http://www.xiph.org/downloads/)
3.
4.
5.
6.  [Dirac specification - integration of Dirac encoded video into commonly used container formats](http://diracvideo.org/specifications)  Retrieved on 2009-07-05
7.  Ralph Giles (2000-12-19) [vorbis-dev - Tarkin video codec?](http://lists.xiph.org/pipermail/vorbis-dev/2000-December/002281.html), Xiph.org vorbis-dev mailinglist. Retrieved 2009-09-06.
8.  Jack Moffitt (2001-01-03) [vorbis-dev - Tarkin at last](http://lists.xiph.org/pipermail/vorbis-dev/2001-January/002604.html), Xiph.org vorbis-dev mailinglist. Retrieved 2009-09-06.
9.  Chris Montgomery (2001-02-11) [Tarkin developer mailing list](http://lists.xiph.org/pipermail/vorbis/2001-February/014147.html), Retrieved on 2009-09-06
10. Michael Smith (2005-08-29) [Tarkin](http://lists.xiph.org/pipermail/vorbis-dev/2005-August/018213.html). Retrieved 2009-09-06.
11.