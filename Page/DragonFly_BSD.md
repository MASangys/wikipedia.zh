**DragonFly BSD**是一套開放原始碼的類Unix作業系統，自[FreeBSD](../Page/FreeBSD.md "wikilink") 4.8分支。

由於FreeBSD开发组將於FreeBSD 4.11後不再推出新的4系列版本（僅做安全性更新），而新的FreeBSD 5系列初期又有效能及穩定性等等的質疑，因此Matt Dillon在2003年[六月另外成立分支計劃](https://zh.wikipedia.org/wiki/六月 "wikilink")，並於同年[七月時於FreeBSD的郵件討論群組上公佈](https://zh.wikipedia.org/wiki/七月 "wikilink")。\[1\]

Dillon當時認為FreeBSD 5所使用的Threading與SMP架構將會使得系統難以維護，但不被FreeBSD的發展團隊接受，於是決定自行發展分支。即便如此，DragonFly BSD的發展團隊仍與FreeBSD密切合作，雙方仍然經常互相幫助對方修正bug，以及驅動程式的更新。

虽然DragonFly BSD在逻辑上是FreeBSD 4.x系列的后继，但DragonFly BSD与FreeBSD已有显著的差异。例如DragonFly BSD包含了新的的实现、轻量级的ports/messaging系统和含有丰富功能的文件系统\[2\]。DragonFly计划采纳的方案中有许多来自[AmigaOS](../Page/AmigaOS.md "wikilink")操作系统\[3\]。

## 設計理念

DragonFly BSD初期打算改寫FreeBSD 4中的幾個子系統，包括了Cache、[I/O架構](https://zh.wikipedia.org/wiki/I/O "wikilink")、Messaging、Threading、User API及VFS架構。\[4\]

## 發展及發行

DragonFly BSD自FreeBSD 4.8分支後引入了許多FreeBSD 4與5的新功能以及修正，像是FreeBSD 4所發展的[ACPI及新的](https://zh.wikipedia.org/wiki/ACPI "wikilink")[ATA](../Page/ATA.md "wikilink")驅動程式。由於初期DragonFly BSD的發展人數不多，而且大多都集中精力在基本架構的修改，所以週邊驅動程式大多都是從FreeBSD 5取得。

如同[OpenBSD](../Page/OpenBSD.md "wikilink")，DragonFly BSD的維護者將C語言程式碼中"K\&R" style換成ANSI style。另外DragonFly BSD的GCC（GNU Compiler Collection）也引入了OpenBSD所特有的「Stack-Smashing Protector」（之前被稱為「ProPolice」），提供對於buffer overflow攻擊額外的保護，並預設開啟使用。不過在2005年7月23日時，核心預設不使用此功能進行編譯。

如同其他大多數的BSD，DragonFly以[BSD许可证](../Page/BSD许可证.md "wikilink")授權方式釋出。

## 版本歷史

| 版本   | 發佈日期        |
| ---- | ----------- |
| 1.0  | 2004年7月12日  |
| 1.2  | 2005年4月8日   |
| 1.4  | 2006年1月7日   |
| 1.6  | 2006年7月25日  |
| 1.8  | 2007年1月30日  |
| 1.10 | 2007年8月6日   |
| 1.12 | 2008年2月26日  |
| 2.0  | 2008年7月21日  |
| 2.2  | 2009年2月17日  |
| 2.4  | 2009年9月16日  |
| 2.6  | 2010年4月6日   |
| 2.8  | 2010年10月30日 |
| 2.10 | 2011年4月26日  |
| 3.0  | 2012年2月22日  |
| 3.2  | 2012年11月2日  |
| 3.4  | 2013年4月29日  |
| 3.6  | 2013年11月25日 |
| 3.8  | 2014年6月4日   |
| 4.0  | 2014年11月25日 |
| 4.2  | 2015年6月29日  |
| 4.4  | 2015年12月7日  |
| 4.6  | 2016年8月2日   |
| 4.8  | 2017年3月27日  |
| 5.0  | 2017年12月16日 |
| 5.2  | 2018年4月10日  |
| 5.4  | 2018年12月3日  |

## 參考資料

## 参见

  - [FreeBSD](../Page/FreeBSD.md "wikilink")
  - [NetBSD](../Page/NetBSD.md "wikilink")
  - [OpenBSD](../Page/OpenBSD.md "wikilink")

## 外部链接

  - [DragonFly BSD官方網站](http://www.dragonflybsd.org)

[Category:BSD](https://zh.wikipedia.org/wiki/Category:BSD "wikilink") [Category:自由作業系統](https://zh.wikipedia.org/wiki/Category:自由作業系統 "wikilink") [Category:FreeBSD](https://zh.wikipedia.org/wiki/Category:FreeBSD "wikilink")

1.  [Annoucning DragonFly BSD\!](http://lists.freebsd.org/pipermail/freebsd-current/2003-July/006889.html)
2.
3.
4.  [DragonFly Design Goals](http://www.dragonflybsd.org/docs/goals.shtml)