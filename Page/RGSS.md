> 本文内容由[RGSS](https://zh.wikipedia.org/wiki/RGSS)转换而来。


**RGSS**（Ruby Game Scripting System）是以[Ruby](../Page/Ruby.md "wikilink")語言為基礎的遊戲[腳本語言](https://zh.wikipedia.org/wiki/腳本語言 "wikilink")，用於[RPG Maker系列的功能擴充上](https://zh.wikipedia.org/wiki/RPG_Maker "wikilink")。

## 版本歷史

### RGSS

搭載於[RPG Maker XP](../Page/RPG_Maker_XP.md "wikilink")，是腳本功能首次亮相。可用於實現事件難以完成的功能。

### RGSS 2

搭載於[RPG Maker VX](../Page/RPG_Maker_VX.md "wikilink")，將腳本分為數個大類，以方便管理與學習，並新增腳本功能與優化性能等。

### RGSS 3

搭載於[RPG Maker VX Ace](https://zh.wikipedia.org/wiki/RPG_Maker_VX#RPG_Maker_VX_Ace "wikilink")，使用Ruby1.9.2，並新增腳本功能與優化性能等。 為最後一版的RGSS，在後繼版本[RPG Maker MV中被](../Page/RPG_Maker_MV.md "wikilink")[JavaScript](../Page/JavaScript.md "wikilink")插件取代。

## 與Ruby不同之處

RGSS的語法與[Ruby](../Page/Ruby.md "wikilink")完全相同。主要在圖像的顯示、音樂的演奏、遊戲設計所需要之功能上作強化。

### RGSS實作之類別與模組

  - Audio
  - Bitmap
  - Color
  - Font
  - Graphics
  - Input
  - Plane
  - Rect
  - RGSSError
  - RPG
  - Sprite
  - Table
  - Tilemap
  - Tone
  - Viewport
  - Window

## 用途

一般而言，使用者可以使用內建的RGSS腳本，加上事件指令來編輯遊戲系統，而不需要撰寫任何程式。如果有事件指令無法實現的系統時，則可以透過修改RGSS或新增RGSS腳本來完成。

此外，使用者也可以完全不使用內建的RGSS腳本，自己用RGSS重頭編寫想要的遊戲系統。雖然說RGSS本身是專門為[RPG設計而成](../Page/電子角色扮演遊戲.md "wikilink")，但要使用RGSS製作[動作遊戲](https://zh.wikipedia.org/wiki/動作遊戲 "wikilink")、[益智遊戲等類型的遊戲也是可行的](https://zh.wikipedia.org/wiki/益智遊戲 "wikilink")。

RGSS方便的特性在於：變更文字的大小、變更選單畫面、或更改敵人的體力值等複雜的指令，使用事件指令雖能達到效果，但非常麻煩並缺乏通用性。但若使用RGSS，只需在腳本編輯器中插入腳本即可，有[程式設計基礎便能更順利](https://zh.wikipedia.org/wiki/程式設計 "wikilink")、快速地編寫系統。

網路上公開的自製RGSS腳本。多數使用起來非常簡單，只要按照說明插入腳本編輯器即可。

## RGSS的缺點

  - 初學者發生錯誤，原因不容易發現：

<!-- end list -->

  -
    過去版本的[RPG製作大師](../Page/RPG製作大師.md "wikilink")，錯誤的原因多為事件編寫錯誤。但使用RGSS的話，也有程式的拼寫錯誤（Spell miss）、及變數、物件類別的使用方法錯誤的可能，初學者難以自行修正。

<!-- end list -->

  - 使用多個腳本時，可能會互相衝突：

<!-- end list -->

  -
    網路上有許多公開的RGSS腳本，能讓不會寫程式的使用者輕鬆使用擴充功能。但同時使用多個腳本時，可能會造成衝突而無法正常運作。

例如：兩個腳本同時覆寫一個類別的方法，各自的腳本都預期該類別不同的運作方式，可能會造成遊戲異常或當機。為了避免這個狀況，有些公開腳本的設計者會採用不同的類別／方法名稱，或者是使用alias指令將原本有的指令複寫後再執行，盡量避免這類的問題。

  -
    但使用alias可能會在按下F12之後在定義方法中造成無限回圈，因為某些內建的腳本不會在按下F12之後再重新定義，所以不會寫程式的使用者在同一類別仍應避免穿插太多不同功能的腳本。

## 外部連結

  - [RPG Maker XP官方網站](https://web.archive.org/web/20110624000425/http://tkool.jp/)
  - [Ruby語言官方網站](http://www.ruby-lang.org/)

[Category:電腦小作品](https://zh.wikipedia.org/wiki/Category:電腦小作品 "wikilink") [Category:腳本語言](https://zh.wikipedia.org/wiki/Category:腳本語言 "wikilink") [Category:RPG製作大師](https://zh.wikipedia.org/wiki/Category:RPG製作大師 "wikilink") [Category:Ruby](https://zh.wikipedia.org/wiki/Category:Ruby "wikilink")