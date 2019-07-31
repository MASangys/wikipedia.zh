**Squashfs（.sfs）**是一套供[Linux核心使用的](https://zh.wikipedia.org/wiki/Linux核心 "wikilink")[GPL](https://zh.wikipedia.org/wiki/GPL "wikilink")[開源](https://zh.wikipedia.org/wiki/開源軟件 "wikilink")[只讀](https://zh.wikipedia.org/wiki/只讀 "wikilink")[壓縮](https://zh.wikipedia.org/wiki/數據壓縮 "wikilink")[檔案系統](https://zh.wikipedia.org/wiki/檔案系統 "wikilink")。Squashfs能夠為檔案系統內的[檔案](../Page/檔案.md "wikilink")、[inode及](https://zh.wikipedia.org/wiki/inode "wikilink")[目錄結構進行壓縮](https://zh.wikipedia.org/wiki/目錄結構 "wikilink")，並支援最大1024[千位元組的區段](https://zh.wikipedia.org/wiki/千位元組 "wikilink")，以提供更大的壓縮比。

Squashfs的設計是專門為一般的只讀檔案系統的使用而設計，它可應用於數據備份，或是系统资源紧张的電腦上使用。最初版本的Squashfs採用 [gzip](https://zh.wikipedia.org/wiki/gzip "wikilink") 的數據壓縮。版本 2.6.34 之后的[Linux内核](../Page/Linux内核.md "wikilink")增加了对 [LZMA](../Page/LZMA.md "wikilink")\[1\] 和 [LZO](https://zh.wikipedia.org/wiki/LZO "wikilink") \[2\]压缩算法的支持，版本 2.6.38 的内核增加了对[LZMA](../Page/LZMA.md "wikilink")2的支持，该算法同时也是xz使用的压缩算法。\[3\]

版本 2.6.35 之后的内核包含的Squashfs增加了[扩展文件属性](../Page/扩展文件属性.md "wikilink")支持。\[4\]

## 用途

Squashfs常被用于各[Linux发行版](../Page/Linux发行版.md "wikilink")的[LiveCD中](https://zh.wikipedia.org/wiki/LiveCD "wikilink")，也用于[OpenWrt](../Page/OpenWrt.md "wikilink") 和[DD-WRT](../Page/DD-WRT.md "wikilink") 的路由器固件。[Chromecast](../Page/Chromecast.md "wikilink")也是该文件系统的用户。

## 外部連結

  - [SourceForge.net: Squashfs](http://squashfs.sourceforge.net/)
  - [SquashFS的HOW TO](http://www.tldp.org/HOWTO/SquashFS-HOWTO/whatis.html)
  - [SUSE 9.2：安裝squashfs](http://www.novell.com/coolsolutions/feature/14876.html)
  - [Debian Live](https://web.archive.org/web/20180411022327/http://debian-live.alioth.debian.org/)

[Category:壓縮檔案系統](https://zh.wikipedia.org/wiki/Category:壓縮檔案系統 "wikilink") [Category:Linux檔案系統](https://zh.wikipedia.org/wiki/Category:Linux檔案系統 "wikilink")

1.
2.
3.
4.