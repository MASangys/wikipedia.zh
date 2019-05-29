**Linux-libre**（）是一种[计算机](https://zh.wikipedia.org/wiki/计算机 "wikilink")[作業系統](https://zh.wikipedia.org/wiki/作業系統 "wikilink")[内核](../Page/内核.md "wikilink")，它是由[Linux核心修改而來的](https://zh.wikipedia.org/wiki/Linux核心 "wikilink")[GNU自由软件](../Page/GNU软件包列表.md "wikilink")
\[1\]。此專案的目的是移除Linux核心內不包含[源代码](../Page/源代码.md "wikilink")、含有[代码混淆以及使用](../Page/代码混淆.md "wikilink")[專有許可證釋出的部份](https://zh.wikipedia.org/wiki/專有軟體 "wikilink")，使其变得完全自由。当中沒有源代码的部份稱為[blob](https://zh.wikipedia.org/wiki/二進位大型物件 "wikilink")，通常是[韌體](../Page/韌體.md "wikilink")，此部份一般是可再散佈的，但不允许使用者閱讀或修改原始碼。而Linux-libre则是完全的[自由軟體](https://zh.wikipedia.org/wiki/自由軟體 "wikilink")。

## 歷史

Linux核心從1996年開始就包含了二進制blob\[2\]。而清除二進制blob的工作則由[gNewSense在](https://zh.wikipedia.org/wiki/gNewSense "wikilink")2006年開始。2007年，BLAG有了更多的進展，Linux-libre就此誕生\[3\]\[4\]。Linux-libre是由(FSFLA)所開發，[自由软件基金会認可](../Page/自由软件基金会.md "wikilink")\[5\]，作為[自由軟體基金會認可的Linux發行版的一部份](https://zh.wikipedia.org/wiki/自由軟體基金會認可的Linux發行版 "wikilink")。它在2012年3月成為了GNU計畫的其中一個軟體包\[6\]，Alexandre
Oliva是此專案的維護者。

## 專有韌體的移除方法

移除過程需要用到稱為*deblob-main*的[指令碼](../Page/脚本语言.md "wikilink")\[7\]。這個指令碼是由[gNewSense所啟發](https://zh.wikipedia.org/wiki/gNewSense "wikilink")。Jeff
Moe做了後續的修改以符合發行版的需求。
而有另一個*deblob-check*腳本是用來檢查被懷疑包含了專有軟體的核心源檔案、[修補程式或是被壓縮的源檔案](https://zh.wikipedia.org/wiki/修補程式 "wikilink")\[8\]。

## 移除專有韌體的影響

除了整個系統都是執行[自由軟體以外](https://zh.wikipedia.org/wiki/自由軟體 "wikilink")，移除使用者無法研究或修改的裝置韌體同時有正反兩面的影響。

移除裝置韌體的好處是可以免除專有韌體無法被直接從原始碼看見的程式問題，或是可以由Linux核心維護者修復的程式錯誤或是安全問題。惡意的韌體可能會破壞整個系統，而且專有韌體無法讓其他開發者進行安全審查。即使是一個看似無害的程式錯誤都可能會破壞整個系統的安全性\[9\]。

而從核心移除專有韌體的缺點則是可能會導致部份硬體功能的缺失，因為其尚未有可替代的自由軟體。這可能會影響部份的[声卡](../Page/声卡.md "wikilink")、[显示卡](../Page/显示卡.md "wikilink")、以及[网卡](../Page/网卡.md "wikilink")，或是其他設備。通常自由韌體是作為可選的替代品提供\[10\]。

## 可用性

去除專有軟體的Linux核心的源代码及[預編譯軟體包在使用Linux](../Page/編譯器.md "wikilink")-Libre腳本的發行版提供。Freed-ora是一個維護基於[Fedora核心的](../Page/Fedora.md "wikilink")[RPM軟體包的子專案](../Page/RPM套件管理員.md "wikilink")\[11\]。也在提供[Debian](../Page/Debian.md "wikilink")\[12\]及其衍生發行版中提供，如[Ubuntu](../Page/Ubuntu.md "wikilink")\[13\]。

## 發行版

[Parabola13.png](https://zh.wikipedia.org/wiki/File:Parabola13.png "fig:Parabola13.png")使用Linux-libre作為預設核心。\]\]
[Trisquel_6.0_LTS_screenshot.png](https://zh.wikipedia.org/wiki/File:Trisquel_6.0_LTS_screenshot.png "fig:Trisquel_6.0_LTS_screenshot.png")自2.1版起提供基於Linux-libre的100%自由核心。\]\]

下列發行版預設使用Linux-libre核心：

  - \[14\]

  - \[15\]

  - \[16\]

  - [gNewSense](https://zh.wikipedia.org/wiki/gNewSense "wikilink")

  -
  - [Parabola
    GNU/Linux-libre](https://zh.wikipedia.org/wiki/Parabola_GNU/Linux-libre "wikilink")

  - [Trisquel](../Page/Trisquel.md "wikilink")

  - 參見[自由軟體基金會認可的Linux發行版](https://zh.wikipedia.org/wiki/自由軟體基金會認可的Linux發行版 "wikilink")

下列發行版預設使用標準的Linux核心，但也提供Linux-libre做為替代核心：

  - [Arch Linux](../Page/Arch_Linux.md "wikilink")\[17\]

  - \[18\]

  - [Debian](../Page/Debian.md "wikilink")

  - [Gentoo Linux](../Page/Gentoo_Linux.md "wikilink")\[19\]\[20\]

## 即時內核版本

發行版的核心是編譯成用來[实时计算的](../Page/实时计算.md "wikilink")，可以讓多媒體剪輯及其他需要低延遲的工作得到更好的性能表現\[21\]。
[Trisquel與](../Page/Trisquel.md "wikilink")[Parabola
GNU/Linux-libre](https://zh.wikipedia.org/wiki/Parabola_GNU/Linux-libre "wikilink")\[22\]也提供了即時內核的版本。

## 參見

  - [Linux](../Page/Linux.md "wikilink")
  - [GNU
    Hurd](../Page/GNU_Hurd.md "wikilink")：由GNU計畫所開發的一個[微核心](https://zh.wikipedia.org/wiki/微核心 "wikilink")

## 參考資料

## 外部链接

  -
  - [Linux
    （去除專有韌體版本）](http://directory.fsf.org/wiki/Linux_%28BLOB_free_version%29)
    在 FSF.org

  - [拉丁美洲自由软件基金会官方的.deb構建器](https://web.archive.org/web/20121015183120/http://www.fscorsica.org/index-en.html)

[分類:GNU計劃軟體](https://zh.wikipedia.org/wiki/分類:GNU計劃軟體 "wikilink")
[分類:Linux內核](https://zh.wikipedia.org/wiki/分類:Linux內核 "wikilink")

1.  [自由軟體基金會](https://zh.wikipedia.org/wiki/自由軟體基金會 "wikilink") (2013),
    [Directory.fsf.org](http://directory.fsf.org/wiki/GNU_Linux-libre)

2.  [Take your freedom back, with
    Linux-2.6.33-libre](http://www.fsfla.org/svnwiki/anuncio/2010-03-Linux-2.6.33-libre.en)
    FSFLA, 2010.

3.  Alexandre Oliva: [Linux-libre and the prisoners’
    dilemma](http://fsfla.org/~lxoliva/fsfla/Linux-libre.en.pdf) FSFLA,
    2009.

4.  jebba: [BLAG :: View topic - Linux
    Libre](http://forums.blagblagblag.org/viewtopic.php?t=4665) BLAG
    forums, 2008.

5.

6.

7.

8.

9.

10.

11.

12.

13.

14.
15. [Dragora overview](http://www.dragora.org/en/overview.html)
    dragora.org

16.

17.

18.

19.

20.

21.
22.