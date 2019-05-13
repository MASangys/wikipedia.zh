**Audacious**是一個自由的音樂播放軟體。其執行在[POSIX相容系統上](../Page/POSIX.md "wikilink")，如[Linux](../Page/Linux.md "wikilink")。
Audacious使用[Plugin機制來實現各種功能](../Page/外掛程式.md "wikilink")。在大部分的系統上，Audacious已預設安裝好一套Plugin，提供播放一些音樂格式的能力，如[MP3](../Page/MP3.md "wikilink")、[Ogg
Vorbis](../Page/Ogg_Vorbis.md "wikilink")、[FLAC等](../Page/FLAC.md "wikilink")。

## 歷史

Audacious剛開始是[Beep Media
Player](../Page/Beep_Media_Player.md "wikilink")
0.9.7.1的分支，其本身也是[XMMS的分支](../Page/XMMS.md "wikilink").
William "nenolod" Pitcock 因為原來開發BMP的團隊決定停止開發BMP，轉而開發新的播放器xBMP，所以決定從Beep
Media Player 分支出Audacious來開發。

Audacious 2.x 同時包含先前 Winamp 的介面與新的GTK+介面，GTKUI
，大致模仿了[Foobar2000的介面](../Page/Foobar2000.md "wikilink")。Audacious
2.4 版的預設介面為GTKUI。

3.0版本之前，Audacious默認使用GTK+
2.x[工具箱](../Page/部件工具箱.md "wikilink")。2.5版本加入了GTK+
3.x的部分支援；\[1\]隨後的3.0版本更完全支援了GTK+ 3.x，並將其設為默認。\[2\]

[XMMS_family_tree_timeline.svg](https://zh.wikipedia.org/wiki/File:XMMS_family_tree_timeline.svg "fig:XMMS_family_tree_timeline.svg")

## 格式支援

  - [MP3](../Page/MP3.md "wikilink")
  - [Advanced Audio
    Coding](../Page/Advanced_Audio_Coding.md "wikilink")（AAC及AAC+）
  - [Ogg Vorbis](../Page/Ogg_Vorbis.md "wikilink")
  - [FLAC](../Page/FLAC.md "wikilink")
  - [WavPack](../Page/WavPack.md "wikilink")
  - [Musepack](../Page/Musepack.md "wikilink")
  - [TTA](../Page/TTA.md "wikilink")
  - [Windows Media
    Audio](../Page/Windows_Media_Audio.md "wikilink")（WMA）
  - [Apple Lossless](../Page/Apple_Lossless.md "wikilink")（ALAC）
  - 150種[模塊格式](../Page/模块文件.md "wikilink")
  - 多種[芯片音樂格式](../Page/芯片音樂.md "wikilink")：AY、GBS、、HES、KSS、NSF、NSFE、SAP、SPC、VGM、VGZ、VTX
  - [Playstation音訊](../Page/Playstation.md "wikilink")：PSF1及
  - [Nintendo DS聲音格式](../Page/Nintendo_DS.md "wikilink")：2SF
  - 藉由AdPlug[程式庫實作的即興](../Page/程式庫.md "wikilink") 芯片音樂
  - [WAV格式由sndfile](../Page/WAV.md "wikilink") plugin提供
  - 藉由本機作業系統合成器或TiMdity實作的[MIDI](../Page/MIDI.md "wikilink")
  - [CD音訊](../Page/CDDA.md "wikilink")

## 外掛

Audacious大部分的功能來自plugins，包括所有的[編解碼器](../Page/編解碼器.md "wikilink")。更多的功能也經由
plugins 運作。

目前Audacious核心的Plugin可以分成以下這些 (有些是低階而不為使用者所見的)：

  - *Decoder plugins*, 所有的解碼器。
  - *Transport plugins*, 低階並使用VFS layer實作。
  - *General plugins*, 提供使用者增加之功能到播放器上 (比如使用
    [AudioScrobbler](../Page/AudioScrobbler.md "wikilink") 傳送音軌)
  - *Output plugins*, 提供播放器音源系統的Backend。
  - *Visualization plugins*,
    提供wave資料[快速傅立葉變換後之視覺化效果呈現](../Page/快速傅立葉變換.md "wikilink")。
  - *Effect plugins*, 提供音效處理的功能。
  - *Container plugins*, 提供播放列表與相似的結構。
  - *Lowlevel plugins*, 提供其他的功能，而未被分類的plugin。

## 面板

Audacious 提供完整的 [Winamp](../Page/Winamp.md "wikilink") 2 面板支援,而到1.2版時,
也支援其他的面板。 Winamp .wsz 面板檔,
一種[ZIP檔](../Page/ZIP_\(文件格式\).md "wikilink"), 可以直接被使用,
或解壓縮到不同的資料夾。此軟體可使用Winamp 檔 裡的 Windows Bitmap (.bmp) 圖檔 ,
雖然通常在Linux使用的是 [PNG](../Page/PNG.md "wikilink") (.png) 檔。
Audacious 1.x 可讓使用者調整面板的 RGB 色彩。

## 參見

## 外部連結

  - [Home page](http://audacious-media-player.org)
  - [Code
    repository](https://web.archive.org/web/20100621032950/http://hg.atheme.org/audacious)
  - [Code repository for
    plugins](https://web.archive.org/web/20110725022314/http://hg.atheme.org/audacious-plugins)
  - [Bug
    tracker](https://web.archive.org/web/20101113213054/http://jira.atheme.org/browse/AUD)
  - [Bug tracker for
    plugins](https://web.archive.org/web/20101219021832/http://jira.atheme.org/browse/AUDPLUG)

[分类:自由音訊軟體](../Page/分类:自由音訊軟體.md "wikilink")
[分类:自由媒體播放器](../Page/分类:自由媒體播放器.md "wikilink")
[分类:用C編程的自由軟體](../Page/分类:用C編程的自由軟體.md "wikilink")

1.
2.