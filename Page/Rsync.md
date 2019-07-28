**rsync**是[Unix下的一款](https://zh.wikipedia.org/wiki/Unix "wikilink")[应用软件](https://zh.wikipedia.org/wiki/应用软件 "wikilink")，它能[同步更新两处计算机的](https://zh.wikipedia.org/wiki/同步 "wikilink")[檔案與](../Page/電腦檔案.md "wikilink")[目錄](https://zh.wikipedia.org/wiki/目錄_\(文件系统\) "wikilink")，並適當利用[差分編碼以減少](https://zh.wikipedia.org/wiki/差分編碼 "wikilink")[数据傳輸量](https://zh.wikipedia.org/wiki/数据 "wikilink")。rsync中的一項同类软件不常见的重要特性是每個目標的[镜像只需傳送一次](../Page/网站镜像.md "wikilink")。rsync可以拷貝／顯示目錄內容，以及拷貝檔案，並可選[壓縮以及](../Page/数据压缩.md "wikilink")[遞歸拷貝](https://zh.wikipedia.org/wiki/遞歸_\(計算機科學\) "wikilink")。

在常駐模式（daemon
mode）下，rsync預設監聽[TCP](../Page/传输控制协议.md "wikilink")[埠](https://zh.wikipedia.org/wiki/TCP/UDP端口列表 "wikilink")873，以原生rsync傳輸協定或者透過遠端[shell如](https://zh.wikipedia.org/wiki/shell "wikilink")[RSH或者](https://zh.wikipedia.org/wiki/RSH "wikilink")[SSH提供檔案](../Page/Secure_Shell.md "wikilink")。SSH模式下，rsync用戶端執行程式必須同時在本地和遠端機器上安裝。

rsync是以[GNU通用公共许可证](../Page/GNU通用公共许可证.md "wikilink")發行的[自由软件](../Page/自由软件.md "wikilink")。

## 演算法

rsync实用程序使用由[澳洲電腦程式師](https://zh.wikipedia.org/wiki/澳洲 "wikilink")[安德魯·垂鳩](https://zh.wikipedia.org/wiki/安德魯·垂鳩 "wikilink")（Andrew
Tridgell）發明的[演算法](../Page/算法.md "wikilink")，在當接受端電腦已經有相同結構（例如檔案）但不同版本時，有效的將結構傳輸過通訊連線。

接受端將檔案[拷貝打散成固定大小為](https://zh.wikipedia.org/wiki/拷貝 "wikilink")\(S\)的不重疊片段，並對每個片段計算兩個[校验和](https://zh.wikipedia.org/wiki/校验和 "wikilink")：[MD4](https://zh.wikipedia.org/wiki/MD4 "wikilink")[散列函數](../Page/散列函數.md "wikilink")與一個較弱的[輪替校验和](https://zh.wikipedia.org/wiki/輪替校验和 "wikilink")（rolling
checksum）。它將這些校验和送給發送者。通訊協議版本30（與rsync版本3.0.0一並發行）現在使用[MD5](../Page/MD5.md "wikilink")散列函數以替代MD4。\[1\]

發送者對位於其版本的檔案中每個大小為\(S\)的片段計算輪替校验和，即使是重疊的片段。這可被有效的計算透過特別知識產權的輪替校验和算法：如果[位元](../Page/位元.md "wikilink")\(n\)到\(n+S-1\)的輪替校验和是\(R\)，從位元\(n+1\)到\(n+S\)的輪替校验和可從\(R\)，位元\(n\)，以及位元\(n+S\)計算出而不需要真正去檢驗中間的位元。因此，如果位元1到25的輪替校验和已被算出，那計算位元2到26的輪替校验和可完全依靠之前的校验和與位元1與位元26算出。

rsync使用的[輪替校验和是根據馬克艾德勒](https://zh.wikipedia.org/wiki/輪替校验和 "wikilink")（Mark
Adler）的[alder-32校验和算法](https://zh.wikipedia.org/wiki/alder-32 "wikilink")。該算法也被用於[zlib](https://zh.wikipedia.org/wiki/zlib "wikilink")，而它本身也基於[弗萊徹校验和](https://zh.wikipedia.org/wiki/弗萊徹校验和 "wikilink")（Fletcher's
checksum）算法。

發送者其後以接收者送來的一組輪替校验和比較它自己的輪替校验和以決定是否任何匹配存在。如果是的話，它便透過計算匹配區塊的MD4校验和與接受端送來的MD4校验和比較來驗證匹配。

發送者稍後傳送給接收者不與接收者方任何區塊匹配的檔案的那些部分，以及如何合併這些區塊到接收者版本的組裝指令。在實際上，這產生了與發送者端檔案一模一樣的拷貝。然而，在原則上是可能接收者的拷貝在這一點上不同：這可能發生在當兩個檔案有不同的區塊但有著相同的MD4散列函數與輪替校验和；這種事情發生的機率在現實上極端罕見。

如果發送者與接收者檔案版本有許多區段相同，該公用程式只需傳送相對小部分的資料以將檔案同步。

在rsync演算法構成rsync應用程式核心並最佳化兩台電腦間TCP/IP的傳輸同時，rsync應用程式也支援其他種顯著增進檔案傳輸或備份的重要功能。他們包括在發送端與接收端個別利用[zlib進行區塊區塊間壓縮解壓縮](https://zh.wikipedia.org/wiki/zlib "wikilink")，以及支援通訊協定如[ssh](https://zh.wikipedia.org/wiki/ssh "wikilink")。該協定讓加密傳輸兼具壓縮與效率，透過rsync演算法產生的差分資料變得可能。除ssh以外，[stunnel亦可被利用於創造加密通道以保全被傳輸的資料](https://zh.wikipedia.org/wiki/stunnel "wikilink")。

## 使用

**`rsync`**的撰寫是用来取代[rcp與](https://zh.wikipedia.org/wiki/rcp "wikilink")[SCP](../Page/安全复制.md "wikilink")\[2\]。rsync最早期程式的其中之一是用來實現透過rsync/ssh與標準Unix帳號，從多重Unix客戶端鏡像或者備份到中央Unix伺服器。與如[Cron](../Page/Cron.md "wikilink")類似的排程應用程式配合，任何人皆可排程介於多台電腦與中央伺服器間自動加密過、基於rsync的鏡像備份。

## 變種

一個叫做**rdiff**的公用程式利用rsync的演算法產生檔案A與檔案B間不同的[差分檔案](https://zh.wikipedia.org/wiki/差分編碼 "wikilink")（與公用程式[diff類似](https://zh.wikipedia.org/wiki/diff "wikilink")，不過不同的差分檔案格式）。差分檔案可稍後被套用到檔案A，轉成檔案B（類似[patch公用程式](https://zh.wikipedia.org/wiki/patch "wikilink")）。

不像diff，產生差分檔案的過程有兩步：首先產生檔案A的簽名檔，然後這個（相對較小）的簽名檔與檔案B被用來產生差分檔。又與diff相異的是，rdiff可適用於[二進位檔案](https://zh.wikipedia.org/wiki/二進位檔案 "wikilink")。

利用rdiff，自由軟體作者們寫了一個叫做rdiff-backup的公用程式，它可以跨過網路維護位於另一台伺服器某個檔案或者目錄的[備份鏡像](https://zh.wikipedia.org/wiki/備份 "wikilink")。rdiff-backup儲存備份以及遞增的rdiff差分檔。這種方式讓回溯到任何備份點成為可能。

[duplicity是rdiff](https://zh.wikipedia.org/wiki/duplicity "wikilink")-backup的一個變種，它利用單一儲存服務（像[Amazon
S3](../Page/Amazon_S3.md "wikilink")）達成不需要與儲存伺服器合作的備份。它透過產生預先產生每個區塊的散列函數，將它們加密，並送到伺服器儲存，然後當進行遞增備份時取回。剩下的資料為滿足保全需求也被加密儲存。

## 歷史

rsync首度發布於1996年6月19日。原始作者為[安德魯·垂鳩](https://zh.wikipedia.org/wiki/安德魯·垂鳩 "wikilink")（Andrew
Tridgell）與保羅·麥可拉斯（Paul Mackerras）。\[3\]

rsync 3.0於2008年3月1日發行。\[4\]

## 參見

  -
  -
  - [TCP/UDP端口列表](https://zh.wikipedia.org/wiki/TCP/UDP端口列表 "wikilink")

<!-- end list -->

  - [CVSup](https://zh.wikipedia.org/wiki/CVSup "wikilink")

  -
  - [PowerFolder](https://zh.wikipedia.org/wiki/PowerFolder "wikilink")

  - [Jigdo](../Page/Jigdo.md "wikilink")

  - [Grsync](https://zh.wikipedia.org/wiki/Grsync "wikilink")

  - [cwRsync](https://zh.wikipedia.org/wiki/cwRsync "wikilink")

## 參考資料

## 外部連結

  - [rsync官方網頁](http://rsync.samba.org)
  - [rsync演算法](http://rsync.samba.org/tech_report/node2.html)
  - [rsync教學](http://everythinglinux.org/rsync/)
  - [一個簡單實際的rsync例子](https://web.archive.org/web/20160308143333/http://www.perihel.at/3/index.html)
  - [易於自行照做的rsync教學](http://www.fredshack.com/docs/rsync.html)
  - [在Windows下使用rsync](https://web.archive.org/web/20081016013449/http://greenmice.info/en/node/34)

[Category:1996年软件](https://zh.wikipedia.org/wiki/Category:1996年软件 "wikilink")
[Category:数据同步](https://zh.wikipedia.org/wiki/Category:数据同步 "wikilink")
[Category:自由备份软件](https://zh.wikipedia.org/wiki/Category:自由备份软件 "wikilink")
[Category:自由網路軟體](https://zh.wikipedia.org/wiki/Category:自由網路軟體 "wikilink")
[Category:网络文件传输协议](https://zh.wikipedia.org/wiki/Category:网络文件传输协议 "wikilink")
[Category:Unix网络相关软件](https://zh.wikipedia.org/wiki/Category:Unix网络相关软件 "wikilink")

1.  <http://rsync.samba.org/ftp/rsync/src/rsync-3.0.0-NEWS>
2.  如在[README](http://rsync.samba.org/ftp/rsync/README)所述
3.  {{ cite newsgroup | newsgroup = comp.os.linux.announce | date =
    1996年6月19日 | first = Andrew | last = Tridgell | url =
    <http://groups.google.com/group/comp.os.linux.announce/msg/3bb93f6484065f20>
    | title = First release of rsync - rcp replacement | id =
    \<cola-liw-835153950-21793-0@liw.clinet.fi\>\#1/1 | accessdate =
    2007-07-19 }}
4.