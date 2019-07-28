**Socket
AM3**是[AMD推出的](https://zh.wikipedia.org/wiki/AMD "wikilink")[CPU插座](../Page/CPU插座.md "wikilink")和處理器管腳陣列，於2009年2月9日發表，取代上一代的[Socket
AM2+](../Page/Socket_AM2+.md "wikilink")。而採用AM3的CPU有[Phenom
II](https://zh.wikipedia.org/wiki/Phenom_II "wikilink")、[Athlon
II](https://zh.wikipedia.org/wiki/Athlon_II "wikilink")、[Sempron
100系列以及](https://zh.wikipedia.org/wiki/Sempron "wikilink")[Opteron
1380系列](../Page/Opteron.md "wikilink")。

## 技術概覽

Socket
AM3為插針陣列封裝，[主機板插座有](https://zh.wikipedia.org/wiki/主機板 "wikilink")941個接腳，CPU上則只有938支針腳。AM3處理器的管腳直徑是0.45毫米，針腳最小間距為1.27毫米，31行×31列，呈正方形。\[1\]與Socket
AM2/AM2+相比，最大區別是AM3正式支援DDR3 SDRAM，另外還支援[HyperTransport
3.0匯流排](https://zh.wikipedia.org/wiki/HyperTransport_3.0 "wikilink")，運作於2.6GHz時可獲得5.2GT/s資料的吞吐量。\[2\]

Socket
AM3的主機板，由於僅剩的第三方x86主機板晶片組開發商——NVIDIA，於2008年底退出晶片組業務，使得只有AMD一家的晶片組使用。晶片組的佈局仍然是北橋、南橋的佈局，即800系列晶片組。而僅剩的對手英特爾，除了X58/ICH10R晶片組以外，其餘業已轉為單一晶片組（PCH）。\[3\]

與此前的AMD處理器管腳陣列及插座一樣，「AM3 Processor Functional Data
Sheet」（AMD技術文檔號40778）並沒有公開，但是其對應的處理器技術文檔「Family 10h
AMD Phenom™ Processor Product Data
Sheet」（文檔編號46878）則公開發布\[4\]，但僅限於Phenom系列處理器的大略功能特性，並沒有提及關於Socket
AM3的實質性資料。

### 相容性

[Différences_entre_sockets_AM2(+)_et_AM3.png](https://zh.wikipedia.org/wiki/File:Différences_entre_sockets_AM2\(+\)_et_AM3.png "fig:Différences_entre_sockets_AM2(+)_et_AM3.png")
Socket
AM3的處理器，除了安裝於AM3主機板上，還能[向下相容安裝於Socket](https://zh.wikipedia.org/wiki/向下相容 "wikilink")
AM2+上，但匯流排速率會降至HyperTransport 2.0規格，而且需要主機板BIOS識別支援；在[Socket
AM3+推出以後](../Page/Socket_AM3+.md "wikilink")，也能安裝於AM3+的主機板上。除此以外，支援140W[熱設計功耗的](https://zh.wikipedia.org/wiki/熱設計功耗 "wikilink")[Socket
AM2主機板](../Page/Socket_AM2.md "wikilink")，在獲得[主機板廠商推出的新版](https://zh.wikipedia.org/wiki/主機板 "wikilink")[BIOS](../Page/BIOS.md "wikilink")後，也能安裝Socket
AM3的處理器，但AMD並沒有明確說明AM2的主機板能支援AM3的處理器。\[5\]

AM3
CPU內置的[記憶體控制器有兩組](https://zh.wikipedia.org/wiki/記憶體控制器 "wikilink")，一組能支援[DDR3
SDRAM](../Page/DDR3_SDRAM.md "wikilink")，另一組能支援[DDR2
SDRAM](../Page/DDR2_SDRAM.md "wikilink")，安裝於Socket
AM3插座時將啟用內建的DDR3記憶體控制器，停用DDR2記憶體控制器；而安裝於Socket
AM2+上時，則開啟DDR2部分而停用DDR3部分。\[6\]

Socket AM3的插座不相容Socket AM2/AM2+的處理器，即Socket AM2/AM2+管腳陣列的處理器不能安裝於Socket
AM3主機板上。AMD在物理層面上做了一些細微但關鍵的改動，使得Socket AM2+處理器上的940支管腳與Socket
AM3插座的941個插孔並不完全對應，有管腳沒有對應的插孔。\[7\]強行將Socket AM2+的處理器插入到Socket
AM3上將會損壞處理器的管腳。\[8\][Tom's
Hardware嘗試將一顆Socket](https://zh.wikipedia.org/wiki/Tom's_Hardware "wikilink")
AM2+的Phenom處理器上的兩根與Socket
AM3插座不對應的管腳移除，儘管移除管腳後的處理器能安裝於AM3插座上，但是這台電腦無法啟動，而這顆被剪斷兩根管腳的處理器，安裝在AM2插座上時則仍能順利啟動，表明這個相容性不僅僅取決於幾根管腳，還有更深層次的變動。\[9\]Socket
AM2+處理器上的內建式記憶體控制器只支援DDR2 SDRAM，不支援DDR3
SDRAM，而AM3的處理器則兩者皆能支援，相信是AM2/AM2+與AM3無法完全相互相容的主要原因之一。\[10\]而事實上，也有支援DDR2記憶體的Socket
AM3主機板出現並發售，不過這些主機板有不少同時載有DDR3記憶體的插槽，而且只能使用DDR2或DDR3其中一種。另外，此前使用於AM2、AM2+處理器的晶片組，更換使用AM3插座以後，同樣可支援AM3的處理器，但匯流排速率仍然只能達到晶片組所能支援的最高規格。\[11\]

## 使用情況

### 晶片組

[ASUS_Crosshair_IV_Formula-top_PNr°0301.jpg](https://zh.wikipedia.org/wiki/File:ASUS_Crosshair_IV_Formula-top_PNr°0301.jpg "fig:ASUS_Crosshair_IV_Formula-top_PNr°0301.jpg")
原生採用Socket AM3插座的主機板晶片組是AMD 800系列晶片組。不過隨後也有使用Socket AM3插座的AMD
700系列晶片組主機板，而這些主機板，早期有的同時載有DDR3和DDR2記憶體的插槽，但同時只能使用一種，而有的則僅能使用DDR3記憶體。

### 處理器

[Socket_AM3_and_AMD_Phenom_II_X3_720_Black_Edition.jpg](https://zh.wikipedia.org/wiki/File:Socket_AM3_and_AMD_Phenom_II_X3_720_Black_Edition.jpg "fig:Socket_AM3_and_AMD_Phenom_II_X3_720_Black_Edition.jpg")
最初，使用Socket AM3的處理器，是AMD首先支援DDR3記憶體、45奈米新製程版的Phenom
II（920、940除外）以及Opteron 1380系列。\[12\]隨後基於Phenom II衍生的Athlon
II（包括原生雙核心的Athlon II X2 200系列，但不包括Athlon II X4 6x1系列）、Sempron
100系列，也採用Socket AM3。

#### Phenom II系列

  - **六核心型號「Thuban」**：
      - Phenom II X6 1035T、1045T、1055T、1065T、1075T、1075T BE、1090T
        BE、1100T BE
  - **四核心型號「Zosma」**：
      - Phenom II X4 650T、840T、960T、960T BE、970 BE（E0步進版本）
  - **四核心型號「Deneb」**：
      - Phenom II X4
        805、810、820、830、840、850、900e、905e、910、910e、925、945、955、955
        BE、965 BE、970 BE（C3步進版本）、975 BE、980 BE、B93、B95、B97、B99
  - **三核心型號「Heka」**：
      - Phenom II X3 700e、705e、710、715 BE、720、720 BE、740 BE、B73、B75、B79
  - **雙核心型號「Callisto」**：
      - Phenom II X2 545、550、550 BE、555 BE、560 BE、565 BE、570
        BE、B53、B55、B57、B59、B60
  - **雙核心型號「Regor」**：
      - Phenom II X2 511、521

注：「BE」即為「Black Edition」黑盒版。這些版本的CPU，其倍頻不鎖定。

#### Athlon II系列

  - **四核心型號「Propus」**：
      - Athlon II X4 600e、605e、610e、615e、620e、620、630、635、640、645、650
  - **三核心型號「Rana」**：
      - Athlon II X3
        400e、405e、415e、420e、425e、425、435、440、445、450、455、460
  - **雙核心型號「Regor」**：
      - Athlon II X2
        250u、260u、270u、210e、215、220、235e、240、240e、245、245e、250e、250、255、260、265、270、280、B22、B24、B26、B28、B30
      - Athlon X2 5000
  - **單核心型號「Sargas」**：
      - Athlon II 160u、170u

#### Sempron 100系列

  - **雙核心型號「Regor」**：
      - Sempron 180、190
  - **單核心型號「Sargas」**：
      - Sempron 130、140、145、150

#### Opteron 1380系列

  - 全為4核心型號：Opteron 1381、1385、1389

## 參考文獻

## 參見

  - [AMD Phenom II](../Page/AMD_Phenom_II.md "wikilink")
  - [AMD Athlon II](../Page/AMD_Athlon_II.md "wikilink")
  - [AMD Sempron](../Page/AMD_Sempron.md "wikilink")、[AMD
    Sempron處理器列表](../Page/AMD_Sempron處理器列表.md "wikilink")
  - [AMD
    Opteron](https://zh.wikipedia.org/wiki/AMD_Opteron "wikilink")、[AMD
    Opteron處理器列表](../Page/AMD_Opteron處理器列表.md "wikilink")
  - [Socket
    F](../Page/Socket_F.md "wikilink")、[F+](https://zh.wikipedia.org/wiki/Socket_F+ "wikilink")
  - [Socket FM1](https://zh.wikipedia.org/wiki/Socket_FM1 "wikilink")
  - [Socket S1](https://zh.wikipedia.org/wiki/Socket_S1 "wikilink")

## 外部链接

  - [DailyTech post about Socket
    AM3](https://web.archive.org/web/20070608124829/http://www.dailytech.com/article.aspx?newsid=3169)

  - [List of first bunch of Socket AM3
    CPUs](https://web.archive.org/web/20090419222819/http://www.xbitlabs.com/articles/cpu/display/amd-phenom-ii-x4_3.html#sect0)
  - [Socket AM3
    review](https://web.archive.org/web/20090212065503/http://xbitlabs.com/articles/cpu/display/phenom-ii-x4-810.html)

[Category:CPU插座](https://zh.wikipedia.org/wiki/Category:CPU插座 "wikilink")

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