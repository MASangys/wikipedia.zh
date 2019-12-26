**Coda**是**Co**nstant **D**ata **A**vailability的縮寫，是一套由[卡內基美隆大學於](https://zh.wikipedia.org/wiki/卡內基美隆大學 "wikilink")1987年開始發展，由[Mahadev Satyanarayanan主導研究的](https://zh.wikipedia.org/wiki/Mahadev_Satyanarayanan "wikilink")[分散式檔案系統](../Page/分散式檔案系統.md "wikilink")。本系統的前身由[安德魯檔案系統](https://zh.wikipedia.org/wiki/安德魯檔案系統 "wikilink")（AFS-2）的舊版本分支出來，兩者提供很多相似的特性。[InterMezzo檔案系統亦受到Coda的影響](https://zh.wikipedia.org/wiki/InterMezzo "wikilink")。本系統目前仍持續發展中，但從其官方網站的問題紀錄顯示，自2011年2月已再沒有開發紀錄\[1\]。雖然有說系統現時已轉往商業應用，但根據Linux內核的開發紀錄來看，相關的開發紀錄其實並不多\[2\]。

## 特性

Coda具有以下的特性：

1.  可在離線模式工作
2.  免費，可自由取得
3.  利用Client端的[快取](https://zh.wikipedia.org/wiki/快取 "wikilink")，達到高效能
4.  複製[伺服器端資料](https://zh.wikipedia.org/wiki/伺服器 "wikilink")
5.  安全的授權方式與[加密](../Page/加密.md "wikilink")過的傳輸協定
6.  [伺服器斷線時](https://zh.wikipedia.org/wiki/伺服器 "wikilink")，仍能維持大部分的操作
7.  依照網路頻寬自動調整操作方式
8.  擴展性高
9.  即使在部份網路失效時，仍能維持良好的分享機制。

Coda和傳統的[NFS不同之處](https://zh.wikipedia.org/wiki/NFS "wikilink")，在於Coda將檔案分散在很多[伺服器上](https://zh.wikipedia.org/wiki/伺服器 "wikilink")，並維持適當的[冗餘備份](https://zh.wikipedia.org/wiki/冗餘備份 "wikilink")。也因為如此，可以動態的增加容量。和Coda相近的是[叢集檔案系統](https://zh.wikipedia.org/wiki/叢集檔案系統 "wikilink")。

## 系統平台

Coda過去一直都在Linux系統上開發，目前Coda已經被列入Linux 2.6的核心中\[3\]。亦有一把Coda移植到[FreeBSD](../Page/FreeBSD.md "wikilink")平台。一直以來都有嘗試把Coda移植到[Microsoft Windows的平台上](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")，從過往的[Windows 95](../Page/Windows_95.md "wikilink")/[98世代](../Page/Windows_98.md "wikilink")、[NT](../Page/Windows_NT.md "wikilink")\[4\]到後來的[XP](../Page/Windows_XP.md "wikilink")\[5\]都有，主要都是透過[DJGCC DOS C Compiler及](https://zh.wikipedia.org/wiki/DJGCC_DOS_C_Compiler "wikilink")[Cygwin](../Page/Cygwin.md "wikilink")等[開源計劃來構建](https://zh.wikipedia.org/wiki/開源計劃 "wikilink")\[6\]。

## 參考

[Category:分散式檔案系統](https://zh.wikipedia.org/wiki/Category:分散式檔案系統 "wikilink") [Category:Linux檔案系統](https://zh.wikipedia.org/wiki/Category:Linux檔案系統 "wikilink") [Category:磁盘文件系统](https://zh.wikipedia.org/wiki/Category:磁盘文件系统 "wikilink") [Category:网络文件系统](https://zh.wikipedia.org/wiki/Category:网络文件系统 "wikilink")

1.
2.
3.
4.
5.
6.