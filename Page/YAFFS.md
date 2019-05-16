**YAFFS**（全称：Yet Another Flash File System）是由Aleph One公司所發展出來的NAND Flash
嵌入式檔案系统。

在YAFFS中，最小儲存單位為一個Page，檔案內的數據是儲存在固定512 bytes的Page中，每一個Page亦會有一個對應的16
bytes的Spare([OOB](https://zh.wikipedia.org/wiki/OOB "wikilink"),Out-Of-Band)。YAFFS採用Tree
Node Structure，由多個Tree Node（Tnode）所組成，Tnode又分成Internal
Tnode與Lowest-Level Tnode，其中Internal Tnode由8個Pointers所組成，Lowest-Level
Tnode由16個Entries所組成，其時間複雜度（Time Complexity）相當於O(log
N)，故位址轉換時間較迅速。一旦Flash
Memory掛載（mount）之時，YAFFS會為每個檔案在RAM中建立一個Tree,
並隨時提供Chunk（即Page, 由yaffs_Object所配置），可是
YAFFS並未完全實作[耗損平均技術](../Page/耗損平均技術.md "wikilink")（wear-leveling）演算法，因此還是會造成部份的Block過度存取。

目前YAFFS在將Data寫入Flash Memory時會執行Garbage Collection，YAFFS Garbage
Collection分成兩種Mode：Aggressive Mode及Passive Mode, 而且找尋Dirtiest
Block（最多Invalid Chunk）及尋找Empty Block都是透過Linear
Search的方式（[JFFS2是Link](https://zh.wikipedia.org/wiki/JFFS2 "wikilink")
List的方式）。YAFFS2不再使用Partial Page Programming（YAFFS仍使用）。

## YAFFS2

YAFFS2 是Aleph1的工程師Charles Manning 开发的NAND Flash 文件系统。YAFFS1和YAFFS2
主要差異還是在於page 讀寫 size的大小，YAFFS2可支援到2K per page, 遠高於YAFFS的512
bytes, 因此對大容量NAND Flash更具优势。其他與YAFFS1不同的是, YAFFS2不再寫spare area,
sequenceNumber 用29 bits 表示。Yaffs2還擁有YAFFS1所缺乏的SuperBlock,
因此YAFFS1嚴重依賴檔案系統的read_super。

目前YAFFS 和YAFFS2 皆遵守GNU GPL開放原始码。Android 採用yaffs2作為MTD NAND
flash檔案系統，位於fs/yaffs2/目錄下。

## 相關條目

  - [JFFS2](https://zh.wikipedia.org/wiki/JFFS2 "wikilink")
  - [UBIFS](../Page/UBIFS.md "wikilink")
  - [LogFS](../Page/LogFS.md "wikilink")

## 參考資料

## 外部連結

  - [官方網站](https://web.archive.org/web/20071006090305/http://www.yaffs.net/)
  - [Introducing YAFFS, the first NAND-specific flash file
    system](https://archive.is/20120912081826/www.linuxdevices.com/articles/AT9680239525.html)
  - [Unyaffs](http://code.google.com/p/unyaffs/): A simple program to
    unpack YAFFS2 images.

[Category:快閃記憶體檔案系統](https://zh.wikipedia.org/wiki/Category:快閃記憶體檔案系統 "wikilink")
[Category:嵌入式Linux](https://zh.wikipedia.org/wiki/Category:嵌入式Linux "wikilink")