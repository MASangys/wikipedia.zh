**KParts**是[KDE](../Page/KDE.md "wikilink") 桌面環境的使用者介面元件嵌入技術的名稱。個別元件被稱為**KPart**。KParts 類似於在Microsoft的[組件對象模型的](https://zh.wikipedia.org/wiki/組件對象模型 "wikilink")[ActiveX](../Page/ActiveX.md "wikilink")控件。举例来说，[Konsole](../Page/Konsole.md "wikilink")可作為KPart使用在應用軟件，如[Konqueror](../Page/Konqueror.md "wikilink")和[Kate](../Page/Kate.md "wikilink")。
KPart 以共享程式庫為基礎，這讓元件直接以 [C++](../Page/C++.md "wikilink") 物件的形式存在。共享程式庫也相當容易去觸發或卸載。
原本KDE 使用 [CORBA](../Page/CORBA.md "wikilink")來實現元件框架，但是 CORBA 過於笨重，且必須使用[IDL語言進行物件封裝](https://zh.wikipedia.org/wiki/IDL "wikilink")，難以符合KDE團隊希望簡單撰寫與使用的使用者介面元件。於是他們開始撰寫一個輕量級而有效的元件技術-- KPart 來取代 CORBA。
KDE採用兩層結構來實現元件框架：KParts 和 [DCOP](https://zh.wikipedia.org/wiki/DCOP "wikilink")，[KDE 4後](https://zh.wikipedia.org/wiki/KDE_4 "wikilink")，DCOP由[D-BUS所取代](https://zh.wikipedia.org/wiki/D-BUS "wikilink")。

使用KParts 的例子：

  - [Konqueror](../Page/Konqueror.md "wikilink") 使用 [KWord](../Page/KWord.md "wikilink") part顯示文件
  - [Konqueror](../Page/Konqueror.md "wikilink") 使用 [KMPlayer](../Page/KMPlayer.md "wikilink") part 播放多媒體
  - [Kontact](../Page/Kontact.md "wikilink") 嵌入 [kdepim](https://zh.wikipedia.org/wiki/kdepim "wikilink") 應用程式

## 參見

  - [DCOP](https://zh.wikipedia.org/wiki/DCOP "wikilink")

## 外部連結

  - [Creating and Using Components (KParts)](https://web.archive.org/web/20101018053040/http://developer.kde.org/documentation/tutorials/kparts/) (from KDE)
  - [Writing Plugins For KDE Applications](https://web.archive.org/web/20101119030551/http://developer.kde.org/documentation/tutorials/dot/writing-plugins.html) (from KDE)
  - [Coding with KParts](http://www-106.ibm.com/developerworks/library/l-kparts/) (from IBM)
  - [KDE 元件技術](http://phil.freehackers.org/kde/kpart-techno/zh_TW_kpart-techno.html)
  - [kde4下KParts入门](http://blog.chinaunix.net/u1/58649/showart_465085.html)

[en:KDE Platform\#KParts](https://zh.wikipedia.org/wiki/en:KDE_Platform#KParts "wikilink")

[Category:KDE](https://zh.wikipedia.org/wiki/Category:KDE "wikilink")