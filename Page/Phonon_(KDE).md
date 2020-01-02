> 本文内容由[Phonon \(KDE\)](https://zh.wikipedia.org/wiki/Phonon_\(KDE\))转换而来。


**Phonon** 是 KDE 桌面平台提供的多媒体 API，它是处理KDE软件中多媒体流的标准抽象，也被几个Qt应用程序使用。

Phonon 最初是为了让 KDE/Qt 软件能够独立于任何单一的多媒体框架（如[GStreamer](../Page/GStreamer.md "wikilink")或[xine](https://zh.wikipedia.org/wiki/xine "wikilink")），从而为其提供了在主要版本的生命周期内稳定的多媒体API。通过提供一个简单的 KDE/Qt 风格的多媒体API，能够更好地支持 Windows 和 macOS 上的本地多媒体框架，并解决框架变得无法维护或 API/ABI 不稳定的问题。

使用了phonon，用四行[C++](../Page/C++.md "wikilink")程式碼就能播放檔案\[1\] ，而舊聲音框架（)則需要用到30行\[2\]：

``` cpp
 media = new MediaObject(this);
 connect(media, SIGNAL(finished()), SLOT(slotFinished()));
 media->setCurrentSource("/home/username/music/filename.ogg");
 media->play();
```

Phonon並非只能運行於[Unix系統](https://zh.wikipedia.org/wiki/Unix "wikilink")，他的後端可以是在其它平台如 [Microsoft Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink") 並提供相同的功能。

[Phononsettings.png](https://zh.wikipedia.org/wiki/File:Phononsettings.png "fig:Phononsettings.png")

## 特色

  - Phonon讓各種後端提供界面給開發者所謂的"引擎"；每個引擎運作在一個具體的後端。每個後端都可讓Phonon控制基本功能，如播放、暫停和搜尋。Phonon也支持更高層次的功能，如讓音軌轉化之間變微弱。\[3\]
  - 使用[Solid](https://zh.wikipedia.org/wiki/Solid_\(KDE\) "wikilink")，Phonon將給予用戶更多配件的控制能力如耳機、揚聲器、麥克風。一個例子是，因為你可能只有一個VoIP會話使用您的耳機，但所有其他的聲音通過揚聲器出來。\[4\]
  - 支援 [Unix-like](https://zh.wikipedia.org/wiki/Unix-like "wikilink") 系統下的後端GStreamer与VLC。<ref>

</ref>需要注意的是，[xine与](https://zh.wikipedia.org/wiki/xine "wikilink")[MPlayer](../Page/MPlayer.md "wikilink")的后端在 Linux 中已经过时并不再提供开发。\[5\]

  - 支援 [Windows](https://zh.wikipedia.org/wiki/Windows "wikilink") 下的後端 [DirectShow](../Page/DirectShow.md "wikilink")、[VLC和](https://zh.wikipedia.org/wiki/VLC_media_player "wikilink")[MPlayer](../Page/MPlayer.md "wikilink")。
  - 支援 [Mac OS X下的後端](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")[QuickTime](../Page/QuickTime.md "wikilink")。

## 使用於 Qt

Phonon从一开始就被设计成Qt函数的风格，[Qt](../Page/Qt.md "wikilink")4.4和之後版本使用了Phonon，作為跨平台的音訊/視訊播放。\[6\]

## 示例

``` cpp
    Phonon::VideoPlayer *player=new Phonon::VideoPlayer(this);
    player->setMinimumSize(1280,720);
    Phonon::MediaSource source("20110705_095213.avi");
    player->load(source);
    player->play();
    connect(player,SIGNAL(finished()),player,SLOT(play()));
```

## 參考文獻

## 外部連結

  - [Phonon 官方網站](https://www.webcitation.org/67lLj6qv4?url=http://phonon.kde.org/)
  - [通向KDE4之路（六）：令多媒体编程更轻松的Phonon](http://www.kdecn.org/dot/index.php?id=1170773239)
  - [PulseAudio](../Page/PulseAudio.md "wikilink") - 一个[跨平台的](https://zh.wikipedia.org/wiki/跨平台 "wikilink")、可通过网络工作的声音服务
  - [JACK Audio Connection Kit](../Page/JACK_Audio_Connection_Kit.md "wikilink") - 一个专业级的声音服务

[Category:KDE](https://zh.wikipedia.org/wiki/Category:KDE "wikilink") [Category:Qt](https://zh.wikipedia.org/wiki/Category:Qt "wikilink") [Category:多媒体框架](https://zh.wikipedia.org/wiki/Category:多媒体框架 "wikilink")

1.
2.
3.
4.
5.
6.