**Tripcode**是一種[認證方式](https://zh.wikipedia.org/wiki/認證 "wikilink")，主要用於[匿名留言板或沒有用戶註冊系統的留言板](https://zh.wikipedia.org/wiki/匿名留言板 "wikilink")，如日本的[2ch](https://zh.wikipedia.org/wiki/2ch "wikilink")、[2chan](https://zh.wikipedia.org/wiki/2chan "wikilink")、美国的[4chan](../Page/4chan.md "wikilink")、台灣的[Komica等](../Page/Komica.md "wikilink")。Tripcode是通過[雜湊演算法產生的](https://zh.wikipedia.org/wiki/演算法 "wikilink")。

## 概述

[Userbase_4chan_a_20120603.png](https://zh.wikipedia.org/wiki/File:Userbase_4chan_a_20120603.png "fig:Userbase_4chan_a_20120603.png")上用戶不宜使用tripcode，大部分無名留言。這圖表是/a/板（日本動漫）的用戶統計數據。橫軸：時間，垂直軸：用戶人口。<font style="background:green;">綠色</font>：無名者，<font style="background:blue;">藍色</font>：使用tripcode用戶，<font style="background:red;">紅色</font>：使用名字的用戶。\]\]
由於系統不提供（或不需要）用戶註冊，所以任何人均可以使用同一用戶名留言。為了區分同一用戶名的不同使用者，可在用戶名後加入一個唯一的識別碼（詳細的產生方法見下文）。所產生的識別碼被稱為「帽子（英語：cap，日語：）」，而Tripcode這個字的來源就是日語的『』（中文：一人用帽子），取其中及合成了日語即英語Trip這個字。

## 表示方式

一般來說，一個Tripcode通常包含一個用戶名、一個已[加密的](https://zh.wikipedia.org/wiki/加密 "wikilink")[密碼以及一個分隔兩者的符號](../Page/密碼.md "wikilink")。輸入時只需在用戶名的一個格內填入用戶名、指定的分隔符、以及用戶自定義的密碼。

顯示留言的時候，通常以「用戶名◆已加密的密碼」這種格式表示。分隔符起了兩種作用：正常情況下只是用來分隔用戶名和密碼，並顯示為◆；或表明偽造的用戶名，此時則顯示成◇。

以下是一些例子：

| 例 | 輸入               | 輸出               |
| - | ---------------- | ---------------- |
| 1 | Hello\#World     | Hello◆4gxleYp5e2 |
| 2 | Big\#World       | Big◆4gxleYp5e2   |
| 3 | Hello\#abc       | Hello◆hghTE2MlOA |
| 4 | Hello◆4gxleYp5e2 | Hello◇4gxleYp5e2 |

## 產生方法

[Tripcode.png](https://zh.wikipedia.org/wiki/File:Tripcode.png "fig:Tripcode.png")一般的做法是對用戶輸入的密碼進行雜湊演算，例如[MD5或](../Page/MD5.md "wikilink")[DES演算法](https://zh.wikipedia.org/wiki/DES "wikilink")。其中用戶密碼只取前8位以防止過長的密碼使演算法佔用太多時間。然後再於雜湊演算時加入**鹽**（salt），而**鹽**是由系統管理員指定或隨機產生的，目的是為了加強加密的隨機性。最後與用戶名合併並顯示出來。

## 使用上的注意

由於使用了不可逆的雜湊演算來處理用戶輸入的密碼，除了用戶本身外其他人無法得知原本的密碼，而系統一般都不對原本的密碼進行記錄，適合於作為個人識別用途。然而由於密碼本身經過刪減及處理，加密後的密文亦只得10位，理論上將可能發生「碰撞」，即不同的密碼能產生相的tripcode。使用[窮舉法的碰撞率大約為](../Page/蛮力攻击.md "wikilink")2<sup>54</sup>分之一，使用一般的[個人電腦](https://zh.wikipedia.org/wiki/個人電腦 "wikilink")需要約30萬年時間來算出相同的trip，雖然如此但仍不能否定它的存在。Tripcode的唯一性與理論並不相符。

加長tripcode的長度、改用更強的雜湊演算方式能減少碰撞率，相應地用於計算tripcode的時間則會增加。

然而[字典攻擊對於一些系統還是湊效的](https://zh.wikipedia.org/wiki/字典攻擊 "wikilink")，例如只包括數字的密碼只需3小時就能算出與之有相同tripcode的密碼。但同時使用salt進行加密則可避免此等攻擊。一組只存於系統內部的salt比一組用戶能夠簡單取得的salt更安全。由於不同的留言板使用了不同的salt甚至不同的演算法，用戶很難在不同的板區內使用相同的一組上顯示名稱。例如上例的第一行在板A顯示為Hello◆4gxleYp5e2，在板B以同一組密碼輸入，顯示的結果可能為Hello◆p89aJg1afk。

如同普通密碼一樣，使用大小混合和加入各式符號的密碼亦能增加安全性。

## 衍生物

一些系統為了更進一步的分辨留言板的用戶，系統會對其[IP進行類似tripcode的運算](https://zh.wikipedia.org/wiki/IP "wikilink")。此做法是基於用戶不希望IP被直接公開，由IP加密後的密文依然存有唯一性。相對於用戶名的tripcode而言，一組特定的算法可以肯定由IP加密後的密文的理論上的唯一性。

## 參見

  - [密碼強度](https://zh.wikipedia.org/wiki/密碼強度 "wikilink")

## 註釋

1.  通常是 \# 號或 \!

2.  然而如果不需要用Tripcode的時候後兩者可不需輸入。

3.  由於每個系統中使用的雜湊演算法和salt不同，會得出不同的結果。

4.  長度因系統而異。

5.  假設速度為每秒處理3萬次。

6.  內部即如[php或](https://zh.wikipedia.org/wiki/php "wikilink")[perl等由伺服器端處理的地方](https://zh.wikipedia.org/wiki/perl "wikilink")，salt寫在這些程式碼內，一般遠端用戶無法直接存取[原始檔](https://zh.wikipedia.org/wiki/原始檔 "wikilink")。而如果把salt放在javascript等由用戶端計算tripcode的地方則用戶可以簡單直接地得知salt。

[en:Imageboard\#Characteristics](https://zh.wikipedia.org/wiki/en:Imageboard#Characteristics "wikilink")

[Category:2ch](https://zh.wikipedia.org/wiki/Category:2ch "wikilink")