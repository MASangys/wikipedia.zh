**LRC**是一個可以跟音樂檔案做同步的[檔案格式](../Page/檔案格式.md "wikilink")。當一個音樂檔案（如[MP3](../Page/MP3.md "wikilink")、[Vorbis或](https://zh.wikipedia.org/wiki/Vorbis "wikilink")[WMA等](https://zh.wikipedia.org/wiki/WMA "wikilink")）被電腦音樂播放程式（如[foobar2000與](https://zh.wikipedia.org/wiki/foobar2000 "wikilink")[千千靜聽等](https://zh.wikipedia.org/wiki/千千靜聽 "wikilink")）或現代的MP3[隨身聽以及](https://zh.wikipedia.org/wiki/隨身聽 "wikilink")[DVD播放機等裝置播放時](https://zh.wikipedia.org/wiki/DVD播放機 "wikilink")，歌詞可以被同步顯示出來。歌詞檔案通常和音樂檔案有同樣的檔案名稱，但是副檔名不同。例如：***song.mp3***和***song.lrc***。LRC格式是一種文字格式，與電視和電影的[字幕檔很相似](../Page/字幕.md "wikilink")。由於中、日、韓文歌詞在ANSI格式裡可能產生亂碼，可以使用[UTF-8或](../Page/UTF-8.md "wikilink")[Unicode文字編碼避免](https://zh.wikipedia.org/wiki/Unicode "wikilink")。

## 格式

### 简易格式

**简易LRC格式**首先在郭祥祥先生(Djohan)的歌词播放器裡採用。它是頭幾個試圖模擬卡啦OK的程序之一。

LRC的时间标籤的格式为**\[mm:ss.xx\]**其中**mm**为分钟数、**ss**为秒数、**xx**为百分之一秒。

  - **一般示例：**

`[mm:ss.xx] 第一行歌词`
`[mm:ss.xx] 第二行歌词`
`...`
`[mm:ss.xx] 最后一行歌词`

**ID标签**在歌词前可能出现\[1\]，不過一些播放器可能會忽略它们。

`[al:`*`本歌所在的唱片集`*`]`
` [ar:`*`演出者-歌手`*`]`
` [au:`*`歌詞作者-作曲家`*`]`
` [by:`*`此LRC文件的创建者`*`]`
` [offset:`*`+/-``   ``以毫秒为单位加快或延後歌詞的播放`*`]`
` [re:`*`创建此LRC文件的播放器或编辑器`*`]`
` [ti:`*`歌词(歌曲)的标题`*`]`
` [ve:`*`程序的版本`*`]`

  - **ID标签的例子:**

`[ti:Let's Twist Again]`
`[ar:Chubby Checker oppure  Beatles, The]`
`[au:Written by Kal Mann / Dave Appell, 1961]`
`[al:Hits Of The 60's - Vol. 2 – Oldies]`

`[00:12.00]Naku Penda Piya-Naku Taka Piya-Mpenziwe`
`[00:15.30]Some more lyrics ...`
`...`

### 简单格式的擴展

這個功能仅在Walasoft的Walaoke（一個卡啦OK媒體播放器）上可用。这个功能可以使用以下標籤設定歌詞的性别：M: 男性, F: 女性,
D: 合唱。

  - **例如:**

`[00:12.00]第一行歌词`
`[00:17.20]F: 第二行歌词`
`[00:21.10]M: 第三行歌词`
`[00:24.00]第四行歌词`
`[00:28.25]D: 第五行歌词`
`[00:29.02]第六行歌词`

我们假设男性为蓝色，女性为红色，合唱为粉色。 第一行使用默认色（蓝色），因为没有找到标签。 第二行歌词以红色开始，因为找到了F:。
第三行歌词以蓝色开始，因为找到了M:。 第四行歌词以蓝色开始，因为没有找到标签。
第五行歌词以粉色开始，因为找到了D:。
第六行歌词與第五行相同，為粉色，因为没有找到標籤。

### 增强格式

**增强LRC格式**是**简单LRC格式**的一個擴充，由A2 Media
Player\[2\]所开发。它增加了一个额外的时间標籤，格式为：**\<mm:ss.xx\>**.

**一个增强LRC格式文件的例子：**

`[mm:ss.xx] <mm:ss.xx> 第一行第一个词 <mm:ss.xx> 第一行第二个词 <mm:ss.xx> ... 第一行最后一个词 <mm:ss.xx>`
`[mm:ss.xx] <mm:ss.xx> 第二行第一个词 <mm:ss.xx> 第二行第二个词 <mm:ss.xx> ... 第二行最后一个词 <mm:ss.xx>`
`...`
`[mm:ss.xx] <mm:ss.xx> 最后一行第一个词 <mm:ss.xx> 最后一行第二个词 <mm:ss.xx> ...  最后一行最后一个词 <mm:ss.xx>`

## 支持

目前不少硬件和软件都支持LRC格式歌词:

### 硬件

  - [魅族](https://zh.wikipedia.org/wiki/魅族 "wikilink")[M3 Music
    Card和](https://zh.wikipedia.org/wiki/M3_Music_Card "wikilink")[M6
    Mini
    Player](https://zh.wikipedia.org/wiki/M6_Mini_Player "wikilink")
  - [创新科技](../Page/创新科技.md "wikilink")[Creative
    MuVo](https://zh.wikipedia.org/wiki/Creative_MuVo "wikilink") V100
  - [Archos
    5](https://zh.wikipedia.org/wiki/Archos_5 "wikilink")，仅支持与歌曲文件名相同的LRC文件

### 软件

  - [AIMP](../Page/AIMP.md "wikilink")（[WebLyrics v0.2
    Preview](https://www.aimp.ru/?do=catalog&rec_id=906)，[MyClouds](https://www.aimp.ru/?do=catalog&rec_id=971)插件支持）
  - [foobar2000](https://zh.wikipedia.org/wiki/foobar2000 "wikilink")（[foo_uie_lyrics](https://web.archive.org/web/20090820075742/http://gro.clinux.org/projects/ikiki)插件支持）
  - [K-Multimedia
    Player](https://zh.wikipedia.org/wiki/K-Multimedia_Player "wikilink")
  - [迷你歌词](https://zh.wikipedia.org/wiki/迷你歌词 "wikilink")
  - [StepMania](../Page/StepMania.md "wikilink")\[3\]
  - [千千靜聽](https://zh.wikipedia.org/wiki/千千靜聽 "wikilink")
  - [QQ影音](../Page/QQ影音.md "wikilink")
  - [QQ音樂](https://zh.wikipedia.org/wiki/QQ音樂 "wikilink")
  - [百度音乐](https://zh.wikipedia.org/wiki/百度音乐 "wikilink")
  - [网易云音乐](../Page/网易云音乐.md "wikilink")
  - [可道歌词](https://zh.wikipedia.org/wiki/可道歌词 "wikilink")

## 参见

  - [卡拉OK和](../Page/卡拉OK.md "wikilink")[kar文件](https://zh.wikipedia.org/wiki/kar文件 "wikilink")
  - [CD+G](https://zh.wikipedia.org/wiki/CD+G "wikilink")

## 引用

## 外部链接

外掛顯示

  - [MiniLyrics](http://www.crintsoft.com/) 以外掛顯示方式，支援其它音樂播放軟體。

LRC生成器

  - [LRCgenerator](http://www.lrcgenerator.com/) 在线LRC文件生成器
  - [LRC MAKER](https://ivsnote.com/lrc-file-lryic-maker-free/) LRC
    歌詞檔案製作工具

歌词服务器数据库

  - [LYRDB](https://web.archive.org/web/20070928192352/http://www.lyrdb.com/karaoke/)
    LRC Karaoke Database
  - [lrcDB](https://web.archive.org/web/20100725191058/http://www.lrcdb.org/)
    Lyrics Database
  - [LRC Lyrics Database](http://lrclyrics.50webs.com)
  - [LRC Lyrics Center](http://www.cdmi.net/a2player/lrc_center.html)
  - [LYRDB](http://www.lyrdb.com/), An extensive lyrics database
  - [Portal
    LRC](https://web.archive.org/web/20100227100335/http://www.portallrc.com.br/),
    a Brazilian lyrics web site with over 3000 LRC's
  - [Lyricsfly
    API](https://archive.is/20080703182923/http://www.lyricsfly.com/api/),
    database of lyrics with REST XML API access
  - [Tutorial](https://web.archive.org/web/20050719082207/http://www.mycnknow.com/download/TUTORIAL/tutor.htm)
    - Creating lyrics using LRC Editor
  - [Lrceditor-Amarok](http://www.kde-apps.org/content/show.php/Lrceditor-Amarok?content=58164),
    a GNU/Linux lrc editor against amarok

教程

  - [How to get or make
    LRC](https://web.archive.org/web/20070202041800/http://www.mobile-mir.com/en/HowToLRC.php).

[Category:文件格式](https://zh.wikipedia.org/wiki/Category:文件格式 "wikilink")
[Category:歌词](https://zh.wikipedia.org/wiki/Category:歌词 "wikilink")

1.
2.  <http://www.mediacommands.com/lyrics.html>
3.  [StepMania: Song Lyrics - LRC
    Format](http://www.stepmania.com/wiki/Song_Lyrics_-_LRC_Format)