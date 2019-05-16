**gcin**是一個在[类Unix](https://zh.wikipedia.org/wiki/类Unix "wikilink")[作業系統上運行的中文](https://zh.wikipedia.org/wiki/作業系統 "wikilink")[輸入法平台](https://zh.wikipedia.org/wiki/輸入法平台 "wikilink")（目前亦有[gcin
for windows](http://hyperrate.com/dir.php?eid=215)與[gcin for
android](http://hyperrate.com/?eid=255)），是目前[台灣最常用的輸入法平台之一](https://zh.wikipedia.org/wiki/台灣 "wikilink")。gcin作者為Edward
Liu，是原xcin的開發者之一，gcin開發的目標是取代舊有的[xcin](https://zh.wikipedia.org/wiki/xcin "wikilink")，讓[繁體中文的](https://zh.wikipedia.org/wiki/繁體中文 "wikilink")[GNU/Linux使用者在使用中文輸入法時能有更多的選擇](https://zh.wikipedia.org/wiki/GNU/Linux "wikilink")。

目前gcin仍在持續開發中，可從[gcin更動紀錄](http://hyperrate.com/gcin-source/Changelog.html)查詢各版本所新增功能或細節。

2011年12月13日，由於意見上的分歧，部分原gcin社群成員決定獨立，自行開發分支版本－[HIME](https://zh.wikipedia.org/wiki/HIME "wikilink")。\[1\]

## 特點

  - 支援『自動選字』（詞音輸入法及其他拆字型輸入法，如：倉頡、大易、行列、嘸蝦米...等亦可）。
  - 提供中文預選詞(或稱「聯想詞」)與
    [英文預選字/詞](http://hyperrate.com/thread.php?tid=29116)。
  - 提供螢幕小鍵盤，可控制所有[X
    Window的程式](https://zh.wikipedia.org/wiki/X_Window "wikilink")。
  - 可同步發音
    (需安裝發音檔)[ogg.tgz](https://web.archive.org/web/20120705020558/http://www.csie.nctu.edu.tw/~cp76/gcin/download/)。
  - 支援『\*』和『?』這種[模糊字根查詢](https://zh.wikipedia.org/wiki/模糊字根查詢 "wikilink")。
  - 介面簡潔。
  - 支援類似<font color="#993300">【Shift】</font>+<font color="#993300">【Alt】</font>+<font color="#993300">【G】</font>
    =
    【<font color="#003399">』</font>】這種符號快捷鍵的輸入方式，符合[倚天中文的輸入習慣](https://zh.wikipedia.org/wiki/倚天中文 "wikilink")。
  - 支援相關字詞查詢（詞音輸入法）。
  - 完整支援[Unicode](https://zh.wikipedia.org/wiki/Unicode "wikilink")。
  - 人性化的設定畫面。
  - 標點符號視窗(可自訂)。
  - 支援眾多的鍵盤排列方式。
  - 若輸入錯誤的字根時會自動警告，並可以退回修改。
  - 支援繁簡轉換，亦可「打繁出簡」。
  - 支援[ROOT](https://zh.wikipedia.org/wiki/ROOT "wikilink")、[OverTheSpot和](https://zh.wikipedia.org/wiki/OverTheSpot "wikilink")[OnThe
    Spot這三種顯示模示](https://zh.wikipedia.org/wiki/OnThe_Spot "wikilink")(Linux下的[OnThe
    Spot需使用gtk或qt](https://zh.wikipedia.org/wiki/OnThe_Spot "wikilink")
    im-module)。
  - [在輸字游標處顯示輸入法狀態（OSD）](http://hyperrate.com/thread.php?tid=27555#27555)

## gcin內建的輸入法清單

  - 注音
  - 詞音/拼音
  - [新酷音](http://hyperrate.com/thread.php?tid=23363)
    (目前僅Linux平台支援，需在編譯時加入)
  - 倉頡
  - [標點倉頡](http://hyperrate.com/thread.php?tid=15801)
  - 倉五
  - [亂倉打鳥](http://hyperrate.com/thread.php?tid=5775)
  - [五四三倉頡](http://hyperrate.com/thread.php?tid=12828)
  - 速成/簡易
  - [標點簡易](http://hyperrate.com/thread.php?tid=16772)
  - 大易
  - 行列
  - [行列大字集](http://hyperrate.com/thread.php?tid=23584)
  - 行列33
  - [行列符號](http://hyperrate.com/thread.php?tid=26301#26301)
  - 嘸蝦米(使用者需自行安裝表格)
  - 帶調粵拼
  - 內碼
  - 日本anthy(目前僅有Linux平台支援，gcin for windows暫不支援)
  - [hangul
    (韓拼)](http://hyperrate.com/thread.php?tid=25561#25561)：可輸出韓國文字，支援自動選字與預選詞。
  - greek(希臘字母)
  - latin-letters(拉丁字母)
  - [En-words(英文字彙)](http://hyperrate.com/thread.php?tid=19382)
  - russian(俄文)

## 設定

### 在進入 X Window 時自動啟動 gcin

如果想在進入[X
Window時自動啟動gcin](https://zh.wikipedia.org/wiki/X_Window "wikilink")，可輸入以下指令：

>
>
>     export LC_CTYPE=zh_TW.Big5
>     export LC_MESSAGES=zh_TW.Big5
>
>     export XMODIFIERS="@im=gcin"
>     export GTK_IM_MODULE=gcin
>
>     exec /usr/bin/gcin &

註：

>
>
>     如果使用GTK2+ Based的應用程式出了任何問題，可以把
>
>     　　GTK_IM_MODULE=gcin
>
>     改為
>
>     　　GTK_IM_MODULE=xim

註2： 如果使用 EEEPC + LXDE包裝的版本或其他預設非gcin中文輸入軟體，
換裝gcin的時候要注意語系是否一致，否則許多軟體會有無法執行的情況，
如 mplayer、realplayer...等。

>
>
>     export LANG=zh_TW.UTF8
>     export LC_CTYPE=zh_TW.UTF8
>     export LC_MESSAGES=zh_TW.UTF8

或是

>
>
>     export LANG=zh_TW.Big5
>     export LC_CTYPE=zh_TW.Big5
>     export LC_MESSAGES=zh_TW.Big5

### gcin 的 im-switch 設定

[im-switch是](https://zh.wikipedia.org/wiki/im-switch "wikilink")[Debian](../Page/Debian.md "wikilink")
GNU/Linux為了能讓初學者方便入門所開發出來的一個特別套件，只要在安裝了im-switch的電腦上稍作設定就能快速設定好中文環境。

gcin支援im-switch，只要將 \~/.xinput.d/default
或是/etc/X11/xinit/xinput.d/default 設定為指向/etc/X11/xinit/xinput.d/gcin
的連結：

>
>
>     mkdir ~/.xinput.d
>     ln -s /etc/X11/xinit/xinput.d/gcin ~/.xinput.d/default

並編輯/etc/environment 如下：

>
>
>     LANG=zh_TW.Big5

之後重新啟動 X Window 即可。

## 操作方式

gcin的操作方式和倚天中文相類：

> <font color="#993300">【Ctrl】</font>+<font color="#993300">【Space】</font>
> = 切換成中文輸入。
>
> <font color="#993300">【Ctrl】</font>+<font color="#993300">【Shift】</font>
> = 在輸入法中切換。
>
> <font color="#993300">【Shift】</font>+<font color="#993300">【Space】</font>
> = 切換
> [全形](https://zh.wikipedia.org/wiki/全形 "wikilink")／[半形](https://zh.wikipedia.org/wiki/半形 "wikilink")。
>
> <font color="#993300">【Ctrl】</font>+<font color="#993300">【Alt】</font>+<font color="#993300">【1】</font>
> = 輸入法快捷鍵，切換為『<font color="#003399">倉頡輸入法</font>』。
>
> <font color="#993300">【Ctrl】</font>+<font color="#993300">【Alt】</font>+<font color="#993300">【2】</font>
> = 輸入法快捷鍵，切換為『<font color="#003399">簡易輸入法</font>』。
>
> <font color="#993300">【Shift】</font>+<font color="#993300">【Alt】</font>+<font color="#993300">【F】</font>
> = 符號快捷鍵，打出【<font color="#003399">『</font>】。
>
> <font color="#993300">【Shift】</font>+<font color="#993300">【Alt】</font>+<font color="#993300">【G】</font>
> = 符號快捷鍵，打出【<font color="#003399">』</font>】。

其中的<font color="#003399">輸入法快捷鍵</font>及<font color="#003399">符號快捷鍵</font>還有其它不同的組合，使用者可以自行嘗試。

使用者可以修改 <font color="#009933">\~/.gcin/phrase.table</font>
來自訂慣用的<font color="#003399">符號快捷鍵</font>。

## 參考資料

## 外部連結

  - [gcin官方討論區](http://hyperrate.com/dir.php?eid=67)
  - [gcin windows版官方討論區](http://hyperrate.com/dir.php?eid=215)
  - [gcin for Android版官方討論區](http://hyperrate.com/dir.php?eid=255)
  - [gcin同好會](https://archive.is/20121222032015/http://cle.linux.org.tw/trac/)
  - [晴月資訊Wiki - Debian Chinese
    GCIN](https://web.archive.org/web/20060517173501/http://wiki.luna.com.tw/index.php/Debian_Chinese_GCIN)
  - [gcin在Fedora Core 5下的使用](http://blog.xuite.net/ubuntu/linux/7668046)
  - [小克's 部落格:
    讓Linux下的中文輸入法更接近微軟新注音使用體驗](http://goodjack.blogspot.tw/2013/08/linux-phonetic-setting.html)

[Category:自由软件](https://zh.wikipedia.org/wiki/Category:自由软件 "wikilink")
[Category:中文輸入法平台](https://zh.wikipedia.org/wiki/Category:中文輸入法平台 "wikilink")

1.  [HIME INPUT METHOD EDITOR, HIME (姫)
    專案，開始！](http://tetralet.luna.com.tw/index.php?op=ViewArticle&articleId=234&blogId=1)