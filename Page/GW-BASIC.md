**GW-BASIC**是高級[程式設計語言](https://zh.wikipedia.org/wiki/程式設計語言 "wikilink")[BASIC](../Page/BASIC.md "wikilink")的一個方言版本。關於GW的含義，目前有三種說法，一種認為是以[微軟早期程式設計師Greg](https://zh.wikipedia.org/wiki/微軟 "wikilink") Whitten的名字命名的，一種認為是用微軟創始人的名字Gates，William命名的，還有一種說法是開發人員給它取的一個戲稱gee-whiz（兩個英語的象聲詞，類似於中文裏吆喝牲口的聲音）。有一點是肯定的，這個版本的BASIC最早是微軟為[康柏](../Page/康柏.md "wikilink")開發的，時間應該是在1984年，這一年11月，微軟首次為[IBM](../Page/IBM.md "wikilink")之外的計算機廠商提供[OEM版本的](https://zh.wikipedia.org/wiki/OEM "wikilink")[DOS](../Page/DOS.md "wikilink")，GW-BASIC是作為[MS-DOS](../Page/MS-DOS.md "wikilink")的一個組成部分問世的。

GW-BASIC和微軟提供給[IBM PC的](../Page/IBM_PC.md "wikilink")[BASICA](../Page/BASICA.md "wikilink")完全相容，所不同的是，後者依賴於[ROM中的BASIC](https://zh.wikipedia.org/wiki/ROM "wikilink")[直譯器](../Page/直譯器.md "wikilink")，而前者並不需要，所以，GW-BASIC能在眾多IBM PC相容機器上運行，這就使它的使用範圍隨著PC相容機器的推廣而擴大。第一個流傳範圍較廣的GW-BASIC版本號為2.0，而最後推出的GW-BASIC版本號為3.23，時間大概是1988年。從那時起，如果沒有特殊說明，我們一般所說的GW-BASIC就是指的這個版本。

GW-BASIC運行速度較慢，這在很大程度上是因為它是一種互動式的開發工具——這種開發模式是BASIC的誕生地Dartmouth大學最早提出的。和很多早期的BASIC方言一樣，GW-BASIC缺乏很多進行結構化編程所需的語法成分，但是它足夠靈活，此外還擁有很多繪圖語句和一些簡單的發聲語句，這就足以使一個[程式設計師用它開發一個簡單的遊戲軟體](https://zh.wikipedia.org/wiki/程式設計師 "wikilink")、商用軟體或者諸如此類的東西。它能夠在絕大多數PC上運行，這就給那些想要成為程式設計師的人提供了一個學習如何程式設計的廉價的途徑。

GW-BASIC擁有一個簡單的[整合開發環境](https://zh.wikipedia.org/wiki/整合開發環境 "wikilink")（IDE），所有的程式碼都必須有一個行號，沒有行號的語句被認為是需要立即執行的命令。用戶界面中，除螢幕底部的功能快捷鍵描述和頂部的版權聲明外，其他部分都用來顯示和編寫語句。源文件標準的保存格式是GW-BASIC特有的二進制壓縮格式，不過它也提供了一個選項，使得開發者可以用[ASCII](../Page/ASCII.md "wikilink")[純文字格式保存原始文件](https://zh.wikipedia.org/wiki/純文字 "wikilink")。GW-BASIC的IDE提供了如下常用命令：RUN（執行目前的程式），LOAD（從磁碟載入原始碼），SAVE（把程式儲存到磁碟），LIST（顯示已打開的程式碼內容），SYSTEM（回到作業系統）。它們都可以出現在程式碼上，不過除SYSTEM外，上述用法還相當少見。

前面提到，GW-BASIC對[結構化程序設計方法的支持非常差](https://zh.wikipedia.org/wiki/結構化程序設計 "wikilink")，所以對GW-BASIC程式設計者來講，能夠用它寫出具備良好結構的程式有很高的難度。在GW-BASIC裡，IF/THEN/ELSE條件語句必須在一行內寫完，儘管WHILE/WEND已允許包含多行代碼；自行定義的函數只能用類似於DEF FNf(x) = <關於x的數學函數> 這樣形式的一行語句來編寫（例如，`DEF FNLOG(base,number)=LOG(number)/LOG(base)`）；變數通常是通過變數名末端的一個表示類型的符號來確定其類型的：A$表示是一個字串，A%表示是一個整數，等等；通過使用DEFINT,DEFSTR等關鍵字，可以為一組使用相同字首的變數定義預設類型；其他變數其類型預設是單精度浮點數。

很多GW-BASIC程式設計者都是沒有經過訓練的，他們往往不明白編寫結構簡單的程式所能帶來的好處，因此就導致濫用GOTO語句的現象，他們往往不願意使用能完成同樣功能的結構化的語句。參見[面條式代碼](https://zh.wikipedia.org/wiki/面條式代碼 "wikilink")。

GW-BASIC支援[搖桿和](https://zh.wikipedia.org/wiki/搖桿 "wikilink")[光筆輸入設備](https://zh.wikipedia.org/wiki/光筆輸入設備 "wikilink")，但不支持[滑鼠](https://zh.wikipedia.org/wiki/滑鼠 "wikilink")。它能夠讀寫磁碟檔案、[LPT埠和](https://zh.wikipedia.org/wiki/LPT "wikilink")[COM埠](https://zh.wikipedia.org/wiki/COM "wikilink")，也能處理埠事件陷阱，不過不能處理[磁帶設備](https://zh.wikipedia.org/wiki/磁帶設備 "wikilink")。它還能通過使用PLAY語句或SOUND語句來驅動IBM PC及其相容機器的標準內建喇叭發出聲音。

GW-BASIC在MS-DOS發行版本中，於1991年6月由微軟的[QBASIC](../Page/QBASIC.md "wikilink")所取代。

[Category:程式設計語言](https://zh.wikipedia.org/wiki/Category:程式設計語言 "wikilink") [Category:BASIC程式設計語言家族](https://zh.wikipedia.org/wiki/Category:BASIC程式設計語言家族 "wikilink") [Category:DOS軟體](https://zh.wikipedia.org/wiki/Category:DOS軟體 "wikilink")