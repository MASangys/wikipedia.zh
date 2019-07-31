[DSLinuxLogo.gif](https://zh.wikipedia.org/wiki/File:DSLinuxLogo.gif "fig:DSLinuxLogo.gif")

**DSLinux**是一個[任天堂DS](../Page/任天堂DS.md "wikilink")上運行的[Linux](../Page/Linux.md "wikilink")作業系統。

## 軟體

DSLinux是從[uClinux發行版修改而成](https://zh.wikipedia.org/wiki/uClinux "wikilink")。他所使用的[内核](../Page/内核.md "wikilink")是建基於uCLinux 2.6.14版（Linux-2.6.14-hsc0）。現時DSLinux只能在文字糢式和nano-x圖像糢式上運行。而nano-x圖像糢式只是用於在下方的液晶顯示器顯示鍵盤。用戶可以輕觸這個鍵盤或任天堂DS上的按鈕操作DSLinux。

DSLinux是由[GCC](../Page/GCC.md "wikilink")（GNU Compiler Collection|GCC）及[ARM套件移植編譯而成](https://zh.wikipedia.org/wiki/ARM架構 "wikilink")。

DSLinux可以執行由[BusyBox](../Page/BusyBox.md "wikilink")提供的基本的指令，如time, mount, kill，或free等等。DSLinux內含一個ncurses用戶介面，理論上可以執行一些以ncurses介面寫成的程式。uClibc是DSLinux所用的[C標準函式庫](../Page/C標準函式庫.md "wikilink")，它是為[嵌入式Linux](../Page/嵌入式Linux.md "wikilink")製作的小型C函式庫。

雖然DSLinux沒有任何軟體包裝管理系統，但它已經內含[SSH客端](https://zh.wikipedia.org/wiki/SSH "wikilink")、[IRC](../Page/IRC.md "wikilink")客端、網頁瀏覽器、[ogg及](https://zh.wikipedia.org/wiki/ogg "wikilink")[mp3媒體播放器](https://zh.wikipedia.org/wiki/mp3 "wikilink")、文字編輯器及一些遊戲。可謂麻雀雖小，但五臟俱全。人們通常以單一的tar壓縮檔案發報DSLinux。

## 硬體支援

[Ds_lite_with_slot-2_device_running_dslinux.jpg](https://zh.wikipedia.org/wiki/File:Ds_lite_with_slot-2_device_running_dslinux.jpg "fig:Ds_lite_with_slot-2_device_running_dslinux.jpg")

除了麥克風以外，DSLinux支援所有在任天堂DS內建的硬體，甚至任天堂DS的[韌體](../Page/韌體.md "wikilink")（firmware）也可以在"/dev/firmware"上讀取。但基於安全的理由，用戶無法修改韌體。

DSLinux亦支援在GBAMP, M3，或SuperCard等記憶卡上存取檔案，而言它們都不是任天堂推出的產品。最新的記憶卡內置動態裝置連結界面（Dynamically Linked Device Interface），這增加了DSLinux對新記憶卡的相容性。

## 有限記憶體

由於任天堂DS上只在4[MB的](https://zh.wikipedia.org/wiki/MB "wikilink")[隨機存取記憶體](https://zh.wikipedia.org/wiki/隨機存取記憶體 "wikilink")（[中國大陸所發行的iQue](https://zh.wikipedia.org/wiki/中國大陸 "wikilink") DS(iDS)內建10MB隨機存取記憶體），所以沒有[記憶體管理單元](https://zh.wikipedia.org/wiki/記憶體管理單元 "wikilink")。故用戶使用過多的記憶體時，例如瀏覽一個容量太大的網頁時，程式會不自然地結束（crash）。在Amadeus的努力下，比較新的DSLinux支援slot2的附加記憶體，現時最多可至32MB。

## 外部連結

  - [DSLinux主頁](http://www.dslinux.org)

[Category:Linux發行版](https://zh.wikipedia.org/wiki/Category:Linux發行版 "wikilink") [Category:任天堂DS](https://zh.wikipedia.org/wiki/Category:任天堂DS "wikilink")