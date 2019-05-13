**MikMod**是一个[tracker文件播放器](../Page/tracker.md "wikilink")，起初由Jean-Paul
Mikkers编写，支持许多格式，如[MOD](../Page/MOD.md "wikilink")，[S3M](../Page/S3M.md "wikilink")，[IT与](../Page/IT.md "wikilink")[XM](../Page/XM.md "wikilink")。MikMod是分成两个部分；前端称为MikMod，函数库则称为libmikmod。

## 前端

前端使用[ncurses以显示其内容](../Page/ncurses.md "wikilink")，而其功能皆受键盘控制。目录，随机播放，module文件内的查寻，都支持。前端也能显示音量条，用着的sample，和文件细节，如作者与信息。较新版本也有主题。

## libmikmod

MikMod使用函数库libmikmod以播放音乐。libmikmod能输出到基础的播放音乐计算机结构，例如[ALSA](../Page/ALSA.md "wikilink")，[ESD](../Page/ESD.md "wikilink")，以及网络协议和某些原始音频格式。由于其积木式设计，扩充功能和新格式并不难加入。因为其应用程序接口强力而容易，libmikmod受游戏开发函数库的广泛支持；某些媒体播放器也有libmikmod的插件。

Libmikmod能播放通过ZIP，LHA等压缩的档案。有些更先进的特性包括周围混频和内推法。

## 历史

MikMod起初是于1992年，由Jean-Paul Mikkers编写的；最先用于DOS。由于其ANSI
C原代码容易移植，MikMod很受欢迎。1995年年末，Jean-Paul发布了他最后的MikMod版本，但是此计划，人家有继续。Steve
McIntyre创造了MikMod的Unix版本；Jake Stine有负责主要更新和版本3.0的产生。Frank
Loemker创造了MikMod的核心函数库，也作为一段时间的Unix维护者，后来被Miodrag
Vallat取代。但是在2002年，Miodrag不够时间，因此其开发停了大约两年。此后，Raphaël
Assénat决定了继续进行此计划。

Mikkers享有原始MikMod原代码的版权；原代码却可仍然自由散布，修改。后来，Mikkers将原代码在[不正式的许可证](http://svn.berlios.de/svnroot/repos/jmikmod/jmikmod/trunk/source/java/docs/license.txt)下再发布。Miodrag
Vallat成为原代码维护者时，决定libmikmod的原代码应该配[LGPL](../Page/LGPL.md "wikilink")，而播放器的则该配[GPL](../Page/GPL.md "wikilink")。在另一方面，[MikMod
for
Java](https://web.archive.org/web/20071014093139/http://jmikmod.berlios.de/)仍维持原始可视为[BSD式许可证的不正是许可证](../Page/BSD式许可证.md "wikilink")。

自[2007年6月起](../Page/2007年6月.md "wikilink")，此计划似乎静止了；其CVS仓库里的原代码很少更新。

## 受支持的格式

  - 669 ([Composer 669](../Page/Composer_669.md "wikilink")，Unis 669)
  - AMF (DSMI Advanced Module Format)
  - AMF (ASYLUM Music Format V1.0)
  - APUN (APlayer)
  - DSM（DSIK内部格式）
  - FAR (Farandole Composer)
  - GDM (General DigiMusic)
  - GT2 (Graoumf tracker)
  - IT（[Impulse Tracker](../Page/Impulse_Tracker.md "wikilink")）
  - IMF (Imago Orpheus)
  - MOD（15和31个乐器）
  - MED (OctaMed)
  - MTM（MultiTracker Module编辑器）
  - OKT (Amiga Oktalyzer)
  - S3M（[Scream Tracker](../Page/Scream_Tracker.md "wikilink")）
  - STM（[Scream Tracker](../Page/Scream_Tracker.md "wikilink")）
  - STX (Scream Tracker Music Interface Kit)
  - ULT（[Ultra Tracker](../Page/Ultra_Tracker.md "wikilink")）
  - UNI（MikMod内部格式）
  - XM（[FastTracker,
    Milkytracker](../Page/FastTracker,_Milkytracker.md "wikilink")）

## 参见

  - [Tracker](../Page/Tracker.md "wikilink")
  - [Renoise 介紹](http://en.wikipedia.org/wiki/Renoise) - 英文版Wikipedia說明
  - [Fast Tracker II 介紹](http://en.wikipedia.org/wiki/Fast_Tracker) -
    英文版Wikipedia說明
  - [Module 模塊文件 介紹](../Page/:模块文件.md "wikilink") - Module (MOD) 說明
  - [Gravis Ultrasound
    介紹](http://en.wikipedia.org/wiki/Gravis_Ultrasound) - GUS 音效卡,
    早期32數位音軌是MOD玩家與作曲家的最愛.

## 外部链接

  - [MikMod首页](http://mikmod.raphnet.net/)
  - [MikMod for
    Macintosh](https://web.archive.org/web/20090426223724/http://www.algonet.se/~afb/mikmod/)
  - [MikMod for
    Java](https://web.archive.org/web/20071014093139/http://jmikmod.berlios.de/)
    - 逐渐改C成Java的重新实现。
  - [MikMod for
    iPod](https://web.archive.org/web/20071114002313/http://ipodlinux.org/Mikmodpodzilla)
  - [Milkytracker 首頁](http://milkytracker.org/) - 可下載 Milkytracker軟件,
    是一個freeware.
  - [Renoise 首頁](http://www.renoise.com/) - 可下載 Renoise 軟件, 正式版要付費.
  - [Modarchive 首頁](http://modarchive.org/) - 全世界Tracker作曲家發表作品的最大網站,
    累積數萬首自創或改編的曲子.
  - [台灣流行MOD編曲](http://modarchive.org/index.php?request=view_profile&query=82904)
    - 數十首remixed 台灣曲目,可以MikMOD 或Milkytracker播放.

[en:MikMod](../Page/en:MikMod.md "wikilink")

[Category:自由音频软件](https://zh.wikipedia.org/wiki/Category:自由音频软件 "wikilink")
[Category:音频声道器](https://zh.wikipedia.org/wiki/Category:音频声道器 "wikilink")
[Category:Amiga音乐格式](https://zh.wikipedia.org/wiki/Category:Amiga音乐格式 "wikilink")