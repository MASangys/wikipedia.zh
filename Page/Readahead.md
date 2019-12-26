（[英語](https://zh.wikipedia.org/wiki/英語 "wikilink")，意思就是提前讀入）是[Linux內核的一個](https://zh.wikipedia.org/wiki/Linux內核 "wikilink")[系統調用功能](https://zh.wikipedia.org/wiki/系統調用 "wikilink")，透過把所需要的系統檔案預先讀入[檔案緩存](https://zh.wikipedia.org/wiki/檔案緩存 "wikilink")（）裡，解決磁碟存取速度的瓶頸問題\[1\]，從而加快啟動時的速度。因為系統所需檔案已從硬碟提早讀進了主記憶，而主記憶的管線頻寬比週邊系統的管線頻寬為高，令系統耗費在存取週邊設備的時間減少了\[2\]\[3\]。

很多的[Linux发行版](../Page/Linux发行版.md "wikilink")都透過readahead程式來加速系統啟動。在這種設定裡，系統的[內核在啟動時在提供相關的啟動參數之下](https://zh.wikipedia.org/wiki/內核 "wikilink")，會記錄啟動時需要啟用的檔案。這個檔案列表會用來製作新的readahead壓縮包，令額外安裝的服務得以較快啟動，即使最初系統安裝時，這些服務並未列於readahead的列表內\[4\]。部份實驗性的系統會透過[記憶分頁](../Page/分頁表.md "wikilink")[預先提取](https://zh.wikipedia.org/wiki/預先提取 "wikilink")[高速缓存置换机制再令系統表現提升](https://zh.wikipedia.org/wiki/高速缓存文件置换机制 "wikilink")\[5\]。

隨着電腦硬件及軟件的進步，readahead的做法亦跟隨轉變。在使用[systemd的Linux发行版](https://zh.wikipedia.org/wiki/systemd "wikilink")（例如：[Fedora](../Page/Fedora.md "wikilink")、[OpenSUSE](../Page/OpenSUSE.md "wikilink")等），readahead的功能與systemd結合了成為一個叫作「systemd-readahead」的執行檔\[6\]\[7\]。而在以[debian為基礎的平台](https://zh.wikipedia.org/wiki/debian "wikilink")（例如：[Ubuntu](../Page/Ubuntu.md "wikilink")），在釋出官方版本時，會內建一組預先較調的檔案列表，再把相關檔案壓縮到一個壓縮包，到系統啟動時從啟動磁碟載入\[8\]。這個以debian為基礎的Linux版本的readahead經歷過下列的轉變：

  - 原來的readahead功能在[Ubuntu 9.10推出時被取代](https://zh.wikipedia.org/wiki/Ubuntu_9.10 "wikilink")；
  - [sreadahead取代了原來的readahead](https://zh.wikipedia.org/wiki/sreadahead "wikilink")，但後來亦被取代；
  - [ureadahead](https://zh.wikipedia.org/wiki/ureadahead "wikilink")：全稱為，源自德語，意思就是「超越readahead」的意思。現時的版本號碼是0.100.0-17\[9\]。

## 參看

  - [systemd](https://zh.wikipedia.org/wiki/systemd "wikilink")
  - [Upstart](../Page/Upstart.md "wikilink")

## 參考資料

## 外部連結

  - [Ubuntu Forum: sreadahead/ureadahead updates](http://ubuntuforums.org/showthread.php?t=1343542)
  - [Ureadahead in ArchLinux Wiki](https://wiki.archlinux.org/index.php/Ureadahead)

[Category:Linux文件系统相关软件](https://zh.wikipedia.org/wiki/Category:Linux文件系统相关软件 "wikilink")

1.
2.
3.
4.
5.
6.
7.
8.
9.