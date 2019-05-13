**Rhythmbox**是一个[GNOME默认的](../Page/GNOME.md "wikilink")[音乐管理和播放](../Page/音乐.md "wikilink")[软件](../Page/软件.md "wikilink")，软件界面和[苹果公司的](../Page/苹果公司.md "wikilink")[iTunes很相似](../Page/iTunes.md "wikilink")。Rhythmbox是一个[自由软件](../Page/自由软件.md "wikilink")，其核心播放功能基于[GStreamer多媒体框架](../Page/GStreamer.md "wikilink")。

## 功能

Rhythmbox提供了越来越多的功能，包括：

### 音乐回放

支持回放来自不同的数字音乐来源，但不包括[MIDI](../Page/MIDI.md "wikilink")。最常见的回放是作为文件存储在本地计算机上的音乐。Rhythmbox还支持播放[流媒体](../Page/流媒体.md "wikilink")（[Internet广播电台及](../Page/Internet广播电台.md "wikilink")[播客](../Page/播客.md "wikilink")）。Rhythmbox支持[重放增益标准](../Page/重放增益.md "wikilink")。

Rhythmbox支持搜索和排序库中的音乐。[播放列表可以产生组并排列音乐](../Page/播放列表.md "wikilink")。用户还可以创建一个“智能播放列表”，它可以根据自定的规则自动更新（就像数据库队列），而不是让轨道任意排列。音乐可以在“重复”或“乱序”模式播放。

跟踪评级的支持可以用在“乱序”模式并使高评级的轨道播放得更多。

### 音乐导入

  - 抓取[音频CD](../Page/音频CD.md "wikilink")（需要可选的[音频CD提取器软件](../Page/Sound_Juicer.md "wikilink")）
  - 通过[GStreamer](../Page/GStreamer.md "wikilink")，支持全面的[音频格式](../Page/音频格式.md "wikilink")
  - [iPod支持](../Page/iPod.md "wikilink")（实验性的）

### 刻录音频CD

从0.9版本起，Rhythmbox可以从播放列表创建[音频CD](../Page/音频CD.md "wikilink")。

### 显示专辑封面

从0.9.5版本起，Rhythmbox可以为正在播放的[专辑显示专辑封面](../Page/专辑.md "wikilink")。不过，这个[插件通过搜索](../Page/插件.md "wikilink")[互联网找到相应的插图](../Page/互联网.md "wikilink")，而非为专辑插图读取嵌入式的[ID3标签](../Page/ID3标签.md "wikilink")。

### 显示歌词

从0.9.5版本起，Rhythmbox可以为正在播放的歌曲提供[歌词](../Page/歌词.md "wikilink")（-{只}-有它们存储在一个歌词[数据库中](../Page/数据库.md "wikilink")，就像[leoslyrics](../Page/leoslyrics.md "wikilink")）

### Last.fm支持

从0.9.6版本起，Rhythmbox可以提交播放的歌曲到你的[Last.fm账户](../Page/Last.fm.md "wikilink")（叫做记录——"[scrobbling](../Page/scrobbling.md "wikilink")"）。从0.9.7版本起，它还可以收听[Last.fm的的电台](../Page/Last.fm.md "wikilink")。

### Jamendo支持

从0.9.6版本起，Rhythmbox可以浏览和播放全部[Jamendo免费](../Page/Jamendo.md "wikilink")（如果是自由的）音乐资料库。

### DAAP共享

0.10.0以后的版本支持[DAAP共享](../Page/Digital_Audio_Access_Protocol.md "wikilink")。

### 一体化

[GNOME-Music-Applet-screenshot.png](https://zh.wikipedia.org/wiki/File:GNOME-Music-Applet-screenshot.png "fig:GNOME-Music-Applet-screenshot.png")
Rhythmbox已经与一些外部程序，服务和设备广泛地集成，包括：

  - [Nautilus文件管理器](../Page/Nautilus文件管理器.md "wikilink")：上下文菜单上的一体化（在版本0.8.8中默认关闭）；“悬停模式（預覽功能）”，当鼠标悬停在音乐文件上时，音乐将播放。
  - [XChat](../Page/XChat.md "wikilink")，通过一个[XChat](../Page/XChat.md "wikilink")[插件](../Page/插件.md "wikilink")[Rhythmbox
    XChat播音员
    (Perl)](https://web.archive.org/web/20070929191144/http://tim.codestorm.net/projects/xchat-rhythmbox/)。
  - [Pidgin-Rhythmbox](http://jon.oberheide.org/projects/pidgin-rhythmbox/)用正在播放的轨道的细节自动更新[Pidgin用户信息](../Page/Pidgin.md "wikilink")。
  - [Gajim和](../Page/Gajim.md "wikilink")[Pidgin包括选择用正在播放的轨道的细节自动更新用户详情](../Page/Pidgin.md "wikilink")\[1\]。
  - [Music
    Applet](http://www.kuliniewicz.org/music-applet/)（以前称为Rhythmbox的小程序），一个可以在面板上控制Rhythmbox播放的[GNOME面板小程序](../Page/GNOME.md "wikilink")。
  - Shuffle，一个[gDesklet](../Page/gDesklet.md "wikilink")，为Rhythmbox提供一个类似于[iPod
    Shuffle的界面](../Page/iPod_Shuffle.md "wikilink")。
  - Rhythmbox XSLT，允许音乐库作为一个[网页浏览](../Page/网页.md "wikilink")。
  - Rhythmbox Tune Publisher通过User
    Tune[协议发布正在播放的Rhythmbox轨道到](../Page/协议.md "wikilink")[Jabber](../Page/Jabber.md "wikilink")（用于Jabber世界地图）。
  - Blue Remote允许通过[蓝牙](../Page/蓝牙.md "wikilink")（手机）控制Rhythmbox。
  - [FoxyTunes](../Page/FoxyTunes.md "wikilink")，一个[Mozilla
    Firefox扩展](../Page/Mozilla_Firefox.md "wikilink")，提供在[浏览器中控制Rhythmbox回放的功能](../Page/浏览器.md "wikilink")。
  - 用来从[Jamendo和](../Page/Jamendo.md "wikilink")[Magnatune浏览和播放](../Page/Magnatune.md "wikilink")[创作共用协议的专辑的插件](../Page/创作共用.md "wikilink")。

## 参考文献

<references />

## 参见

  - [媒体播放器列表](../Page/媒体播放器列表.md "wikilink")
  - [媒体播放器比較](../Page/媒体播放器比較.md "wikilink")

## 外部链接

  - [Rhythmbox网站](http://www.gnome.org/projects/rhythmbox/)

[Category:媒体播放器](https://zh.wikipedia.org/wiki/Category:媒体播放器 "wikilink")
[Category:自由软件](https://zh.wikipedia.org/wiki/Category:自由软件 "wikilink")
[Category:GNOME](https://zh.wikipedia.org/wiki/Category:GNOME "wikilink")

1.  <http://code.google.com/p/musictracker/>