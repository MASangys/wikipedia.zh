**Inferno**是種可以創造並支援分散式服務的[作業系統](https://zh.wikipedia.org/wiki/作業系統 "wikilink")。它主要是基於[貝爾實驗室九號計畫](../Page/貝爾實驗室九號計畫.md "wikilink")的經驗以及貝爾實驗室接下來對於作業系統、語言、即時編譯器、圖形、安全性、網路、移植等的研究而產生的。

Inferno應用程式可以移植到大多數混合的硬體、網路、環境上。它也定義了一套名為[Dis的](https://zh.wikipedia.org/wiki/Dis虛擬機器 "wikilink")[虛擬機器](../Page/虛擬機器.md "wikilink")，這個虛擬機器可以在任何實體機器上實做，使用[Limbo這種](https://zh.wikipedia.org/wiki/Limbo "wikilink")[型別安全](../Page/型別安全.md "wikilink")的語言來編譯成位元碼。Inferno也提供了具備相同介面的虛擬作業系統來讓使用者可以在硬體上原生地執行Inferno或以應用程式的方式托管在其他系統中。

一種名為[Styx的](https://zh.wikipedia.org/wiki/Styx "wikilink")[通訊協定被用來讓系統內可以採用一致的方式](https://zh.wikipedia.org/wiki/通訊協定 "wikilink")，讓應用程式只要使用標準的檔案操作，如開啟、讀取、寫入，以及關閉，就可以存取近端與遠端的資源。在第四版的Inferno中，Styx跟[九號計畫中](../Page/貝爾實驗室九號計畫.md "wikilink")[9P](../Page/9P.md "wikilink")協定的新版本9P2000是一樣的。

作業系統以及相關程式、[Vita Nuova Holdings公司的名稱都是源自於](https://zh.wikipedia.org/wiki/Vita_Nuova_Holdings "wikilink")[但丁·阿利吉耶里](../Page/但丁·阿利吉耶里.md "wikilink")的著作，尤其是[神曲](../Page/神曲.md "wikilink")。

## 設計概念

Inferno最早是於1995年由[貝爾實驗室計算機科學研究部門](https://zh.wikipedia.org/wiki/貝爾實驗室 "wikilink")（Computer Science Research division）的成員為了把[九號計畫的思想更廣泛的使用在设备及網路上所製作的](../Page/貝爾實驗室九號計畫.md "wikilink")。Inferno是基於九號計畫的三個基礎原则而製作的[分散式作業系統](https://zh.wikipedia.org/wiki/分散式作業系統 "wikilink")：

  - **把資源視做檔案**：把所有的[資源都列在](https://zh.wikipedia.org/wiki/資源_\(計算機科學\) "wikilink")[階層式](https://zh.wikipedia.org/wiki/階層式 "wikilink")[檔案系統中以檔案表示](https://zh.wikipedia.org/wiki/檔案系統 "wikilink")。
  - **命名空間**：從應用程式的觀點來看，網路是種單一且清楚的[命名空間](https://zh.wikipedia.org/wiki/命名空間 "wikilink")，能展現階層式檔案系統，也能代表近端或遠端實體分離的資源。
  - **標準通訊協定**：採用名為[Styx的標準協定](https://zh.wikipedia.org/wiki/Styx "wikilink")，用來存取近端或遠端的所有資源。

為了處理並使用多樣化的網路環境，設計者決定採用[虛擬機器](../Page/虛擬機器.md "wikilink")當做系統中必要的元件。這跟後來成為[Java](../Page/Java.md "wikilink")的Oak專案的結論相同，但各別達成了這樣的目標。[Dis虛擬機器是一種傾向於貼近運行架構的一種寄存器機](https://zh.wikipedia.org/wiki/Dis虛擬機器 "wikilink")（register machine），相對來說[Java虛擬機器則是一種堆疊機](https://zh.wikipedia.org/wiki/Java虛擬機器 "wikilink")（stack machine）。這種方法的優勢是只要簡單的為新架構創建一個[即時編譯](../Page/即時編譯.md "wikilink")器就可以了。

虛擬機器提供的記憶體管理功能設計上在1MB大小的記憶體且不提供記憶體映射的硬體上會較有效率。[垃圾回收機制則是一種參照計數](../Page/垃圾回收_\(計算機科學\).md "wikilink")（reference counting）與收集循環資料（cyclic data）的即時染色收集器（real-time coloring collector）混合而成的。

Inferno核心包含了虛擬機器、即時編譯器（on-the-fly compiler）、排程、裝置、協定堆疊（protocol stacks）、各行程檔案命名空間的命名空間直譯器（evaluator），以及階層式檔案系統的根目錄。核心也同時包含了一些提供了虛擬作業系統介面的內建模組，像是系統呼叫、圖形、安全性、以及數學函式模組。

[貝爾實驗室技術期刊](https://zh.wikipedia.org/wiki/貝爾實驗室技術期刊 "wikilink")（）\[1\]介紹Inferno具有幾個方面上由作業系統所支援的可移植性與通用性：

>   - 可以移植到不同的處理器上：目前可以在[ARM](https://zh.wikipedia.org/wiki/ARM架構 "wikilink")、[MIPS](../Page/MIPS架構.md "wikilink")、[PA-RISC](https://zh.wikipedia.org/wiki/PA-RISC "wikilink")、[PowerPC](../Page/PowerPC.md "wikilink")、[SPARC](../Page/SPARC.md "wikilink")，以及[x86等架構上運作](https://zh.wikipedia.org/wiki/x86 "wikilink")，也可以移植到其他的架構上。
>   - 可以移植到不同的環境上：它可以以獨立的作業系統運作在小型終端機上，或是以使用者應用軟體的形式存在於[九號計畫](../Page/貝爾實驗室九號計畫.md "wikilink")、[Windows NT](../Page/Windows_NT.md "wikilink")、[Windows 95](../Page/Windows_95.md "wikilink")、UNIX（[Irix](https://zh.wikipedia.org/wiki/Irix "wikilink")、[Solaris](../Page/Solaris.md "wikilink")、[FreeBSD](../Page/FreeBSD.md "wikilink")、[GNU/Linux](https://zh.wikipedia.org/wiki/GNU/Linux "wikilink")、[AIX](https://zh.wikipedia.org/wiki/AIX "wikilink")、[HP-UX](../Page/HP-UX.md "wikilink")）。Inferno應用程式在這些環境中都有相同的介面。
>   - 分散式設計：在使用者終端機以及伺服器的部分都具有相同的環境，而且彼此間可以匯入對方的資源（例如附加的輸入/輸出裝置或是網路）。應用程式可以在運行系統中的通訊機制輔助之下，輕鬆的（甚至是動態的）分散到客戶端或伺服器端。
>   - 最低硬體需求：它在機器上所運行的實用應用程式只需要1MB的記憶體，也不需要[記憶體映射的硬體支援](https://zh.wikipedia.org/wiki/記憶體映射 "wikilink")。
>   - 可攜式應用：Inferno應用程式是以[型別安全](../Page/型別安全.md "wikilink")的Limbo語言所撰寫，編譯出來的執行檔在各種平台上的執行結果都會一致。
>   - 動態適應性（Dynamic adaptability）:應用程式可以根據硬體或其他可用資源來載入不同的程式模組來執行特定的功能。例如像影片播放器可以使用許多不同解碼模組中的任何一個來進行影片的解碼。

這些設計面上的決定導致它為了能夠讓內容與服務提供者可以著重於他們所傳送的內容，而非把重心放在處理各種不同的硬體、軟體或網路環境，因此提供了一種標準的介面來達成這樣的目的。

## 歷史

| 日期        | 版本                  | 備註                                 |
| --------- | ------------------- | ---------------------------------- |
| 1996年     | Inferno Beta        | 貝爾實驗室                              |
| 1997年5月   | Inferno Release 1.0 | 貝爾實驗室技術期刊文章，1997年冬季                |
| July 1999 | Inferno第二版          | Lucent's Inferno Business Unit     |
| June 2001 | Inferno第三版          | Vitanuova                          |
| 2004      | Inferno第四版          | 開放原始版版本，改善了早期版本不相容的介面，納入了9P2000的支援 |

Inferno是[九號計畫的衍生產品](../Page/貝爾實驗室九號計畫.md "wikilink")，彼此之間有許多共通的設計概念以及核心中的程式碼，特別是關於裝置以及Styx/9P2000協定的部份。Inferno也把[Unix哲學與自貝爾實驗室繼承而來的UNIX經驗分享給九號計畫的專案](https://zh.wikipedia.org/wiki/Unix哲學 "wikilink")。許多Inferno的命令列工具原先也都是九號計畫的工具，之後才用Limbo語言改寫。

[IEEE Internet Computing在](https://zh.wikipedia.org/wiki/IEEE_Internet_Computing "wikilink")1997年3-4月的刊物中有Inferno網路軟體的廣告。該廣告宣稱可利用多種裝置在包含網際網路、電信網路，以及區域網路等之"任何網路"上進行通訊。圖中甚至擺放了[PlayStation](../Page/PlayStation.md "wikilink")之類的照片，如果電玩可以跟電腦溝通、手機可以存取電子郵件、電視可以存取語音郵件。

[貝爾實驗室計算科學研究中心](https://zh.wikipedia.org/wiki/貝爾實驗室 "wikilink")（Computing Science Research Center）的成員[Ken Thompson](https://zh.wikipedia.org/wiki/Ken_Thompson "wikilink")、[Dennis Ritchie](https://zh.wikipedia.org/wiki/Dennis_Ritchie "wikilink")，以及[道格拉斯·麥克羅伊](../Page/道格拉斯·麥克羅伊.md "wikilink")研究並開發了[C語言](https://zh.wikipedia.org/wiki/C語言 "wikilink")，並使用該語言建造了[UNIX](../Page/UNIX.md "wikilink")。貝爾實驗室中的程式設計師隨後進行九號計畫及Inferno等針對現代分散式環境的作業系統開發。

[朗訊科技至少有兩個內部專案有採用Inferno](https://zh.wikipedia.org/wiki/朗訊科技 "wikilink")：Lucent VPN Firewall Brick以及Lucent Pathstar phone switch。這也開啟了販賣Inferno原始碼授權的嘗試，不過反應並不熱烈。朗訊科技沒特別做行銷又忽略了Inferno與網際網路的重要關連，而[Java](../Page/Java.md "wikilink")語言跟Inferno目標市場相似、採用類似的技術、可以在[網頁瀏覽器中運行](https://zh.wikipedia.org/wiki/網頁瀏覽器 "wikilink")，也同時滿足了當時對於[物件導向語言的流行](https://zh.wikipedia.org/wiki/OOP "wikilink")。當[昇陽電腦](../Page/昇陽電腦.md "wikilink")大力行銷自家的Java時，朗訊科技自昇陽電腦取得Java的授權，宣稱所有Inferno的裝置皆能執行Java。Java位元碼與Dis位元碼的轉譯器就是為了達成這個功能所產生的。然而Inferno還是賣不出去。

Inferno商業部門過了三年就關閉且被賣給[Vitanuova](https://zh.wikipedia.org/wiki/Vita_Nuova_Holdings "wikilink")。Vitanuova持有相關的權利後，便繼續研發並對整個系統採用商業化授權的方式，隨後提供免費下載以及對核心以及虛擬機器以外的整個系統採非[GPL相容授權的方式](https://zh.wikipedia.org/wiki/GPL "wikilink")。Vitanuova將軟體繼續移植到新的硬體以及專注在分散式應用軟體上，最終將原始碼採用[GPLv2授權釋出](https://zh.wikipedia.org/wiki/GPL "wikilink")，而Inferno作業系統現今也變成是一個[開放原始碼的專案](https://zh.wikipedia.org/wiki/開放原始碼 "wikilink")。

## 移植

Inferno可以直接在原生硬體中執行，也能在其他平台以應用程式的方式提供虛擬作業系統。應用程式無須經過修改或重編譯即可在所有的Inferno平台開發並執行。

原生移植包括[x86](https://zh.wikipedia.org/wiki/x86 "wikilink")、[MIPS](../Page/MIPS架構.md "wikilink")、[ARM](https://zh.wikipedia.org/wiki/ARM架構 "wikilink")、[PowerPC](../Page/PowerPC.md "wikilink")，以及[SPARC](../Page/SPARC.md "wikilink")。

托管或虛擬作業系統移植則包括：[Microsoft Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")、[GNU/Linux](https://zh.wikipedia.org/wiki/GNU/Linux "wikilink")、[FreeBSD](../Page/FreeBSD.md "wikilink")、[九號計畫](../Page/貝爾實驗室九號計畫.md "wikilink")、[Mac OS X](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")、[Solaris](../Page/Solaris.md "wikilink")、[IRIX](../Page/IRIX.md "wikilink")、[UnixWare](https://zh.wikipedia.org/wiki/UnixWare "wikilink")。

Inferno也可以以[套件的方式托管於](https://zh.wikipedia.org/wiki/外掛程式 "wikilink")[IE中](../Page/Internet_Explorer.md "wikilink")。根據Vita Nuova的說法，針對其他瀏覽器的套件也在開發中\[2\]。

Inferno也可以移植到[OpenMoko](../Page/OpenMoko.md "wikilink")\[3\]、[Nintendo DS](https://zh.wikipedia.org/wiki/Nintendo_DS "wikilink")\[4\]以及[SheevaPlug](https://zh.wikipedia.org/wiki/SheevaPlug "wikilink")\[5\]。

## 授權

Inferno第四版於2005年初以[自由軟體的授權釋出](https://zh.wikipedia.org/wiki/自由軟體 "wikilink")。具體來說，Inferno採用了[雙授權的方式採用了兩種授權供使用者選擇](https://zh.wikipedia.org/wiki/多許可 "wikilink")。使用者可選擇在[自由軟體授權或傳統商業化授權的情況下取得Inferno](https://zh.wikipedia.org/wiki/自由軟體授權 "wikilink")。根據自由軟體授權的規範，系統中各個部份可以採用不同的授權方式，這些授權方式包括[GPL](https://zh.wikipedia.org/wiki/GPL "wikilink")、[LGPL](https://zh.wikipedia.org/wiki/LGPL "wikilink")、[Lucent Public License](https://zh.wikipedia.org/wiki/Lucent_Public_License "wikilink")，以及[MIT License](https://zh.wikipedia.org/wiki/MIT_License "wikilink")。後來Vita Nuova讓Inferno可以在[GPLv2的授權下取得除了字型](https://zh.wikipedia.org/wiki/GPL "wikilink")（採用[Bigelow and Holmes授權](https://zh.wikipedia.org/wiki/Bigelow_and_Holmes "wikilink")）以外的整個系統。現在總共有三種授權方式可供選擇。

## 書籍

由[Phillip Stanley-Marbell所撰寫的](https://zh.wikipedia.org/wiki/Phillip_Stanley-Marbell "wikilink")*Inferno Programming with Limbo*\[6\]雖然描述了一些Inferno作業系統第三版的情況，但大多都專注在Limbo語言以及Inferno系統所提供的介面上。例如說這本書僅提到一點Inferno多用途[命令列](https://zh.wikipedia.org/wiki/命令列 "wikilink")（command shell）的功能，不過作為一本程式設計相關的書籍，這也是可理解的情況。

另一本由[Brian Stuart所撰寫的](https://zh.wikipedia.org/wiki/Brian_Stuart "wikilink")*Principles of Operating Systems: Design and Applications*\[7\]則採用Inferno作為作業系統設計的實例。

而由Martin Atkins、Charles Forsyth、Rob Pike，以及Howard Trickey合著的"The Inferno Programming Book: An Introduction to Programming for the Inferno Distributed System"一書，嘗試以作業系統為中心的觀點介紹Inferno，只是不幸地作者從未完成或釋出該一著作。

## 參照

  - [Inferno應用程式列表](https://zh.wikipedia.org/wiki/Inferno應用程式列表 "wikilink")
  - [貝爾實驗室九號計畫](../Page/貝爾實驗室九號計畫.md "wikilink")
  - [Unix](https://zh.wikipedia.org/wiki/Unix "wikilink")
  - [Language-based system](https://zh.wikipedia.org/wiki/Language-based_system "wikilink")
  - [JNode](../Page/JNode.md "wikilink")
  - [Singularity (作業系統)](https://zh.wikipedia.org/wiki/Singularity_\(作業系統\) "wikilink")[微軟研究院](../Page/微軟研究院.md "wikilink")作業系統方面的類似成果

## 參考文獻

## 外部連結

  - [Inferno Project at Google Code](http://code.google.com/p/inferno-os/)
  - [Inferno第四版下載頁面，提供原始碼下載](http://www.vitanuova.com/inferno/net_download4T.html)
  - [教學文件](http://doc.cat-v.org/inferno/4th_edition/)
  - [Inferno使用者手冊](http://man.cat-v.org/inferno/)
  - [其他文件](http://doc.cat-v.org/inferno/)
  - [郵件列表及其他資源](http://www.vitanuova.com/news/newsgroup.html)
  - [Ninetimes:關於Inferno、九號計畫及其他相關技術的新聞及文章](http://ninetimes.cat-v.org)
  - [Inferno Wiki](http://inferno.makesad.us/wiki/1)
  - [Inferno程式設計師手冊](https://web.archive.org/web/20100531122253/http://www.caerwyn.com/ipn/) - 開發人員所撰寫的日誌。

**Ports**

  - [Inferno for the Nintendo DS](http://code.google.com/p/inferno-ds/)
  - [Inferno for the Marvell Kirkwood/Sheevaplug](http://code.google.com/p/inferno-kirkwood/)
  - [Inferno on OLPC](http://wiki.laptop.org/go/inferno)
  - [Inferno port to the Openmoko neo freerunner](http://code.google.com/p/inferno-openmoko/)

**Of Historical Interest**

  - [朗訊科技Inferno原本網站的cat-v典藏頁面](http://doc.cat-v.org/inferno/historical_documents/website/)
  - [Inferno原本郵件列表的cat-v典藏頁面](http://doc.cat-v.org/inferno/historical_documents/mailing_lists/interstice/)

[Category:Inferno](https://zh.wikipedia.org/wiki/Category:Inferno "wikilink") [Category:分布式操作系统](https://zh.wikipedia.org/wiki/Category:分布式操作系统 "wikilink") [Category:嵌入式操作系统](https://zh.wikipedia.org/wiki/Category:嵌入式操作系统 "wikilink") [Category:貝爾實驗室九號計畫](https://zh.wikipedia.org/wiki/Category:貝爾實驗室九號計畫 "wikilink") [Category:虛擬機器](https://zh.wikipedia.org/wiki/Category:虛擬機器 "wikilink")

1.  [貝爾實驗室技術論文](http://www.vitanuova.com/inferno/papers/bltj.html)
2.  [套件](http://www.vitanuova.com/inferno/pidoc/index.html), Vita Nuova.
3.  [1](http://code.google.com/p/inferno-openmoko/)
4.  [2](http://code.google.com/p/inferno-ds/)
5.  [3](http://code.google.com/p/inferno-kirkwood/)
6.
7.