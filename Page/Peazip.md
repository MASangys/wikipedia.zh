{{ infobox software | logo =
[Peazip_ico.png](https://zh.wikipedia.org/wiki/File:Peazip_ico.png "fig:Peazip_ico.png")
| screenshot =
[Peazip-screenshot.png](https://zh.wikipedia.org/wiki/File:Peazip-screenshot.png "fig:Peazip-screenshot.png")
| caption = PeaZip运行于[Windows 8](../Page/Windows_8.md "wikilink") |
author = | developer = Giorgio Tani | released =  | frequently updated =
yes | programming language = [Free
Pascal](../Page/Free_Pascal.md "wikilink") | operating system =
[Microsoft Windows](../Page/Microsoft_Windows.md "wikilink")
[Linux](../Page/Linux.md "wikilink")
[BSD](../Page/BSD.md "wikilink")
[Mac OS](../Page/Mac_OS.md "wikilink")（積極開發中） | platform =
[跨平台](../Page/跨平台.md "wikilink") | size = | language = 23种语言 |
status = 进行中 | genre =
[壓縮程式](../Page/壓縮程式.md "wikilink")、[檔案管理器](../Page/檔案管理器.md "wikilink")
| license = [GNU宽通用公共许可证](../Page/GNU宽通用公共许可证.md "wikilink") | website =
 }} **PeaZip**是可以在[Microsoft
Windows或](../Page/Microsoft_Windows.md "wikilink")[Linux作業系統中執行的檔案管理器及](../Page/Linux.md "wikilink")[壓縮程式](../Page/壓縮.md "wikilink")。\[1\]它除了支援自己原生的[PEA壓縮格式](../Page/PEA壓縮格式.md "wikilink")（主要功能為壓縮、分檔、彈性地認證加密、整合式檢查架構）外，還有支援其他的主流壓縮格式。不過有特別著重在處理開放授權的壓縮格式上。\[2\]\[3\]這套壓縮軟體主要使用[Lazarus開發工具以](../Page/Lazarus.md "wikilink")[Free
Pascal語言進行撰寫](../Page/Free_Pascal.md "wikilink")。是以[GNU宽通用公共许可证發布的](../Page/GNU宽通用公共许可证.md "wikilink")[自由軟體](../Page/自由軟體.md "wikilink")。

## 功能

這套軟體主要的功能是提供一套具備搜尋及瀏覽歷史紀錄的壓縮檔瀏覽介面，來直覺式地對壓縮檔內容進行瀏覽，並可以使用詳細的篩選規則。此外也能使用扁平式的瀏覽模式作為另一種瀏覽壓縮檔的方式。

PeaZip提供使用者透過圖形化使用者介面的前端程式來自動產生命令提示列的壓縮或解壓縮動作。它同時也提供了製作、編輯以及復原壓縮設定檔來加速壓縮或備份的設定。

其他比較值得注意的功能還包含了檔案的切割與合併、安全刪檔、位元式檔案比對、檔案完整性檢查、系統效能監控、隨機密碼／密鑰產生器、及整合進[檔案總管](../Page/檔案總管.md "wikilink")[右鍵選單](../Page/右鍵選單.md "wikilink")。除此之外，程式的使用者介面（包含圖片及顏色配置）都可以自行調整。\[4\]\[5\]\[6\]

PeaZip除了提供Windows及Linux（DEB,
RPM及TGZ格式）的安裝檔之外，亦有對此兩種平台提供無需安裝的可攜式版本。在最近也提供了PortableApps的格式（.paf.exe）.\[7\]

如同[7z](../Page/7z.md "wikilink")，[Tar](../Page/Tar.md "wikilink")，[ZIP等這些知名且泛用的壓縮格式一般](../Page/ZIP.md "wikilink")，PeaZip也支援[PAQ](../Page/PAQ.md "wikilink")、LPAQ及ZPAQ格式：儘管這並不建議使用於一般狀況下（因為太耗記憶體且太慢），這些格式因具備對多數資料結構有最佳的壓縮比，在壓縮科技上具有重大突破，所以還是列入支援。\[8\]\[9\]

### 限制

與提供給各種後端公用程式使用的原生控制台進度指示器相較，圖形化使用者介面的進度就較為不可靠許多。

### 第三方技術

PeaZip作為一個圖形化[前端軟體](../Page/前端.md "wikilink")，有支援大量的第三方開放源碼或免費授權公用程式：

  - 可以執行Igor Pavlov的[7z以及Linux下的POSIX](../Page/7-zip.md "wikilink") port
    of 7z
  - Bulat Ziganshin的FreeArc壓縮軟體（不要跟SEA的ARC混淆）
  - [PAQ](../Page/PAQ.md "wikilink")8、LPAQ及ZPAQ的執行檔，由Matt
    Mahoney及眾多開發者維護。
  - Ilia Muraviev的[QUAD和BALZ](../Page/QUAD_\(compressor\).md "wikilink")
    compressors
  - GNU strip和[UPX](../Page/UPX.md "wikilink")
  - UNACEV2.DLL 2.6.0.0（royalty-free UNACEV2.DLL license）及UNACE for
    Linux (royalty-free UNACE for Linux license)（maintained by Marcel
    Lemke, ACE Compression Software）

這些公用程式大多都可以在控制台模式下執行或透過圖形轉介來提供更加友善的輸出資訊。

## 有支援的格式

### 完全支援（讀出及寫入）

  - [7z](../Page/7z.md "wikilink")\[10\]
  - 7z-[SFX](../Page/Self-extracting_archive.md "wikilink")
  - ARC/WRC\[11\]
  - [BZip2](../Page/BZip2.md "wikilink")／TBZ
  - [GZip](../Page/GZip.md "wikilink")／TGZ
  - LPAQ1/5/8

<!-- end list -->

  - [PAQ](../Page/PAQ.md "wikilink")8F/JD/L/O\[12\]
  - ZPAQ
  - PEA
  - QUAD/BALZ
  - split（.001）
  - [Tar](../Page/Tar_\(file_format\).md "wikilink")
  - [ZIP](../Page/ZIP_\(file_format\).md "wikilink")

### 支援到瀏覽／測試／解壓縮

  - [ACE](../Page/ACE.md "wikilink")
  - [ARJ](../Page/ARJ.md "wikilink")
  - [CAB](../Page/CAB.md "wikilink")
  - [CHM](../Page/CHM.md "wikilink")
  - [COMPOUND檔](../Page/Compound_Files.md "wikilink")（MSI, DOC, PPT,
    XLS...）
  - [CPIO](../Page/CPIO.md "wikilink")
  - [DEB](../Page/DEB.md "wikilink")
  - [EAR](../Page/EAR.md "wikilink")
  - [ISO](../Page/ISO.md "wikilink") CD/DVD映像檔
  - [JAR](../Page/JAR.md "wikilink")
  - [LZMA](../Page/LZMA.md "wikilink")
  - [LZH](../Page/LHA_\(檔案格式\).md "wikilink")

<!-- end list -->

  - [NSIS安裝程式](../Page/NSIS.md "wikilink")
  - [OpenOffice文件格式](../Page/OpenOffice.md "wikilink")
  - PET/PUP（Puppy Linux安裝程式）
  - PAK/[PK3](../Page/PK3.md "wikilink")／PK4
  - [RAR](../Page/RAR.md "wikilink")
  - [RPM](../Page/RPM.md "wikilink")
  - SMZIP
  - [U3P](../Page/U3.md "wikilink")
  - [WAR](../Page/WAR.md "wikilink")
  - WIM
  - [XPI](../Page/XPI.md "wikilink")
  - Z
  - ZIPX

## 參見

## 參考資料

## 外部連結

  - [PeaZip home page](http://www.peazip.org/)
  - [Pea archiving utility / PEA archive
    type](http://www.peazip.org/pea-archiving-utility.html)—PEA file
    format specifications

## 參考

[Category:文書處理器](https://zh.wikipedia.org/wiki/Category:文書處理器 "wikilink")
[Category:自由軟體](https://zh.wikipedia.org/wiki/Category:自由軟體 "wikilink")

1.
2.
3.
4.
5.
6.
7.
8.
9.
10.
11.
12.