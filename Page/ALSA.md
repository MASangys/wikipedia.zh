> 本文内容由[ALSA](https://zh.wikipedia.org/wiki/ALSA)转换而来。


[alsamixer.jpg](https://zh.wikipedia.org/wiki/File:alsamixer.jpg "fig:alsamixer.jpg")的截圖\]\] **高级Linux声音体系**（，缩写為）是[Linux内核](../Page/Linux内核.md "wikilink")中，为[声卡](../Page/声卡.md "wikilink")提供的驱动组件，以替代原先的[OSS](https://zh.wikipedia.org/wiki/OSS "wikilink")（开放声音系统）。 一部分的目的是支持声卡的自动配置，以及完美的处理系统中的多个声音设备，这些目的大多都已达到。另一个声音框架[JACK使用ALSA提供低延迟的专业级音频编辑和混音能力](../Page/JACK_Audio_Connection_Kit.md "wikilink")。

[Jaroslav Kysela过去是这个项目的领导者](https://zh.wikipedia.org/wiki/Jaroslav_Kysela "wikilink")，这个项目开始于为1998年[Gravis Ultrasound所开发的驱动](https://zh.wikipedia.org/wiki/Gravis_Ultrasound "wikilink")，它一直作为一个单独的软件包开发，直到2002年他被引进入Linux内核的开发版本 (2.5.4-2.5.5)\[1\]。从2.6版本开始ALSA成为Linux内核中默认的标准音频驱动程序集，[OSS则被标记为废弃](https://zh.wikipedia.org/wiki/OSS "wikilink")。

ALSA是一个完全[开放源代码](../Page/开放源代码.md "wikilink")的音频驱动程序集，除了像OSS那样提供了一组内核驱动程序模块之外，ALSA还专门为简化应用程序的编写提供了相应的[函数](../Page/函数.md "wikilink")库，与OSS提供的基于ioctl的原始编程[接口相比](https://zh.wikipedia.org/wiki/接口 "wikilink")，ALSA函数库使用起来要更加方便一些。利用该函数库，开发人员可以方便快捷的开发出自己的应用[程序](https://zh.wikipedia.org/wiki/程序 "wikilink")，细节则留给函数库内部处理。当然ALSA也提供了类似于OSS的[系统接口](https://zh.wikipedia.org/wiki/系统 "wikilink")，不过ALSA的开发者建议应用程序开发者使用音频函数库而不是驱动程序的API。

## 参见

  - [OSS](https://zh.wikipedia.org/wiki/OSS "wikilink")

## 参考文献

## 外部链接

  - [ALSA官方网站](http://www.alsa-project.org/)

  - [ALSA非官方Wiki](https://www.webcitation.org/65QZUbXWD?url=http://alsa.opensrc.org/Main_Page)

[Category:Linux](https://zh.wikipedia.org/wiki/Category:Linux "wikilink") [Category:开放源代码](https://zh.wikipedia.org/wiki/Category:开放源代码 "wikilink")

1.  <http://www.kernel.org/pub/linux/kernel/v2.5/ChangeLog-2.5.5>