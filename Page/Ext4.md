**第四代擴充套件檔案系統**（，縮寫為**ext4**）是[Linux系統下的](../Page/Linux.md "wikilink")[日誌檔案系統](../Page/日誌檔案系統.md "wikilink")，是[ext3檔案系統的后继版本](../Page/ext3.md "wikilink")。

## 歷史

ext4原始的開發目標是一系列的[向下兼容ext](../Page/向下兼容.md "wikilink")3、移除其64位元限制與提升其效能的延伸套件\[1\]。然而，某些[Linux開發者因穩定性原因而拒絕將這些延伸套件應用在ext](../Page/Linux核心.md "wikilink")3上\[2\]，並要求其作為ext3的[分支](../Page/分支_\(軟體開發\).md "wikilink")，改名為ext4並另行開發，以免影響到目前的ext3使用者。該要求被接受以後，ext3維護者[曹子德](../Page/曹子德.md "wikilink")（Theodore
Ts'o）在2006年6月28日公開了ext4的開發計畫\[3\]。

在Linux核心2.6.19版中，首次導入ext4的一個先期開發版本\[4\]。在2008年10月11日，ext4被當成穩定版本，加入Linux
2.6.29版的原始碼中，ext4的開發階段進入尾聲\[5\]。2008年12月25日，Linux
2.6.29版公開釋出之後，ext4成為Linux官方的建議預設檔案系統。

2010年1月15日，Google宣布將他們公司使用的檔案系統，由ext2，升級為ext4。在同年12月14日，Google也宣布他們將在Android
2.3版中，使用ext4來取代之前的[YAFFS](../Page/YAFFS.md "wikilink")。

## 特色

  - 大型檔案系統
    ext4檔案系統可支援最高1
    [Exbibyte的分割區](../Page/Exbibyte.md "wikilink")\[6\]與最大16
    [Tebibyte的檔案](../Page/Tebibyte.md "wikilink")。

<!-- end list -->

  - Extents
    ext4引進了[Extent檔案儲存方式](../Page/Extent_\(檔案系統\).md "wikilink")，以取代ext2/3使用的[block
    mapping方式](../Page/Block_\(data_storage\).md "wikilink")。Extent指的是一連串的連續實體block，這種方式可以增加大型檔案的效率並減少分裂檔案。ext4支援的單一Extent，在單一block為4KB的系統中最高可達128MB\[7\]。單一inode中可儲存4筆Extent；超過四筆的Extent會以Htree方式被索引。

<!-- end list -->

  - 向下相容
    ext4向下相容於[ext3與](../Page/ext3.md "wikilink")[ext2](../Page/ext2.md "wikilink")，因此可以將ext3和ext2的檔案系統掛載為ext4分割區。由於某些ext4的新功能可以直接運用在ext3和ext2上，直接掛載即可提升少許效能。

<!-- end list -->

  -
    ext3檔案系統可以部分[向上相容於ext](../Page/向上相容.md "wikilink")4（也就是說ext4檔案系統可以被掛載為ext3分割區）。然而若是使用到Extent技術的ext4將無法被掛載為ext3。

<!-- end list -->

  - 預留空間
    ext4允許對一檔案預先保留磁碟空間。目前大多數檔案系統做到這點的方式是直接產生一個填滿0的檔案；ext4和[XFS可以使用Linux核心中的一個新的](../Page/XFS.md "wikilink")-{系統呼叫|zh-hant:系統呼叫;zh-cn:系统调用}-「fallocate()」取得足夠的預留空間。

<!-- end list -->

  - 延遲取得空間
    ext4使用一種稱為[allocate-on-flush的方式](../Page/allocate-on-flush.md "wikilink")，可以在資料將被寫入磁碟（sync）前才開始取得空間；大多數檔案系統會在之前便取得需要的空間。這種方式可以增加效能並減少檔案分散程度。

<!-- end list -->

  - 突破32000子目錄限制
    ext3的一個目錄下最多只能有32000個子目錄。ext4的子目錄最高可達64000，且使用「dir_nlink」功能後可以達到更高（雖然父目錄的link
    count會停止增加）。為了避免效能受到大量目錄的影響，ext4預設開啟[Htree](../Page/Htree.md "wikilink")（一種特殊的[B树](../Page/B树.md "wikilink")）索引功能。該功能已經實作於Linux核心2.6.23版。

<!-- end list -->

  - 日志校验和
    Ext4使用[校验和特性来提高文件系统可靠性](../Page/校验和.md "wikilink")，因为日志是磁盘上被读取最频繁的部分之一。这个特性还有一个好处就是可以安全地避免日志处理时磁盘I/O的等待，而稍微提高一些性能。日志校验和的技术源于[威斯康辛大学的一篇名为](../Page/威斯康辛大学.md "wikilink")*IRON
    File Systems*的研究论文（见第六节transaction checksums校验和处理）\[8\]

<!-- end list -->

  - 在线磁盘整理
    对于在线[磁盘整理工具有许多草案](../Page/磁盘整理.md "wikilink")，但是这些草案都没有被包含在主流的[内核当中](../Page/内核.md "wikilink")。即使Ext4包含有许多避免[磁盘碎片的技术](../Page/磁盘碎片.md "wikilink")，但是磁盘碎片还是难免会在一个长时间使用过的[文件系统中存在](../Page/文件系统.md "wikilink")。Ext4将会有一个具有磁盘整理功能的工具\[9\]。

<!-- end list -->

  - 快速文件系统检查
    Ext4将未使用的区块标记在inode当中，这样可以使诸如e2fsck之类的工具在磁盘检查时将这些区块完全跳过，而节约大量的文件系统检查的时间。这个特性已经在2.6.24版本的[Linux](../Page/Linux.md "wikilink")[内核中实现](../Page/内核.md "wikilink")。

## 参见

  - [Btrfs](../Page/Btrfs.md "wikilink")

## 參考資訊

## 相关介绍

  - [剖析ext4 (IBM Developer
    Works)](http://www.ibm.com/developerworks/cn/linux/l-anatomy-ext4/)

[Category:磁盘文件系统](https://zh.wikipedia.org/wiki/Category:磁盘文件系统 "wikilink")
[Category:Linux檔案系統](https://zh.wikipedia.org/wiki/Category:Linux檔案系統 "wikilink")

1.

2.

3.

4.

5.

6.

7.
8.

9.