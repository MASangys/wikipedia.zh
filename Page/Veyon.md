> 本文内容由[Veyon](https://zh.wikipedia.org/wiki/Veyon)转换而来。


**Veyon**（，原称iTALC，的縮寫，即**智能電腦教學及學習**系統）是一個[自由的](https://zh.wikipedia.org/wiki/自由軟件 "wikilink")[開源](https://zh.wikipedia.org/wiki/開源軟件 "wikilink")[課室管理系統](https://zh.wikipedia.org/wiki/課室管理系統 "wikilink")，可在[Linux](../Page/Linux.md "wikilink")及[Microsoft Windows環境下操作](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")，主要用於管理電腦室內的課堂學習。透過iTALC，教師可以從教師電腦遙距操控電腦室內的學生電腦，包括以下動作：監察、控制、關閉、演示及開機/關機等。軟件的設計是用作[MasterEye](https://zh.wikipedia.org/wiki/MasterEye "wikilink")\[1\]的替代品。

iTALC最初開發時，只有Linux版本。及至2006年中，由於其核心程式庫[Qt](../Page/Qt.md "wikilink")4被移植到Windows NT平台，所以iTALC亦開始開發出對應Windows平台的版本，不過其安裝方法及操作仍然保留有很濃重的Linux操作習慣，這使一般只會Windows操作的用戶（特別是教師）感到難以操控。不過，正因為其跨平台的特色，使教室可達至跨平台的操控，例如：在一個同時有Windows及Linux作業系統的教室裡，都可以透過同一部教師電腦來操控。

## 特色

iTALC是一個專門為學校使用而設計的軟件，因此提供了各種方便教師在課室進行授課的特別功能，例如\[2\]\[3\]：

  - 概觀模式：透過[畫中畫功能](https://zh.wikipedia.org/wiki/畫中畫 "wikilink")，讓教師在主電腦能夠同時查看課室內所有學生電腦，並能夠擷取螢幕；
  - 遠端控制：透過遠端控制，為學生提供支援或指導；
  - 演示模式：可以以全螢幕或畫中畫形式，強制把教師電腦的螢幕在學生電腦上顯示，又或把指定學生的電腦螢幕轉發至其他學生的電腦螢幕上；
  - 文字信息：透過軟件向學生傳送文字信息；
  - 封鎖電腦：對於不專心的學生，可以透過封鎖他們的電腦，讓他們專心上課，而不能利用電腦作其他課堂以外的功能；
  - 遠端開關：能夠透過[Wake on LAN功能使課室內的電腦同時開啟](https://zh.wikipedia.org/wiki/Wake_on_LAN "wikilink")，亦能同時關閉或重新啟動所有電腦；
  - 遠端取證：當有學生違規使用電腦，可以即時擷取畫面作為證據；
  - [在家學習](../Page/在家自學.md "wikilink")：由於iTALC採用了[SSH認證而不是其他遠端操控軟體的密碼控制](https://zh.wikipedia.org/wiki/SSH "wikilink")，使網路上存取教學資源更安心。而iTALC亦支援[VPN連線](https://zh.wikipedia.org/wiki/VPN "wikilink")；
  - 線程優化：透過對軟件的[線程化](https://zh.wikipedia.org/wiki/線程 "wikilink")，iTALC在[多核心系統上的運行得到優化](https://zh.wikipedia.org/wiki/多核心 "wikilink")。
  - 常駐電腦：與其他的MUSE或[TightVNC](../Page/TightVNC.md "wikilink")不同的是，iTALC常駐在電腦之後，無法直接從Taskbar或Task Manager關閉，免除學生透過停止程式而規避監管。另外，程式的反安裝亦無法從[控制台執行](https://zh.wikipedia.org/wiki/控制台 "wikilink")，而要執行特別的命令。
  - 遠端登入：透過指定的命令能夠遠端使所有學生電腦以指定的登入信息登入網路，這對低小年級學生最有幫助，因為一年級的學生很多時對鍵盤不熟習，需要花很多時間於電腦的登入；

## 相容性

### 跨平台相容性

iTALC採用了[Qt](../Page/Qt.md "wikilink") [Trolltech](https://zh.wikipedia.org/wiki/Trolltech "wikilink")/C++編寫，所以可以在32-bit-Windows及[GNU](../Page/GNU.md "wikilink")/[Linux](../Page/Linux.md "wikilink")平台上運行。由於[Edubuntu](../Page/Edubuntu.md "wikilink")和[Skolelinux](../Page/Skolelinux.md "wikilink")（一個專門為教學用途而修訂的Debian版本）包含了iTALC軟件，使用戶可以建立一個世界性的[自由](https://zh.wikipedia.org/wiki/自由軟件 "wikilink")[學校網路](https://zh.wikipedia.org/wiki/學校網路 "wikilink")。

### 與其他軟體相衝

不過，由於iTALC會使用5800及5900端口（辨識代號："ISD 001.000"），若電腦已安裝有[WinVNC](https://zh.wikipedia.org/wiki/WinVNC "wikilink")、[TightVNC](../Page/TightVNC.md "wikilink")等軟件，則必須先行解安裝，或在設定時使用其他端口，否則會造成相衝。另外，當廣播學生電腦時，課室所有電腦會連接到有關學生電腦的5858埠，所以需要設定防毒軟件，避免因為不能連線而使系統凍結。

### 屏幕大小問題

軟件工具列的所有功能要在1280 x 1024的解像度才能全部顯現，否則只能顯示開首的部份，而這些功能都沒有其他按鍵組合可以替代。解決辦法是把較少用的按鍵移除，例如：Wake on LAN。

### 翻譯問題

[20090303-iTALC-Uninterpreted-DialogBox.png](https://zh.wikipedia.org/wiki/File:20090303-iTALC-Uninterpreted-DialogBox.png "fig:20090303-iTALC-Uninterpreted-DialogBox.png") iTALC的最大問題是無法讓用戶選擇程式執行時所採用的語種，而是必須使用系統選定的語種。舉例說：在繁體中文系統下執行iTALC的設定，必然會使用簡體中文，而無法改用繁體中文或英文。此外，軟件的大多數對話框其實仍然保持英語，沒有經過翻譯，但系統信息卻已被翻譯成「指定」的語種。不過在用戶要求下，其實是可以為軟件提供翻譯。

### Windows的多用戶環境

在Windows環境下的Master安裝，系統預設會把所有設定安裝在用戶的Application Data裡，例如：假若用Administrator用戶安裝的話，課室環境的設定就會放在`C:\Documents and Settings\Administrator\Application Data\iTALC`裡。假若登出了Administrator再以另一位用戶的身份登入，就不能存取原來的課室設定。辦法是可以透過`regedit`增加一組機碼，改變系統預設的檔案位置，方法如下\[4\]：

1.  在`HKEY_LOCAL_MACHINE\SOFTWARE\iTALC Solutions\iTALC\`增加一組名為`paths`的機碼；
2.  在`paths`增加一組名為`globalconfig`的字串值；
3.  把課室設定檔案`globalconfig.xml`從用戶的Application Data檔案夾移往一個所有用戶都可以存取的位置，例如：iTALC程序的位置；
4.  把上述機碼的值改為新的位置名稱，例如：`C:\Program Files\iTALC\globalconfig.xml`；
5.  把有關檔案改成唯讀，以免被覆寫。

這樣，不論用哪一位用戶來登入，都可以看見預設的課室設定。

### 東亞語言輸入及顯示問題

  - 由於程式在強制登入時只是把文字內容傳送到客戶端的鍵盤控制，當客戶端的電腦若在東亞文字輸入狀態時，會因為輸入內容被輸入法控制（IME）攔截而無法把客戶端登入。
  - 另外，用戶名稱並非以Unicode，而是以ANSI文字顯示，但系統會錯誤把locale當作Latin1，使文字未能以正確的locale顯示。

## 參考及註釋

  - [Cara Jitu Pengelolaan Jaringan Windows dengan Remote Desktop dan Administration](https://books.google.com.tw/books?id=mp_XAMqoMDoC&pg=PA129&dq=iTALC&hl=zh-TW&sa=X&ved=0ahUKEwjxjKvLzbrJAhUENJQKHRhVBzwQ6AEINjAE#v=onepage&q=iTALC&f=false)
  - [Ambient Intelligence - Software and Applications: 4th International ...](https://books.google.com.tw/books?id=icBDAAAAQBAJ&pg=PA240&dq=iTALC&hl=zh-TW&sa=X&ved=0ahUKEwjxjKvLzbrJAhUENJQKHRhVBzwQ6AEIRjAG#v=onepage&q=iTALC&f=false)
  - [Sledovanie počítačov študentov: iTalc](http://archiv.inet.sk/6657-sledovanie-pocitacov-studentov-italc.html)
  - [Instruct your users or manage your classroom with iTALC](http://www.ghacks.net/2010/01/14/instruct-your-users-or-manage-your-classroom-with-italc/)

## 外部連結

  - [veyon](http://veyon.io)

[Category:自由教育軟件](https://zh.wikipedia.org/wiki/Category:自由教育軟件 "wikilink")

1.  即現時的[NetOp Vision 6 Classroom Management Solution](http://www.codework.com/vision/)
2.
3.
4.