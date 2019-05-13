**Squashfs（.sfs）**是一套供[Linux核心使用的](../Page/Linux核心.md "wikilink")[GPL](../Page/GPL.md "wikilink")[開源](../Page/開源軟件.md "wikilink")[只讀](../Page/只讀.md "wikilink")[壓縮](../Page/數據壓縮.md "wikilink")[檔案系統](../Page/檔案系統.md "wikilink")。Squashfs能夠為檔案系統內的[檔案](../Page/檔案.md "wikilink")、[inode及](../Page/inode.md "wikilink")[目錄結構進行壓縮](../Page/目錄結構.md "wikilink")，並支援最大1024[千位元組的區段](../Page/千位元組.md "wikilink")，以提供更大的壓縮比。

Squashfs的設計是專門為一般的只讀檔案系統的使用而設計，它可應用於數據備份，或是系统资源紧张的電腦上使用。最初版本的Squashfs採用
[gzip](../Page/gzip.md "wikilink") 的數據壓縮。版本 2.6.34
之后的[Linux内核增加了对](../Page/Linux内核.md "wikilink")
[LZMA](../Page/LZMA.md "wikilink")\[1\] 和
[LZO](../Page/LZO.md "wikilink") \[2\]压缩算法的支持，版本 2.6.38
的内核增加了对[LZMA2的支持](../Page/LZMA.md "wikilink")，该算法同时也是xz使用的压缩算法。\[3\]

版本 2.6.35
之后的内核包含的Squashfs增加了[扩展文件属性支持](../Page/扩展文件属性.md "wikilink")。\[4\]

## 用途

Squashfs常被用于各[Linux发行版的](../Page/Linux发行版.md "wikilink")[LiveCD中](../Page/LiveCD.md "wikilink")，也用于[OpenWrt](../Page/OpenWrt.md "wikilink")
和[DD-WRT](../Page/DD-WRT.md "wikilink")
的路由器固件。[Chromecast也是该文件系统的用户](../Page/Chromecast.md "wikilink")。

## 外部連結

  - [SourceForge.net: Squashfs](http://squashfs.sourceforge.net/)
  - [SquashFS的HOW
    TO](http://www.tldp.org/HOWTO/SquashFS-HOWTO/whatis.html)
  - [SUSE 9.2：安裝squashfs](http://www.novell.com/coolsolutions/feature/14876.html)
  - [Debian
    Live](https://web.archive.org/web/20180411022327/http://debian-live.alioth.debian.org/)

[Category:壓縮檔案系統](https://zh.wikipedia.org/wiki/Category:壓縮檔案系統 "wikilink")
[Category:Linux檔案系統](https://zh.wikipedia.org/wiki/Category:Linux檔案系統 "wikilink")

1.
2.
3.
4.