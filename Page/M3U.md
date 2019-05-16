**M3U**是一种播放多媒体列表的[檔案格式](../Page/檔案格式.md "wikilink")，它的设计初衷是为了播放音频文件，比如[MP3](../Page/MP3.md "wikilink")，但是越来越多的软件现在用来播放视频文件列表，M3U也可以指定在线流媒体音频源。很多播放器和软件都支持M3U文件格式。

## 文件格式

M3U文件是一种[纯文本文件](../Page/文本文件.md "wikilink")，可以指定一个或多个多媒体文件的位置，其[文件扩展名是](../Page/文件扩展名.md "wikilink")“M3U”或者“m3u”。

M3U文件具有多个条目，每个条目的格式可以是以下几种格式之一：

  - 一个*绝对路径*；比如：C:\\My Music\\Heavysets.mp3
  - 一个*相对路径*（相对于M3U文件的路径）；比如：Heavysets.mp3
  - 一个[URL](https://zh.wikipedia.org/wiki/URL "wikilink")

M3U文件也有[注释](https://zh.wikipedia.org/wiki/注释 "wikilink")，注释行以"\#"字符开头，在**扩展M3U**文件中，"\#"还引入了扩展M3U指令。

M3U文件的作用通常是创建指向在线[流媒体的播放列表](../Page/流媒体.md "wikilink")，创建的文件可以轻松访问流媒体。M3U文件通常作为网站的下载资源、通过email收发，并可以收听[网络电台](https://zh.wikipedia.org/wiki/网络电台 "wikilink")。

如果使用编辑器编辑M3U文件，必须将该文件用[Windows-1252格式保存](https://zh.wikipedia.org/wiki/Windows-1252 "wikilink")，这种格式是[ASCII编码的超集](../Page/ASCII.md "wikilink")。M3U文件也可以使用[Latin-1](https://zh.wikipedia.org/wiki/Latin-1 "wikilink")[字符编码](../Page/字符编码.md "wikilink")。

### 扩展M3U

扩展M3U指令如下：

<table>
<thead>
<tr class="header">
<th><p>指令</p></th>
<th><p>描述</p></th>
<th><p>举例</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>#EXTM3U</p></td>
<td><p>文件的头部，必须是文件的第一行。</p></td>
<td><pre><code>#EXTM3U</code></pre></td>
</tr>
<tr class="even">
<td><p>#EXTINF</p></td>
<td><p>指示多媒体文件的信息，包括播放时间和标题。</p></td>
<td><pre><code>#EXTINF:191,Artist Name - Track Title</code></pre></td>
</tr>
</tbody>
</table>

### M3U8

M3U8是[Unicode版本的M](https://zh.wikipedia.org/wiki/Unicode "wikilink")3U，用[UTF-8编码](../Page/UTF-8.md "wikilink")。"M3U"和"M3U8"文件都是[苹果公司使用的](../Page/苹果.md "wikilink")[HTTP
Live
Streaming格式的基础](../Page/HTTP_Live_Streaming.md "wikilink")，这种格式可以在[iPhone和](https://zh.wikipedia.org/wiki/iPhone "wikilink")[Macbook等设备播放](https://zh.wikipedia.org/wiki/Macbook "wikilink")。

## 举例

  - 例1

这是Windows平台上的一个扩展M3U文件的举例，Sample.mp3和Example.ogg都是媒体文件。123和321是播放长度，单位是秒(s)，当流媒体文件的长度没有固定、预定的长度值，用-1表示播放长度。播放长度后边是多媒体文件的标题，通常和第二行的文件路径相一致。在[Mac
OS
X和](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")[Linux平台](../Page/Linux.md "wikilink")，应当使用。

`#EXTM3U`

`#EXTINF:123, Sample artist - Sample title`
`C:\Documents and Settings\I\My Music\Sample.mp3`

`#EXTINF:321,Example Artist - Example title`
`C:\Documents and Settings\I\My Music\Greatest Hits\Example.ogg`

  - 例2

这个例子说明如何创建一个连接到特定目录（比如[闪存盘](../Page/闪存盘.md "wikilink")，或者[CD-ROM](../Page/CD-ROM.md "wikilink")）的M3U文件，这种M3U文件只包含一行字符串：目录的路径。开始播放后，播放器会播放该目录的所有内容：

`C:\Music`

  - 例3

这是另外一个使用相对路径的例子，M3U文件和媒体文件应放在同一个目录下，而且当播放列表需要移动到另一台设备时，子目录必须被保留。这种方式更加灵活，不会依赖于文件的具体路径。

播放的文件跟例1一样，该M3U文件保存为sample.m3u，保存在目录 C:\\Documents and
Settings\\User\\My Music\\

`#EXTM3U`

`#EXTINF:123, Sample artist - Sample title`
`Sample.mp3`

`#EXTINF:321,Example Artist - Example title`
`Greatest Hits\Example.ogg`

这种格式的M3U允许复制到另一台设备上播放。该目录的所有文件和子目录也必须复制。

  - 例4

这是一个混合使用的例子。

`Alternative\Band - Song.mp3`
`Classical\Other Band - New Song.mp3`
`Stuff.mp3`
`D:\More Music\Foo.mp3`
`..\Other Music\Bar.mp3`
`http://emp.cx:8000/Listen.pls`
`http://www.example.com/~user/Mine.mp3`

注意:

  - Alternative和Classical是M3U文件所在目录的子目录。
  - "Song"和"New Song"存放在M3U文件所在目录的子目录。
  - "Stuff"跟M3U文件在同一目录。
  - "Foo"是一个绝对路径(Windows)，跟M3U所在目录无关。
  - "Bar"存放的目录和M3U文件的目录是同级的，“两个点”代表的是M3U文件所在目录的上层目录，然后在上层目录的子目录"Other
    Music"中找到"Bar"。
  - "Listen"是一个[Shoutcast流](https://zh.wikipedia.org/wiki/Shoutcast "wikilink")。
  - "Mine"是一个储存在web服务器的MP3文件。

<!-- end list -->

  - 例5

链接到另外一个M3U播放列表，但软件支持性不佳，比如：

`AnotherPlayList.m3u`

  - 例6

这个例子是[爱丽丝囚徒的专辑](../Page/爱丽丝囚徒.md "wikilink")《》，用[Mp3tag加入了自定义的音乐信息](../Page/Mp3tag.md "wikilink")：

  - 播放列表的额外信息格式 ： "%artist% - %title%",
  - 播放列表的文件名格式： "%artist%_%album%_00_Playlist.m3u",
  - 文件名转换的标签： "%artist%_%album%_$num(%track%,2)_%title%".

`#EXTM3U`
`#EXTINF:419,Alice In Chains - Rotten Apple`
`Alice In Chains_Jar Of Flies_01_Rotten Apple.mp3`
`#EXTINF:260,Alice In Chains - Nutshell`
`Alice In Chains_Jar Of Flies_02_Nutshell.mp3`
`#EXTINF:255,Alice In Chains - I Stay Away`
`Alice In Chains_Jar Of Flies_03_I Stay Away.mp3`
`#EXTINF:256,Alice In Chains - No Excuses`
`Alice In Chains_Jar Of Flies_04_No Excuses.mp3`
`#EXTINF:157,Alice In Chains - Whale And Wasp`
`Alice In Chains_Jar Of Flies_05_Whale And Wasp.mp3`
`#EXTINF:263,Alice In Chains - Don't Follow`
`Alice In Chains_Jar Of Flies_06_Don't Follow.mp3`
`#EXTINF:245,Alice In Chains - Swing On This`
`Alice In Chains_Jar Of Flies_07_Swing On This.mp3`

## 软件

有很多播放器和软件都支持M3U文件格式，一些比较出名的软件包有：

### 播放器

  - Windows

<!-- end list -->

  - [Windows Media
    Player](https://zh.wikipedia.org/wiki/Windows_Media_Player "wikilink"),
    [foobar2000](https://zh.wikipedia.org/wiki/foobar2000 "wikilink"),
    [VLC media
    player](https://zh.wikipedia.org/wiki/VLC_media_player "wikilink"),
    [iTunes](https://zh.wikipedia.org/wiki/iTunes "wikilink"),
    [Winamp](../Page/Winamp.md "wikilink"),
    [Audacious](../Page/Audacious.md "wikilink"),
    [Totem](https://zh.wikipedia.org/wiki/Totem "wikilink"),
    [JuK](../Page/JuK.md "wikilink").

<!-- end list -->

  - Android

<!-- end list -->

  - Astro Player,\[1\] N7Player, Cubed,
    [KMPlayer](../Page/KMPlayer.md "wikilink").

### 标签编辑器

（Tag
editor）允许用户在[MP3文件上编辑](../Page/MP3.md "wikilink")[ID3标签](../Page/ID3.md "wikilink"),也支持创建M3U文件。

  - Windows

<!-- end list -->

  - [mp3tag](https://zh.wikipedia.org/wiki/mp3tag "wikilink")，。

## 参见

  - 其他的播放列表的文件格式

<!-- end list -->

  - \- Windows媒体

  - \- SHOUTcast

  - \- Xiph.Org基金会

  - \- Windows Media Player

## 引用

## 外部链接

  - [Unofficial M3U file
    specification](http://forums.winamp.com/showthread.php?threadid=65772),
    2001/2008, winamp.com
  - [A survey of playlist
    formats](http://gonze.com/playlists/playlist-format-survey.html),
    2003
  - [M3U play list
    specification](http://schworak.com/blog/e39/m3u-play-list-specification/),
    2010/2012
  - [HTTP Live Streaming specification (includes M3U and
    M3U8)](http://tools.ietf.org/html/draft-pantos-http-live-streaming-08),
    2012, ietf.org
  - [What is a m3u8
    file?](http://www.gravlab.com/2013/07/05/what-is-an-m3u8-file/)

[Category:数位音讯](https://zh.wikipedia.org/wiki/Category:数位音讯 "wikilink")
[Category:扩展名](https://zh.wikipedia.org/wiki/Category:扩展名 "wikilink")

1.  [Astro Player official web-site](http://astroplayer.com)