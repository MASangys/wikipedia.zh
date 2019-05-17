{{ infobox software | logo =
[Peazip_ico.png](https://zh.wikipedia.org/wiki/File:Peazip_ico.png "fig:Peazip_ico.png")
| screenshot =
[Peazip-screenshot.png](https://zh.wikipedia.org/wiki/File:Peazip-screenshot.png "fig:Peazip-screenshot.png")
| caption = PeaZip运行于[Windows
8](https://zh.wikipedia.org/wiki/Windows_8 "wikilink") | author = |
developer = Giorgio Tani | released =  | frequently updated = yes |
programming language = [Free Pascal](../Page/Free_Pascal.md "wikilink")
| operating system = [Microsoft
Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")
[Linux](../Page/Linux.md "wikilink")
[BSD](../Page/BSD.md "wikilink")
[Mac OS](https://zh.wikipedia.org/wiki/Mac_OS "wikilink")（積極開發中） |
platform = [跨平台](https://zh.wikipedia.org/wiki/跨平台 "wikilink") | size =
| language = 23种语言 | status = 进行中 | genre =
[壓縮程式](https://zh.wikipedia.org/wiki/壓縮程式 "wikilink")、[檔案管理器](https://zh.wikipedia.org/wiki/檔案管理器 "wikilink")
| license = [GNU宽通用公共许可证](../Page/GNU宽通用公共许可证.md "wikilink") | website =
 }} **PeaZip**是可以在[Microsoft
Windows或](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")[Linux作業系統中執行的檔案管理器及](../Page/Linux.md "wikilink")[壓縮程式](https://zh.wikipedia.org/wiki/壓縮 "wikilink")。\[1\]它除了支援自己原生的[PEA壓縮格式](https://zh.wikipedia.org/wiki/PEA壓縮格式 "wikilink")（主要功能為壓縮、分檔、彈性地認證加密、整合式檢查架構）外，還有支援其他的主流壓縮格式。不過有特別著重在處理開放授權的壓縮格式上。\[2\]\[3\]這套壓縮軟體主要使用[Lazarus開發工具以](../Page/Lazarus.md "wikilink")[Free
Pascal語言進行撰寫](../Page/Free_Pascal.md "wikilink")。是以[GNU宽通用公共许可证發布的](../Page/GNU宽通用公共许可证.md "wikilink")[自由軟體](https://zh.wikipedia.org/wiki/自由軟體 "wikilink")。

## 功能

這套軟體主要的功能是提供一套具備搜尋及瀏覽歷史紀錄的壓縮檔瀏覽介面，來直覺式地對壓縮檔內容進行瀏覽，並可以使用詳細的篩選規則。此外也能使用扁平式的瀏覽模式作為另一種瀏覽壓縮檔的方式。

PeaZip提供使用者透過圖形化使用者介面的前端程式來自動產生命令提示列的壓縮或解壓縮動作。它同時也提供了製作、編輯以及復原壓縮設定檔來加速壓縮或備份的設定。

其他比較值得注意的功能還包含了檔案的切割與合併、安全刪檔、位元式檔案比對、檔案完整性檢查、系統效能監控、隨機密碼／密鑰產生器、及整合進[檔案總管](../Page/檔案總管.md "wikilink")[右鍵選單](https://zh.wikipedia.org/wiki/右鍵選單 "wikilink")。除此之外，程式的使用者介面（包含圖片及顏色配置）都可以自行調整。\[4\]\[5\]\[6\]

PeaZip除了提供Windows及Linux（DEB,
RPM及TGZ格式）的安裝檔之外，亦有對此兩種平台提供無需安裝的可攜式版本。在最近也提供了PortableApps的格式（.paf.exe）.\[7\]

如同[7z](../Page/7z.md "wikilink")，[Tar](../Page/Tar.md "wikilink")，[ZIP等這些知名且泛用的壓縮格式一般](https://zh.wikipedia.org/wiki/ZIP "wikilink")，PeaZip也支援[PAQ](https://zh.wikipedia.org/wiki/PAQ "wikilink")、LPAQ及ZPAQ格式：儘管這並不建議使用於一般狀況下（因為太耗記憶體且太慢），這些格式因具備對多數資料結構有最佳的壓縮比，在壓縮科技上具有重大突破，所以還是列入支援。\[8\]\[9\]

### 限制

與提供給各種後端公用程式使用的原生控制台進度指示器相較，圖形化使用者介面的進度就較為不可靠許多。

### 第三方技術

PeaZip作為一個圖形化[前端軟體](https://zh.wikipedia.org/wiki/前端 "wikilink")，有支援大量的第三方開放源碼或免費授權公用程式：

  - 可以執行Igor
    Pavlov的[7z以及Linux下的POSIX](https://zh.wikipedia.org/wiki/7-zip "wikilink")
    port of 7z
  - Bulat Ziganshin的FreeArc壓縮軟體（不要跟SEA的ARC混淆）
  - [PAQ](https://zh.wikipedia.org/wiki/PAQ "wikilink")8、LPAQ及ZPAQ的執行檔，由Matt
    Mahoney及眾多開發者維護。
  - Ilia
    Muraviev的[QUAD和BALZ](https://zh.wikipedia.org/wiki/QUAD_\(compressor\) "wikilink")
    compressors
  - GNU strip和[UPX](../Page/UPX.md "wikilink")
  - UNACEV2.DLL 2.6.0.0（royalty-free UNACEV2.DLL license）及UNACE for
    Linux (royalty-free UNACE for Linux license)（maintained by Marcel
    Lemke, ACE Compression Software）

這些公用程式大多都可以在控制台模式下執行或透過圖形轉介來提供更加友善的輸出資訊。

## 有支援的格式

### 完全支援（讀出及寫入）

  - [7z](../Page/7z.md "wikilink")\[10\]
  - 7z-[SFX](https://zh.wikipedia.org/wiki/Self-extracting_archive "wikilink")
  - ARC/WRC\[11\]
  - [BZip2](https://zh.wikipedia.org/wiki/BZip2 "wikilink")／TBZ
  - [GZip](https://zh.wikipedia.org/wiki/GZip "wikilink")／TGZ
  - LPAQ1/5/8

<!-- end list -->

  - [PAQ](https://zh.wikipedia.org/wiki/PAQ "wikilink")8F/JD/L/O\[12\]
  - ZPAQ
  - PEA
  - QUAD/BALZ
  - split（.001）
  - [Tar](https://zh.wikipedia.org/wiki/Tar_\(file_format\) "wikilink")
  - [ZIP](https://zh.wikipedia.org/wiki/ZIP_\(file_format\) "wikilink")

### 支援到瀏覽／測試／解壓縮

  - [ACE](../Page/ACE.md "wikilink")
  - [ARJ](https://zh.wikipedia.org/wiki/ARJ "wikilink")
  - [CAB](../Page/CAB.md "wikilink")
  - [CHM](https://zh.wikipedia.org/wiki/CHM "wikilink")
  - [COMPOUND檔](https://zh.wikipedia.org/wiki/Compound_Files "wikilink")（MSI,
    DOC, PPT, XLS...）
  - [CPIO](https://zh.wikipedia.org/wiki/CPIO "wikilink")
  - [DEB](https://zh.wikipedia.org/wiki/DEB "wikilink")
  - [EAR](https://zh.wikipedia.org/wiki/EAR "wikilink")
  - [ISO](https://zh.wikipedia.org/wiki/ISO "wikilink") CD/DVD映像檔
  - [JAR](https://zh.wikipedia.org/wiki/JAR "wikilink")
  - [LZMA](../Page/LZMA.md "wikilink")
  - [LZH](../Page/LHA_\(檔案格式\).md "wikilink")

<!-- end list -->

  - [NSIS安裝程式](https://zh.wikipedia.org/wiki/NSIS "wikilink")
  - [OpenOffice文件格式](https://zh.wikipedia.org/wiki/OpenOffice "wikilink")
  - PET/PUP（Puppy Linux安裝程式）
  - PAK/[PK3](https://zh.wikipedia.org/wiki/PK3 "wikilink")／PK4
  - [RAR](../Page/RAR.md "wikilink")
  - [RPM](https://zh.wikipedia.org/wiki/RPM "wikilink")
  - SMZIP
  - [U3P](https://zh.wikipedia.org/wiki/U3 "wikilink")
  - [WAR](https://zh.wikipedia.org/wiki/WAR "wikilink")
  - WIM
  - [XPI](https://zh.wikipedia.org/wiki/XPI "wikilink")
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