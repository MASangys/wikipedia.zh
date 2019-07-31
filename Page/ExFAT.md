**exFAT**（**Extended File Allocation Table**），又名**FAT64**，是一種[微軟公司](https://zh.wikipedia.org/wiki/微軟公司 "wikilink")（Microsoft）開發的[檔案系統](https://zh.wikipedia.org/wiki/檔案系統 "wikilink")，最先從該公司的[Windows Embedded CE 6.0作業系統引入這種檔案系統](../Page/Windows_Embedded_CE_6.0.md "wikilink")，後又延伸到[Windows Vista](../Page/Windows_Vista.md "wikilink") Service Pack 1作業系統中\[1\]。由於[NTFS](../Page/NTFS.md "wikilink")檔案系統的一些資料格式規定所限，對[快閃記憶體而言exFAT顯得更具優勢](https://zh.wikipedia.org/wiki/快閃記憶體 "wikilink")，是一種較適合於快閃記憶體的檔案系統。

## 優點

exFAT相較於之前[FAT](../Page/FAT.md "wikilink")檔案系統的優勢在於：

  - 可拓展至更大磁碟大小，理论上64ZiB，推荐最大512TiB，相较32位限制的FAT32分区的2TB（每扇区512字节）。
  - 理論的檔案大小限制為2<sup>64</sup> - 1位元組（16 exbibytes - 1），而FAT32檔案系统中單一檔案限制大小為2<sup>32</sup> - 1位元組（4 GiB）。
  - 對於單檔超過4 GB的跨系統使用者來說，exFAT提供了很好的解決方案。
  - [叢集大小最大可為每](https://zh.wikipedia.org/wiki/叢集 "wikilink")[扇區](https://zh.wikipedia.org/wiki/扇區 "wikilink")2<sup>25</sup>位元組，最大32 MB。
  - 由於採用了[空餘空間尋址](https://zh.wikipedia.org/wiki/空餘空間尋址 "wikilink")，空間分配和刪除的性能得以改進。
  - 在單一檔案夾內支援超過2<sup>16</sup>個檔案。
  - 支援[存取控制清單](https://zh.wikipedia.org/wiki/存取控制清單 "wikilink")（但在Windows Vista SP1中尚未支援）\[2\]。
  - 提供給OEM的可定義參數可以使這個檔案系統適應不同特色的設備。
  - 支持[熱插拔資料完整無損機制](https://zh.wikipedia.org/wiki/熱插拔 "wikilink")[Transaction-Safe FAT](https://zh.wikipedia.org/wiki/TFAT "wikilink")（TFAT，在[WinCE中可選的功能](https://zh.wikipedia.org/wiki/WinCE "wikilink")）。
  - 時間戳記能夠使用[UTC](https://zh.wikipedia.org/wiki/UTC "wikilink")\[3\]時間而不僅僅是所在[時區](https://zh.wikipedia.org/wiki/時區 "wikilink")（從[Vista SP2開始](https://zh.wikipedia.org/wiki/Windows_Vista#Service_Pack_2 "wikilink")）

## 缺點

exFAT比過去的[FAT](../Page/FAT.md "wikilink")文件系統的劣勢在於：

  - 某些舊設備（如[个人数码助理](../Page/个人数码助理.md "wikilink")（PDA）和[数码相机](../Page/数码相机.md "wikilink")）無法使用exFAT格式的記憶卡。
  - 使用exFAT的設備將不能用[Windows Vista的](../Page/Windows_Vista.md "wikilink")[ReadyBoost](../Page/ReadyBoost.md "wikilink")功能。（Windows 7中的新的exFAT系統支援[ReadyBoost](../Page/ReadyBoost.md "wikilink")）<ref>

</ref>

  - 專利授權方式不明確。[夏普](https://zh.wikipedia.org/wiki/夏普公司 "wikilink")、[RIM](https://zh.wikipedia.org/wiki/Research_In_Motion "wikilink")<ref>

</ref>分别和微軟达成了exFAT授權協議。存在專利費。微軟曾經為[FAT](../Page/FAT.md "wikilink")的一部分申請專利。\[4\]曾经有用户从三星的Android中分离出不基于[FUSE](../Page/FUSE.md "wikilink")实现的exFat内核模块代码并按照Linux的GPL协议释放出来，被认为三星得到微软支持下开发的。\[5\]之后三星也正式释放了相应模块代码。

  - Windows XP SP3之前的舊版Windows暂时不支援exFAT，Windows XP可以安裝修改更新KB955704來支援exFAT\[6\]，Linux作業系統需要通过exfat工具支援exFAT\[7\]，Mac OS X可透過升級至10.6.5來全面支援exFAT\[8\]。

## 參見

  - [文件系统的对比](../Page/文件系统的对比.md "wikilink")
  - [檔案系統列表](https://zh.wikipedia.org/wiki/檔案系統列表 "wikilink")
  - [SDXC](../Page/SDXC.md "wikilink")

## 參考資料

<references />

## 外部連結

  - [Personal Storage: Opportunities and challenges for pocket-sized storage devices in the Windows world](http://download.microsoft.com/download/5/b/9/5b97017b-e28a-4bae-ba48-174cf47d23cd/STO072_WH06.ppt)
  - [TFAT概覽](http://msdn2.microsoft.com/en-us/library/aa915463.aspx)
  - [Extended FAT File System](http://msdn2.microsoft.com/en-us/library/aa914353.aspx)

[de:File Allocation Table\#exFAT](https://zh.wikipedia.org/wiki/de:File_Allocation_Table#exFAT "wikilink")

[Category:Windows_CE](https://zh.wikipedia.org/wiki/Category:Windows_CE "wikilink") [Category:快閃記憶體檔案系統](https://zh.wikipedia.org/wiki/Category:快閃記憶體檔案系統 "wikilink")

1.
2.  [Anandtech - Second Shot: Windows Vista SP1](http://www.anandtech.com/systems/showdoc.aspx?i=3233&p=4)
3.  Mike Nash: [Windows Vista Service Pack 2 Beta](http://windowsteamblog.com/blogs/windowsvista/archive/2008/10/24/windows-vista-service-pack-2-beta.aspx)，The Windows Blog
4.
5.
6.  [KB955704](http://support.microsoft.com/?kbid=955704)
7.  [exfat - Free exFAT file system implementation](http://code.google.com/p/exfat/)
8.  [Mac OS X 10.6.5 正式支援 exFAT－蘋果中文知識網](http://macuknow.com/node/7302)