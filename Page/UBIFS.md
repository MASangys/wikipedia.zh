**無序區塊映像檔案系統**（Unsorted Block Image File
System，UBIFS）是一种用於[固态硬盘儲存裝置的](../Page/固态硬盘.md "wikilink")[文件系统](../Page/文件系统.md "wikilink")，它與[LogFS相互競爭](../Page/LogFS.md "wikilink")，是[JFFS2的後繼檔案系統之一](../Page/JFFS2.md "wikilink")。其真正開始開發於2007年，並於2008年10月第一次加入穩定版本於[Linux核心](../Page/Linux核心.md "wikilink")2.6.27版。

UBIFS最早在2006年由[IBM與](../Page/IBM.md "wikilink")[Nokia的工程師Thomas](../Page/Nokia.md "wikilink")
Gleixner，Artem
Bityutskiy所設計，專門為了解決[MTD](../Page/MTD.md "wikilink")（Memory
Technology
Device）裝置所遇到的瓶頸。由於Nand闪存容量的暴漲，[YAFFS等皆無法再去控制Nand闪存的空間](../Page/YAFFS.md "wikilink")。UBIFS透過子系統UBI處理與MTD设备之間的動作。與JFFS2一樣，UBIFS建構於MTD设备之上，因而與一般的块设备不相容。

UBIFS在設計與性能上均較[YAFFS2](../Page/YAFFS.md "wikilink")、[JFFS2更適合大容量的NAND](../Page/JFFS2.md "wikilink")
FLASH。\[1\]例如：UBIFS支持write-back, 其寫入的資料會被缓存, 直到有必要寫入時才寫到闪存,
大大地降低分散小區塊數量并提高I/O效率。UBIFS檔案系統目錄儲存在闪存上，UBIFS
mount時不需要扫描整個闪存的資料來重新建立檔案目錄。支援闪存上壓縮檔案資料，而且可選擇性壓縮部份檔案。另外UBIFS使用日誌（journal），可减少闪存索引的更新频率。

UBIFS目前是[Nokia
N900智慧型手機上的預設檔案系統](../Page/Nokia_N900.md "wikilink")。\[2\]

## 参考资料

  - [UBIFS闪存文件系统分析与研究](http://cnki.scstl.org/KCMS/detail/detail.aspx?filename=DNZS201404030&dbcode=CJFQ&dbname=CJFD2014)

## 參見

  - [无序区块映像](../Page/无序区块映像.md "wikilink")

## 外部連結

  - [首頁](https://web.archive.org/web/20081220085343/http://www.inf.u-szeged.hu/sed/ubifs)
  - [開發者維基](https://web.archive.org/web/20090207071121/http://osl.sed.hu/wiki/ubifs/index.php/Main_Page)
  - [用於UBIFS的MTD子系統文章](http://www.linux-mtd.infradead.org/doc/ubifs.html)
  - [2008年4月之後的LWN文章](http://lwn.net/Articles/276025/)

[Category:快閃記憶體檔案系統](https://zh.wikipedia.org/wiki/Category:快閃記憶體檔案系統 "wikilink")

1.  <http://www.linux-mtd.infradead.org/doc/ubifs.html#L_scalability>
    Scalability of UBIFS vs. JFFS2
2.