**7-Zip**是一個[开放源码的](https://zh.wikipedia.org/wiki/开放源码 "wikilink")[数据压缩](../Page/数据压缩.md "wikilink")程式，主要用在[Microsoft Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")[作業系統](https://zh.wikipedia.org/wiki/作業系統 "wikilink")，[Unix-like的作業系統如](https://zh.wikipedia.org/wiki/Unix-like "wikilink")[Linux](../Page/Linux.md "wikilink")與[FreeBSD](../Page/FreeBSD.md "wikilink")下面有7-zip的移植版本[p7zip可以使用](https://zh.wikipedia.org/wiki/#p7zip "wikilink")。它提供[命令行接口的程序或](https://zh.wikipedia.org/wiki/命令行 "wikilink")[图形用户界面](../Page/图形用户界面.md "wikilink")的程序，而且可以與[檔案總管](../Page/檔案總管.md "wikilink")結合。7-Zip是[自由軟體](https://zh.wikipedia.org/wiki/自由軟體 "wikilink")，由[伊戈尔·帕夫洛夫於](https://zh.wikipedia.org/wiki/伊戈尔·帕夫洛夫 "wikilink")1999年\[1\]開始發展，並把主体在[GNU LGPL下發佈](https://zh.wikipedia.org/wiki/LGPL "wikilink")；加密部份，使用[高级加密标准](../Page/高级加密标准.md "wikilink")（AES）的程式碼，使用[BSD许可证](../Page/BSD许可证.md "wikilink")發佈；解压[RAR](../Page/RAR.md "wikilink")部分，使用RAR特定的许可协议。

7-Zip目前在市場上主要的競爭對手是[WinZip](../Page/WinZip.md "wikilink")以及[WinRAR](../Page/WinRAR.md "wikilink")，這兩者都是[專有軟體](https://zh.wikipedia.org/wiki/專有軟體 "wikilink")。7-Zip也是目前最普及的[開放原始碼壓縮程式](https://zh.wikipedia.org/wiki/開放原始碼 "wikilink")。

7-Zip在2007年獲得[SourceForge.net的社区票选为](https://zh.wikipedia.org/wiki/SourceForge.net "wikilink")“最佳技术设计”及“最佳项目”两个奖项\[2\]

## 7z压缩格式

7-Zip预设的格式是其自行开发的[7z](../Page/7z.md "wikilink")格式，副檔名為`.7z`。7z格式包含多種演算法，最常使用的就是[Bzip2](../Page/Bzip2.md "wikilink")以及作者伊戈尔·帕夫洛夫開發的[LZMA](../Page/LZMA.md "wikilink")。[LZMA](../Page/LZMA.md "wikilink")演算法比起其他常見的傳統壓縮演算法，如Zip、RAR來說相對較新，壓縮率也比較高。7z格式支持[Unicode](https://zh.wikipedia.org/wiki/Unicode "wikilink")，且将其默认用于儲存檔案名稱，可以避免不同系统、语言环境间压缩解压乱码的问题。目前流行的壓縮程式大多支持此功能，如[WinRAR](../Page/WinRAR.md "wikilink")、**7-Zip**、[Peazip](../Page/Peazip.md "wikilink")。\[3\]

## 其他支持的格式及運算方式

7-Zip支援眾多的壓縮/未壓縮的檔案格式，包含[ZIP](../Page/ZIP格式.md "wikilink")、[CAB](../Page/CAB.md "wikilink")、[RAR](../Page/RAR.md "wikilink")、[ARJ](https://zh.wikipedia.org/wiki/ARJ "wikilink")、[Z](../Page/Z.md "wikilink")、[gzip](https://zh.wikipedia.org/wiki/gzip "wikilink")、[bzip2](https://zh.wikipedia.org/wiki/bzip2 "wikilink")、[LLHA](https://zh.wikipedia.org/wiki/LLHA "wikilink")、[tar](https://zh.wikipedia.org/wiki/tar_\(计算机科学\) "wikilink")、[cpio](https://zh.wikipedia.org/wiki/cpio "wikilink")、[RPM](https://zh.wikipedia.org/wiki/RPM包管理员 "wikilink")。從4.42版開始支援CD/DVD映像檔格式[ISO](../Page/ISO映像.md "wikilink")，另外因為[版權問題不再支援](https://zh.wikipedia.org/wiki/版權 "wikilink")。從7-Zip 9.14測試版開始，7-Zip可以開啟和解壓縮。

## 特性

  - 7-zip文件本身功能众多：
      - 256位[AES加密](../Page/高级加密标准.md "wikilink")
      - [多线程](../Page/多线程.md "wikilink")壓縮與解壓縮
      - [LZMA](../Page/LZMA.md "wikilink")（2）压缩强度远高于[ZIP](../Page/ZIP格式.md "wikilink") [DEFLATE](../Page/DEFLATE.md "wikilink")，速度和压缩强度稍高于[RAR](../Page/RAR.md "wikilink")v3。
      - 支持動態檔案大小（分卷）压缩，應對備份至移動媒體如[CD](../Page/CD.md "wikilink")與[DVD十分有效](https://zh.wikipedia.org/wiki/DVD "wikilink")
  - 支持FAR Manager插件
  - 支持79種語言（含英文、中文（簡體、-{zh-hans:繁体; zh-hant:繁體; zh-tw:正體;}-）、日文、韓文）
  - 相對於需付費的[WinRAR](../Page/WinRAR.md "wikilink")、[WinZip](../Page/WinZip.md "wikilink")，提供更多文件类型解压支持，如[exe段读取](../Page/可移植可执行.md "wikilink")。
  - 7-Zip有能力建立[自解壓縮檔](https://zh.wikipedia.org/wiki/自解壓縮檔 "wikilink")（SFX）
      - WinRAR和基于**7-Zip** LZMA SDK的[HaoZip都提供向导式自解压前端](https://zh.wikipedia.org/wiki/HaoZip "wikilink")，而7-zip不支持。
  - 7-Zip有能力解壓縮錯誤檔名的壓縮檔，必要時，可以重新命名檔案
  - 7-Zip支持 [Descript.ion](../Page/Descript.ion.md "wikilink")风格的文件注释
  - 注意：设置所有用户的文件类型关联时，需要管理员权限（右键管理员权限打开）。

## 版本號的變化

從4.65版本之後，7-Zip採用了與[Ubuntu](../Page/Ubuntu.md "wikilink")等一些項目的相同做法。改為使用年份來增加版本號，第一個使用新版本號發行的版本為9.04 Beta。

2010年11月18日後，7-Zip版本號為9.20。

自2015年起，7-Zip再度使用年份作為主版本號。

## p7zip

**p7zip**是移植到[POSIX](https://zh.wikipedia.org/wiki/POSIX "wikilink")/[Unix-like系统的](https://zh.wikipedia.org/wiki/Unix-like "wikilink")**7-Zip**软件，可以压缩解压7z格式的文件。常用命令包括7z和7za，通过参数调整压缩解压设置。其支持的系统包括但不限于Linux内核的[Debian](../Page/Debian.md "wikilink")、[Fedora](../Page/Fedora.md "wikilink")、[Gentoo Linux](../Page/Gentoo_Linux.md "wikilink")、AltLinux.org，非Linux内核的[FreeBSD](../Page/FreeBSD.md "wikilink")、[Mac OS X](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")、[iOS](https://zh.wikipedia.org/wiki/iOS "wikilink")（越狱后可安装）、[BeOS](../Page/BeOS.md "wikilink")、[FreeDOS](../Page/FreeDOS.md "wikilink")、[AmigaOS](../Page/AmigaOS.md "wikilink")等。

## 參見

  - [压缩软件列表](../Page/压缩软件列表.md "wikilink")
  - [压缩软件比较](https://zh.wikipedia.org/wiki/压缩软件比较 "wikilink")

## 參考資料

## 外部連結

  - [7-Zip首頁](https://7-zip.org/)
      - [简体中文](https://sparanoid.com/lab/7z/)
      - [正體中文](https://www.developershome.com/7-zip/)
  - [Project: 7-Zip](https://zh.wikipedia.org/wiki/:sourceforge:projects/sevenzip/ "wikilink") - 7-Zip在SourceForge的介紹頁。
  - [p7zip](http://p7zip.sourceforge.net/) - 在[Unix-like作業系統上使用的](https://zh.wikipedia.org/wiki/Unix-like "wikilink")7-Zip
  - [7-Zip .NET wrapper](https://archive.codeplex.com/?p=sevenzipsharp)

[Category:数据压缩自由软件](https://zh.wikipedia.org/wiki/Category:数据压缩自由软件 "wikilink") [Category:SourceForge專案](https://zh.wikipedia.org/wiki/Category:SourceForge專案 "wikilink") [Category:自由軟體](https://zh.wikipedia.org/wiki/Category:自由軟體 "wikilink") [Category:开源软件](https://zh.wikipedia.org/wiki/Category:开源软件 "wikilink") [Category:自由跨平台軟體](https://zh.wikipedia.org/wiki/Category:自由跨平台軟體 "wikilink") [Category:用C++編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用C++編程的自由軟體 "wikilink") [Category:用C編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用C編程的自由軟體 "wikilink")

1.  <http://www.7-zip.org/history.txt>
2.  [SourceForge.net: 7-Zip](https://zh.wikipedia.org/wiki/:sourceforge:projects/sevenzip "wikilink")
3.  <http://www.7-zip.org/7z.html>