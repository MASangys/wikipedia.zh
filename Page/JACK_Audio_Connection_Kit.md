**JACK** （**JACK Audio Connection Kit**
的[递归缩写](../Page/递归缩写.md "wikilink")）是一个专业级的[声音服务](https://zh.wikipedia.org/wiki/声音服务 "wikilink")（[守护进程](../Page/守护进程.md "wikilink")），它為声音和[MIDI数据提供实时的](../Page/MIDI.md "wikilink")、[低延时的连接](https://zh.wikipedia.org/wiki/低延时 "wikilink")，有關的程式使用JACK的[API](https://zh.wikipedia.org/wiki/API "wikilink")。

它是由（他凭着这项工作赢得了2004年的开源奖\[1\]）带领的一个[开源社区开发](https://zh.wikipedia.org/wiki/开源 "wikilink")。自从2002年初以来一直是[Linux下的关键的基础设施和事实上的专业音频软件标准](../Page/Linux.md "wikilink")。这个服务是在[GNU
GPL协议下的](https://zh.wikipedia.org/wiki/GNU_GPL "wikilink")[开源软件](../Page/开源软件.md "wikilink")，它的库則採用更宽松的[GNU
LGPL协议](https://zh.wikipedia.org/wiki/GNU_LGPL "wikilink")。

## 实现

JACK
能使用[ALSA](../Page/ALSA.md "wikilink")、[PortAudio](https://zh.wikipedia.org/wiki/PortAudio "wikilink")、[CoreAudio](https://zh.wikipedia.org/wiki/CoreAudio "wikilink")、[FFADO和](../Page/FFADO.md "wikilink")[OSS作为硬件层的后端](https://zh.wikipedia.org/wiki/OSS "wikilink")。此外,
还有一个虚拟的驱动（当不需要声音输出时是很有用的，例如离线渲染）和一个通过UDP协议的音频驱动（Audio-over-UDP
driver）。它可以运行在[Linux](../Page/Linux.md "wikilink")、 [Mac OS
X](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")、
[Solaris](https://zh.wikipedia.org/wiki/Solaris_\(作業系統\) "wikilink")、
[Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")、
[FreeBSD](../Page/FreeBSD.md "wikilink")、
[OpenBSD](../Page/OpenBSD.md "wikilink") 和
[NetBSD上](../Page/NetBSD.md "wikilink")。JACK的API被标准化，并且存在两种可融合的实现：jack1，由简单的C实现并且已经维护了一段时间；至于jack2（原来的jackdmp），由Stéphane
Letz领导的用C++重写的实现，jack2在积极开发中，目标是支持多处理器和对其它非Linux操作系统。\[2\]

## 低延时调度

JACK为达到足够的低延时的调度要求是目前[Linux 2.6
内核的实时操作系统优化的动力](../Page/Linux内核.md "wikilink")\[3\]\[4\]。Linux
2.6
内核最初的延时表现和老的2.4内核对比是让人失望的。\[5\]实时操作系统的调整工作已经在众多的对主线内核和一个对2.6.24版本的插入优化的
-rt分支中的调度调整中达到顶峰，最后成为一个`CONFIG_PREEMPT_RT`（配置优先）补丁。 \[6\]

## 参见

  - [Ardour](../Page/Ardour_\(软件\).md "wikilink")
  - [LADSPA](../Page/LADSPA.md "wikilink")
  - [PulseAudio](../Page/PulseAudio.md "wikilink")
  - [aRts](https://zh.wikipedia.org/wiki/aRts "wikilink")

## 參考資料

## 外部連結

  - [官方网站](http://jackaudio.org/)
  - [JACK的文档](https://web.archive.org/web/20110127062649/http://jackaudio.org/documentation)
  - [Linux日志](http://www.linuxjournal.com/article/8354)
  - [连接到OSX和Windows二进制文件的Jackdmp](https://web.archive.org/web/20120606050919/http://www.grame.fr/~letz/jackdmp.html)
  - [支持JACK的软件列表](http://apps.linuxaudio.org/apps/categories/jack)
  - [其他关于JACK的文章
    (只有PDF)](https://web.archive.org/web/20130614005531/http://w3.linux-magazine.com/issue/67/JACK_Audio_Server.pdf)

[Category:自由音訊軟體](https://zh.wikipedia.org/wiki/Category:自由音訊軟體 "wikilink")
[Category:应用程序接口](https://zh.wikipedia.org/wiki/Category:应用程序接口 "wikilink")
[Category:音乐软件插件体系结构](https://zh.wikipedia.org/wiki/Category:音乐软件插件体系结构 "wikilink")
[Category:字首缩写](https://zh.wikipedia.org/wiki/Category:字首缩写 "wikilink")
[Category:音频库](https://zh.wikipedia.org/wiki/Category:音频库 "wikilink")

1.
2.
3.
4.
5.
6.