**exFAT**（**Extended File Allocation
Table**），又名**FAT64**，是一種[微軟公司](../Page/微軟公司.md "wikilink")（Microsoft）開發的[檔案系統](../Page/檔案系統.md "wikilink")，最先從該公司的[Windows
Embedded CE
6.0作業系統引入這種檔案系統](../Page/Windows_Embedded_CE_6.0.md "wikilink")，後又延伸到[Windows
Vista](../Page/Windows_Vista.md "wikilink") Service Pack
1作業系統中\[1\]。由於[NTFS檔案系統的一些資料格式規定所限](../Page/NTFS.md "wikilink")，對[快閃記憶體而言exFAT顯得更具優勢](../Page/快閃記憶體.md "wikilink")，是一種較適合於快閃記憶體的檔案系統。

## 優點

exFAT相較於之前[FAT檔案系統的優勢在於](../Page/FAT.md "wikilink")：

  - 可拓展至更大磁碟大小，理论上64ZiB，推荐最大512TiB，相较32位限制的FAT32分区的2TB（每扇区512字节）。
  - 理論的檔案大小限制為2<sup>64</sup> - 1位元組（16 exbibytes -
    1），而FAT32檔案系统中單一檔案限制大小為2<sup>32</sup>
    - 1位元組（4 GiB）。
  - 對於單檔超過4 GB的跨系統使用者來說，exFAT提供了很好的解決方案。
  - [叢集大小最大可為每](../Page/叢集.md "wikilink")[扇區](../Page/扇區.md "wikilink")2<sup>25</sup>位元組，最大32
    MB。
  - 由於採用了[空餘空間尋址](../Page/空餘空間尋址.md "wikilink")，空間分配和刪除的性能得以改進。
  - 在單一檔案夾內支援超過2<sup>16</sup>個檔案。
  - 支援[存取控制清單](../Page/存取控制清單.md "wikilink")（但在Windows Vista
    SP1中尚未支援）\[2\]。
  - 提供給OEM的可定義參數可以使這個檔案系統適應不同特色的設備。
  - 支持[熱插拔資料完整無損機制](../Page/熱插拔.md "wikilink")[Transaction-Safe
    FAT](../Page/TFAT.md "wikilink")（TFAT，在[WinCE中可選的功能](../Page/WinCE.md "wikilink")）。
  - 時間戳記能夠使用[UTC](../Page/UTC.md "wikilink")\[3\]時間而不僅僅是所在[時區](../Page/時區.md "wikilink")（從[Vista
    SP2開始](../Page/Windows_Vista#Service_Pack_2.md "wikilink")）

## 缺點

exFAT比過去的[FAT文件系統的劣勢在於](../Page/FAT.md "wikilink")：

  - 某些舊設備（如[个人数码助理](../Page/个人数码助理.md "wikilink")（PDA）和[数码相机](../Page/数码相机.md "wikilink")）無法使用exFAT格式的記憶卡。
  - 使用exFAT的設備將不能用[Windows
    Vista的](../Page/Windows_Vista.md "wikilink")[ReadyBoost功能](../Page/ReadyBoost.md "wikilink")。（Windows
    7中的新的exFAT系統支援[ReadyBoost](../Page/ReadyBoost.md "wikilink")）<ref>

</ref>

  - 專利授權方式不明確。[夏普](../Page/夏普公司.md "wikilink")、[RIM](../Page/Research_In_Motion.md "wikilink")<ref>

</ref>分别和微軟达成了exFAT授權協議。存在專利費。微軟曾經為[FAT的一部分申請專利](../Page/FAT.md "wikilink")。\[4\]曾经有用户从三星的Android中分离出不基于[FUSE实现的exFat内核模块代码并按照Linux的GPL协议释放出来](../Page/FUSE.md "wikilink")，被认为三星得到微软支持下开发的。\[5\]之后三星也正式释放了相应模块代码。

  - Windows XP SP3之前的舊版Windows暂时不支援exFAT，Windows
    XP可以安裝修改更新KB955704來支援exFAT\[6\]，Linux作業系統需要通过exfat工具支援exFAT\[7\]，Mac
    OS X可透過升級至10.6.5來全面支援exFAT\[8\]。

## 參見

  - [文件系统的对比](../Page/文件系统的对比.md "wikilink")
  - [檔案系統列表](../Page/檔案系統列表.md "wikilink")
  - [SDXC](../Page/SDXC.md "wikilink")

## 參考資料

<references />

## 外部連結

  - [Personal Storage: Opportunities and challenges for pocket-sized
    storage devices in the Windows
    world](http://download.microsoft.com/download/5/b/9/5b97017b-e28a-4bae-ba48-174cf47d23cd/STO072_WH06.ppt)
  - [TFAT概覽](http://msdn2.microsoft.com/en-us/library/aa915463.aspx)
  - [Extended FAT File
    System](http://msdn2.microsoft.com/en-us/library/aa914353.aspx)

[de:File Allocation
Table\#exFAT](../Page/de:File_Allocation_Table#exFAT.md "wikilink")

[Category:Windows_CE](https://zh.wikipedia.org/wiki/Category:Windows_CE "wikilink")
[Category:快閃記憶體檔案系統](https://zh.wikipedia.org/wiki/Category:快閃記憶體檔案系統 "wikilink")

1.
2.  [Anandtech - Second Shot: Windows Vista
    SP1](http://www.anandtech.com/systems/showdoc.aspx?i=3233&p=4)
3.  Mike Nash: [Windows Vista Service Pack 2
    Beta](http://windowsteamblog.com/blogs/windowsvista/archive/2008/10/24/windows-vista-service-pack-2-beta.aspx)，The
    Windows Blog
4.
5.
6.  [KB955704](http://support.microsoft.com/?kbid=955704)
7.  [exfat - Free exFAT file system
    implementation](http://code.google.com/p/exfat/)
8.  [Mac OS X 10.6.5 正式支援 exFAT－蘋果中文知識網](http://macuknow.com/node/7302)