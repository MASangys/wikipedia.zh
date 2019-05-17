**LineageOS**（也称**Lineage OS**、**Lineage OS Android
Distribution**）是一个面向[智慧型手機和](../Page/智能手机.md "wikilink")[平板電腦的](../Page/平板電腦.md "wikilink")[自由](../Page/自由软件.md "wikilink")、[免费](https://zh.wikipedia.org/wiki/免费 "wikilink")、[开放原始碼的](https://zh.wikipedia.org/wiki/开源 "wikilink")[Android系統分支](../Page/Android.md "wikilink")。它是深受欢迎的
[CyanogenMod的继任者](../Page/CyanogenMod.md "wikilink")。它在2016年12月Cyanogen公司突然宣布停止开发並关闭项目基础设施後[复刻而生](https://zh.wikipedia.org/wiki/复刻_\(软件工程\) "wikilink")。\[1\]\[2\]LineageOS於2016年12月24日正式启动，它的原始码存放於[GitHub](../Page/GitHub.md "wikilink")。\[3\]

由於Cyanogen公司保留了使用Cyanogen名称的权利，因此計畫復刻後更名为LineageOS。\[4\]

## 背景

[CyanogenMod](../Page/CyanogenMod.md "wikilink")（常简称为“CM”）是一个非常流行的\[5\]基於Android行動裝置平台，為智慧型手機和平板電腦而設的免费[開放原始碼](../Page/开放源代码.md "wikilink")-{zh-hans:操作系统;
zh-hant:作業系统; zh-cn:操作系统; zh-tw:作業系统; zh-hk:作業系统; zh-mo:作業系统;
zh-my:操作系统;
zh-sg:操作系统}-。虽然只有部分CyanogenMod使用者选择回報使用該系統，\[6\]但截至2015年3月23日，一些报告指出已有超过5000万人在他们的手机上裝載CyanogenMod。\[7\]\[8\]它也常被其他ROM的开发者作为二次訂製新系统的基础。

2013年，CM的创始人史蒂夫·科迪克获得名为[Cyanogen公司的](https://zh.wikipedia.org/wiki/Cyanogen "wikilink")，使這項計畫得以商业化。\[9\]\[10\]但他認為公司没能成功地運用、發展這項計畫，於是他在2016年（可能被迫）離職\[11\]\[12\]。作为公司的一部分，这涉及到更换[首席执行長（CEO）](../Page/首席执行官.md "wikilink")、关闭辦事處，停止計畫及相關服务。\[13\]不過由於代碼本身屬於[开放原始码並極為熱門](https://zh.wikipedia.org/wiki/开放原始码 "wikilink")，因此很快地得以延續並被更名为LineageOS，其社群也开始努力復原這項計劃的发展。

CyanogenMod及继任者LineageOS会提供裝置製造商搭載的官方[韌體中尚未內建](../Page/韌體.md "wikilink")/開放的功能选项，它支援的功能特色包含：

・[佈景主题架構](https://zh.wikipedia.org/wiki/皮肤_\(电脑\) "wikilink")\[14\]

・Trebuchet主頁，優於原始的Android啟動器

・[FLAC音訊编碼](../Page/FLAC.md "wikilink")/解码器

・更大的[存取点名称清單](https://zh.wikipedia.org/wiki/存取点名称 "wikilink")

・隐私守衛，管理每個应用程式的权限（15.1起整合為“安全中心”）

・安全鎖，保護每個應用程式

・透過通用端口[共享網路](../Page/Tethering.md "wikilink")

・CPU[超頻與其他效能強化](../Page/超頻.md "wikilink")

・可解锁的[啟動程式](../Page/啟動程式.md "wikilink")

・Root权限管理

・Pie Control扇形手勢操作

・自訂導覽列/虚拟按鍵功能及排序

・自訂狀態列的電池圖示、百分比、時鐘位置、上傳/下載速率指示器等

・自訂通知面板內的快速設定，例如[Wi-Fi](../Page/Wi-Fi.md "wikilink")、[藍牙](../Page/藍牙.md "wikilink")、[GPS](../Page/全球定位系统.md "wikilink")、[手電筒等](../Page/手電筒.md "wikilink")

・一次清除所有最近使用的應用程式

・快速啟動捷徑，可將預設的[Google即時資訊](https://zh.wikipedia.org/wiki/Google即時資訊 "wikilink")（如有安裝Gapps）更換為最多3個特殊功能，例如休眠、螢幕截圖、開啟應用程式等

・更多的鎖定螢幕選項，可顯示天氣資訊、音樂播放效果、應用程式捷徑等

・延伸桌面（Expanded desktop），個別隱藏狀態列/導覽列

・夜間模式（Night mode），內附數款主色彩可供切換

・LiveDisplay，可依據環境調整螢幕色溫

・內建螢幕錄影工具

・LED指示燈設定

・系統設定檔

・其他使用者介面的改善

其中大多数功能（或採用不同方式實作的类似功能）存在一段时间後被整合至Android原始碼。此外，**部分功能也有可能隨著版本推進而被變更或移除**。

據开发者表示，CyanogenMod本身不包含[间谍软體和](https://zh.wikipedia.org/wiki/间谍软體 "wikilink")，\[15\]\[16\]因此也被认为擁有比官方韌體更佳的效能與可靠度。\[17\]

與CyanogenMod不同的是，LineageOS的[Root权限将不再](https://zh.wikipedia.org/wiki/root_\(Android\) "wikilink")“內建於系統中”，但使用者可自行選擇刷入一個獨立的[`.zip`](../Page/ZIP格式.md "wikilink")檔案進行安装並啟用。\[18\]

## 开发

這項計畫使用[Gerrit完成其](../Page/Gerrit.md "wikilink")[代码审查流程](../Page/代码审查.md "wikilink")。LineageOS保留了CyanogenMod所用的版本控制格式（例如Android
7.1为LineageOS 14.1）。

許多来自[XDA的开发者依據其原始碼編譯了非官方版本的Lineage](../Page/XDA_Developers.md "wikilink")
OS。\[19\]

LineageOS正在开发一个名为“FlipFlap”的專屬功能，並为翻蓋提供相容性和新功能。對於某些[三星裝置可能还具有模拟翻盖](../Page/三星電子.md "wikilink")。\[20\]

## 参见

  - [客制Android韌體列表](https://zh.wikipedia.org/wiki/客制Android韌體列表 "wikilink")

## 参考资料

## 外部链接

  -
  - [官方GitHub代码库](https://github.com/lineageos)

  - [XDA-Developers -
    非官方LineageOS发布的话题](https://forum.xda-developers.com/lineage/general/p-lineage-operating-t3528558)

  - [官方LineageOS Wiki](http://wiki.lineageos.org/)

  - [LineageOS的在地化翻譯](https://crowdin.com/project/lineageos)

[Category:定制Android固件](https://zh.wikipedia.org/wiki/Category:定制Android固件 "wikilink")
[Category:自由移动软件](https://zh.wikipedia.org/wiki/Category:自由移动软件 "wikilink")
[Category:嵌入式Linux發行版](https://zh.wikipedia.org/wiki/Category:嵌入式Linux發行版 "wikilink")
[Category:软件复刻](https://zh.wikipedia.org/wiki/Category:软件复刻 "wikilink")

1.

2.

3.

4.

5.
6.

7.

8.

9.

10.

11.

12. <http://www.androidpolice.com/2016/11/28/cyanogen-inc-will-shutter-seattle-office-by-end-of-year-more-layoffs-happening-kondik-could-be-out>
    : *Kondik was removed from the company's board, allegedly*

13.

14.

15.

16.

17.

18.

19.

20.