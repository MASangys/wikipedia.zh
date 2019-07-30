**ReiserFS**，是一种[文件系统](../Page/文件系统.md "wikilink")格式，作者是[汉斯·瑞塞尔](https://zh.wikipedia.org/wiki/汉斯·瑞塞尔 "wikilink")（Hans Reiser）及其團隊Namesys，1997年7月23日他将ReiserFS文件系统在[互联网](../Page/互联网.md "wikilink")上公布。[Linux内核](../Page/Linux内核.md "wikilink")从2.4.1版本开始支持ReiserFS。

ReiserFS的命名是源自作者Hans Reiser的姓氏，這個日誌型檔案系統發展比ext2/3晚近許多。在技術上使用的是B\*-tree為基礎的檔案系統，其特色為能很高效率地處理大型檔案到眾多小檔案；實務上ReiserFS在處理檔案小於1k小檔案時，甚至效率可以比ext3快約10倍。

ReiserFS原先是[Novell](../Page/Novell.md "wikilink")公司的[SuSE](https://zh.wikipedia.org/wiki/SuSE "wikilink") Linux Enterprise採用的預設檔案系統，直到2006年10月12日其宣稱將在未來的版本改採[ext3為預設](https://zh.wikipedia.org/wiki/ext3 "wikilink")\[1\]。Novell公司否認這與Hans Reiser被控殺妻案有任何關聯\[2\]。

## 功能特點

與本文撰寫的同期文件系統相比，ReiserFS有著許多其它文件系統所沒有的優點。舉例來說：

  - Metadata-only journaling（also block journaling, since Linux 2.6.8）, its most-publicized advantage over what was the stock Linux file system at the time, ext2.

<!-- end list -->

  - 線上調整大小（只能變大，線上、離線代表的是掛載中或非掛載中），可以使用磁碟管理機制如LVM的方式來修改，也可以不用。因為這個緣故，所以Namsys公司有提供在離線時調整大小的工具（可以調整放大空間，也可以縮小空間）。

<!-- end list -->

  - 後綴包裝（Tail Packing）減少內部磁碟空間分布破碎的情況。這個功能與別的檔案系統相比有著相當明顯的進步，另外值得一提的是，在Reiser4的發展裡頭，這個功能有更強大的進展，將同時保留長處並且不會影響到效能。

## 效能表現

和同樣在Linux Kernel 2.4版本下的ext2及ext3相比較，處理4KB以下的小檔案時（tail packing enable），ReiserFS的速度快了10到15倍\[3\]。這對於網路新聞服務、HTTP快取、及電子郵件系統等需要處理大量小檔案的網路服務是相當重要的功能改進。

然而因為ReiserFS還在使用BKL（the Big Kernel Lock）這個global kernel-wide lock，在某些情況下，它無法良好的在某些多核心系統上面執行scale動作，這是因為某些核心的動作一次只能由一個核心進行動作。

## 批評

有些目錄的操作在ReiserFS上面並不同步，（包括像unlink (2)），可能會導致一些重度依賴檔案鎖（file-based lock）機制的應用程式上面資料的毀損，這些應用程式像是MTA的qmail、postfix等等，如果這些應用程序在磁碟同步之前就有可能造成這樣的損害。

目前還沒有磁碟整理的應用程式是可以對ReiserFS這個檔案系統進行動作，雖然已經有工具是在做自動複製檔案內容以期獲得更多連續性的區塊，在Reiser4釋出的檔案系統會有一個repacker的工具可以對磁碟破碎的情況最佳化。

### 磁區檢查

ReiserFS索引樹重建的的過程曾經引發過不少的爭議：如果檔案系統被毀壞的很嚴重，那內部的索引樹就失效了，再執行索引樹重建的操作更可能會讓讓這個毀壞的情況變得更嚴重、像是把索引指向不可預期的內容（8）。不過這個操作並不是正常操作的一部份，也不是一個正常的檔案系統檢查，在這種操作執行之前，就應該會有明確提示出現，由管理員確認後才可能發生。

儘管如此，為避免錯誤引導檔案系統的處理，我們並不建議在一個ReiserFS v3的分割區上面儲存一個原始未經加密或壓縮改變形態的ReiserFS v3的影像檔。在格式化一個現有的ReiserFS v3的分割區也可能會留下資料困擾重建的操作並且讓舊系統上的檔案重現。這個漏洞讓惡意的使用者有機會困擾重建程序。在metadata經過檔案系統檢查之後還會維持舊有的狀態，再破壞這個地方就會讓檔案內容以不可預期的方式結合包含著檔案系統的metadata。

好消息是，它的下一代繼承者，ReiserFS 4克服了這一點問題點。

### 較早的爭議問題

ReiserFS在Linux kernel 2.4.16之前的版本被Namesys視作不穩定的版本，不被當成可以使用產品，特別是在NFS的應用上面。ReiserFS早先的應用（這裡指的是Linux kernel 2.6.2之前）被看作是一堆地雷。像是，檔案很容易就會在系統崩潰的時候意外的接上一堆沒有用的垃圾，不過現在在ReiserFS裡面的日誌型檔案系統的應用已經有一定的穩定。

## 架構設計

ReiserFS在一个单一复合[B+树](../Page/B+树.md "wikilink")中存储文件的亚数据信息（stat item）、目錄文件信息（directory items）、索引节点中的块列表（indirect items），这些信息都有唯一的标识号作为B+树的索引值。分配给B+树节点磁盘块称为“格式化的内部块”。分配给叶子节点的磁盘块称为“格式化的叶子块”（叶子节点中的信息是首尾相连，紧密存储的）。其他的块一概称为“未格式化块”，用来保存文件内容。如果一个节点带有太多目录项或者太大块列表的目錄文件信息，就会被拆分到它右边的邻居节点中。所有的块分配过程会被跟踪记录到位于固定位置的空闲块位图中。

相對的，ext2和其它Berkeley FFS-like的檔案系統則只簡單的使用一個固定的方程式來計算節點的劃分大小，這樣的方式限制了檔案系統可以包含的檔案的數量。大多數這種類型的檔案系統也簡單地以线性表的方式儲存目录项，在檔案搜尋及更新的時間随文件系统的规模增加而线性增加。在ReiserFS中的单一[B+树](../Page/B+树.md "wikilink")設計避免了這些問題，而且更具有彈性。

## 註解參照

## 外部連結

  - [ReiserFS and Reiser4 wiki](https://reiser4.wiki.kernel.org)
  - [Namesys web site](http://web.archive.org/web/20071024001500/http://www.namesys.com/)（archived version from 2007 October）
  - Theodore Ts'o [critiques](https://web.archive.org/web/20050210042704/http://linuxmafia.com/faq/Filesystems/reiserfs.html) the ReiserFS block journaling implementation
  - [convertfs](http://tzukanov.narod.ru/convertfs)，a utility which performs in-place conversion between any two file systems with sparse file support
  - An overview of the ReiserFS [on-disk format](https://web.archive.org/web/20050509002339/http://p-nand-q.com/download/rfstool/reiserfs_docs.html)
  - Florian Buchholz's [The structure of the Reiser file system](https://web.archive.org/web/20041208152409/http://www.cerias.purdue.edu/homes/florian/reiser/reiserfs.php)，a very detailed description of the ReiserFS disk structures.
  - [Gentoo Forum Link](http://forums.gentoo.org/viewtopic-p-3081971.html) - Discussion on ReiserFS fragmentation, including a script for measuring fragmentation and defragmenting files.
  - [Reiser4 Future Vision](https://web.archive.org/web/20071024001500/http://www.namesys.com/whitepaper.html)
  - Windows utilities to access ReiserFS: [RFSGUI](https://web.archive.org/web/20081012131113/http://www.wolfsheep.com/index.php/Programming/RFSGUI) & [RFSTOOL](https://web.archive.org/web/20071114053341/http://p-nand-q.com/e/reiserfs.html)
  - Filesystems（ext3, reiser, xfs, jfs）comparison on Debian Etch [1](http://www.debian-administration.org/articles/388)

[Category:磁盘文件系统](https://zh.wikipedia.org/wiki/Category:磁盘文件系统 "wikilink")

1.
2.
3.