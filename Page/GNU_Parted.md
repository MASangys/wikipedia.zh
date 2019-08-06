**GNU Parted**（由「PARTition」與「EDitor」兩字結合）是一個[自由](https://zh.wikipedia.org/wiki/自由軟體 "wikilink")，可以用於建立、刪除、移動分割，調整分割大小，檢查、複製[分割等操作](https://zh.wikipedia.org/wiki/硬碟分割 "wikilink")。可以用於調整分割以安裝新[作業系統](https://zh.wikipedia.org/wiki/作業系統 "wikilink")、備份特定分割到另一塊硬碟等。是由Andrew ClausenIt與Lennert Buytenhek所寫成。

它包含了一個[函式庫](../Page/函式庫.md "wikilink")，**libparted**，以及一個[命令列介面的](https://zh.wikipedia.org/wiki/命令列介面 "wikilink")[前端](https://zh.wikipedia.org/wiki/前端和後端 "wikilink")，**parted**。

截至2013年，GNU Parted只能在[GNU/Linux及](https://zh.wikipedia.org/wiki/GNU/Linux "wikilink")[GNU/Hurd下執行](https://zh.wikipedia.org/wiki/GNU/Hurd "wikilink")\[1\]。

## 其他前端

[GParted_0.3.5_--_2008,_06.png](https://zh.wikipedia.org/wiki/File:GParted_0.3.5_--_2008,_06.png "fig:GParted_0.3.5_--_2008,_06.png")使用GNU Parted作為後端\]\] **nparted**是一個基於的GNU Parted前端\[2\]。

**fatresize**提供了使用GNU Parted函式庫，可對[FAT16](https://zh.wikipedia.org/wiki/FAT16 "wikilink")／[FAT32進行非破壞性的調整分割大小的](https://zh.wikipedia.org/wiki/FAT32 "wikilink")[命令列介面](https://zh.wikipedia.org/wiki/命令列介面 "wikilink")\[3\]。

### 圖形前端

[GParted](../Page/GParted.md "wikilink")以及[KDE Partition Manager皆為使用GNU](../Page/KDE_Partition_Manager.md "wikilink") Parted函式庫的圖形前端 。它們分別為[GNOME](../Page/GNOME.md "wikilink")及[KDE](../Page/KDE.md "wikilink")兩大[Unix-like](https://zh.wikipedia.org/wiki/Unix-like "wikilink")[桌面環境作了微調](https://zh.wikipedia.org/wiki/桌面環境 "wikilink")。它們通常會包含在許多有[Live CD的](../Page/Live_CD.md "wikilink")[發行版裡作為工具以方便使用者進行硬碟分割](https://zh.wikipedia.org/wiki/Linux發行版 "wikilink")。[QtParted](../Page/QtParted.md "wikilink")是另外一個使用[Qt](../Page/Qt.md "wikilink")寫成的圖形前端，但此專案已經不再被維護。

**Pyparted**\[4\] (也被稱作python-parted)\[5\]是一個以[Python](../Page/Python.md "wikilink")寫成的圖形前端。以此為預設分割工具的[Linux發行版包含](https://zh.wikipedia.org/wiki/Linux發行版 "wikilink")[Slackware](../Page/Slackware.md "wikilink")，[Knoppix](../Page/Knoppix.md "wikilink")，，，以及[Parted Magic](../Page/Parted_Magic.md "wikilink")。

默认带有此程序的[Linux发行版](../Page/Linux发行版.md "wikilink")包括[Slackware](../Page/Slackware.md "wikilink")、[Knoppix](../Page/Knoppix.md "wikilink")、、和[Parted Magic](http://www.partedmagic.com/)。

## 限制

Parted先前支援在分割內對檔案系統進行各種操作（建立、移動、調整大小、複製）。在3.0版中這些功能被移除 \[6\]。

## 參見

  - [硬碟分割軟體列表](../Page/硬碟分割軟體列表.md "wikilink")

  -
  -
  -
  - [GParted](../Page/GParted.md "wikilink")

  - [FIPS](https://zh.wikipedia.org/wiki/FIPS "wikilink")

  - [主開機紀錄](https://zh.wikipedia.org/wiki/主開機紀錄 "wikilink")

## 參考資料

## 外部連結

  -
  -
[Category:GNU計劃軟體](https://zh.wikipedia.org/wiki/Category:GNU計劃軟體 "wikilink") [Category:自由分区软件](https://zh.wikipedia.org/wiki/Category:自由分区软件 "wikilink")

1.  [GNU Parted supported platforms](http://www.gnu.org/software/parted/manual/parted.html#Supported-Platforms)
2.  [Overview of nparted source package](http://packages.qa.debian.org/n/nparted.html)
3.  [SourceForge.net: fatresize](http://sourceforge.net/projects/fatresize/)
4.  [Fedora People](http://dcantrel.fedorapeople.org/pyparted/)
5.  [Ubuntu - Details of package python-parted in dapper](http://packages.ubuntu.com/dapper/python-parted)
6.  [parted 3.0 release notes](http://savannah.gnu.org/forum/forum.php?forum_id=6837)