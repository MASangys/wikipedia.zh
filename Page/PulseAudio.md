**PulseAudio**（以前叫*Polypaudio*）是一个[跨平台的](https://zh.wikipedia.org/wiki/跨平台 "wikilink")、可通过网络工作的[声音服务](https://zh.wikipedia.org/wiki/声音服务 "wikilink")，其一般使用于[Linux](../Page/Linux.md "wikilink")和[FreeBSD](../Page/FreeBSD.md "wikilink")操作系统。它可以用来作为一种简易改进的[开放声音后台](https://zh.wikipedia.org/wiki/开放声音后台 "wikilink")（ESD）替换。

PulseAudio运行于[Microsoft Windows和](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")[POSIX兼容系统](https://zh.wikipedia.org/wiki/POSIX "wikilink")（如Linux和FreeBSD）。PulseAudio是[自由软件](../Page/自由软件.md "wikilink")，基于[GNU宽通用公共许可证](../Page/GNU宽通用公共许可证.md "wikilink") （LGPL）2.1协议\[1\]

## 描述

[Pulseaudio-diagram.svg](https://zh.wikipedia.org/wiki/File:Pulseaudio-diagram.svg "fig:Pulseaudio-diagram.svg")

PulseAudio是一个声音服务器，一个后台进程从一个或多个*音源*（进程或输入设备）接受声音输入 然后重定向声音到一个或多个*槽*（声卡，远程网络PulseAudio服务，或其他进程）。

PulseAudio的一个目的通过它是重定向所有声音流，包括那些试图访问硬件的进程（像那些遗留的基于[OSS的软件](https://zh.wikipedia.org/wiki/OSS "wikilink")）。PulseAudio通过提供适配器给那些使用不同的声音系统，像[aRts和](https://zh.wikipedia.org/wiki/aRts "wikilink")[ESounD](https://zh.wikipedia.org/wiki/ESounD "wikilink")。

在Linux下的典型方案，用户提供配置[ALSA](../Page/ALSA.md "wikilink")来使用PulseAudio提供的虚拟设备。尽管应用使用ALSA会将输出的声音输出到PulseAudio，然后PulseAudio会使用[ALSA](../Page/ALSA.md "wikilink")它自己来访问真正的声卡. PulseAudio同样提供它自己的接口给应用程序，用来直接支持PulseAudio，就像那些遗留的基于[ESD的软件](https://zh.wikipedia.org/wiki/ESD "wikilink")，这样使得PulseAudio适合作为[ESD的替代品](https://zh.wikipedia.org/wiki/ESD "wikilink")。

对于[OSS的软件](../Page/Open_Sound_System.md "wikilink"), PulseAudio提供`padsp`工具，用来代替硬件文件夹像`/dev/dsp`，欺骗应用程序，使程序以为它们有声卡的完全控制权。在事实上，它们的输出被PulseAudio重定向。

## 特点

PulseAudio的主要特点包括:

  - 可对每一个应用程序进行音量控制Per-application volume controls\[2\]
  - 可扩展的插件与支持可装载模块架构
  - 兼容性许多流行的音频应用程序\[3\]
  - 支持多重音源和多重输出
  - 低延时操作和支持延迟测量
  - 一个对处理器资源效率零拷贝内存架构
  - 能够发现本地网络上使用PulseAudio的其他计算机并通过其扬声器直接播放声音
  - 能够改变一个应用程序的声音输出设备，就算这个应用程序在播放声音（程序不需要支持这特性，而事实上，程序甚至没有意识到改变）
  - 带有脚本功能的命令行界面
  - 一个功能完善且带有命令行重新配置功能的守护进程
  - 内置采样转换和重采样功能
  - 能够合并多块声卡成一个声卡
  - 能够同步播放多个音频流
  - 动态检测蓝牙音频设备
  - 使全系统均衡的能力

## 使用

PulseAudio被几个主要[Linux发行版](../Page/Linux发行版.md "wikilink")使用，例如[Fedora](../Page/Fedora.md "wikilink")、[Ubuntu](../Page/Ubuntu.md "wikilink")、[Mandriva](../Page/Mandriva_Linux.md "wikilink")、[Linux Mint](../Page/Linux_Mint.md "wikilink")、[openSUSE和](https://zh.wikipedia.org/wiki/openSUSE "wikilink")[OpenWRT](https://zh.wikipedia.org/wiki/OpenWRT "wikilink")。[GNOME](../Page/GNOME.md "wikilink")项目中还有越来越多的对Pulseaudio的支持。

PulseAudio已经被多款基于[Linux](../Page/Linux.md "wikilink")的移动电话设备当作声音系统，包括[Nokia N900和](https://zh.wikipedia.org/wiki/Nokia_N900 "wikilink")[Palm Pre](../Page/Palm_Pre.md "wikilink").\[4\]

当PulseAudio第一次公开发布时, PulseAudio开发者[Lennart Poettering描述它为](https://zh.wikipedia.org/wiki/Lennart_Poettering "wikilink")"the software that currently breaks your audio".\[5\] Poettering later claimed that "Ubuntu didn't exactly do a stellar job. They didn't do their homework" in adopting PulseAudio\[6\] for [Ubuntu](../Page/Ubuntu.md "wikilink") "Hardy Heron" (8.04), a problem which was then improved with subsequent Ubuntu releases.\[7\] However, on October 2009, Poettering reported that he was still not happy with Ubuntu's integration of PulseAudio.\[8\]

某些程序，包括Linux上的旧版的[Adobe Flash](../Page/Adobe_Flash.md "wikilink")，在PulseAudio上造成不稳定.\[9\]\[10\]幸运的是较新的Flash插件的不引起冲突，因此Flash和PulseAudio的是兼容的。

## 替代品

[ALSA](../Page/ALSA.md "wikilink")提供一个软件调音台叫[dmix](https://zh.wikipedia.org/wiki/dmix "wikilink")，它是在PulseAudio前开发的。这是几乎可以在所有的Linux发行版使用的一个简单的PCM音频混合的解决方案。但它不提供PulseAudio的高级功能（如高品质的重采样，聚合装置，定时的调度和网络音频）。

[JACK是一个提供相比PulseAudio更专业的服务的体系](../Page/JACK_Audio_Connection_Kit.md "wikilink")，提供实时和[低延时的表现](https://zh.wikipedia.org/wiki/低延时 "wikilink")。 和自从JACK2开始支持对称多处理，使得所有的音频客户端能有效平衡负载于多个处理器。音频客户端可以彼此之间任意连接。在JACK的所有客户之间的图新连接，可以被多种应用程序可视化和编辑，例如Qjackctl。这使得它非常直观地概述了整体音频控制流，可以在任何时候修改所有的音频应用程序和硬件路由。JACK对专业音频软件来说是首选的专业音频应用服务，例如[Ardour](../Page/Ardour_\(软件\).md "wikilink")、[Rezound和](https://zh.wikipedia.org/wiki/Rezound "wikilink")[LinuxSampler](https://zh.wikipedia.org/wiki/LinuxSampler "wikilink")。

在OSS V4的声音系统，如4Front，可提供软件混音，重采样和改变对每个应用程序的基础量，与PulseAudio对比，这些功能是在内核中实现。PulseAudio的还可以与现有的音响系统互操作，包括那些设计成独占声卡的程序（OSS V3）

## 参见

  - [JACK Audio Connection Kit](../Page/JACK_Audio_Connection_Kit.md "wikilink")
  - [aRts](https://zh.wikipedia.org/wiki/aRts "wikilink")
  - [Network Audio System](https://zh.wikipedia.org/wiki/Network_Audio_System "wikilink")
  - [List of Linux audio software](https://zh.wikipedia.org/wiki/List_of_Linux_audio_software "wikilink")

## 注释

## 外部链接

  -
  - [The Project Formerly Known as Polypaudio](http://0pointer.de/blog/projects/pulse.html), a blog entry by one of the PulseAudio developers discussing the name change

[Category:自由音讯软体](https://zh.wikipedia.org/wiki/Category:自由音讯软体 "wikilink") [Category:用C编程的自由软体](https://zh.wikipedia.org/wiki/Category:用C编程的自由软体 "wikilink") [Category:音频库](https://zh.wikipedia.org/wiki/Category:音频库 "wikilink") [Category:应用程序接口](https://zh.wikipedia.org/wiki/Category:应用程序接口 "wikilink")

1.
2.

3.

4.  .

5.

6.

7.

8.

9.

10.