> 本文内容由[FreeNAS](https://zh.wikipedia.org/wiki/FreeNAS)转换而来。


**FreeNAS**是一套基於[FreeBSD](../Page/FreeBSD.md "wikilink")作業系統核心的[開放原始碼的](https://zh.wikipedia.org/wiki/開源軟件 "wikilink")[網路儲存設備](https://zh.wikipedia.org/wiki/網路儲存設備 "wikilink")（）[伺服器系統](https://zh.wikipedia.org/wiki/伺服器 "wikilink")，支援眾多服務，使用者存取權限管理，提供網頁設定介面。FreeNAS目前版本整個系統總共需2GB以上USB驱动器进行安装，並支援[USB](../Page/USB.md "wikilink")儲存裝置、[LiveCD](https://zh.wikipedia.org/wiki/LiveCD "wikilink")、[CF卡](../Page/CompactFlash.md "wikilink")（轉接成IDE裝置）及硬碟等開機方式。目前有LiveCD、-{zh-hans:镜像; zh-hant:影像}-檔、VMware磁碟映像檔三種發行方式。

原本的FreeNAS定位為**單純的網路檔案伺服器**，但在0.684版本後，由於核心開發者的心血，加上市面上小型的NAS系統功能越來越多的情況下，FreeNAS漸漸的加入了P2P、iTunes、PHP Webserver等等的功能。 从2009年之后原开发者Olivier Cochard-Labbe宣布由于作者不能拿出大量时间进行版本更新，从0.7版本以后FreeNAS将转为维护模式，不会发布新的版本。新版本开发及发布由iXsystem公司负责。新版本FreeNAS工程开始于2010年，在2011年5月2日FreeNAS 8.0成功发布。由于需要与FreeBSD版本号进行匹配，FreeNAS主版本号更新为8，紧跟FreeBSD发行。

## 硬件支持

由于FreeNAS由FreeBSD派生出来，所以FreeNAS支持的硬件平台与FreeBSD完全相同，可以参照FreeBSD的硬件支持列表选择相关硬件。

## 支援功能

### 服務

  - [Cron Jobs](../Page/Cron.md "wikilink")

  - [CIFS/SMB/-{zh-hans:网上邻居; zh-hant:網路上的芳鄰}-](../Page/Samba.md "wikilink")（samba）

  - [FTP](https://zh.wikipedia.org/wiki/FTP "wikilink")

  - [TFTP](https://zh.wikipedia.org/wiki/TFTP "wikilink")

  - [SSH](https://zh.wikipedia.org/wiki/SSH "wikilink")

  - [NFS](https://zh.wikipedia.org/wiki/NFS "wikilink")

  - [蘋果檔案通訊協定](https://zh.wikipedia.org/wiki/蘋果檔案通訊協定 "wikilink")

  - [Rsync](../Page/Rsync.md "wikilink")-數據鏡像備份工具

  -
  - [iSCSI](https://zh.wikipedia.org/wiki/iSCSI "wikilink")

  - [UPnP](../Page/UPnP.md "wikilink")-UPnP影音媒體伺服器

  - \-版本8.0.3取消支援

  - [動態DNS](https://zh.wikipedia.org/wiki/動態DNS "wikilink")

  - [SNMP](https://zh.wikipedia.org/wiki/SNMP "wikilink")

  - [UPS](https://zh.wikipedia.org/wiki/不斷電系統 "wikilink")-UPS支援

  - [網頁伺服器](../Page/網頁伺服器.md "wikilink")

  - [BitTorrent](https://zh.wikipedia.org/wiki/BitTorrent "wikilink")-BT下載

### 磁碟管理

  - 支援[S.M.A.R.T.](../Page/S.M.A.R.T..md "wikilink")錯誤警報功能（可自動發送E-Mail至指定信箱）
  - 軟體[RAID](../Page/RAID.md "wikilink")[磁碟陣列](https://zh.wikipedia.org/wiki/磁碟陣列 "wikilink")（JBOD、0、1、0+1、5、6）
  - 磁碟區加密[AES](https://zh.wikipedia.org/wiki/AES "wikilink")、[Blowfish](../Page/Blowfish.md "wikilink")與[3DES](../Page/3DES.md "wikilink")。
  - 網頁版檔案管理系統（檔案總管）

### 網路功能

  - 支援IPv6
  - 网卡汇聚
  - 多網卡支援
  - 靜態路由
  - 防火牆

### 權限管理

支援傳統Linux使用者權限、[AD認證與](../Page/Active_Directory.md "wikilink")[LDAP認證](https://zh.wikipedia.org/wiki/LDAP "wikilink")。

## 特殊功能

  - CPU溫度、頻率檢視
  - SVG圖表檢視（CPU、網路流量）
  - 關機、重新關機排程

## 獎項

  - VMware - "Ultimate Virtual Appliance Challenge, Consumer"\[1\]
  - sourceforge.net - Project of the Month January 2007\[2\]
  - InfoWorld - Best of open source in storage\[3\]

<!-- end list -->

  - FreeNAS was featured on the 2006年9月5日2x02 episode of [Hak.5](https://zh.wikipedia.org/wiki/Hak.5 "wikilink")。\[4\]
  - FreeNAS was featured on the 2007年3月1日episode 144 of [DL.TV](https://zh.wikipedia.org/wiki/DL.TV "wikilink")。\[5\]
  - FreeNAS was featured on the 2008年7月14日episode 60 of [Systm](https://zh.wikipedia.org/wiki/Systm "wikilink")。
  - [FreeNAS Tour](https://web.archive.org/web/20080430073539/http://www.dailycupoftech.com/freenas-system-and-skill-requirements/?tourId=FreeNASTour&skinId=DCoT) - a series of good tutorials about using FreeNAS
  - [CryptoNAS](http://cryptonas.org/) - NAS especially for encrypted partitions（Debian-based Live-CD, GPL）

## 參見

  - [CryptoNAS](https://zh.wikipedia.org/wiki/CryptoNAS "wikilink")

  - [NanoNAS](https://zh.wikipedia.org/wiki/NanoNAS "wikilink")

  -
  - [Nexenta](https://zh.wikipedia.org/wiki/Nexenta "wikilink") - Open source OS and enterprise class NAS with kernel based ZFS

  - [Openfiler](../Page/Openfiler.md "wikilink")

## 参考资料

<div class="references-small">

  - 林思敬，（2006年），*開源NAS解決方案：FreeNAS*，《[Linuxpilot](https://zh.wikipedia.org/wiki/Linuxpilot "wikilink")》雜誌國際中文版，2006年8月號，pp. 66–69。

</div>

## 外部連結

  - [FreeNAS的首頁](http://www.freenas.org)

[Category:BSD](https://zh.wikipedia.org/wiki/Category:BSD "wikilink") [Category:電腦儲存](https://zh.wikipedia.org/wiki/Category:電腦儲存 "wikilink")

1.
2.
3.
4.
5.